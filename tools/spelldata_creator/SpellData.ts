import * as fs from "fs";
import { fixSpellEffects } from "./spellDataFixes";
import { isSeal } from "./paladinCrap";

const AUTO_ATTACK_ID = 6603;

/**
 * Read CSV
 * @param path 
 * @param index 
 */
function readCSV(path: string, index: string) {
    let raw = fs.readFileSync(path, "utf8");
    raw = raw.replace(/"(.|\r|\n)*?"/g, (subs) => {
        return subs.replace(/\s/g, "");
    });
    let lines = raw.replace("\r","").split("\n");
    let headers = lines[0].split(",");
    let data: {[index: string]: {[index: string]: number | string}} = {};
    for (let i = 1; i < lines.length; i++) {
        if (lines[i].length < 2) continue;
        let lineData = lines[i].split(",");
        let thisData: {[index: string]: number | string} = {};
        for (let j = 0; j < headers.length; j++) {
            if (headers[j] == "EffectBonusCoefficient" || headers[j] == "EffectRealPointsPerLevel") {
                thisData[headers[j]] = parseFloat(lineData[j]);
            } else if (headers[j] == "Name_lang" || headers[j] == "NameSubtext_lang" || headers[j] == "Description_lang" || headers[j] == "AuraDescription_lang") {
                thisData[headers[j]] = lineData[j];
            } else {
                thisData[headers[j]] = parseInt(lineData[j]);
            }
        }
        if (!thisData[index]) 
            throw new Error("CSV index not found!");
        data[thisData[index]] = thisData;
    }
    return data;
}

export interface SpellLevel {
    ID: number,
    DifficultyID: number,
    BaseLevel: number,
    MaxLevel: number,
    SpellLevel: number,
    MaxPassiveAuraLevel: number,
    SpellID: number
}

export interface SpellEffect {
    ID: number,
    DifficultyID: number,
    EffectIndex: number,
    Effect: number,
    EffectAmplitude: number,
    EffectAttributes: number,
    EffectAura: number,
    EffectAuraPeriod: number,
    EffectBasePoints: number,
    EffectBonusCoefficient: number,
    EffectChainAmplitude: number,
    EffectChainTargets: number,
    EffectDieSides: number,
    EffectItemType: number,
    EffectMechanic: number,
    EffectPointsPerResource: number,
    EffectPos_facing: number,
    EffectRealPointsPerLevel: number,
    EffectTriggerSpell: number,
    BonusCoefficientFromAP: number,
    PvpMultiplier: number,
    Coefficient: number,
    Variance: number,
    ResourceCoefficient: number,
    GroupSizeBasePointsCoefficient: number,
    "EffectMiscValue[0]": number,
    "EffectMiscValue[1]": number,
    "EffectRadiusIndex[0]": number,
    "EffectRadiusIndex[1]": number,
    "EffectSpellClassMask[0]": number,
    "EffectSpellClassMask[1]": number,
    "EffectSpellClassMask[2]": number,
    "EffectSpellClassMask[3]": number,
    "ImplicitTarget[0]": number,
    "ImplicitTarget[1]": number,
    SpellID: number
}

export interface SpellMisc {
    ID: number,
    DifficultyID: number,
    CastingTimeIndex: number,
    DurationIndex: number,
    RangeIndex: number,
    SchoolMask: 1|2|4|8|16|32|64,
    Speed: number,
    LaunchDelay: number,
    MinDuration: number,
    SpellIconFileDataID: number,
    ActiveIconFileDataID: number,
    "Attributes[0]": number,
    "Attributes[1]": number,
    "Attributes[2]": number,
    "Attributes[3]": number,
    "Attributes[4]": number,
    "Attributes[5]": number,
    "Attributes[6]": number,
    "Attributes[7]": number,
    "Attributes[8]": number,
    "Attributes[9]": number,
    "Attributes[10]": number,
    "Attributes[11]": number,
    "Attributes[12]": number,
    "Attributes[13]": number,
    SpellID: number
}

export interface SpellCategory {
    DefenseType: DEFENSE_TYPE,
}

export interface SpellName {
    ID: number
    Name_lang: string
}

export interface Spell {
    ID: number,
    NameSubtext_lang: string,
    Description_lang: string,
    AuraDescription_lang: string
}

export interface SpellDuration {
    ID: number,
    Duration: number,
    DurationPerLevel: number,
    MaxDuration: number
}

export interface SpellCooldown {
    DifficultyID: number,
    CategoryRecoveryTime: number,
    RecoveryTime: number,
    StartRecoveryTime: number,
    SpellID: number
}


export class SpellData {
    private spellEffects: {[index: number]: SpellEffect};
    private spellLevels: {[index: number]: SpellLevel};
    private spellMiscs: {[index: number]: SpellMisc};
    private spellNames: {[index: number]: SpellName};
    private spell: {[index: number]: Spell};
    private spellDuration: {[index: number]: SpellDuration};
    private totemSpells: {[index: number]: number};
    private spellCategories: {[index: number]: SpellCategory};
    private spellCooldowns: {[index: number]: SpellCooldown};

    constructor() {
        console.log("Creating SpellData");
        // @ts-ignore
        this.spellEffects = readCSV("data/dbc/spelleffect.csv", "ID");
        // @ts-ignore
        this.spellLevels = readCSV("data/dbc/spelllevels.csv", "SpellID");
        // @ts-ignore
        this.spellMiscs = readCSV("data/dbc/spellmisc.csv", "SpellID");
        // @ts-ignore
        this.spellNames = readCSV("data/dbc/spellname.csv", "ID");
        // @ts-ignore
        this.spell = readCSV("data/dbc/spell.csv", "ID");
        // @ts-ignore
        this.spellDuration = readCSV("data/dbc/spellduration.csv", "ID");
        // @ts-ignore
        this.spellCategories = readCSV("data/dbc/spellcategories.csv", "SpellID");
        // @ts-ignore
        this.spellCooldowns = readCSV("data/dbc/spellcooldowns.csv", "SpellID");
        
        this.totemSpells = JSON.parse(fs.readFileSync("data/totemSpells.json", "utf8"));

        fixSpellEffects(this.spellEffects, this.spellCategories);

        // make sure direct dmg is always the 1st effect on spells that also have a duration effect
        for (let eff1 in this.spellEffects) {
            if (isSeal(this.spellEffects[eff1].SpellID) 
                || this.spellEffects[eff1].EffectIndex != 1 
                || this.spellEffects[eff1].Effect != EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE) continue;
            console.log("Effindex is 1 and SPELL_EFFECT_SCHOOL_DAMAGE on spell " + this.spellEffects[eff1].SpellID);

            for (let eff2 in this.spellEffects) {
                if (this.spellEffects[eff1].SpellID != this.spellEffects[eff2].SpellID
                    || this.spellEffects[eff2].EffectIndex != 0
                    || this.spellEffects[eff2].Effect != EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA) continue;
                console.log("Effindex is 0 and SPELL_EFFECT_APPLY_AURA on spell " + this.spellEffects[eff2].SpellID);
                this.spellEffects[eff1].EffectIndex = 0;
                this.spellEffects[eff2].EffectIndex = 1;
                break;
            }
        }
        console.log("SpellData created!");
    }

    getSpellEffects(spellId: number) {
        let effects = [];
        for (let effect in this.spellEffects) {
            if (this.spellEffects[effect].SpellID == spellId) 
                effects.push(this.spellEffects[effect]);
        }

        if (effects.length == 0) 
            throw new Error("Spell effect(s) not found for " + spellId);

        effects.sort((a, b) => {
            return a.EffectIndex - b.EffectIndex;
        });
        return effects;
    }

    getSpellLevel(spellId: number) {
        if (this.spellLevels[spellId]) return this.spellLevels[spellId];

        if (spellId == AUTO_ATTACK_ID) {
            return {
                ID: 0,
                DifficultyID: 0,
                BaseLevel: 0,
                MaxLevel: 0,
                SpellLevel: 0,
                MaxPassiveAuraLevel: 0,
                SpellID: spellId
            }
        }

        throw new Error("Spelllevel not found for " + spellId);
    }

    getSpellMisc(spellId: number) {
        if (this.spellMiscs[spellId]) return this.spellMiscs[spellId];
        throw new Error("Spellmisc not found for " + spellId);
    }

    getSpellName(spellId: number) {
        if (this.spellNames[spellId]) return this.spellNames[spellId];
        throw new Error("Spellname not found for " + spellId);
    }

    getSpell(spellId: number) {
        if (this.spell[spellId]) return this.spell[spellId];
        throw new Error("Spellspell not found for " + spellId);
    }

    getSpellDuration(durationId: number) {
        if (this.spellDuration[durationId]) {
            if (this.spellDuration[durationId].DurationPerLevel != 0) {
                throw new Error("Spellduration scales with level, not handled! " + durationId);
            }
            return this.spellDuration[durationId];
        }
        throw new Error("Spellduration not found " + durationId);
    }

    getTotemSpell(totemId: number): number | undefined {
        return this.totemSpells[totemId];
    }

    getSpellCategory(spellId: number) {
        if (this.spellCategories[spellId]) return this.spellCategories[spellId];

        if (spellId == AUTO_ATTACK_ID) {
            let sc: SpellCategory = {
                DefenseType: 0
            }
            return sc;
        }

        throw new Error("SpellCategory not found for " + spellId);
    }

    getSpellCooldown(spellId: number) {
        if (this.spellCooldowns[spellId]) return this.spellCooldowns[spellId];

        let sc: SpellCooldown = {
            DifficultyID: 0,
            CategoryRecoveryTime: 0,
            StartRecoveryTime: 1500,
            RecoveryTime: 0,
            SpellID: AUTO_ATTACK_ID
        }
        return sc;
    }
}
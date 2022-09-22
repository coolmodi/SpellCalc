import * as fs from "fs";
import { fixSpellEffects } from "./spellDataFixes";
import { isSeal } from "./paladinCrap";
import { readDBCSV } from "./CSVReader";

const AUTO_ATTACK_ID = 6603;

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

export interface SpellClassOptions {
    ID: number,
    SpellID: number,
    ModalNextSpell: number,
    SpellClassSet: number,
    "SpellClassMask[0]": number,
    "SpellClassMask[1]": number,
    "SpellClassMask[2]": number,
    "SpellClassMask[3]": number,
}

export interface SpellMisc {
    ID: number,
    DifficultyID: number,
    CastingTimeIndex: number,
    DurationIndex: number,
    RangeIndex: number,
    SchoolMask: SCHOOL_MASK,
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
    DifficultyID: number,
    Mechanic: number,
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

export interface SpellPower {
    ID: number,
    ManaCost: number,
    ManaCostPerLevel: number,
    ManaPerSecond: number,
    PowerCostPct: number,
    PowerCostMaxPct: number,
    PowerCostPctPerSecond: number,
    PowerType: number,
    SpellID: number
}

export interface SpellEquippedItems {
    ID: number,
    SpellID: number,
    EquippedItemClass: ItemClass,
    EquippedItemInvTypes: number,
    EquippedItemSubclass: number
}

export interface SpellAuraOptions {
    ID: number,
    DifficultyID: number,
    CumulativeAura: number,
    ProcCategoryRecovery: number,
    ProcChance: number,
    ProcCharges: number,
    SpellProcsPerMinuteID: number,
    ["ProcTypeMask[0]"]: number,
    ["ProcTypeMask[1]"]: number,
    SpellID: number,
}

export class SpellData {
    readonly spellEffects: {[index: number]: SpellEffect};
    private spellLevels: {[index: number]: SpellLevel};
    private spellMiscs: {[index: number]: SpellMisc};
    private spellNames: {[index: number]: SpellName};
    private spell: {[index: number]: Spell};
    private spellDuration: {[index: number]: SpellDuration};
    private totemSpells: {[index: number]: number};
    readonly spellCategories: {[index: number]: SpellCategory};
    private spellCooldowns: {[index: number]: SpellCooldown};
    private spellPowerCost: {[index: number]: SpellPower};
    readonly spellClassOptions: {[index: number]: SpellClassOptions};
    private spellEquippedItems: {[index: number]: SpellEquippedItems};
    private spellAuraOptions: {[index: number]: SpellAuraOptions};

    constructor(expansion: number) {
        console.log("Creating SpellData");
        
        let baseDir = "data/";
        if (expansion === 2) baseDir += "wotlk/";

        this.spellNames = readDBCSV<SpellName>(baseDir + "dbc/spellname.csv", "ID");
        this.spell = readDBCSV<Spell>(baseDir + "dbc/spell.csv", "ID");
        this.spellDuration = readDBCSV<SpellDuration>(baseDir + "dbc/spellduration.csv", "ID");
        this.spellCategories = readDBCSV<SpellCategory>(baseDir + "dbc/spellcategories.csv", "SpellID", [{key: "DifficultyID", is: 0}]);
        this.spellCooldowns = readDBCSV<SpellCooldown>(baseDir + "dbc/spellcooldowns.csv", "SpellID", [{key: "DifficultyID", is: 0}]);
        this.spellPowerCost = readDBCSV<SpellPower>(baseDir + "dbc/spellpower.csv", "ID");
        this.spellClassOptions = readDBCSV<SpellClassOptions>(baseDir + "dbc/spellclassoptions.csv", "SpellID");
        this.spellEquippedItems = readDBCSV<SpellEquippedItems>(baseDir + "dbc/spellequippeditems.csv", "SpellID");
        this.spellAuraOptions = readDBCSV<SpellAuraOptions>(baseDir + "dbc/spellauraoptions.csv", "SpellID", [{key: "DifficultyID", is: 0}]);
        this.totemSpells = JSON.parse(fs.readFileSync(baseDir + "totemSpells.json", "utf8"));

        try {
            const cacheData = JSON.parse(fs.readFileSync("cache/spellDataCache.json", "utf8"));
            this.spellEffects = cacheData.se;
            this.spellCategories = cacheData.sc;
            this.spellMiscs = cacheData.sm;
            this.spellLevels = cacheData.sl;
        } catch (error) {
            this.spellEffects = readDBCSV<SpellEffect>(baseDir + "dbc/spelleffect.csv", "ID");
            this.spellCategories = readDBCSV<SpellCategory>(baseDir + "dbc/spellcategories.csv", "SpellID", [{key: "DifficultyID", is: 0}]);
            this.spellMiscs = readDBCSV<SpellMisc>(baseDir + "dbc/spellmisc.csv", "SpellID", [{key: "DifficultyID", is: 0}]);
            this.spellLevels = readDBCSV<SpellLevel>(baseDir + "dbc/spelllevels.csv", "SpellID", [{key: "DifficultyID", is: 0}]);

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

            fs.writeFileSync("cache/spellDataCache.json", JSON.stringify({
                se: this.spellEffects,
                sc: this.spellCategories,
                sm: this.spellMiscs,
                sl: this.spellLevels
            }, null, 4));
        }

        fixSpellEffects(this.spellEffects, this.spellCategories, this.spellMiscs, this.spellLevels, this.spellNames, this);
        console.log("SpellData created!");
    }

    getSpellEffects(spellId: number): SpellEffect[] 
    getSpellEffects(spellId: number, noerr: true): SpellEffect[] | undefined
    getSpellEffects(spellId: number, noerr = false) {
        let effects = [];
        for (let effect in this.spellEffects) {
            if (this.spellEffects[effect].SpellID == spellId) 
                effects.push(this.spellEffects[effect]);
        }

        if (effects.length == 0) {
            if (noerr) return;
            throw new Error("Spell effect(s) not found for " + spellId);
        }

        effects.sort((a, b) => {
            return a.EffectIndex - b.EffectIndex;
        });
        return effects;
    }

    getSpellLevel(spellId: number) {
        if (this.spellLevels[spellId]) return this.spellLevels[spellId];

        if (spellId == AUTO_ATTACK_ID 
            || spellId == 23590 
            || spellId == 58381 /** Mind Flay */) {
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
                DefenseType: DEFENSE_TYPE.MELEE,
                DifficultyID: 0,
                Mechanic: 0,
            }
            return sc;
        }

        if (spellId == 23590 ||spellId == 20168 || this.getSpellName(spellId).Name_lang == "Healing Stream Totem") {
            let sc: SpellCategory = {
                DefenseType: DEFENSE_TYPE.NONE,
                DifficultyID: 0,
                Mechanic: 0,
            }
            return sc;
        }

        //throw new Error("SpellCategory not found for " + spellId);
        return;
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

    getSpellPowerCosts(spellId: number) {
        let costs: SpellPower[] = [];

        for (let costId in this.spellPowerCost) {
            if (this.spellPowerCost[costId].SpellID == spellId) 
            costs.push(this.spellPowerCost[costId]);
        }

        return costs;
    }

    getSpellClassOption(spellId: number): SpellClassOptions 
    getSpellClassOption(spellId: number, noerr: true): SpellClassOptions | undefined
    getSpellClassOption(spellId: number, noerr = false) {
        for (let scoid in this.spellClassOptions) {
            if (this.spellClassOptions[scoid].SpellID == spellId) return this.spellClassOptions[scoid];
        }
        if (noerr) return;
        throw "No spell class options for spell ID!";
    }

    getSpellClassOptions() {
        return this.spellClassOptions;
    }

    getSpellEquipeedItems(spellId: number): SpellEquippedItems | undefined {
        return this.spellEquippedItems[spellId];
    }

    getSpellAuraOptions(spellId: number): SpellAuraOptions | undefined
    {
        //if (!this.spellAuraOptions[spellId]) throw "SpellAuraOptions not forund for spell " + spellId;
        return this.spellAuraOptions[spellId];
    }
}
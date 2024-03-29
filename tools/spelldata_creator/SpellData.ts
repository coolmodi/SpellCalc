import * as fs from "fs";
import { fixSpellEffects } from "./spellDataFixes";
import { isSeal } from "./paladinCrap";
import { readDBCSV } from "./CSVReader";
import { cfg } from "./config";

const AUTO_ATTACK_ID = 6603;

export interface SpellLevel
{
    ID: number,
    DifficultyID: number,
    BaseLevel: number,
    MaxLevel: number,
    SpellLevel: number,
    MaxPassiveAuraLevel: number,
    SpellID: number
}

export interface SpellEffect
{
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
    EffectMiscValue_0: number,
    EffectMiscValue_1: number,
    EffectRadiusIndex_0: number,
    EffectRadiusIndex_1: number,
    EffectSpellClassMask_0: number,
    EffectSpellClassMask_1: number,
    EffectSpellClassMask_2: number,
    EffectSpellClassMask_3: number,
    ImplicitTarget_0: number,
    ImplicitTarget_1: number,
    SpellID: number
}

export interface SpellClassOptions
{
    ID: number,
    SpellID: number,
    ModalNextSpell: number,
    SpellClassSet: number,
    SpellClassMask_0: number,
    SpellClassMask_1: number,
    SpellClassMask_2: number,
    SpellClassMask_3: number,
}

export interface SpellMisc
{
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
    Attributes_0: number,
    Attributes_1: number,
    Attributes_2: number,
    Attributes_3: number,
    Attributes_4: number,
    Attributes_5: number,
    Attributes_6: number,
    Attributes_7: number,
    Attributes_8: number,
    Attributes_9: number,
    Attributes_10: number,
    Attributes_11: number,
    Attributes_12: number,
    Attributes_13: number,
    SpellID: number
}

export interface SpellCategory
{
    DefenseType: DEFENSE_TYPE,
    DifficultyID: number,
    Mechanic: number,
}

export interface SpellName
{
    ID: number
    Name_lang: string
}

export interface Spell
{
    ID: number,
    NameSubtext_lang: string,
    Description_lang: string,
    AuraDescription_lang: string
}

export interface SpellDuration
{
    ID: number,
    Duration: number,
    DurationPerLevel: number,
    MaxDuration: number
}

export interface SpellCooldown
{
    DifficultyID: number,
    CategoryRecoveryTime: number,
    RecoveryTime: number,
    StartRecoveryTime: number,
    SpellID: number
}

export interface SpellPower
{
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

export interface SpellEquippedItems
{
    ID: number,
    SpellID: number,
    EquippedItemClass: ItemClass,
    EquippedItemInvTypes: number,
    EquippedItemSubclass: number
}

export interface SpellAuraOptions
{
    ID: number,
    DifficultyID: number,
    CumulativeAura: number,
    ProcCategoryRecovery: number,
    ProcChance: number,
    ProcCharges: number,
    SpellProcsPerMinuteID: number,
    ProcTypeMask_0: number,
    ProcTypeMask_1: number,
    SpellID: number,
}

export class SpellData
{
    //private readonly spellEffects: { [index: number]: SpellEffect };
    readonly spellEffectsBySpellId = new Map<number, SpellEffect[]>();
    private readonly spellsByName: { [spellName: string]: number[] } = {};
    private readonly spellLevels: { [index: number]: SpellLevel };
    private readonly spellMiscs: { [index: number]: SpellMisc };
    private readonly spellNames: { [index: number]: SpellName };
    private readonly spell: { [index: number]: Spell };
    private readonly spellDuration: { [index: number]: SpellDuration };
    private readonly totemSpells: { [index: number]: number };
    readonly spellCategories: { [index: number]: SpellCategory };
    private readonly spellCooldowns: { [index: number]: SpellCooldown };
    private readonly spellPowerCost: { [index: number]: SpellPower };
    readonly spellClassOptions: { [index: number]: SpellClassOptions };
    private readonly spellEquippedItems: { [index: number]: SpellEquippedItems };
    private readonly spellAuraOptions: { [index: number]: SpellAuraOptions };

    constructor()
    {
        console.log("Creating SpellData");

        const baseDir = cfg.dataDir;

        this.spellNames = readDBCSV<SpellName>(baseDir + "dbc/spellname.csv", "ID");
        this.spell = readDBCSV<Spell>(baseDir + "dbc/spell.csv", "ID");
        this.spellDuration = readDBCSV<SpellDuration>(baseDir + "dbc/spellduration.csv", "ID");
        this.spellCategories = readDBCSV<SpellCategory>(baseDir + "dbc/spellcategories.csv", "SpellID", [{ key: "DifficultyID", is: 0 }]);
        this.spellCooldowns = readDBCSV<SpellCooldown>(baseDir + "dbc/spellcooldowns.csv", "SpellID", [{ key: "DifficultyID", is: 0 }]);
        this.spellPowerCost = readDBCSV<SpellPower>(baseDir + "dbc/spellpower.csv", "ID");
        this.spellClassOptions = readDBCSV<SpellClassOptions>(baseDir + "dbc/spellclassoptions.csv", "SpellID");
        this.spellEquippedItems = readDBCSV<SpellEquippedItems>(baseDir + "dbc/spellequippeditems.csv", "SpellID");
        this.spellAuraOptions = readDBCSV<SpellAuraOptions>(baseDir + "dbc/spellauraoptions.csv", "SpellID", [{ key: "DifficultyID", is: 0 }]);
        this.totemSpells = JSON.parse(fs.readFileSync(baseDir + "totemSpells.json", "utf8"));
        this.spellCategories = readDBCSV<SpellCategory>(baseDir + "dbc/spellcategories.csv", "SpellID", [{ key: "DifficultyID", is: 0 }]);
        this.spellMiscs = readDBCSV<SpellMisc>(baseDir + "dbc/spellmisc.csv", "SpellID", [{ key: "DifficultyID", is: 0 }]);
        this.spellLevels = readDBCSV<SpellLevel>(baseDir + "dbc/spelllevels.csv", "SpellID", [{ key: "DifficultyID", is: 0 }]);

        {
            const spellEffects = readDBCSV<SpellEffect>(baseDir + "dbc/spelleffect.csv", "ID");
            for (let effectId in spellEffects)
            {
                const spellId = spellEffects[effectId].SpellID;
                if (!this.spellEffectsBySpellId.has(spellId)) this.spellEffectsBySpellId.set(spellId, []);
                this.spellEffectsBySpellId.get(spellId)!.push(spellEffects[effectId]);
            }
        }

        for (const [spellId, effects] of this.spellEffectsBySpellId)
        {
            // Build name list
            const name = this.getSpellName(spellId).Name_lang;
            if (!this.spellsByName[name]) this.spellsByName[name] = [];
            this.spellsByName[name].push(spellId); 

            // make sure direct dmg is always the 1st effect on spells that also have a duration effect
            if (isSeal(spellId)) continue;

            for (const effect1 of effects)
            {
                if (effect1.EffectIndex != 1 || effect1.Effect != EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE) continue;

                console.log("Effindex is 1 and SPELL_EFFECT_SCHOOL_DAMAGE on spell " + spellId);
                for (const effect2 of effects)
                {
                    if (effect2.EffectIndex != 0 || effect2.Effect != EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA) continue;
                    console.log("Effindex is 0 and SPELL_EFFECT_APPLY_AURA on spell " + spellId);
                    effect1.EffectIndex = 0;
                    effect2.EffectIndex = 1;
                    break;
                }
            }
        }

        for (const effects of this.spellEffectsBySpellId.values())
        {
            effects.sort((a, b) => a.EffectIndex - b.EffectIndex);
        }

        fixSpellEffects(this);

        console.log("SpellData created!");
    }

    getSpellsByName(spellName: string)
    {
        if (!this.spellsByName[spellName]) throw new Error("No spells with name " + spellName + " exist!");
        return this.spellsByName[spellName];
    }

    getSpellEffects(spellId: number): SpellEffect[]
    getSpellEffects(spellId: number, noerr: true): SpellEffect[] | undefined
    getSpellEffects(spellId: number, noerr = false)
    {
        const effects = this.spellEffectsBySpellId.get(spellId);
        if (!effects)
        {
            if (noerr) return;
            throw new Error("Spell effect(s) not found for " + spellId);
        }
        return effects;
    }

    getSpellLevel(spellId: number)
    {
        if (this.spellLevels[spellId]) return this.spellLevels[spellId];

        if (spellId == AUTO_ATTACK_ID
            || spellId == 23590
            || spellId == 58381 /** Mind Flay */)
        {
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

    getSpellMisc(spellId: number): SpellMisc
    getSpellMisc(spellId: number, noErr: true): SpellMisc | undefined
    getSpellMisc(spellId: number, noErr = false)
    {
        if (this.spellMiscs[spellId]) return this.spellMiscs[spellId];
        if (noErr) return;
        throw new Error("Spellmisc not found for " + spellId);
    }

    getSpellName(spellId: number): SpellName
    getSpellName(spellId: number, noerr: true): SpellName | undefined
    getSpellName(spellId: number, noErr = false)
    {
        if (this.spellNames[spellId]) return this.spellNames[spellId];
        if (noErr) return;
        throw new Error("Spellname not found for " + spellId);
    }

    getSpell(spellId: number)
    {
        if (this.spell[spellId]) return this.spell[spellId];
        throw new Error("Spellspell not found for " + spellId);
    }

    getSpellDuration(durationId: number)
    {
        if (this.spellDuration[durationId])
        {
            if (this.spellDuration[durationId].DurationPerLevel != 0)
            {
                throw new Error("Spellduration scales with level, not handled! " + durationId);
            }
            return this.spellDuration[durationId];
        }
        throw new Error("Spellduration not found " + durationId);
    }

    getTotemSpell(totemId: number): number | undefined
    {
        return this.totemSpells[totemId];
    }

    getSpellCategory(spellId: number)
    {
        if (this.spellCategories[spellId]) return this.spellCategories[spellId];

        if (spellId == AUTO_ATTACK_ID)
        {
            let sc: SpellCategory = {
                DefenseType: DEFENSE_TYPE.MELEE,
                DifficultyID: 0,
                Mechanic: 0,
            }
            return sc;
        }

        if (spellId == 23590 || spellId == 20168 || this.getSpellName(spellId).Name_lang == "Healing Stream Totem")
        {
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

    getSpellCooldown(spellId: number)
    {
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

    getSpellPowerCosts(spellId: number)
    {
        let costs: SpellPower[] = [];

        for (let costId in this.spellPowerCost)
        {
            if (this.spellPowerCost[costId].SpellID == spellId)
                costs.push(this.spellPowerCost[costId]);
        }

        return costs;
    }

    getSpellClassOption(spellId: number): SpellClassOptions
    getSpellClassOption(spellId: number, noerr: true): SpellClassOptions | undefined
    getSpellClassOption(spellId: number, noerr = false)
    {
        for (let scoid in this.spellClassOptions)
        {
            if (this.spellClassOptions[scoid].SpellID == spellId) return this.spellClassOptions[scoid];
        }
        if (noerr) return;
        throw "No spell class options for spell ID!";
    }

    getSpellClassOptions()
    {
        return this.spellClassOptions;
    }

    getSpellEquipeedItems(spellId: number): SpellEquippedItems | undefined
    {
        return this.spellEquippedItems[spellId];
    }

    getSpellAuraOptions(spellId: number): SpellAuraOptions | undefined
    {
        //if (!this.spellAuraOptions[spellId]) throw "SpellAuraOptions not forund for spell " + spellId;
        return this.spellAuraOptions[spellId];
    }
}
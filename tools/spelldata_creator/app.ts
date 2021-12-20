import { SpellData, SpellEffect, SpellMisc, SpellLevel, Spell, SpellCategory, SpellCooldown, SpellPower, SpellEquippedItems, SpellAuraOptions } from "./SpellData";
import * as fs from "fs";
import { isSeal, SealType } from "./paladinCrap";
import { ItemSetCreator } from "./ItemSetCreator";
import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { ItemEffectsCreator } from "./ItemEffectsCreator";

const outputdir = __dirname + "/../../../data/classes/";

const CLASSES = [
    "druid", 
    "priest", 
    "warlock",
    "mage", 
    "paladin",
    "shaman",

    //"hunter",
    //"rogue",
    //"warrior"
];

const SCHOOL_MASK_TO_ENUM = {
    [SCHOOL_MASK.NONE]: 0,
    [SCHOOL_MASK.PHYSICAL]: 1,
    [SCHOOL_MASK.HOLY]: 2,
    [SCHOOL_MASK.FIRE]: 3,
    [SCHOOL_MASK.NATURE]: 4,
    [SCHOOL_MASK.FROST]: 5,
    [SCHOOL_MASK.SHADOW]: 6,
    [SCHOOL_MASK.ARCANE]: 7,
}

const spellData = new SpellData();
const classSpellLists = new ClassSpellLists(spellData, CLASSES);
const classSpellSets = new ClassSpellSets(spellData);

const SpellClassSet = {
    MAGE: 3,
    WARRIOR: 4,
    WARLOCK: 5,
    PRIEST: 6,
    DRUID: 7,
    ROGUE: 8,
    HUNTER: 9,
    PALADIN: 10,
    SHAMAN: 11,
}

function handleDummyAura(effect: SpellEffect, ei: EffectInfo, bi: BaseInfo) {
    const sealType = isSeal(effect.SpellID);
    if (sealType !== false)
    {
        if (sealType == SealType.SOR) {
            ei.valueBase = effect.EffectBasePoints + 1;
            ei.valueRange = effect.EffectDieSides - 1;
            ei.coef = 0.1;
            return;
        }
    
        if (sealType == SealType.SOtC) return;

        if (sealType == SealType.SoB) {
            ei.weaponCoef = 0.35;
            return;
        }

        if (sealType == SealType.SoV) {
            ei.valueBase = 30;
            return;
        }
    }

    // Prayer of Mending
    if (effect.SpellID === 33076)
    {
        bi.charges = 5;
        ei.valueBase = effect.EffectBasePoints + 1;
        ei.coef = effect.EffectBonusCoefficient;
        ei.valueRange = effect.EffectDieSides - 1;
        bi.forceHeal = true;
        return;
    }

    // Earth Shield
    if ([974, 32593, 32594].indexOf(effect.SpellID) > -1)
    {
        bi.charges = 6;
        ei.valueBase = effect.EffectBasePoints + 1;
        ei.coef = 0.286;
        ei.valueRange = effect.EffectDieSides - 1;
        bi.forceHeal = true;
        return;
    }

    throw new Error("Dummy aura effect not supported!");
}

/**
 * SPELL_EFFECT_APPLY_AURA and SPELL_EFFECT_PERSISTENT_AREA_AURA
 */
function applyAuraAreaAura(rankInfo: RankInfo, effect: SpellEffect, effectNum: number, spellName: string, baseInfo: BaseInfo) {
    const saopts = spellData.getSpellAuraOptions(effect.SpellID);
    
    rankInfo.effects[effectNum] = {
        effectType: effect.Effect,
        auraType: effect.EffectAura,
        coef: effect.EffectBonusCoefficient,
        valueBase: effect.EffectBasePoints + 1,
        valueRange: effect.EffectDieSides - 1,
        valuePerLevel: effect.EffectRealPointsPerLevel,
        forceScaleWithHeal: false,
        period: 0,
        weaponCoef: 0,
    };

    if (saopts && saopts.CumulativeAura > 1) rankInfo.effects[effectNum].auraStacks = saopts.CumulativeAura;

    switch (effect.EffectAura) {
        case AURA_TYPE.SPELL_AURA_PERIODIC_HEAL:
            rankInfo.effects[effectNum].period = effect.EffectAuraPeriod / 1000;
            break;
        case AURA_TYPE.SPELL_AURA_PERIODIC_DAMAGE:
        case AURA_TYPE.SPELL_AURA_PERIODIC_LEECH:
            rankInfo.effects[effectNum].period = effect.EffectAuraPeriod / 1000;
            break;
        case AURA_TYPE.SPELL_AURA_SCHOOL_ABSORB:
        case AURA_TYPE.SPELL_AURA_MANA_SHIELD:
            if (spellName == "Power Word: Shield") rankInfo.effects[effectNum].forceScaleWithHeal = true;
            break;
        case AURA_TYPE.SPELL_AURA_DAMAGE_SHIELD:
            break;
        case AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL: 
            {
                rankInfo.effects[effectNum].valueBase = effect.EffectTriggerSpell;
                rankInfo.effects[effectNum].coef = 0;
                rankInfo.effects[effectNum].valueRange = 0;
                rankInfo.effects[effectNum].valuePerLevel = 0;
            } break;
        case AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL:
            const tspell = spellData.getSpellEffects(effect.EffectTriggerSpell);
            const tspellCat = spellData.getSpellCategory(effect.EffectTriggerSpell);
            baseInfo.defenseType = tspellCat.DefenseType;
            let found = false;
            for (let i = 0; i < tspell.length; i++) {
                if (tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE || tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_HEAL) {
                    const teffect = tspell[i];
                    const spellLevel = spellData.getSpellLevel(teffect.SpellID);
                    found = true;
                    rankInfo.spellLevel = spellLevel.SpellLevel;
                    rankInfo.maxLevel = spellLevel.MaxLevel;
                    rankInfo.effects[effectNum].period = effect.EffectAuraPeriod / 1000;
                    rankInfo.effects[effectNum].coef = teffect.EffectBonusCoefficient;
                    rankInfo.effects[effectNum].valueBase = teffect.EffectBasePoints + 1;
                    rankInfo.effects[effectNum].valueRange = teffect.EffectDieSides - 1;
                    rankInfo.effects[effectNum].valuePerLevel = teffect.EffectRealPointsPerLevel;
                    const misc = spellData.getSpellMisc(teffect.SpellID);
                    if ((misc["Attributes[2]"] & SPELL_ATTR2.SPELL_ATTR_EX2_CANT_CRIT) === SPELL_ATTR2.SPELL_ATTR_EX2_CANT_CRIT) baseInfo.noCrit = true;
                    if (tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_HEAL) baseInfo.forceHeal = true;
                    break;
                }
            }
            if (!found) throw new Error("PTSA effect has no handled trigger spell effect! " + effect.SpellID);
            break;
        case AURA_TYPE.SPELL_AURA_DUMMY:
            handleDummyAura(effect, rankInfo.effects[effectNum], baseInfo);
            break;
        case AURA_TYPE.SPELL_AURA_PROC_TRIGGER_DAMAGE:
            break;
        default:
            if (effectNum == 1 && effect.EffectMechanic != 0) {
                if (baseInfo.school != 1) {
                    baseInfo.isBinary = (spellName == "Frostbolt") ? false : true;
                }
                rankInfo.effects.splice(effectNum);
            } else {
                throw new Error("Aura type not supported! " + effect.EffectAura);
            }
    }
}

/**
 * SPELL_EFFECT_SCHOOL_DAMAGE and SPELL_EFFECT_HEALTH_LEECH
 */
function directDmg(rankInfo: RankInfo, effect: SpellEffect, effectNum: number) {
    rankInfo.effects[effectNum] = {
        effectType: effect.Effect,
        coef: effect.EffectBonusCoefficient,
        valueBase: effect.EffectBasePoints + 1,
        valueRange: effect.EffectDieSides - 1,
        valuePerLevel: effect.EffectRealPointsPerLevel,
        forceScaleWithHeal: false,
        period: 0,
        weaponCoef: 0 
    };

    if (effect.EffectChainTargets > 1 && effect.EffectChainAmplitude < 1)
    {
        rankInfo.effects[effectNum].chainInfo = {
            chains: effect.EffectChainTargets,
            mult: effect.EffectChainAmplitude
        };
    }
}

function summonTotemSlot(rankInfo: RankInfo, effect: SpellEffect, effectNum: number, spellName: string, baseInfo: BaseInfo) {
    const totemSpell = spellData.getTotemSpell(effect.SpellID);
    if (!totemSpell) throw new Error("Totem spell not found!");
    const totemEffects = spellData.getSpellEffects(totemSpell);
    const totemSpellCat = spellData.getSpellCategory(totemSpell);
    const totemSpellLevel = spellData.getSpellLevel(totemSpell);

    rankInfo.maxLevel = totemSpellLevel.MaxLevel;

    switch(spellName) {
        case "Searing Totem":
            directDmg(rankInfo, totemEffects[0], effectNum);
            rankInfo.effects[effectNum].period = 2.2;
            baseInfo.defenseType = totemSpellCat.DefenseType;
            rankInfo.effects[effectNum].effectType = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
            rankInfo.effects[effectNum].auraType = AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL;
            break;
        case "Magma Totem":
        case "Healing Stream Totem":
            applyAuraAreaAura(rankInfo, totemEffects[0], effectNum, spellName, baseInfo);
            break;
        case "Fire Nova Totem":
            directDmg(rankInfo, totemEffects[0], effectNum);
            break;
        default:
            throw new Error("Totem with defined spells is not implemented!");
    }
}

/**
 * Functions to fill effect info
 */
const effectInfoHandler: {[index: number]: (rankInfo: RankInfo, effect: SpellEffect, effectNum: number, spellName: string, baseInfo: BaseInfo) => void} = {
    [EFFECT_TYPE.SPELL_EFFECT_HEAL]: (rankInfo, effect, effectNum) => {
        rankInfo.effects[effectNum] = {
            effectType: effect.Effect,
            coef: effect.EffectBonusCoefficient,
            valueBase: effect.EffectBasePoints + 1,
            valueRange: effect.EffectDieSides - 1,
            valuePerLevel: effect.EffectRealPointsPerLevel,
            forceScaleWithHeal: false,
            period: 0,
            weaponCoef: 0 
        };

        if (effect.EffectChainTargets > 1 && effect.EffectChainAmplitude < 1)
        {
            rankInfo.effects[effectNum].chainInfo = {
                chains: effect.EffectChainTargets,
                mult: effect.EffectChainAmplitude
            };
        }
    },

    [EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA]: applyAuraAreaAura,
    [EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA]: applyAuraAreaAura,
    [EFFECT_TYPE.SPELL_EFFECT_APPLY_AREA_AURA_PARTY]: applyAuraAreaAura,

    [EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE]: directDmg,
    [EFFECT_TYPE.SPELL_EFFECT_HEALTH_LEECH]: directDmg,

    [EFFECT_TYPE.SPELL_EFFECT_SUMMON_TOTEM_SLOT_CLASSIC]: summonTotemSlot,

    [EFFECT_TYPE.SPELL_EFFECT_WEAPON_DAMAGE]: (rankInfo, effect, effectNum, _spellName, _baseInfo) => {
        rankInfo.effects[effectNum] = {
            effectType: effect.Effect,
            coef: effect.EffectBonusCoefficient,
            valueBase: effect.EffectBasePoints + 1,
            valueRange: effect.EffectDieSides - 1,
            valuePerLevel: effect.EffectRealPointsPerLevel,
            forceScaleWithHeal: false,
            period: 0,
            weaponCoef: 1
        };
    },

    [EFFECT_TYPE.SPELL_EFFECT_WEAPON_PERCENT_DAMAGE]: (rankInfo, effect, effectNum, spellName, _baseInfo) => {
        if (effectNum > 0) {
            if (rankInfo.effects[0].weaponCoef == 0) {
                throw new Error("E1 is SPELL_EFFECT_WEAPON_PERCENT_DAMAGE but E0 doesn't add a weapon coef!");
            }
            rankInfo.effects[0].weaponCoef *= (effect.EffectBasePoints + 1) / 100;
            return;
        }

        rankInfo.effects[effectNum] = {
            effectType: effect.Effect,
            coef: effect.EffectBonusCoefficient,
            valueBase: 0,
            valueRange: 0,
            valuePerLevel: effect.EffectRealPointsPerLevel,
            forceScaleWithHeal: false,
            period: 0,
            weaponCoef: (effect.EffectBasePoints + 1) / 100
        };

        // SoC "fix"
        if (spellName == "Seal of Command") {
            rankInfo.effects[effectNum].effectType = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
            rankInfo.effects[effectNum].auraType = AURA_TYPE.SPELL_AURA_DUMMY;
        }
    },

    [EFFECT_TYPE.SPELL_EFFECT_ATTACK]: (rankInfo, effect, effectNum, _spellName, _baseInfo) => {
        rankInfo.effects[effectNum] = {
            effectType: effect.Effect,
            coef: 0,
            valueBase: 0,
            valueRange: 0,
            valuePerLevel: 0,
            forceScaleWithHeal: false,
            period: 0,
            weaponCoef: 0 
        };
    },

    [EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL]: (rankInfo, effect, effectNum, _spellName, _baseInfo) => {
        rankInfo.effects[effectNum] = {
            effectType: effect.Effect,
            coef: 0,
            valueBase: effect.EffectTriggerSpell,
            valueRange: 0,
            valuePerLevel: 0,
            forceScaleWithHeal: false,
            period: 0,
            weaponCoef: 0,
        };
    },
}

/**
 * Build spell info data for class
 * @param pclass 
 */
function buildSpellInfo(pclass: string) {
    console.log("Building spell data for class " + pclass);
    const list = classSpellLists.getListForClass(pclass);
    let classInfo: ClassInfo = {
        baseInfo: {},
        rankInfo: {},
    };

    let effects: SpellEffect[];
    let spellMisc: SpellMisc;
    let spellName: string;
    let spellLevel: SpellLevel;
    let spellspell: Spell;
    let spellcat: SpellCategory;
    let spellcd: SpellCooldown;
    let spellCosts: SpellPower[];
    let spellEquippedItems: SpellEquippedItems | undefined;
    let spellAuraOptions: SpellAuraOptions | undefined;

    for (const [spellId, spellEffects] of list) {
        effects = spellEffects;
        spellMisc = spellData.getSpellMisc(spellId);
        spellName = spellData.getSpellName(spellId).Name_lang;
        spellLevel = spellData.getSpellLevel(spellId);
        spellspell = spellData.getSpell(spellId);
        spellcat = spellData.getSpellCategory(spellId);
        spellcd = spellData.getSpellCooldown(spellId);
        spellCosts = spellData.getSpellPowerCosts(spellId);
        spellEquippedItems = spellData.getSpellEquipeedItems(spellId);
        spellAuraOptions = spellData.getSpellAuraOptions(spellId);

        // Skip physical spells except auto attack and SOtC for now
        if (spellMisc.SchoolMask == 1 && spellName != "Attack" && !isSeal(spellMisc.SpellID, SealType.SOtC)) continue;

        // Create base info if needed
        if (!classInfo.baseInfo[spellName]) {
            classInfo.baseInfo[spellName] = {
                getspellinfoid: spellId,
                school: SCHOOL_MASK_TO_ENUM[spellMisc.SchoolMask],
                isChannel: ((spellMisc["Attributes[1]"] & SPELL_ATTR1.SPELL_ATTR_EX_CHANNELED_ANY) > 0),
                isBinary: false,
                gcd: spellcd.StartRecoveryTime / 1000,
                defenseType: spellcat.DefenseType,
                cantDogeParryBlock: ((spellMisc["Attributes[0]"] & SPELL_ATTR0.SPELL_ATTR_IMPOSSIBLE_DODGE_PARRY_BLOCK) > 0),
                equippedWeaponMask: (spellEquippedItems && spellEquippedItems.EquippedItemClass === ItemClass.ITEM_CLASS_WEAPON) ? spellEquippedItems.EquippedItemSubclass : 0,
                noCrit: (spellMisc["Attributes[2]"] & SPELL_ATTR2.SPELL_ATTR_EX2_CANT_CRIT) === SPELL_ATTR2.SPELL_ATTR_EX2_CANT_CRIT,
                forceHeal: false,
                charges: (spellAuraOptions && spellAuraOptions.ProcCharges > 0) ? spellAuraOptions.ProcCharges : 0
            };
        } else {
            // Shitty fix for how "base info" is handled in the addon atm.
            // Triggered spells can have the same name as the base spell but not be able to crit or have the real def type.
            if ((spellMisc["Attributes[2]"] & SPELL_ATTR2.SPELL_ATTR_EX2_CANT_CRIT) === SPELL_ATTR2.SPELL_ATTR_EX2_CANT_CRIT) {
                classInfo.baseInfo[spellName].noCrit = true;
            }
            if (classInfo.baseInfo[spellName].defenseType === DEFENSE_TYPE.NONE && spellcat.DefenseType !== DEFENSE_TYPE.NONE) {
                classInfo.baseInfo[spellName].defenseType = spellcat.DefenseType;
            }
        }

        // Create rank info if needed
        if (!classInfo.rankInfo[spellId]) {
            let dur = (spellMisc.DurationIndex) ? spellData.getSpellDuration(spellMisc.DurationIndex).Duration / 1000 : 0;
            classInfo.rankInfo[spellId] = {
                spellnamecomment: spellName + ( (spellspell.NameSubtext_lang.length) ? `(${spellspell.NameSubtext_lang})` : "" ),
                spellLevel: spellLevel.SpellLevel,
                maxLevel: spellLevel.MaxLevel,
                duration: dur,
                baseCost: 0,
                effects: []
            };

            if (spellCosts.length === 1) {
                if (spellCosts[0].PowerType == PowerType.MANA || spellCosts[0].PowerType == PowerType.RAGE || spellCosts[0].PowerType == PowerType.ENERGY) {
                    classInfo.rankInfo[spellId].baseCost = spellCosts[0].ManaCost;
                }
            } else if (spellCosts.length > 1) {
                for (let cinfo of spellCosts) {
                    if (cinfo.PowerType == PowerType.MANA || cinfo.PowerType == PowerType.RAGE || cinfo.PowerType == PowerType.ENERGY) {
                        classInfo.rankInfo[spellId].baseCost = cinfo.ManaCost;
                        break;
                    }
                }
            }
        }

        // Handle effects
        for (let i = 0; i < effects.length; i++) {
            effectInfoHandler[effects[i].Effect](classInfo.rankInfo[effects[i].SpellID], effects[i], i, spellName, classInfo.baseInfo[spellName]);

            // Make sure maxlevel is defined for spells with level scaling
            if (classInfo.rankInfo[spellId].effects[i] 
                && classInfo.rankInfo[spellId].effects[i].valuePerLevel != 0 
                && classInfo.rankInfo[spellId].maxLevel == 0) throw "Effect has perlevel scaling but maxlevel of the spell is 0!";
        }
    }

    return classInfo;
}

/**
 * Create lua file with data for class
 * @param pclass 
 */
function createLua(pclass: string) {
    console.log("Creating Lua for " + pclass);
    let str = `-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "${pclass.toUpperCase()}" then
    return;
end

`;
    let classInfo = buildSpellInfo(pclass);

    str += "_addon.spellBaseInfo = {\n";
    for (let sname in classInfo.baseInfo) {
        let bi = classInfo.baseInfo[sname];
        str += `\t[GetSpellInfo(${bi.getspellinfoid})] = { -- ${sname}\n`;
        str += `\t\tschool = ${bi.school},\n`;
        if (bi.isChannel) str += `\t\tisChannel = true,\n`;
        if (bi.isBinary) str += `\t\tisBinary = true,\n`;
        if (bi.gcd != 1.5) str += `\t\tGCD = ${bi.gcd},\n`;
        str += `\t\tdefType = ${bi.defenseType},\n`;
        if (bi.cantDogeParryBlock) str += `\t\tcantDogeParryBlock = true,\n`;
        if (bi.equippedWeaponMask != 0) str += `\t\tequippedWeaponMask = ${bi.equippedWeaponMask},\n`;
        if (bi.noCrit) str += `\t\tnoCrit = ${bi.noCrit},\n`;
        if (bi.forceHeal) str += `\t\tforceHeal = ${bi.forceHeal},\n`;
        if (bi.charges != 0) str += `\t\tcharges = ${bi.charges},\n`;
        str += `\t},\n`;
    }
    str += "};\n\n";

    str += "_addon.spellRankInfo = {\n";
    for (let sid in classInfo.rankInfo) {
        let ri = classInfo.rankInfo[sid];
        str += `\t[${sid}] = { -- ${ri.spellnamecomment}\n`;
        str += `\t\tspellLevel = ${ri.spellLevel},\n`;
        str += `\t\tmaxLevel = ${ri.maxLevel},\n`;
        if (ri.duration) str += `\t\tduration = ${ri.duration},\n`;
        if (ri.baseCost > 0) str += `\t\tbaseCost = ${ri.baseCost},\n`;

        str += `\t\teffects = {\n`;

        for (let i = 0; i < ri.effects.length; i++) {
            let eff = ri.effects[i];
            str += `\t\t\t[${i + 1}] = {\n`;
            str += `\t\t\t\teffectType = ${eff.effectType},\n`;
            if (eff.auraType) str += `\t\t\t\tauraType = ${eff.auraType},\n`;
            if (eff.forceScaleWithHeal) str += `\t\t\t\tforceScaleWithHeal = true,\n`;
            if (eff.period > 0) str += `\t\t\t\ttickPeriod = ${eff.period},\n`;
            if (eff.weaponCoef) str += `\t\t\t\tweaponCoef = ${eff.weaponCoef},\n`;
            str += `\t\t\t\tvalueBase = ${eff.valueBase},\n`;
            str += `\t\t\t\tvalueRange = ${eff.valueRange},\n`;
            if (eff.valuePerLevel) str += `\t\t\t\tvaluePerLevel = ${eff.valuePerLevel},\n`;
            str += `\t\t\t\tcoef = ${eff.coef},\n`;
            if (eff.chainInfo) 
            {
                str += `\t\t\t\tchains = ${eff.chainInfo.chains},\n`;
                str += `\t\t\t\tchainMult = ${eff.chainInfo.mult},\n`;
            }
            if (eff.auraStacks) str += `\t\t\t\tauraStacks = ${eff.auraStacks},\n`;
            //if (eff.triggeredSpell) str += `\t\t\t\ttriggeredSpell = ${eff.triggeredSpell},\n`;
            str += `\t\t\t},\n`;
        }

        str += `\t\t}\n`;
        str += `\t},\n`;
    }
    str += "};\n\n";

    if (pclass == "paladin") {
        let spellName: string;
        let spellspell: Spell;
        for (const [sealId, remapId] of classSpellLists.getJudgementRemap()) {
            spellName = spellData.getSpellName(sealId).Name_lang;
            spellspell = spellData.getSpell(sealId);
            const name = spellName + ( (spellspell.NameSubtext_lang.length) ? `(${spellspell.NameSubtext_lang})` : "" );
            str += `_addon.aurasPlayer[${sealId}] = { -- ${name}\n`;
            str += "\ttype = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,\n";
            str += `\tvalue = ${remapId}\n`;
            str += "};\n\n";
        }
    }

    // @ts-ignore
    const classSetNum: number = SpellClassSet[pclass.toUpperCase()];
    const classSpellSet = classSpellSets.getClassSets(classSetNum);

    str += "_addon.spellClassSet = {\n";
    for (let i = 0; i < 4; i++) {
        let sset = classSpellSet[i];
        str += `\t[${i + 1}] = {\n`;
        
        for (let bit in sset) {
            let setEntry = sset[bit];
            // Lua 1 << 31 is 2147483648 and not -2147483648
            str += `\t\t[${Math.abs(parseInt(bit))}] = {\n`;
            
            for (let spellId in setEntry) {
                const spellIdNum = parseInt(spellId);
                const spellName = spellData.getSpellName(spellIdNum).Name_lang;
                const spellspell = spellData.getSpell(spellIdNum);
                str += `\t\t\t${spellId}, -- ${spellName + ( (spellspell.NameSubtext_lang.length) ? `(${spellspell.NameSubtext_lang})` : "" )}\n`;
            }
            
            str += `\t\t},\n`;
        }

        str += `\t},\n`;
    }
    str += "};\n\n";

    str = str.replace(/\t/gm, "    ");

    fs.writeFileSync(outputdir + pclass + "_spell.lua", str);
}

/**
 * Create lua files for item effect and set data
 */
async function createItemLua() {
    const isc = new ItemSetCreator(spellData, classSpellLists, classSpellSets);
    const setLua = await isc.getItemSetLua();
    fs.writeFileSync(__dirname + "/../../../data/itemSetData.lua", setLua.GENERAL);
    for (const classname in setLua)
    {
        if (classname == "GENERAL" || CLASSES.indexOf(classname) === -1) continue;
        fs.writeFileSync(__dirname + "/../../../data/classes/" + classname + "_itemSetData.lua", setLua[classname as keyof typeof setLua]);
    }

    const iec = new ItemEffectsCreator(spellData, classSpellLists, classSpellSets);
    const itemLua = await iec.getItemEffectLua();
    fs.writeFileSync(__dirname + "/../../../data/itemEffects.lua", itemLua.GENERAL);
    for (const classname in itemLua)
    {
        if (classname == "GENERAL" || CLASSES.indexOf(classname) === -1) continue;
        fs.writeFileSync(__dirname + "/../../../data/classes/" + classname + "_itemEffects.lua", itemLua[classname as keyof typeof itemLua]);
    }
}

for (let i = 0; i < CLASSES.length; i++) {
    createLua(CLASSES[i]);
}

createItemLua();
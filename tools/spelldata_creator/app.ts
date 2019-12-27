import { SpellData, SpellEffect, SpellMisc, SpellLevel, Spell, SpellCategory, SpellCooldown } from "./SpellData";
import * as fs from "fs";
import { isSeal, isJudgeDummy, SealType } from "./paladinCrap";

const outputdir = __dirname + "/../../../data/classes/";

const CLASSES = [
    "priest", 
    "hunter",
    "mage", 
    "warlock", 
    "druid", 
    "paladin", 
    "shaman",
    //"rogue",
    //"warrior"
];
const DO_EFFECTS = [
    EFFECT_TYPE.SPELL_EFFECT_HEAL,
    EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA,
    EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE,
    EFFECT_TYPE.SPELL_EFFECT_HEALTH_LEECH,
    EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA,
    EFFECT_TYPE.SPELL_EFFECT_SUMMON_TOTEM_SLOT_CLASSIC,
    EFFECT_TYPE.SPELL_EFFECT_WEAPON_PERCENT_DAMAGE,
    EFFECT_TYPE.SPELL_EFFECT_ATTACK,
    EFFECT_TYPE.SPELL_EFFECT_WEAPON_DAMAGE
];
const DO_AURAS = [
    AURA_TYPE.SPELL_AURA_PERIODIC_HEAL,
    AURA_TYPE.SPELL_AURA_SCHOOL_ABSORB,
    AURA_TYPE.SPELL_AURA_PERIODIC_DAMAGE,
    AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL,
    AURA_TYPE.SPELL_AURA_PERIODIC_LEECH,
    AURA_TYPE.SPELL_AURA_MANA_SHIELD,
    AURA_TYPE.SPELL_AURA_DAMAGE_SHIELD,
    AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL,
    AURA_TYPE.SPELL_AURA_DUMMY
];

const DMG_SHIELD_DATA: {[index: string]: number} = {
    "Shadowguard": 3,
    "Lightning Shield": 3,
}

const PTSA_IGNORES = [
    552, 1515, 2893, 1949, 11683, 11684
];

const SCHOOL_MASK_TO_ENUM = {
    1: 1,// Physical
    2: 2,// Holy
    4: 3,// Fire
    8: 4,// Nature
    16: 5,// Frost
    32: 6,// Shadow
    64: 7,// Arcane
}

const spellData = new SpellData();

let judgementRemap: {[index: number]: number} = {}

/**
 * Get list of valid/handled spells for a class
 * @param pclass 
 */
function getValidSpellList(pclass: string) {
    console.log("Building list of spells for class " + pclass);
    let data: {[index: string]: number} = JSON.parse(fs.readFileSync("data/class_spells/" + pclass + ".json", "utf8"));
    let list: {[index: number]: SpellEffect[]} = {};
    let binaryCache: {[index: number]: SpellEffect} = {};

    for (let nameRank in data) {
        let spellEffects = spellData.getSpellEffects(data[nameRank]);
        for (let i = 0; i < spellEffects.length; i++) {
            let effect = spellEffects[i];

            if (DO_EFFECTS.indexOf(effect.Effect) == -1) continue;
            
            if (effect.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA || effect.Effect == EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA) {
                if (DO_AURAS.indexOf(effect.EffectAura) == -1) {
                    if (effect.EffectMechanic != 0 && effect.EffectIndex != 0) {
                        binaryCache[effect.SpellID] = effect;
                    }
                    continue;
                };

                if (effect.EffectAura == AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL) {
                    let spellName = spellData.getSpellName(effect.SpellID).Name_lang;
                    if (!DMG_SHIELD_DATA[spellName]) continue;
                    console.log("have trigger aura " + effect.SpellID + " " + spellName);
                }

                if (effect.EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL ) {
                    if (PTSA_IGNORES.indexOf(effect.SpellID) != -1 || effect.EffectTriggerSpell == 0) continue;
                }

                if (effect.EffectAura == AURA_TYPE.SPELL_AURA_DUMMY) {
                    // pala seals
                    let stype = isJudgeDummy(effect);
                    if (stype !== false) {
                        const jspell = spellData.getSpellEffects(effect.EffectBasePoints + 1); 
                        if (jspell[0].Effect != EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE) continue;
                        if (!list[jspell[0].SpellID]) list[jspell[0].SpellID] = [];
                        list[jspell[0].SpellID].push(jspell[0]);
                        judgementRemap[effect.SpellID] = jspell[0].SpellID;
                        // don't use this effect
                        continue;
                    }
                    // only add SoR or SoC attack effect
                    if (!(effect.EffectIndex == 0 && isSeal(effect.SpellID))) continue;
                }
            }

            if (effect.Effect == EFFECT_TYPE.SPELL_EFFECT_SUMMON_TOTEM_SLOT_CLASSIC) {
                if (!spellData.getTotemSpell(effect.SpellID)) continue;
            }

            if (!list[effect.SpellID]) list[effect.SpellID] = [];
            list[effect.SpellID].push(effect);
        }
    }

    for (let sid in binaryCache) {
        if (list[sid]) {
            list[sid].push(binaryCache[sid]);
        }
    }

    return list;
}

function handleDummyAura(effect: SpellEffect, ei: EffectInfo) {
    const sealType = isSeal(effect.SpellID);
    if (sealType == SealType.SOR) {
        ei.min = effect.EffectBasePoints + 1;
        ei.max = ei.min;
        ei.coef = 0.1;
        return;
    }

    throw new Error("Dummy aura effect not supported!");
}

/**
 * SPELL_EFFECT_APPLY_AURA and SPELL_EFFECT_PERSISTENT_AREA_AURA
 */
function applyAuraAreaAura(rankInfo: RankInfo, effect: SpellEffect, effectNum: number, spellName: string, baseInfo: BaseInfo) {
    rankInfo.effects[effectNum] = {
        coef: effect.EffectBonusCoefficient,
        min: effect.EffectBasePoints + 1, // Idk why
        max: effect.EffectBasePoints + 1 + ((effect.EffectDieSides > 1) ? effect.EffectDieSides : 0),
        perLevel: effect.EffectRealPointsPerLevel,
        isHeal: false,
        isDuration: false,
        period: 0,
        isDmgShield: false,
        charges: 0,
        weaponCoef: 0 
    };
    switch (effect.EffectAura) {
        case AURA_TYPE.SPELL_AURA_PERIODIC_HEAL:
            rankInfo.effects[effectNum].period = effect.EffectAuraPeriod / 1000;
            rankInfo.effects[effectNum].isDuration = true;
            rankInfo.effects[effectNum].isHeal = true;
            break;
        case AURA_TYPE.SPELL_AURA_PERIODIC_DAMAGE:
        case AURA_TYPE.SPELL_AURA_PERIODIC_LEECH:
            rankInfo.effects[effectNum].period = effect.EffectAuraPeriod / 1000;
            rankInfo.effects[effectNum].isDuration = true;
            break;
        case AURA_TYPE.SPELL_AURA_SCHOOL_ABSORB:
        case AURA_TYPE.SPELL_AURA_MANA_SHIELD:
            rankInfo.effects[effectNum].isHeal = true;
            break;
        case AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL:
        case AURA_TYPE.SPELL_AURA_DAMAGE_SHIELD:
            rankInfo.effects[effectNum].isDmgShield = true;
            rankInfo.effects[effectNum].charges = (DMG_SHIELD_DATA[spellName]) ? DMG_SHIELD_DATA[spellName] : 0;
            break;
        case AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL:
            const tspell = spellData.getSpellEffects(effect.EffectTriggerSpell);
            let found = false;
            for (let i = 0; i < tspell.length; i++) {
                if (tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE) {
                    const teffect = tspell[i];
                    const spellLevel = spellData.getSpellLevel(teffect.SpellID);
                    found = true;
                    rankInfo.spellLevel = spellLevel.SpellLevel;
                    rankInfo.maxLevel = spellLevel.MaxLevel;
                    rankInfo.effects[effectNum].period = effect.EffectAuraPeriod / 1000;
                    rankInfo.effects[effectNum].isDuration = true;
                    rankInfo.effects[effectNum].coef = teffect.EffectBonusCoefficient;
                    rankInfo.effects[effectNum].min = teffect.EffectBasePoints + 1;
                    rankInfo.effects[effectNum].max = teffect.EffectBasePoints + 1 + ((teffect.EffectDieSides > 1) ? teffect.EffectDieSides : 0),
                    rankInfo.effects[effectNum].perLevel = teffect.EffectRealPointsPerLevel;
                    const misc = spellData.getSpellMisc(teffect.SpellID);
                    if ((misc["Attributes[2]"] & 0x20000000) == 0) baseInfo.forceCanCrit = true;
                    break;
                }
            }
            if (!found) throw new Error("PTSA effect has no handled trigger spell effect! " + effect.SpellID);
            break;
        case AURA_TYPE.SPELL_AURA_DUMMY:
            handleDummyAura(effect, rankInfo.effects[effectNum]);
            break;
        default:
            if (effectNum == 1 && effect.EffectMechanic != 0) {
                if (baseInfo.school != 1) {
                    baseInfo.isBinary = true;
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
        coef: effect.EffectBonusCoefficient,
        min: effect.EffectBasePoints + 1, // Idk why
        max: effect.EffectBasePoints + 1 + ((effect.EffectDieSides > 1) ? effect.EffectDieSides : 0),
        perLevel: effect.EffectRealPointsPerLevel,
        isHeal: false,
        isDuration: false,
        period: 0,
        isDmgShield: false,
        charges: 0,
        weaponCoef: 0 
    };
}

function summonTotemSlot(rankInfo: RankInfo, effect: SpellEffect, effectNum: number, spellName: string, baseInfo: BaseInfo) {
    const totemSpell = spellData.getTotemSpell(effect.SpellID);
    if (!totemSpell) throw new Error("Totem spell not found!");
    const totemEffects = spellData.getSpellEffects(totemSpell);
    switch(spellName) {
        case "Searing Totem":
            directDmg(rankInfo, totemEffects[0], effectNum);
            rankInfo.effects[effectNum].period = 2.2;
            rankInfo.effects[effectNum].isDuration = true;
            baseInfo.forceCanCrit = true;
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
            coef: effect.EffectBonusCoefficient,
            min: effect.EffectBasePoints + 1, // Idk why
            max: effect.EffectBasePoints + 1 + ((effect.EffectDieSides > 1) ? effect.EffectDieSides : 0),
            perLevel: effect.EffectRealPointsPerLevel,
            isHeal: true,
            isDuration: false,
            period: 0,
            isDmgShield: false,
            charges: 0,
            weaponCoef: 0 
        };
    },

    [EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA]: applyAuraAreaAura,
    [EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA]: applyAuraAreaAura,

    [EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE]: directDmg,
    [EFFECT_TYPE.SPELL_EFFECT_HEALTH_LEECH]: directDmg,

    [EFFECT_TYPE.SPELL_EFFECT_SUMMON_TOTEM_SLOT_CLASSIC]: summonTotemSlot,

    [EFFECT_TYPE.SPELL_EFFECT_WEAPON_DAMAGE]: (rankInfo, effect, effectNum, _spellName, _baseInfo) => {
        rankInfo.effects[effectNum] = {
            coef: effect.EffectBonusCoefficient,
            min: (effect.EffectBasePoints > 0) ? effect.EffectBasePoints + 1 : 0,
            max: 0,
            perLevel: effect.EffectRealPointsPerLevel,
            isHeal: false,
            isDuration: false,
            period: 0,
            isDmgShield: false,
            charges: 0,
            weaponCoef: 1
        };
        //baseInfo.isMelee = true;
    },

    [EFFECT_TYPE.SPELL_EFFECT_WEAPON_PERCENT_DAMAGE]: (rankInfo, effect, effectNum, _spellName, baseInfo) => {
        if (effectNum > 0) {
            if (rankInfo.effects[0].weaponCoef == 0) {
                throw new Error("E1 is SPELL_EFFECT_WEAPON_PERCENT_DAMAGE but E0 doesn't add a weapon coef!");
            }
            rankInfo.effects[0].weaponCoef *= (effect.EffectBasePoints + 1) / 100;
            return;
        }

        if (!baseInfo.isSeal) {
            rankInfo.effects[effectNum] = {
                coef: effect.EffectBonusCoefficient,
                min: 0,
                max: 0,
                perLevel: effect.EffectRealPointsPerLevel,
                isHeal: false,
                isDuration: false,
                period: 0,
                isDmgShield: false,
                charges: 0,
                weaponCoef: (effect.EffectBasePoints + 1) / 100
            };
            //baseInfo.isMelee = true;
        }

        rankInfo.effects[effectNum] = {
            coef: effect.EffectBonusCoefficient,
            min: effect.EffectBasePoints + 1, // Idk why
            max: effect.EffectBasePoints + 1 + ((effect.EffectDieSides > 1) ? effect.EffectDieSides : 0),
            perLevel: effect.EffectRealPointsPerLevel,
            isHeal: false,
            isDuration: false,
            period: 0,
            isDmgShield: false,
            charges: 0,
            weaponCoef: 0
        };
    },

    [EFFECT_TYPE.SPELL_EFFECT_ATTACK]: (rankInfo, _effect, effectNum, _spellName, baseInfo) => {
        rankInfo.effects[effectNum] = {
            coef: 0,
            min: 0,
            max: 0,
            perLevel: 0,
            isHeal: false,
            isDuration: false,
            period: 0,
            isDmgShield: false,
            charges: 0,
            weaponCoef: 0 
        };
        baseInfo.isAutoAttack = true;
    },
}

/**
 * Build spell info data for class
 * @param pclass 
 */
function buildSpellInfo(pclass: string) {
    console.log("Building spell data for class " + pclass);
    let list = getValidSpellList(pclass);
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

    for (let s in list) {
        effects = list[s];
        spellMisc = spellData.getSpellMisc(effects[0].SpellID);
        spellName = spellData.getSpellName(effects[0].SpellID).Name_lang;
        spellLevel = spellData.getSpellLevel(effects[0].SpellID);
        spellspell = spellData.getSpell(effects[0].SpellID);
        spellcat = spellData.getSpellCategory(effects[0].SpellID);
        spellcd = spellData.getSpellCooldown(effects[0].SpellID);

        // Create base info if needed
        if (!classInfo.baseInfo[spellName]) {
            classInfo.baseInfo[spellName] = {
                getspellinfoid: effects[0].SpellID,
                school: SCHOOL_MASK_TO_ENUM[spellMisc.SchoolMask],
                isChannel: ((spellMisc["Attributes[1]"] & 4) > 0),
                isAbsorbShield: (effects[0].EffectAura == AURA_TYPE.SPELL_AURA_SCHOOL_ABSORB 
                    || effects[0].EffectAura == AURA_TYPE.SPELL_AURA_MANA_SHIELD),
                forceSchoolScaling: false,
                isBinary: false,
                forceCanCrit: false,
                isSeal: isSeal(effects[0].SpellID),
                isMelee: spellcat.DefenseType == DEFENSE_TYPE.MELEE,
                isRanged: spellcat.DefenseType == DEFENSE_TYPE.RANGED,
                isAutoAttack: false,
                gcd: spellcd.StartRecoveryTime / 1000
            };

            if (classInfo.baseInfo[spellName].isAbsorbShield && spellName != "Power Word: Shield") {
                classInfo.baseInfo[spellName].forceSchoolScaling = true;
            }
        }

        // Create rank info if needed
        if (!classInfo.rankInfo[effects[0].SpellID]) {
            let dur = (spellMisc.DurationIndex) ? spellData.getSpellDuration(spellMisc.DurationIndex).Duration / 1000 : 0;
            classInfo.rankInfo[effects[0].SpellID] = {
                spellnamecomment: spellName + ( (spellspell.NameSubtext_lang.length) ? `(${spellspell.NameSubtext_lang})` : "" ),
                spellLevel: spellLevel.SpellLevel,
                maxLevel: spellLevel.MaxLevel,
                duration: dur,
                effects: []
            };
        }

        // Handle effects
        for (let i = 0; i < effects.length; i++) {
            effectInfoHandler[effects[i].Effect](classInfo.rankInfo[effects[i].SpellID], effects[i], i, spellName, classInfo.baseInfo[spellName]);
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
        if (bi.isAbsorbShield) str += `\t\tisAbsorbShield = true,\n`;
        if (bi.forceSchoolScaling) str += `\t\tforceSchoolScaling = true,\n`;
        if (bi.isBinary) str += `\t\tisBinary = true,\n`;
        if (bi.forceCanCrit) str += `\t\tforceCanCrit = true,\n`;
        if (bi.isSeal) str += `\t\tisSeal = "${bi.isSeal}",\n`;
        if (bi.isMelee) str += `\t\tisMelee = true,\n`;
        if (bi.isRanged) str += `\t\tisRanged = true,\n`;
        if (bi.isAutoAttack) str += `\t\tisAutoAttack = true,\n`;
        if (bi.gcd != 1.5) str += `\t\tGCD = ${bi.gcd},\n`;
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
        str += `\t\teffects = {\n`;

        for (let i = 0; i < ri.effects.length; i++) {
            let eff = ri.effects[i];
            str += `\t\t\t[${i + 1}] = {\n`;
            if (eff.isHeal) str += `\t\t\t\tisHeal = true,\n`;
            if (eff.isDuration) {
                str += `\t\t\t\tisDuration = true,\n`;
                str += `\t\t\t\ttickPeriod = ${eff.period},\n`;
            }
            if (eff.isDmgShield) {
                str += `\t\t\t\tisDmgShield = true,\n`;
                str += `\t\t\t\tcharges = ${eff.charges},\n`;
            }
            if (eff.weaponCoef) str += `\t\t\t\tweaponCoef = ${eff.weaponCoef},\n`;
            str += `\t\t\t\tmin = ${eff.min},\n`;
            if (eff.min < eff.max) str += `\t\t\t\tmax = ${eff.max},\n`;
            if (eff.perLevel) str += `\t\t\t\tperLevel = ${eff.perLevel},\n`;
            str += `\t\t\t\tcoef = ${eff.coef},\n`;
            str += `\t\t\t},\n`;
        }

        str += `\t\t}\n`;
        str += `\t},\n`;
    }
    str += "};\n\n";

    if (pclass == "paladin") {
        let spellName: string;
        let spellspell: Spell;
        for (let seal in judgementRemap) {
            let sealId = parseInt(seal);
            spellName = spellData.getSpellName(sealId).Name_lang;
            spellspell = spellData.getSpell(sealId);
            const name = spellName + ( (spellspell.NameSubtext_lang.length) ? `(${spellspell.NameSubtext_lang})` : "" );
            str += `_addon.buffData[${sealId}] = { -- ${name}\n`;
            str += "\teffect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,\n";
            str += `\tvalue = ${judgementRemap[seal]}\n`;
            str += "};\n\n";
        }
    }

    str = str.replace(/\t/gm, "    ");

    fs.writeFileSync(outputdir + pclass + "_spell.lua", str);
}


for (let i = 0; i < CLASSES.length; i++) {
    createLua(CLASSES[i]);
}
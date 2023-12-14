import { SpellEffect, SpellCategory, SpellMisc, SpellLevel, SpellName, SpellData } from "./SpellData";
import { cfg } from "./config";
import { isJudgeDummy, SealType, isSeal } from "./paladinCrap";
import * as fs from "fs";

// This isn't used anywhere, just put something there just in case
let effCustIndex = 999900;

function cloneEntry(entry: SpellEffect): SpellEffect
{
    let k = {};
    for (let key in entry)
    {
        //@ts-ignore
        k[key] = entry[key];
    }
    //@ts-ignore
    k.ID = effCustIndex;
    effCustIndex++;
    //@ts-ignore
    return k;
}

function priestFix(se: { [index: number]: SpellEffect }, sm: { [index: number]: SpellMisc }, sd: SpellData)
{
    console.log("Fixing priest coefs and effects");

    // Holy Nova spell -> its heal spell
    const HOLY_NOVA_TRIGGER: { [spellId: number]: number } = {
        15237: 23455,
        15430: 23458,
        15431: 23459,
        27799: 27803,
        27800: 27804,
        27801: 27805,
        25331: 25329,
        48077: 48075,
        48078: 48076
    }

    // map Touch of Weakness proc spells
    const TOW_MAP: { [spellId: number]: number } = {
        2652: 2943,
        19261: 19249,
        19262: 19251,
        19264: 19252,
        19265: 19253,
        19266: 19254,
        25461: 25460
    };

    const BINDING_HEAL: { [spellId: number]: boolean } = {
        32546: true,
        48119: true,
        48120: true
    }

    // Shadowguard -> triggerID
    const SHADOWGUARD_TRIGGER_IDS: { [spellId: number]: number } = {
        18137: 28377,
        19308: 28378,
        19309: 28379,
        19310: 28380,
        19311: 28381,
        19312: 28382,
        25477: 28385
    };

    const PENANCE_TRIGGERS: { [spellId: number]: { dmg: number, heal: number } } = {
        47540: {
            dmg: 47758,
            heal: 47757
        },
        53005: {
            dmg: 53001,
            heal: 52986
        },
        53006: {
            dmg: 53002,
            heal: 52987
        },
        53007: {
            dmg: 53003,
            heal: 52988
        },
        402174: {
            dmg: 402261,
            heal: 402277
        }
    }

    for (let effId in se)
    {
        const eff = se[effId];
        if (HOLY_NOVA_TRIGGER[eff.SpellID] && eff.EffectIndex == 0)
        {
            let clone = cloneEntry(eff);
            clone.EffectIndex = 1;
            clone.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
            clone.EffectTriggerSpell = HOLY_NOVA_TRIGGER[eff.SpellID]; 6
            se[clone.ID] = clone;
            // Touch of Weakness does not have any usefull data about its proc by default, replace with proc entirely
        } else if (TOW_MAP[eff.SpellID])
        {
            eff.EffectTriggerSpell = TOW_MAP[eff.SpellID];
        } else if (BINDING_HEAL[eff.SpellID] && eff.EffectIndex === 1)
        {
            eff.Effect = 0; // Ignore this effect
        }
        // Prayer of Mending
        else if (sd.getSpellName(eff.SpellID).Name_lang == "Prayer of Mending" && eff.EffectIndex === 0) 
        {
            // Make PoM a dummy aura

            const PoM_ID = cfg.expansion == "WOTLK" ? 33110 : 401859;

            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
            eff.EffectAura = AURA_TYPE.SPELL_AURA_DUMMY;
            sm[eff.SpellID]["Attributes_2"] |= sm[PoM_ID]["Attributes_2"];
        }
        // Shadowguard trigger fix
        else if (SHADOWGUARD_TRIGGER_IDS[eff.SpellID] && eff.Effect === EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA && eff.EffectAura === AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL) 
        {
            eff.EffectTriggerSpell = SHADOWGUARD_TRIGGER_IDS[eff.SpellID];
        }
        else if (PENANCE_TRIGGERS[eff.SpellID] && eff.EffectIndex === 0)
        {
            const heal = sd.getSpellEffects(PENANCE_TRIGGERS[eff.SpellID].heal);
            const dmg = sd.getSpellEffects(PENANCE_TRIGGERS[eff.SpellID].dmg);

            // Heal effect
            let done = false;
            for (const heff of heal)
            {
                if (heff.EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL)
                {
                    const origId = eff.SpellID;
                    for (const key in heff)
                    {
                        eff[key as keyof SpellEffect] = heff[key as keyof SpellEffect];
                    }
                    eff.SpellID = origId;
                    eff.EffectIndex = 0;
                    done = true;
                    break;
                }
            }
            if (!done) throw new Error("Couldn't add heal effect of Penance " + eff.SpellID);

            // damage
            done = false;
            for (const deff of dmg)
            {
                if (deff.EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL)
                {
                    deff.EffectIndex = 1;
                    deff.SpellID = eff.SpellID;
                    done = true;
                    break;
                }
            }
            if (!done) throw new Error("Couldn't add dmg effect of Penance " + eff.SpellID);

            // Set def type on main spell
            /* const sc = sd.getSpellCategory(eff.SpellID);
            if (!sc) throw new Error("No spellcat for Penance!");
            sc.DefenseType = DEFENSE_TYPE.MAGIC; */
            sd.getSpellMisc(eff.SpellID).DurationIndex = 39;
        }
    }

    if (cfg.expansion == "WOTLK")
    {
        const divineHymn = sd.getSpellCategory(64844);
        if (divineHymn) divineHymn.DefenseType = DEFENSE_TYPE.MAGIC;
    }
}

function paladinFix(se: { [index: number]: SpellEffect }, sc: { [index: number]: SpellCategory }, _sm: { [index: number]: SpellMisc }, sl: { [spellId: number]: SpellLevel })
{
    console.log("Fixing pala coefs and effects");
    const HOLY_SHOCK_TRIGGERS: { [spellId: number]: { dmg: number, heal: number } } = {
        20473: {
            dmg: 25912,
            heal: 25914
        },
        20929: {
            dmg: 25911,
            heal: 25913
        },
        20930: {
            dmg: 25902,
            heal: 25903
        },
        27174: {
            dmg: 27176,
            heal: 27175
        },
        33072: {
            dmg: 33073,
            heal: 33074
        },

        48824: {
            dmg: 48822,
            heal: 48820
        },
        48825: {
            dmg: 48823,
            heal: 48821
        }
    }

    const HL_GENERIC = [1026, 1042, 3472, 10328, 10329, 25292];
    const FOL_GENERIC = [19750, 19939, 19940, 19941, 19942, 19943];

    for (let effId in se)
    {
        let eff = se[effId];

        if (cfg.expansion == "CLASSIC")
        {
            // HL
            if (eff.SpellID == 635) {
                eff.EffectBonusCoefficient = 0.205;
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            } else if (eff.SpellID == 639) {
                eff.EffectBonusCoefficient = 0.339;
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            } else if (eff.SpellID == 647) {
                eff.EffectBonusCoefficient = 0.554;
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            } else if (HL_GENERIC.indexOf(eff.SpellID) > -1) {
                eff.EffectBonusCoefficient = 2.5/3.5;
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            // FOL
            } else if (FOL_GENERIC.indexOf(eff.SpellID) > -1) {
                eff.EffectBonusCoefficient = 1.5/3.5;
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            }
        }

        if (HOLY_SHOCK_TRIGGERS[eff.SpellID] && eff.EffectIndex === 0)
        {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
            eff.EffectTriggerSpell = HOLY_SHOCK_TRIGGERS[eff.SpellID].heal;
            const clone = cloneEntry(eff);
            clone.EffectIndex = 1;
            clone.EffectTriggerSpell = HOLY_SHOCK_TRIGGERS[eff.SpellID].dmg;
            se[clone.ID] = clone;
            sc[eff.SpellID].DefenseType = DEFENSE_TYPE.MAGIC;
        }
        else
        {
            // replace SoC judgement dummy spell id, it's inside even another spell
            if (isJudgeDummy(eff) == SealType.SOC)
            {
                console.log("Replace SoC dummy id for " + eff.SpellID);
                let jdId = eff.EffectBasePoints + eff.EffectDieSides;
                for (let jeffId in se)
                {
                    let jeff = se[jeffId];
                    if (jeff.SpellID == jdId)
                    {
                        eff.EffectBasePoints = jeff.EffectBasePoints;
                        break;
                    }
                }
            }

            // replace SoC trigger with it's triggered effect
            if (isSeal(eff.SpellID, SealType.SOC) && eff.EffectIndex == 0)
            {
                for (let jeffId in se)
                {
                    let jeff = se[jeffId];
                    if (jeff.SpellID == eff.EffectTriggerSpell)
                    {
                        console.log("Replace SOC " + eff.SpellID);
                        eff.EffectBasePoints = jeff.EffectBasePoints;
                        eff.EffectBonusCoefficient = jeff.EffectBonusCoefficient;
                        eff.EffectRealPointsPerLevel = jeff.EffectRealPointsPerLevel;
                        eff.Effect = jeff.Effect;
                        break;
                    }
                }
            }

            // Make seals melee
            if (isSeal(eff.SpellID) && eff.EffectIndex == 0)
            {
                sc[eff.SpellID].DefenseType = DEFENSE_TYPE.MELEE;
            }

            // Fix SoW and SoL not having judgement ID
            if (isSeal(eff.SpellID, SealType.SoW) && eff.EffectIndex == 0
                || isSeal(eff.SpellID, SealType.SoL) && eff.EffectIndex == 0)
            {
                const ce = cloneEntry(eff);
                ce.Effect = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA,
                    ce.EffectAura = AURA_TYPE.SPELL_AURA_DUMMY,
                    ce.EffectBasePoints = 54158;
                ce.EffectTriggerSpell = 0;
                ce.EffectDieSides = 0;
                ce.EffectIndex = 2;
                se[ce.ID] = ce;
            }

            // fix SoCorr judgement id (wotlk uses "new" seal)
            if (isJudgeDummy(eff, SealType.SoCor))
            {
                eff.EffectBasePoints = 31804;
                eff.EffectDieSides = 0;
            }

            // fix JoR base value, should be 0
            if (eff.SpellID == 20187)
            {
                eff.EffectBasePoints = 0;
                eff.EffectDieSides = 0;
            }

            if (cfg.expansion == "WOTLK")
            {
                // Fix JoC weapon pct scaling
                if (eff.SpellID == 20467 && eff.Effect == EFFECT_TYPE.SPELL_EFFECT_WEAPON_PERCENT_DAMAGE)
                {
                    eff.EffectBasePoints = 19;
                    eff.EffectDieSides = 0;
                }
            }
        }
    }

    // Give JoB and JoV a max level
    if (sl[31898] && !sl[31898].MaxLevel) sl[31898].MaxLevel = 99;
    if (sl[31804] && !sl[31804].MaxLevel) sl[31804].MaxLevel = 99;
}

function mageFix(se: { [index: number]: SpellEffect }, sd: SpellData)
{
    console.log("Fixing mage coefs and effects");

    for (let effId in se)
    {
        let eff = se[effId];
        const spellName = sd.getSpellName(eff.SpellID);
        if (spellName.Name_lang == "Living Bomb" && eff.EffectAura == AURA_TYPE.SPELL_AURA_DUMMY && eff.EffectBasePoints > 10000)
        {
            eff.EffectAura = AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL;
            eff.EffectTriggerSpell = eff.EffectBasePoints + 1;
        }
    }
}

function druidFixes(se: { [index: number]: SpellEffect }, sn: { [spellId: number]: SpellName }, sd: SpellData)
{
    console.log("Fixing druid coefs and effects");
    const STARFALL = [48505, 53199, 53200, 53201];
    const LB = [33763, 48450, 48451, 408124];

    for (let effId in se)
    {
        let eff = se[effId];
        const name = sn[eff.SpellID]?.Name_lang;
        if (LB.indexOf(eff.SpellID) > -1 && eff.EffectIndex === 1)
        {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            eff.EffectAura = 0;
            if (cfg.expansion == "WOTLK") eff.EffectBonusCoefficient = 0.5161;
        }
        else if (STARFALL.indexOf(eff.SpellID) > -1)
        {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_DUMMY
        }
        else if (name == "Maul" && sd.spellClassOptions[eff.SpellID]?.SpellClassSet == 7 && eff.EffectIndex === 0)
        {
            eff.EffectMechanic = SpellMechanic.BLEED;
        }
        else if (name == "Shred" && sd.spellClassOptions[eff.SpellID]?.SpellClassSet == 7 && eff.EffectIndex === 0)
        {
            eff.EffectMechanic = SpellMechanic.BLEED;
        }
    }
}

function warlockFixes(se: { [index: number]: SpellEffect })
{
    console.log("Fixing warlock coefs and effects");
    const SHADOW_BURN = [17877, 18867, 18868, 18869, 18870, 18871, 27263, 30546, 47826, 47827];
    const SOC: { [sid: number]: number } = {
        [27243]: 27285,
        [47835]: 47833,
        [47836]: 47834,
    }

    const shadowFlame: { [sid: number]: number } = {
        [47897]: 47960,
        [61290]: 61291,
    }

    for (let effId in se)
    {
        let eff = se[effId];
        // Ignore trigger effect for shard debuff
        if (SHADOW_BURN.indexOf(eff.SpellID) != -1 && eff.Effect === EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL)
        {
            eff.Effect = 0;
        } else if (SOC[eff.SpellID] && eff.EffectIndex === 1)
        {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
            eff.EffectTriggerSpell = SOC[eff.SpellID];
        } else if (shadowFlame[eff.SpellID] && eff.EffectIndex === 0)
        {
            const clone = cloneEntry(eff);
            clone.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
            clone.EffectTriggerSpell = shadowFlame[eff.SpellID];
            clone.EffectIndex = 1;
            clone.EffectBasePoints = 0;
            clone.EffectBonusCoefficient = 0;
            clone.EffectRealPointsPerLevel = 0;
            clone.EffectDieSides = 0;
            se[clone.ID] = clone;
        }
    }
}

function shamanFix(se: { [index: number]: SpellEffect }, sm: { [index: number]: SpellMisc }, sd: SpellData)
{
    console.log("Fixing shaman coefs and effects");

    // Shadowguard -> triggerID
    const LIGHTNING_SHIELD_TRIGGERS: { [spellId: number]: number } = {
        324: 26364,
        325: 26365,
        905: 26366,
        945: 26367,
        8134: 26369,
        10431: 26370,
        10432: 26363,
        25469: 26371,
        25472: 26372,
        49280: 49278,
        49281: 49279
    };

    const fireNova: { [spellId: number]: number } = {
        1535: 8349,
        8498: 8502,
        8499: 8503,
        11314: 11306,
        11315: 11307,
        25546: 25535,
        25547: 25537,
        61649: 61650,
        61657: 61654,
    }



    for (let effId in se)
    {
        const eff = se[effId];
        // Shadowguard trigger fix
        if (LIGHTNING_SHIELD_TRIGGERS[eff.SpellID] && eff.Effect === EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA && eff.EffectAura === AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL) 
        {
            eff.EffectTriggerSpell = LIGHTNING_SHIELD_TRIGGERS[eff.SpellID];
        }
        else if (fireNova[eff.SpellID])
        {
            eff.EffectTriggerSpell = fireNova[eff.SpellID];
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL
        }
        else
        {
            const sn = sd.getSpellName(eff.SpellID).Name_lang;
            if (sn == "Stormstrike")
            {
                const ao = sd.getSpellAuraOptions(eff.SpellID);
                if (ao) ao.ProcCharges = 0;
            }

            const tts = sd.getTotemSpell(eff.SpellID);
            if (tts)
            {
                if (sn == "Searing Totem")
                {
                    eff.Effect = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
                    eff.EffectAura = AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL;
                    eff.EffectAuraPeriod = 2200;
                    eff.EffectTriggerSpell = tts;
                }
                else if (sn == "Magma Totem")
                {
                    const misc = sm[eff.SpellID];
                    if (!misc) throw "No SM entry for totem spell!";
                    misc.DurationIndex = 18 // 20000

                    const ttsEffs = sd.getSpellEffects(tts);
                    eff.Effect = ttsEffs[0].Effect;
                    eff.EffectAura = ttsEffs[0].EffectAura;
                    eff.EffectAuraPeriod = ttsEffs[0].EffectAuraPeriod;
                    eff.EffectTriggerSpell = ttsEffs[0].EffectTriggerSpell;
                }
                else if (sn == "Healing Stream Totem")
                {
                    const ttsEffs = sd.getSpellEffects(tts);
                    eff.Effect = ttsEffs[0].Effect;
                    eff.EffectAura = ttsEffs[0].EffectAura;
                    eff.EffectAuraPeriod = ttsEffs[0].EffectAuraPeriod;
                    eff.EffectTriggerSpell = ttsEffs[0].EffectTriggerSpell;

                    if (cfg.expansion == "WOTLK")
                    {
                        const triggeredHeal = sd.getSpellEffects(ttsEffs[0].EffectTriggerSpell);
                        triggeredHeal[0].Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
                    }
                }
            }
        }
    }
}

function coefFixes(se: { [index: number]: SpellEffect }, sn: { [spellId: number]: SpellName })
{
    interface CoefEntry { [effectIndex: number]: { ap?: number, sp?: number } }

    console.log("Fixing coefs");
    const data: {
        names: { [spellName: string]: CoefEntry },
        ids: { [spellId: number]: CoefEntry },
    } = JSON.parse(fs.readFileSync(cfg.dataDir + "missingCoef.json", "utf8"));

    for (const effId in se)
    {
        const eff = se[effId];
        if (data.ids[eff.SpellID] && data.ids[eff.SpellID][eff.EffectIndex])
        {
            const thisData = data.ids[eff.SpellID][eff.EffectIndex];
            if (typeof thisData.ap !== "undefined") eff.BonusCoefficientFromAP = thisData.ap;
            if (typeof thisData.sp !== "undefined") eff.EffectBonusCoefficient = thisData.sp;
            continue;
        }

        const sname = sn[eff.SpellID]?.Name_lang;
        if (sname && data.names[sname] && data.names[sname][eff.EffectIndex])
        {
            const thisData = data.names[sname][eff.EffectIndex];
            if (typeof thisData.ap !== "undefined") eff.BonusCoefficientFromAP = thisData.ap;
            if (typeof thisData.sp !== "undefined") eff.EffectBonusCoefficient = thisData.sp;
        }
    }
}

export function fixSpellEffects(se: { [index: number]: SpellEffect }, sc: { [index: number]: SpellCategory }, sm: { [index: number]: SpellMisc }, sl: { [spellId: number]: SpellLevel }, sn: { [spellId: number]: SpellName }, sd: SpellData)
{
    paladinFix(se, sc, sm, sl);
    priestFix(se, sm, sd);
    mageFix(se, sd);
    druidFixes(se, sn, sd);
    warlockFixes(se);
    shamanFix(se, sm, sd);
    coefFixes(se, sn);
}
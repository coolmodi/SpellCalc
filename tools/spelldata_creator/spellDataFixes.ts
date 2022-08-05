import { SpellEffect, SpellCategory, SpellMisc, SpellLevel, SpellName } from "./SpellData";
import { isJudgeDummy, SealType, isSeal } from "./paladinCrap";
import * as fs from "fs";

// This isn't used anywhere, just put something there just in case
let effCustIndex = 999900;

function cloneEntry(entry: SpellEffect): SpellEffect {
    let k = {};
    for (let key in entry) {
        //@ts-ignore
        k[key] = entry[key];
    }
    //@ts-ignore
    k.ID = effCustIndex;
    effCustIndex++;
    //@ts-ignore
    return k;
}

function priestFix(se: {[index: number]: SpellEffect}, sm: {[index: number]: SpellMisc}) {
    console.log("Fixing priest coefs and effects");
    const PWS_COEF = 0.8057;
    const PW_SHIELD: {[spellId: number]: number} = {
        17: 0.475 * PWS_COEF,
        592: 0.7 * PWS_COEF,
        600: 0.025 * PWS_COEF, 
        3747: PWS_COEF, 
        6065: PWS_COEF, 
        6066: PWS_COEF, 
        10898: PWS_COEF, 
        10899: PWS_COEF, 
        10900: PWS_COEF, 
        10901: PWS_COEF, 
        25217: PWS_COEF, 
        25218: PWS_COEF,
        48065: PWS_COEF,
        48066: PWS_COEF,
    };

    // Holy Nova spell -> its heal spell
    const HOLY_NOVA_TRIGGER: {[spellId: number]: number} = {
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
    const TOW_MAP: {[spellId: number]: number} = {
        2652: 2943,
        19261: 19249,
        19262: 19251,
        19264: 19252,
        19265: 19253,
        19266: 19254,
        25461: 25460
    };

    const BINDING_HEAL: {[spellId: number]: boolean} = {
        32546: true,
        48119: true,
        48120: true
    }

    // Shadowguard -> triggerID
    const SHADOWGUARD_TRIGGER_IDS: {[spellId: number]: number} = {
        18137: 28377,
        19308: 28378,
        19309: 28379,
        19310: 28380,
        19311: 28381,
        19312: 28382,
        25477: 28385
    };

    for(let effId in se) {
        const eff = se[effId];
        if (PW_SHIELD[eff.SpellID]) {
            eff.EffectBonusCoefficient = PW_SHIELD[eff.SpellID];
        } else if (HOLY_NOVA_TRIGGER[eff.SpellID] && eff.EffectIndex == 0) {
            let clone = cloneEntry(eff);
            clone.EffectIndex = 1;
            clone.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
            clone.EffectTriggerSpell = HOLY_NOVA_TRIGGER[eff.SpellID];
            se[clone.ID] = clone;
        // Touch of Weakness does not have any usefull data about its proc by default, replace with proc entirely
        } else if (TOW_MAP[eff.SpellID]) {
            eff.EffectTriggerSpell = TOW_MAP[eff.SpellID];
        } else if (BINDING_HEAL[eff.SpellID] && eff.EffectIndex === 1) {
            eff.Effect = 0; // Ignore this effect
        } 
        // Prayer of Mending
        else if (eff.SpellID === 33076 && eff.EffectIndex === 0) 
        {
            // Make PoM a dummy aura
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
            eff.EffectAura = AURA_TYPE.SPELL_AURA_DUMMY;
            eff.EffectBonusCoefficient = 0.429; // Taken from spell 33110, the PoM triggered heal spell
            sm[eff.SpellID]["Attributes[2]"] |= sm[33110]["Attributes[2]"];
        }
        // Shadowguard trigger fix
        else if (SHADOWGUARD_TRIGGER_IDS[eff.SpellID] && eff.Effect === EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA && eff.EffectAura === AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL) 
        {
            eff.EffectTriggerSpell = SHADOWGUARD_TRIGGER_IDS[eff.SpellID];
        }
    }
}

function paladinFix(se: {[index: number]: SpellEffect}, sc: {[index: number]: SpellCategory}, _sm: {[index: number]: SpellMisc}, sl: {[spellId: number]: SpellLevel}) {
    console.log("Fixing pala coefs and effects");
    const HOLY_SHOCK_TRIGGERS: {[spellId: number]: {dmg: number, heal: number}} = {
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

    for(let effId in se) {
        let eff = se[effId];

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
        else {
            // replace SoC judgement dummy spell id, it's inside even another spell
            if (isJudgeDummy(eff) == SealType.SOC) {
                console.log("Replace SoC dummy id for " + eff.SpellID);
                let jdId = eff.EffectBasePoints + eff.EffectDieSides;
                for (let jeffId in se) {
                    let jeff = se[jeffId];
                    if (jeff.SpellID == jdId) {
                        eff.EffectBasePoints = jeff.EffectBasePoints;
                        break;
                    }
                }
            }

            // replace SoC trigger with it's triggered effect
            if (isSeal(eff.SpellID, SealType.SOC) && eff.EffectIndex == 0) {
                for (let jeffId in se) {
                    let jeff = se[jeffId];
                    if (jeff.SpellID == eff.EffectTriggerSpell) {
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
            if (isSeal(eff.SpellID) && eff.EffectIndex == 0) {
                sc[eff.SpellID].DefenseType = DEFENSE_TYPE.MELEE;
            }

            // Fix SoW and SoL not having judgement ID
            if (isSeal(eff.SpellID, SealType.SoW) && eff.EffectIndex == 0
            || isSeal(eff.SpellID, SealType.SoL) && eff.EffectIndex == 0) {
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

            // Fix JoC weapon pct scaling
            if (eff.SpellID == 20467 && eff.Effect == EFFECT_TYPE.SPELL_EFFECT_WEAPON_PERCENT_DAMAGE)
            {
                eff.EffectBasePoints = 19;
                eff.EffectDieSides = 0;
            }
        }
    }

    // Give JoB and JoV a max level
    sl[31898].MaxLevel = 99;
    sl[31804].MaxLevel = 99;
}

function mageFix(se: {[index: number]: SpellEffect}) {
    console.log("Fixing mage coefs and effects");
    const ICE_BARRIER = [11426, 13031, 13032, 13033, 27134, 33405, 43038, 43039];
    const MANA_SHIELD = [1463, 8494, 8495, 10191, 10192, 10193, 27131, 43019, 43020];

    for(let effId in se) {
        let eff = se[effId];
        if (ICE_BARRIER.indexOf(eff.SpellID) != -1) {
            eff.EffectBonusCoefficient = 0.8053;
        } else if (MANA_SHIELD.indexOf(eff.SpellID) != -1) {
            eff.EffectBonusCoefficient = 0.8053;
        }
    }
}

function druidFixes(se: {[index: number]: SpellEffect}, sc: {[index: number]: SpellCategory})
{
    console.log("Fixing druid coefs and effects");
    const STARFALL = [48505, 53199, 53200, 53201];
    const LB = [33763, 48450, 48451];

    // Fix Lacerate missing mechanic bleed
    for (const sid of [33745, 48567, 48568])
    {
        sc[sid].Mechanic = SpellMechanic.BLEED;
    }

    for(let effId in se) {
        let eff = se[effId];
        if (LB.indexOf(eff.SpellID) > -1 && eff.EffectIndex === 1) {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            eff.EffectAura = 0;
            eff.EffectBonusCoefficient = 0.5161;
        }
        else if (STARFALL.indexOf(eff.SpellID) > -1)
        {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_DUMMY
        }
    }
}

function warlockFixes(se: {[index: number]: SpellEffect})
{
    console.log("Fixing warlock coefs and effects");
    const SHADOW_BURN = [17877, 18867, 18868, 18869, 18870, 18871, 27263, 30546, 47826, 47827];
    const SOC: {[sid: number]: number} = {
        [27243]: 27285,
        [47835]: 47833,
    }

    for(let effId in se) {
        let eff = se[effId];
        // Ignore trigger effect for shard debuff
        if (SHADOW_BURN.indexOf(eff.SpellID) != -1 && eff.Effect === EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL) {
            eff.Effect = 0;
        } else if (SOC[eff.SpellID] && eff.EffectIndex === 1) {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
            eff.EffectTriggerSpell = SOC[eff.SpellID];
        }
    }
}

function shamanFix(se: {[index: number]: SpellEffect}, sm: {[index: number]: SpellMisc}) {
    console.log("Fixing shaman coefs and effects");

    // Shadowguard -> triggerID
    const LIGHTNING_SHIELD_TRIGGERS: {[spellId: number]: number} = {
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

    const MAGMA_TOTEM = [
        8190,
        10585,
        10586,
        10587,
        25552,
        58731,
        58734
    ];

    for(let effId in se) {
        const eff = se[effId];
        // Shadowguard trigger fix
        if (LIGHTNING_SHIELD_TRIGGERS[eff.SpellID] && eff.Effect === EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA && eff.EffectAura === AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL) 
        {
            eff.EffectTriggerSpell = LIGHTNING_SHIELD_TRIGGERS[eff.SpellID];
        }
    }

    // Make Magma Totem 20s duration instead of 21
    for (const spellId of MAGMA_TOTEM)
    {
        const misc = sm[spellId];
        if (!misc) throw "No SM entry for totem spell!";
        misc.DurationIndex = 18 // 20000
    }
}

function coefFixes(se: {[index: number]: SpellEffect}, sn: {[spellId: number]: SpellName})
{
    interface CoefEntry {[effectIndex: number]: { ap?: number, sp?: number }}

    console.log("Fixing coefs");
    const data: {
        names: { [spellName: string]: CoefEntry },
        ids: { [spellId: number]: CoefEntry },
    } = JSON.parse(fs.readFileSync("data/wotlk/missingCoef.json", "utf8"));

    for (const effId in se)
    {
        const eff = se[effId];
        if (data.ids[eff.SpellID] && data.ids[eff.SpellID][eff.EffectIndex])
        {
            const thisData = data.ids[eff.SpellID][eff.EffectIndex];
            if (thisData.ap) eff.BonusCoefficientFromAP = thisData.ap;
            if (thisData.sp) eff.EffectBonusCoefficient = thisData.sp;
            continue;
        }

        const sname = sn[eff.SpellID]?.Name_lang;
        if (sname && data.names[sname] && data.names[sname][eff.EffectIndex])
        {
            const thisData = data.names[sname][eff.EffectIndex];
            if (thisData.ap) eff.BonusCoefficientFromAP = thisData.ap;
            if (thisData.sp) eff.EffectBonusCoefficient = thisData.sp;
        }
    }
}

export function fixSpellEffects(se: {[index: number]: SpellEffect}, sc: {[index: number]: SpellCategory}, sm: {[index: number]: SpellMisc}, sl: {[spellId: number]: SpellLevel}, sn: {[spellId: number]: SpellName}) {
    paladinFix(se, sc, sm, sl);
    priestFix(se, sm);
    mageFix(se);
    druidFixes(se, sc);
    warlockFixes(se);
    shamanFix(se, sm);
    coefFixes(se, sn);
}
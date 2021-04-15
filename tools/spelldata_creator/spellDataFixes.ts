import { SpellEffect, SpellCategory, SpellMisc } from "./SpellData";
import { isJudgeDummy, SealType, isSeal } from "./paladinCrap";

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
    const PW_SHIELD: {[spellId: number]: number} = {
        17: 0.1425,
        592: 0.21,
        600: 0.2775, 
        3747: 0.3, 
        6065: 0.3, 
        6066: 0.3, 
        10898: 0.3, 
        10899: 0.3, 
        10900: 0.3, 
        10901: 0.3, 
        25217: 0.3, 
        25218: 0.3
    };

    // Holy Nova spell -> its heal spell
    const HOLY_NOVA_TRIGGER: {[spellId: number]: number} = {
        15237: 23455,
        15430: 23458,
        15431: 23459,
        27799: 27803,
        27800: 27804,
        27801: 27805,
        25331: 25329
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

function paladinFix(se: {[index: number]: SpellEffect}, sc: {[index: number]: SpellCategory}, sm: {[index: number]: SpellMisc}) {
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
                let jdId = eff.EffectBasePoints + 1;
                for (let jeffId in se) {
                    let jeff = se[jeffId];
                    if (jeff.SpellID == jdId) {
                        eff.EffectBasePoints = jeff.EffectBasePoints;
                        jdId = jeff.EffectBasePoints + 1;
                        break;
                    }
                }
                // also /2 dmg, normal dmg should be that on a non-stunned target
                for (let jeffId in se) {
                    let jeff = se[jeffId];
                    if (jeff.SpellID == jdId) {
                        jeff.EffectBasePoints = Math.round(jeff.EffectBasePoints/2);
                        jeff.EffectRealPointsPerLevel = jeff.EffectRealPointsPerLevel/2;
                        jeff.EffectDieSides = Math.round(jeff.EffectDieSides/2);
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

            // Make SOtC a dummy effect
            if (isSeal(eff.SpellID, SealType.SOtC) && eff.EffectIndex == 0) {
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
                eff.EffectAura = AURA_TYPE.SPELL_AURA_DUMMY;
                sm[eff.SpellID].SchoolMask = SCHOOL_MASK.PHYSICAL;
            }
        }
    }
}

function mageFix(se: {[index: number]: SpellEffect}) {
    console.log("Fixing mage coefs and effects");
    const ICE_BARRIER = [11426, 13031, 13032, 13033, 27134, 33405];
    const MANA_SHIELD = [1463, 8494, 8495, 10191, 10192, 10193, 27131];

    for(let effId in se) {
        let eff = se[effId];
        if (ICE_BARRIER.indexOf(eff.SpellID) != -1) {
            eff.EffectBonusCoefficient = 0.3;
        } else if (MANA_SHIELD.indexOf(eff.SpellID) != -1) {
            eff.EffectBonusCoefficient = 0.5;
        }
    }
}

function druidFixes(se: {[index: number]: SpellEffect})
{
    console.log("Fixing druid coefs and effects");
    // Lifebloom
    for(let effId in se) {
        let eff = se[effId];
        if (eff.SpellID === 33763 && eff.EffectIndex === 1) {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            eff.EffectAura = 0;
            eff.EffectBonusCoefficient = 0.3429;
        }
    }
}

function warlockFixes(se: {[index: number]: SpellEffect})
{
    console.log("Fixing warlock coefs and effects");
    const SHADOW_BURN = [17877, 18867, 18868, 18869, 18870, 18871, 27263, 30546];
    const SEED_OF_CORRUPTION = 27243;
    const SEED_OF_CORRUPTION_PROC = 27285;

    for(let effId in se) {
        let eff = se[effId];
        // Ignore trigger effect for shard debuff
        if (SHADOW_BURN.indexOf(eff.SpellID) != -1 && eff.Effect === EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL) {
            eff.Effect = 0;
        } else if (eff.SpellID === SEED_OF_CORRUPTION && eff.EffectIndex === 1) {
            eff.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
            eff.EffectTriggerSpell = SEED_OF_CORRUPTION_PROC;
        }
    }
}

function shamanFix(se: {[index: number]: SpellEffect}) {
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
        25472: 26372
    };

    for(let effId in se) {
        const eff = se[effId];
        // Shadowguard trigger fix
        if (LIGHTNING_SHIELD_TRIGGERS[eff.SpellID] && eff.Effect === EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA && eff.EffectAura === AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL) 
        {
            eff.EffectTriggerSpell = LIGHTNING_SHIELD_TRIGGERS[eff.SpellID];
        }
    }
}

export function fixSpellEffects(se: {[index: number]: SpellEffect}, sc: {[index: number]: SpellCategory}, sm: {[index: number]: SpellMisc}) {
    paladinFix(se, sc, sm);
    priestFix(se, sm);
    mageFix(se);
    druidFixes(se);
    warlockFixes(se);
    shamanFix(se);
}
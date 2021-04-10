import { SpellEffect, SpellCategory, SpellMisc } from "./SpellData";
import { isJudgeDummy, SealType, isSeal } from "./paladinCrap";

// This isn't used anywhere, just put something there just in case
var effCustIndex = 999900;

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

function priestFix(se: {[index: number]: SpellEffect}) {
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
            const procId = TOW_MAP[eff.SpellID];
            let found = false;
            if (eff.EffectIndex == 0) {
                for (let effectId2 in se) {
                    const effect2 = se[effectId2];
                    if (effect2.SpellID == procId) {
                        for (let key in effect2) {
                            if (key == "ID" || key == "SpellID" || key == "Effect" || key == "EffectAura") continue;
                            eff[key as keyof SpellEffect] =  effect2[key as keyof SpellEffect];
                        }
                        eff.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
                        eff.EffectAura = AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL;
                        found = true;
                        break;
                    }
                }
                if (!found) throw "Couldn't replace Touch of Weakness with proc! Spell not found!";
            }
        } else if (BINDING_HEAL[eff.SpellID] && eff.EffectIndex === 1) {
            eff.Effect = 0; // Ignore this effect
        }
    }
}

function paladinFix(se: {[index: number]: SpellEffect}, sc: {[index: number]: SpellCategory}, sm: {[index: number]: SpellMisc}) {
    console.log("Fixing pala coefs and effects");
    const HL_GENERIC = [1026, 1042, 3472, 10328, 10329, 25292];
    const FOL_GENERIC = [19750, 19939, 19940, 19941, 19942, 19943];

    for(let effId in se) {
        let eff = se[effId];
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
        // HS
        } else if (eff.SpellID == 20473) {
            if (eff.EffectIndex == 0) {
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE;
                eff.EffectBasePoints = 204;
                eff.EffectDieSides = 1;
                eff.EffectBonusCoefficient = 0.4285;
                
                let clone = cloneEntry(eff);
                clone.EffectIndex = 1;
                clone.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
                se[clone.ID] = clone;

                sc[eff.SpellID].DefenseType = DEFENSE_TYPE.MAGIC;
            }
        } else if (eff.SpellID == 20929) {
            if (eff.EffectIndex == 0) {
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE;
                eff.EffectBasePoints = 279;
                eff.EffectDieSides = 1;
                eff.EffectBonusCoefficient = 0.4285;
                
                let clone = cloneEntry(eff);
                clone.EffectIndex = 1;
                clone.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
                se[clone.ID] = clone;

                sc[eff.SpellID].DefenseType = DEFENSE_TYPE.MAGIC;
            }
        } else if (eff.SpellID == 20930) {
            if (eff.EffectIndex == 0) {
                eff.Effect = EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE;
                eff.EffectBasePoints = 365;
                eff.EffectDieSides = 1;
                eff.EffectBonusCoefficient = 0.4285;
                
                let clone = cloneEntry(eff);
                clone.EffectIndex = 1;
                clone.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
                se[clone.ID] = clone;

                sc[eff.SpellID].DefenseType = DEFENSE_TYPE.MAGIC;
            }
        } else {
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
            eff.EffectBonusCoefficient = 0.3429; // TODO: Test this!
        }
    }
}

export function fixSpellEffects(se: {[index: number]: SpellEffect}, sc: {[index: number]: SpellCategory}, sm: {[index: number]: SpellMisc}) {
    paladinFix(se, sc, sm);
    priestFix(se);
    mageFix(se);
    druidFixes(se);
}
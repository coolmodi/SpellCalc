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
    const PWS = [600, 3747, 6065, 6066, 10898, 10899, 10900, 10901];
    const HN: {[index: number]: {perlvl: number, min: number, max: number}} = {
        15237: {
            perlvl: 0.3,
            min: 52,
            max: 61
        }, 
        15430: {
            perlvl: 0.4,
            min: 86,
            max: 99
        }, 
        15431: {
            perlvl: 0.5,
            min: 121,
            max: 140
        },
        27799: {
            perlvl: 0.6,
            min: 161,
            max: 188
        },
        27800: {
            perlvl: 0.7,
            min: 235,
            max: 272
        },
        27801: {
            perlvl: 0.8,
            min: 302,
            max: 351
        }
    };

    // map Touch of Weakness proc spells
    const TOW_MAP: {[spellId: number]: number} = {
        2652: 2943,
        19261: 19249,
        19262: 19251,
        19264: 19252,
        19265: 19253,
        19266: 19254
    };

    for(let effId in se) {
        const eff = se[effId];
        // PWS
        if (eff.SpellID == 17) {
            eff.EffectBonusCoefficient = 0.0475;
        } else if (eff.SpellID == 592) {
            eff.EffectBonusCoefficient = 0.07;
        } else if (eff.SpellID == 600) {
            eff.EffectBonusCoefficient = 0.0925;
        } else if (PWS.indexOf(eff.SpellID) > -1) {
            eff.EffectBonusCoefficient = 0.1;
        // Holy nova heal effect
        } else if (HN[eff.SpellID]) {
            if (eff.EffectIndex == 0) {
                let clone = cloneEntry(eff);
                clone.EffectIndex = 1;
                clone.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
                clone.EffectBasePoints = HN[eff.SpellID].min - 1;
                clone.EffectDieSides = HN[eff.SpellID].max - HN[eff.SpellID].min;
                clone.EffectRealPointsPerLevel = HN[eff.SpellID].perlvl;
                se[clone.ID] = clone;
            }
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
                        sc[jdId].DefenseType = DEFENSE_TYPE.MAGIC;
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
    const IB = [11426, 13031, 13032, 13033];

    for(let effId in se) {
        let eff = se[effId];
        if (IB.indexOf(eff.SpellID) != -1) {
            eff.EffectBonusCoefficient = 0.1;
        }
    }
}

export function fixSpellEffects(se: {[index: number]: SpellEffect}, sc: {[index: number]: SpellCategory}, sm: {[index: number]: SpellMisc}) {
    paladinFix(se, sc, sm);
    priestFix(se);
    mageFix(se);
}
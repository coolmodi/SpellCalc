import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { SpellData, SpellEffect } from "./SpellData";

export const USELESS_AURAS = {
    [AURA_TYPE.SPELL_AURA_MOD_ATTACK_POWER]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RESISTANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SKILL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_CRIT_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_DONE]: true, // spell bonus damage
    [AURA_TYPE.SPELL_AURA_MOD_HEALING_DONE]: true, // spell bonus heal
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_STAT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HIT_CHANCE]: true, // can get from ingame API
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_HIT_CHANCE]: true, // can get from ingame API
    [AURA_TYPE.SPELL_AURA_MOD_PARRY_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_THREAT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_CRIT_CHANCE_SCHOOL]: true, // can get from ingame API
    [AURA_TYPE.SPELL_AURA_MOD_POWER_COST_SCHOOL_PCT]: true, // can get from ingame API
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_ENERGY]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SHIELD_BLOCKVALUE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPEED_ALWAYS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SWIM_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DODGE_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_BLOCK_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MECHANIC_RESISTANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_CRITICAL_THREAT]: true,
    [AURA_TYPE.SPELL_AURA_TRACK_RESOURCES]: true,
    [AURA_TYPE.SPELL_AURA_WATER_BREATHING]: true,
    [AURA_TYPE.SPELL_AURA_MOD_STEALTH_LEVEL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HEALTH_REGEN_IN_COMBAT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_STEALTH_DETECT]: true,
    [AURA_TYPE.SPELL_AURA_MECHANIC_IMMUNITY]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MOUNTED_SPEED_ALWAYS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INVISIBILITY_DETECTION]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_CRIT_CHANCE]: true, // this seems to show up in addon API data
    [AURA_TYPE.SPELL_AURA_PERIODIC_MANA_LEECH]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HASTE]: true,
    [AURA_TYPE.SPELL_AURA_SAFE_FALL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_TAKEN]: true,
    [AURA_TYPE.SPELL_AURA_FORCE_REACTION]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RATING]: true, // rating can be queried with the API?
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_HEALING_OF_STAT_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_DAMAGE_OF_STAT_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_REDUCE_PUSHBACK]: true,
    [AURA_TYPE.SPELL_AURA_MECHANIC_DURATION_MOD_NOT_STACK]: true,
    [AURA_TYPE.SPELL_AURA_MOD_FLIGHT_SPEED_ALWAYS]: true,
    [AURA_TYPE.SPELL_AURA_TRANSFORM]: true,
    [AURA_TYPE.SPELL_AURA_TRACK_CREATURES]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MOUNTED_SPEED_NOT_STACK]: true,
    [AURA_TYPE.SPELL_AURA_MOD_FLIGHT_SPEED_NOT_STACK]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MELEE_DAMAGE_TAKEN]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPEED_NOT_STACK]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPEED_FLIGHT]: true,
    [AURA_TYPE.SPELL_AURA_CHANGE_MODEL_FOR_ALL_HUMANOIDS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_HASTE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_POWER_REGEN]: true, // As of TBC the API provides regen values including MP5
    [AURA_TYPE.SPELL_AURA_X_RAY]: true,
    [AURA_TYPE.SPELL_AURA_MOD_KILL_XP_PCT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_QUEST_XP_PCT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_TOTAL_STAT_PERCENTAGE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_ATTACK_POWER_PCT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER_PCT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_POWER_COST_SCHOOL]: true,
    [AURA_TYPE.SPELL_AURA_FAKE_INEBRIATE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INVISIBILITY]: true,
}
export class AuraHandlers
{
    private readonly spellData: SpellData;
    private readonly classSpellLists: ClassSpellLists;
    private readonly classSpellSets: ClassSpellSets;
    readonly handlers: { [index: number]: (effect: SpellEffect) => AddonEffectData | void } = {};

    constructor(spellData: SpellData, classSpellLists: ClassSpellLists, classSpellSets: ClassSpellSets)
    {
        this.spellData = spellData;
        this.classSpellLists = classSpellLists;
        this.classSpellSets = classSpellSets;

        this.handlers[AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL] = (effect) =>
        {
            switch (effect.EffectTriggerSpell)
            {
                case 17333:
                case 27868:
                case 27779:
                case 21330:
                case 27798:
                case 27786:
                case 27499:
                case 27418:
                case 23544:
                case 29478:
                case 21976:
                case 23577:
                case 21977:
                case 23547:
                case 22649:
                case 24255:
                case 26129:
                case 26976:
                case 28846:
                case 28817:
                case 28762:
                case 18817: // Skullflame Shield
                case 18818: // Skullflame Shield
                case 32108: // Arcanoweave blasting
                case 46833: // Your next Starfire spell takes ${$m1/-1000}.1 fewer sec. to cast.
                case 37163: // Increased attack speed.
                case 14189: // Seal Fate CP proc
                case 37171: // Your next finishing move costs no energy.
                case 43837: // Reduced casting time on your next Holy Light spell by ${$m1/-1000}.2 sec.
                case 37196: // Each time you cast a Judgement, there is a chance it will heal all nearby party members for $37196s1.
                case 39950: // Your critical heals from Healing Wave, Lesser Healing Wave, and Chain Heal reduce the cast time of your next Healing Wave spell by ${$39950m1/-1000}.2 sec for $39950d. This effect cannot occur more than once per minute.
                case 37234: //  Each time you cast an offensive spell, there is a chance your next Lesser Healing Wave will cost $37234s1 less mana.
                case 37240:
                case 37309:
                case 37444:
                case 37517:
                case 37521:
                case 37529:
                case 37526:
                case 37612:
                case 38395:
                case 41990:
                case 37604:
                case 37565:
                case 41435:
                case 38428:
                case 37515:
                case 37620:
                case 37310:
                case 28804: // Epiphany priest T3
                case 28772: // Frostfire dmg taken debuff proc
                case 9057: // Damage
                case 18980: // Dmg
                case 27775: // proc spelldamage increase
                case 26121: // proc spelldamage increase
                case 23864: // Energy restore
                case 27788: // Energy restore
                case 28813: // Energy restore
                case 23580: // Bloodfang dmg proc
                case 61571: // Your Bleed periodic effects have a chance to make your next ability cost 5 less rage.
                case 61040: // Your Obliterate, Scourge Strike, and Death Strike generate an additional 5 Runic Power when used.
                case 61595:
                case 61082:
                case 64883:
                case 64913:
                case 16870:
                case 64823:
                case 64937:
                case 64907:
                case 64911:
                case 64868:
                case 64861:
                case 67210:
                case 67117:
                case 70747:
                case 70840:
                case 70804:
                case 70802:
                case 70728:
                case 71007:
                case 70806:
                case 70829:
                case 70855:
                case 70657:
                case 70654:
                case 70757:
                case 70760:
                case 68082:
                case 71132: // Glyph of Shadow Word: Pain
                case 61792: // Glyph of Shadow
                case 28753: // hunter t3 mana restore
                case 60803:
                    return;
                case 37601: // Each time you cast an offensive spell, there is a chance your next spell will cost $37601s1 less mana.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_MANARESTORE,
                        affectSpell: [49848464, 1042],
                        value: 9 // According to comments has a 6% proc chance
                    }
                case 37238: // Your Lightning Bolt critical strikes have a chance to grant you $37238s1 mana.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_CRIT_MANARESTORE,
                        affectSpell: [1],
                        value: 40 // Wild guess from reading some comments
                    }
                case 37214: // Your offensive spell critical strikes have a chance to reduce the base mana cost of your next spell by $37214s1.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_CRIT_MANARESTORE,
                        affectSpell: [-1877999613],
                        value: 30 // If 11% chance
                    }
                case 0:
                    if (effect.SpellID === 37558) // Your Prayer of Mending heals an additional $s1 health.
                    {
                        return {
                            type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
                            affectSpell: [0, 32],
                            value: 100
                        }
                    }
                    if (effect.SpellID === 67151) return;
                    throw "Triggered spell needs some love"
                case 18350: // Dummy trigger
                    if (effect.SpellID == 23572) // Earhtfury mana restore
                    {
                        return {
                            type: ADDON_EFFECT_TYPE.EARTHFURY_RETURN,
                            value: 1
                        }
                    }
                    else if (effect.SpellID == 37594) // Greater Heal Refund
                    {
                        return {
                            type: ADDON_EFFECT_TYPE.BOOLEAN_BITFLAG_SET,
                            value: 0x1
                        }
                    }
                    else
                    {
                        return;
                    }
                case 22008: // Netherwind Focus
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC,
                        affectSpell: [33],
                        value: 1
                    }
                case 26975: // Battlegear of Eternal Justice 20% chance to regain 100 mana when you cast a Judgement.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_MANARESTORE,
                        affectSpell: [8388608],
                        value: 20
                    }
                case 23590: // Judgement (Dmg proc)
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectTriggerSpell
                    }
                default:
                    throw "Triggered spell needs some love: " + effect.EffectTriggerSpell
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_TARGET_RESISTANCE] = (effect) =>
        {
            const aed: AddonEffectData = {
                type: ADDON_EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
                affectMask: effect["EffectMiscValue[0]"],
                value: -(effect.EffectBasePoints + 1)
            }
            return aed;
        }

        this.handlers[AURA_TYPE.SPELL_AURA_ADD_FLAT_MODIFIER] = (effect) =>
        {
            const aed = {
                type: "",
                affectSpell: this.getAffectSpell(effect),
                value: effect.EffectBasePoints + 1
            }

            switch (effect["EffectMiscValue[0]"])
            {
                case 21: // SPELLMOD_CASTING_TIME_OLD (GCD reduction)
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_GCD_MS;
                    break;
                case 7: // SPELLMOD_CRITICAL_CHANCE
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE;
                    break;
                case 8: // SPELLMOD_ALL_EFFECTS
                case 0: // SPELLMOD_DAMAGE
                case 22: // SPELLMOD_DOT
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_FLAT_VALUE;
                    break;
                case 1: // SPELLMOD_DURATION
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_FLAT_DURATION;
                    break;
                case 16: // SPELLMOD_RESIST_MISS_CHANCE
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE;
                    break;
                case 19: // SPELLMOD_ACTIVATION_TIME
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_FLAT_TICKPERIOD;
                    break;
                case 3: // SPELLMOD_EFFECT1 (melee stuff mostly?)
                    {
                        switch (effect.SpellID)
                        {
                            case 54831: // Glyph of Hurricane
                            case 57856: // "" of ugly seal
                            case 65243: // Glyph of Survival Instincts
                            case 37209:
                            case 37223:
                            case 67234: // TODO WARRIOR: Berserker Stance grants an additional 2% critical strike chance, and Battle Stance grants an additional 6% armor penetration.
                            case 27850:
                            case 34318:
                            case 62210: // Increases the damage from your Arcane Blast buff by $62210s1%.
                            case 55446: // Increases the Nature damage bonus from your Stormstrike ability by an additional $55446s1%.
                                return
                            case 37186: // Increases the damage of your Judgements by 33.
                            case 37333: // Your Shred ability deals an additional 75 damage, and your Lacerate ability does an additional 15 per application.
                            case 23300: // Increases the Holy damage of your Judgements by 20.
                            case 27851: // Increases the damage of your Claw and Rake abilites by $s1.
                            case 28855: // Increases the damage dealt by your Maul ability by $s1 and Swipe ability by $s2.
                            case 37736: // Increases the damage dealt by Mangle (Cat) by ${$33876m3*$m1/100} and the damage dealt by Mangle (Bear) by ${$33878m3*$m2/100}.
                            case 33565: //Increases the damage of your Claw and Rake abilites by $s1.
                            case 33693: // Increases the damage dealt by Shred by 88.
                            case 37763: // Increases the damage dealt by Crusader Strike by ${$m1*$35395m2/100}.
                            case 52394: // Increases the damage dealt by your Blood Strike and Heart Strike by ${$m1}.
                            case 52314: // Increases the damage dealt by your Maul ability by $s1 and Swipe ability by $s2.
                            case 60837: // Increases the base damage dealt by your Scourge Strike by 189, your Obliterate by 336, and your Death Strike by ${0.75*420}.
                            case 60821: // Increases the damage dealt by Crusader Strike by ${$m1*$35395m2/100}.
                            case 54807: // Increases the damage dealt by your Death Coil ability by ${$m1}.
                            case 54809: // Increases the base damage dealt by your Scourge Strike ability by ${$m1*$m2/100}.
                            case 60773: // Increases the damage dealt by Shred by 203.
                            case 54800: // Increases the damage dealt by your Icy Touch ability by ${$m1}.
                            case 64959: // Increases weapon damage when you use Stormstrike by $s1.
                            case 64962: // Increases the damage done by your Death Coil ability by $s2 and by your Frost Strike ability by $s3.
                            case 64961: // Increases the base damage of your Lava Burst by $s1
                                return {
                                    type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
                                    affectSpell: this.getAffectSpell(effect),
                                    value: effect.EffectBasePoints + 1
                                }
                            default:
                                throw new Error("Unhandled FLAT SPELLMOD_EFFECT1: " + effect.SpellID + ": // " + spellData.getSpell(effect.SpellID).Description_lang);
                        }
                    }
                case 12: // SPELLMOD_EFFECT2 (melee stuff mostly?)
                    {
                        switch (effect.SpellID)
                        {
                            case 54830: // "IncreasesthedamageofyourInsectSwarmabilityby$s2%,butitnolongeraffectsyourvictim'schancetohit.
                            case 54940: // "WhileSealofWisdomisactive,thecostofyourhealingspellsisreducedby$54940s1%."
                            case 54943: // "WhileSealofLightisactive,theeffectofyourhealingspellsisincreasedby$54943s1%."
                            case 57947: // TODO?: Damage against Undead increased by $57947s1% while your Sense Undead ability is active
                            case 56416: // Your Seal of Vengeance or Seal of Corruption also grants $56416s1 expertise while active
                            case 63220: // Your Divine Storm now heals for an additional $63220s1% of the damage it causes
                            case 37209: // Your Water Shield ability grants an additional $s1 mana each time it triggers and an additional $s2 mana per 5 sec.
                            case 37212: // Your Flametongue Weapon ability grants an additional $s1 spell power.
                            case 37286: // Your Rejuvenation spell now also grants $s1 dodge rating.
                            case 37314: // TODO?: T5 Increases the final amount healed by your Lifebloom spell by $s1
                            case 42367: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1
                            case 43725: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1
                            case 34128: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1
                            case 46100: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1
                            case 60733: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1
                            case 60736: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1.
                            case 60738: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1
                            case 60739: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1
                            case 60740: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1.
                            case 60741: // ^^^^?: Increases the spell power of the final healing value of your Lifebloom by $s1
                            case 67164: // "IncreasesthearmoryougainfromIceArmorby$s1%,themanaregenerationyougainfromMageArmorby$s2%,andaddsanadditional$s3%ofyourSpiritincriticalstrikeratingwhenMoltenArmorisactive."
                            case 67234: // TODO WARRIOR: "BerserkerStancegrantsanadditional$s1%criticalstrikechance,andBattleStancegrantsanadditional$s2%armorpenetration."
                            case 34318: // Your Water Shield ability grants an additional $s1 mana each time it triggers and an additional $s2 mana per 5 sec.
                            case 54802: // NOTE: Doesn't make sense? -> Increases the damage over time caused by your Plague Strike ability by ${$m1}.
                            case 58079: // Increases the swim speed of targets affected by your Unending Breath spell by $58079s1%.
                            case 56380: // Your Evocation ability also causes you to regain ${$56380m1*4}% of your health over its duration.
                            case 56383: // Your Mage Armor spell grants an additional $56383s1% mana regeneration while casting.
                            case 57926: // You have an additional $57926s1% chance to reflect Fire spells while your Fire Ward is active.
                            case 57927: // You have an additional $57927s1% chance to reflect Frost spells while your Frost Ward is active.
                            case 55444: // Damage on your Lava Lash is increased by an additional $55444s1% if your weapon is enchanted with Flametongue
                            case 62132: // "IncreasesthemanayoureceivefromyourThunderstormspellby$62132s1%,butitnolongerknocksenemiesback."
                                return;
                            default:
                                throw new Error("Unhandled FLAT SPELLMOD_EFFECT2: " + effect.SpellID + ": // " + spellData.getSpell(effect.SpellID).Description_lang);
                        }
                    }
                case 23: // SPELLMOD_EFFECT3 (melee stuff mostly?)
                    {
                        switch (effect.SpellID)
                        {
                            case 54810: // "WhileFrenziedRegenerationisactive,healingeffectsonyouare$54810s1%morepowerful.
                            case 62970: // Wild Growth can affect $62970s1 additional target.
                            case 54938: // Reduces the cooldown of your Hammer of Wrath spell by $54938s1% while Avenging Wrath is active
                            case 63223: // "WhileDivinePleaisactive,youtake$63223s1%reduceddamagefromallsources."
                            case 67164: // "IncreasesthearmoryougainfromIceArmorby$s1%,themanaregenerationyougainfromMageArmorby$s2%,andaddsanadditional$s3%ofyourSpiritincriticalstrikeratingwhenMoltenArmorisactive."
                            case 67234: // "BerserkerStancegrantsanadditional$s1%criticalstrikechance,andBattleStancegrantsanadditional$s2%armorpenetration."
                            case 37742: // Increases your block rating by $s1 while Holy Shield is active.
                            case 54803: // Increases the damage reduction of your Icebound Fortitude by 2%.
                            case 58081: // Increases the movement speed of your Eye of Kilrogg by $s1% and allows it to fly in areas where flying mounts are enabled
                            case 63302: // The bonus damage granted by your Haunt spell is increased by an additional $63302s1%.
                            case 56382: // Your Molten Armor grants an additional $56382s1% of your spirit as critical strike rating
                            case 55451: // Increases your spell critical strike chance by $55451s1% on each of your weapons with Flametongue Weapon active.
                            case 59289: // Your Ghost Wolf form regenerates an additional $59289s1% of your maximum health every 5 sec.
                                return;
                            default:
                                throw new Error("Unhandled FLAT SPELLMOD_EFFECT3: " + effect.SpellID + ": // " + spellData.getSpell(effect.SpellID).Description_lang);
                        }
                    }
                case 4: // SPELLMOD_CHARGES 
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_CHARGES,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectBasePoints + 1
                    }
                case 24: // SPELLMOD_FLAT_SPELL_SCALE
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectBasePoints + 1
                    }
                case 14: // SPELLMOD_COST
                case 10: // SPELLMOD_CASTING_TIME (handled by addon api, gear change will always trigger update)
                case 2: // SPELLMOD_THREAT
                case 5: // SPELLMOD_RANGE
                case 6:  // SPELLMOD_RADIUS
                case 11: // SPELLMOD_COOLDOWN (TODO: if DPSCD is ever implemented?)
                case 17: // SPELLMOD_JUMP_TARGETS
                case 18: // SPELLMOD_CHANCE_OF_SUCCESS
                    return;
                default:
                    throw "SPELL_AURA_ADD_FLAT_MODIFIER type not handled!";
            }

            if (!this.spellEffectTargetsValidSpells(effect)) return;

            return aed;
        }

        this.handlers[AURA_TYPE.SPELL_AURA_ADD_PCT_MODIFIER] = (effect) =>
        {
            const aed: AddonEffectData = {
                type: "",
                affectSpell: this.getAffectSpell(effect),
                value: effect.EffectBasePoints + 1,
            }

            switch (effect["EffectMiscValue[0]"])
            {
                case 8: // SPELLMOD_ALL_EFFECTS
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_PCT_EFFECT;
                    break;
                case 0: // SPELLMOD_DAMAGE
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING;
                    break;
                case 22: // SPELLMOD_DOT
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME;
                    break;
                case 20: // SPELLMOD_EFFECT_PAST_FIRST
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST;
                    break;
                case 15: // SPELLMOD_CRIT_DAMAGE_BONUS
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT;
                    break;
                case 3: // SPELLMOD_EFFECT1 (melee stuff mostly?)
                    {
                        switch (effect.SpellID)
                        {
                            case 55686: // Increases the armor from your Inner Fire spell by $55686m1%
                            case 38390: // Increases the mana you gain from your Aspect of the Viper by $s1%
                            case 60166: // Your Water Shield is $s1% stronger
                            case 67164: // "IncreasesthearmoryougainfromIceArmorby$s1%,themanaregenerationyougainfromMageArmorby$s2%,andaddsanadditional$s3%ofyourSpiritincriticalstrikeratingwhenMoltenArmorisactive."
                            case 56384: // Your Ice Armor and Frost Armor spells grant an additional $56384s1% armor and resistance.
                                return;
                            default:
                                throw new Error("Unhandled FLAT SPELLMOD_EFFECT1: " + effect.SpellID + ": // " + spellData.getSpell(effect.SpellID).Description_lang);
                        }
                    }
                case 12: // SPELLMOD_EFFECT2
                    {
                        switch (effect.SpellID)
                        {
                            case 54939: // Your Lay on Hands grants twice as much mana as normal and also grants you as much mana as it grants your target.
                            case 60166: // Your Water Shield is $s1% stronger
                            case 55436: // Increases the passive mana regeneration of your Water Shield spell by $55436s1%
                                return;
                            default:
                                throw new Error("Unhandled FLAT SPELLMOD_EFFECT2: " + effect.SpellID + ": // " + spellData.getSpell(effect.SpellID).Description_lang);
                        }
                    }
                case 23: // SPELLMOD_EFFECT3
                    {
                        switch (effect.SpellID)
                        {
                            case 56384: // Your Ice Armor and Frost Armor spells grant an additional $56384s1% armor and resistance.
                                return;
                            default:
                                throw new Error("Unhandled FLAT SPELLMOD_EFFECT3: " + effect.SpellID + ": // " + spellData.getSpell(effect.SpellID).Description_lang);
                        }
                    }
                case 27: // SPELLMOD_MULTIPLE_VALUE
                case 1: // SPELLMOD_DURATION (shouldn't be used for DoTs and HoTs)
                case 11: // SPELLMOD_COOLDOWN
                case 5: // SPELLMOD_RANGE
                case 14: // SPELLMOD_COST
                case 2: // SPELLMOD_THREAT
                case 6: // SPELLMOD_RADIUS
                case 10: // SPELLMOD_CASTING_TIME
                case 9: // SPELLMOD_NOT_LOSE_CASTING_TIME
                case 26: // SPELLMOD_FREQUENCY_OF_SUCCESS
                    return;
                default:
                    throw "SPELL_AURA_ADD_FLAT_MODIFIER type not handled!";
            }

            if (!this.spellEffectTargetsValidSpells(effect)) return;

            return aed;
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_MANA_REGEN_INTERRUPT] = (effect) =>
        {
            const aed: AddonEffectData = {
                type: ADDON_EFFECT_TYPE.FSR_SPIRIT_REGEN,
                value: effect.EffectBasePoints + 1
            }
            return aed;
        }

        this.handlers[AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL] = (effect) =>
        {
            switch (effect.SpellID)
            {
                case 21741: // Demonic Ally
                case 21926: // Nature's Ally
                case 21922: // Demonic Ally
                case 21928: // Nature's Ally
                case 26176: // Unseen Path Pet Bonus
                case 28756: // Stalker's Ally
                case 38443: // Totemic Mastery
                    return;
                default:
                    throw "unhandled spell!";
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_DUMMY] = (effect) =>
        {
            switch (effect.SpellID)
            {
                case 28719: // On Healing Touch critical hits, you regain 30% of the mana cost of the spell.
                    return {
                        type: ADDON_EFFECT_TYPE.ILLUMINATION,
                        value: 30
                    }
                case 28851: // Flash of Light Librams
                case 28853:
                case 32403:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: [1073741824],
                        value: effect.EffectBasePoints + 1,
                    }
                case 34231: // Holy Light Librams
                case 64956: // Increases spell power of Holy Light by 160.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: [2147483648],
                        value: effect.EffectBasePoints + 1,
                    }
                case 64950: //  Increases the spell power of your Insect Swarm by 374.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: [2097152],
                        value: effect.EffectBasePoints + 1,
                    }
                case 64949: // Increases the spell power of your Nourish by 187.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: [0, 33554432],
                        value: effect.EffectBasePoints + 1,
                    }
                case 43743: // Libram of Divine Purpose
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: [134217728],
                        value: effect.EffectBasePoints + 1,
                    }
                case 34294:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: [64],
                        value: effect.EffectBasePoints + 1,
                    }
                case 33695:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: [0, 2 + 2097152],
                        value: effect.EffectBasePoints + 1,
                    }
                case 60659: // Increases spell power of Flash of Light by 331.
                case 60656: // Increases spell power of Flash of Light by 293.
                case 60661: // Increases spell power of Flash of Light by 375.
                case 60662: // Increases spell power of Flash of Light by 436.
                case 60664: // Increases spell power of Flash of Light by 510.
                    /* return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectBasePoints + 1,
                    } */
                    // They have both sp and flat value and only use flat value, tooltip is fake news.
                    return; 
                case 37288: // Your helpful spells have a chance to restore up to 120 mana.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_MANARESTORE,
                        affectSpell: [240, 16],
                        value: 6 // 5%
                    }
                case 37295: // Your harmful spells have a chance to restore up to 120 mana.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_MANARESTORE,
                        affectSpell: [6291975],
                        value: 6 // 5%
                    }
                case 34246: // Increases the spell power on the periodic portion of your Lifebloom by 47.
                case 60779: // Increases the spell power on the periodic portion of your Lifebloom by 125.
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_EFFECT1_FLAT_SPELLPOWER,
                        affectSpell: [0, 16],
                        value: effect.EffectBasePoints + 1
                    }
                case 67201:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                        affectSpell: [0, 32],
                        value: 20
                    }
                case 70658:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                        affectSpell: [0, 67108864],
                        value: 15 // TODO: Get correct average heal increase. (The healing granted by your Wild Growth spell reduces 30% less over time.)
                    }
                case 70650:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                        affectSpell: [], // TODO: DK spellset Death&Decay
                        value: 20
                    }
                case 64962:
                    {
                        if (effect.EffectIndex != 1) return;
                        return { //  Increases the damage done by your Death Coil ability by 380 and by your Frost Strike ability by 113.
                            type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
                            affectSpell: [], // TODO: DK spellset Deathcoil
                            value: 380
                        }
                    }
                case 70755: // T10 While your Divine Illumination talent is active, your healing spells are 35% stronger.
                    return {
                        type: ADDON_EFFECT_TYPE.SCRIPT_SET_VALUE,
                        value: 35,
                        scriptKey: "Pala_T10_DI"
                    }
                case 60144:
                case 37169: // Your Eviscerate and Envenom abilities cause 40 extra damage per combo point.
                case 37182: // Increases the amount healed by your Judgement of Light by $s1.
                case 34241: // Increases periodic damage done by Rip by $s1 per combo point.
                case 38320: // Increases the benefit your Flash of Light spell receives from Blessing of Light by ${$m1/2} and Holy Light spell receives from Blessing of Light by $s1.
                case 39926:
                case 28849: // Regain up to 10 mana each time you cast Lesser Healing Wave. (depends on rank...)
                case 28847: // Gain up to 25 mana each time you cast Healing Touch. (depends on rank...)
                case 28809: // On Greater Heal critical hits, your target will gain Armor of Faith, absorbing up to 500 damage.
                case 23582: // Heals the rogue for 500 when Vanish is performed.
                case 26169: // 20% chance that your heals on others will also heal you 10% of the amount healed.
                case 28764: // Adaptive Warding
                case 28823: // Totemic Power
                case 28775: // Increases the amount healed by your Judgement of Light by 20.
                case 28789: // Your Flash of Light and Holy Light spells have a chance to imbue your target with Holy Power.
                case 17670: // Argent dawn comission
                case 22683: // Ony cloak
                case 23701: // Twisting Nether
                case 16372: // UBRS key ring
                case 27539: // Obsidian Armor
                case 28830: // Reduces health cost of your Life Tap by $s1%.
                case 39372: // Your Frost and Shadow damage spells heal you for $s1% of the damage they deal.
                case 37188: // Each time you cast a Judgement, your party members gain $43838s1 mana.
                case 37227: // Your critical heals from Healing Wave, Lesser Healing Wave, and Chain Heal reduce the cast time of your next Healing Wave spell by ${$39950m1/-1000}.2 sec for $39950d. This effect cannot occur more than once per minute.
                case 37315:
                case 37377:
                case 37483:
                case 39437:
                case 37381:
                case 38390:
                case 37384:
                case 32748:
                case 40442:
                case 37324:
                case 17619:
                case 45484:
                case 45481:
                case 45482:
                case 45483:
                case 40470:
                case 39446:
                case 40438:
                case 44835:
                case 38224:
                case 46699:
                case 40463:
                case 22801:
                case 34244:
                case 52172:
                case 50200:
                case 26127: // Enigma Blizzard Bonus (uninterruptible)
                case 48777:
                case 48776:
                case 32410:
                case 44683:
                case 55000:
                case 55005:
                case 61257:
                case 58933:
                case 62181:
                case 64890:
                case 64895:
                case 64928: // Your critical strikes from Lightning Bolt cause the target to take nature damage equal to 8% of the Lightning Bolt's damage over 4 seconds.
                case 64760: // Your Rejuvenation spell also provides an instant heal for your target.
                case 64736: // Increases the bonus damage done per disease by 20% on Blood Strike, Heart Strike, Obliterate, and Scourge Strike.
                case 64869:
                case 67202: // Increases the shield from your Divine Aegis and the instant healing from your Empowered Renew by 10%.
                case 67228: // Your Lava Burst spell causes your target to burn for an additonal 10% of your spell's damage over 6 seconds.
                case 69755:
                case 69739:
                case 70752:
                case 70770:
                case 70664:
                case 70718:
                case 70723:
                case 70808:
                case 70811:
                case 70817:
                case 70832:
                case 70847:
                case 70765:
                case 60244:
                case 60792:
                case 60774: // TODO:  Increases periodic damage done by Rip by 21 per combo point.
                case 60764: // TODO:  Increases the attack power bonus on Windfury Weapon attacks by 212.
                case 59906:
                case 59915:
                case 62853:
                case 62972:
                case 71892:
                case 71947:
                case 71406:
                case 71562:
                case 71880:
                case 71519:
                case 66303:
                case 71545:
                case 66304:
                case 67556:
                case 74267:
                case 74491:
                case 71903:
                case 72968:
                case 43827:
                case 63751:
                case 58783:
                case 57819:
                case 70313:
                case 57818:
                case 57822:
                case 57821:
                case 57818:
                case 57820:
                case 57818:
                case 61980:
                case 73077:
                case 57818:
                    return;
                default:
                    throw "SPELL_AURA_DUMMY spell not handled! " + effect.SpellID;
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_ADD_TARGET_TRIGGER] = (effect) =>
        {
            switch (effect.EffectTriggerSpell)
            {
                case 22009: // Greater Heal (Renew)
                case 23590: // Judgement (Dmg proc)
                case 37563: // Incarnate Raiment PoH HoT
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectTriggerSpell
                    }
                case 28839:
                case 37523:
                case 17769: // Wolfshead Helm
                case 17770: // "
                case 37193: // Each time you use your Holy Shield ability, you gain $37193s1 block value against a single attack in the next $37193d.
                case 34324:
                case 40461:
                case 43839:
                case 41043:
                case 43849:
                case 28820: // Earthshatter 8pc
                case 46089:
                case 41038:
                case 43848:
                case 37508:
                case 28788: // Your Cleanse spell also heals the target for 200.
                case 28815: // Revealed Flaw
                case 24405: // Your Frostbolt spells have a 6% chance to restore 50 mana when cast.
                case 64934:
                case 64748:
                case 60766:
                case 60795:
                case 60544:
                case 60547:
                case 60549:
                case 60555:
                case 60551:
                case 60553:
                    return;
                default:
                    throw "SPELL_AURA_ADD_TARGET_TRIGGER spell not handled! " + effect.EffectTriggerSpell;
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_POWER_REGEN] = (effect) =>
        {
            return {
                type: ADDON_EFFECT_TYPE.MOD_MANA_PER_5,
                value: effect.EffectBasePoints + 1,
            };
        }

        this.handlers[AURA_TYPE.SPELL_AURA_OVERRIDE_CLASS_SCRIPTS] = (effect) =>
        {
            switch (effect.SpellID)
            {
                case 26127: // Enigma Blizzard Bonus
                case 28716: // Your Rejuvenation ticks have a chance to restore 60 mana, 8 energy, or 2 rage to your target.
                case 28744: // Your initial cast and Regrowth ticks will increase the maximum health of your target by up to 50, stacking up to 7 times.
                case 37327: // Increases your Starfire damage against targets afflicted with Moonfire or Insect Swarm by $s1%.
                case 37447:
                case 37424:
                case 61062:
                    return;
                case 60137: // Your Nourish heals an additional 5% for each of your heal over time effects present on the target.
                    return {
                        type: ADDON_EFFECT_TYPE.SCRIPT_SET_VALUE,
                        value: 5,
                        scriptKey: "Druid_T7_Nourish"
                    }
                case 27859:
                case 27855:
                case 27853:
                case 38432:
                case 28857:
                case 28856:
                case 28854:
                case 32402:
                case 32401:
                case 34292:
                case 33556:
                case 41040:
                case 34230:
                case 34252:
                case 60775:
                case 60797:
                case 60772:
                case 60556:
                case 60557:
                case 60558:
                case 60562:
                case 60559:
                case 60560:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectBasePoints + 1,
                    }
                default:
                    throw "SPELL_AURA_OVERRIDE_CLASS_SCRIPTS spell not handled! " + effect.SpellID;
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_DAMAGE_DONE_VERSUS] = (effect) =>
        {
            return {
                type: ADDON_EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
                affectMask: effect["EffectMiscValue[0]"],
                value: effect.EffectBasePoints + 1,
            };
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_FLAT_SPELL_DAMAGE_VERSUS] = effect =>
        {
            return {
                type: ADDON_EFFECT_TYPE.VERSUSMOD_FLAT_SPELLPOWER,
                affectMask: effect["EffectMiscValue[0]"],
                value: effect.EffectBasePoints + 1,
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_MELEE_ATTACK_POWER_VERSUS] = effect =>
        {
            return {
                type: ADDON_EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
                affectMask: effect["EffectMiscValue[0]"],
                value: effect.EffectBasePoints + 1,
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER_VERSUS] = effect =>
        {
            return {
                type: ADDON_EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER_RANGED,
                affectMask: effect["EffectMiscValue[0]"],
                value: effect.EffectBasePoints + 1,
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_PERIODIC_HASTE] = effect =>
        {
            return {
                type: ADDON_EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_HASTE,
                affectSpell: this.getAffectSpell(effect),
                value: 1,
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_ABILITY_PERIODIC_CRIT] = effect =>
        {
            return {
                type: ADDON_EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
                affectSpell: this.getAffectSpell(effect),
                value: 1,
            }
        }
    }

    /**
     * Get spellmask array.
     * @param effect 
     */
    private getAffectSpell(effect: SpellEffect)
    {
        if (effect["EffectSpellClassMask[0]"] === 0 && effect["EffectSpellClassMask[1]"] === 0 && effect["EffectSpellClassMask[2]"] === 0) throw "wtf?"
        return [effect["EffectSpellClassMask[0]"], effect["EffectSpellClassMask[1]"], effect["EffectSpellClassMask[2]"], effect["EffectSpellClassMask[3]"]];
    }

    /**
     * Check if spell effects targets a spell handled by the addon.
     * @param spellId 
     * @param effect 
     */
    private spellEffectTargetsValidSpells(effect: SpellEffect)
    {
        const sco = this.spellData.getSpellClassOption(effect.SpellID);
        const affectMasks = this.getAffectSpell(effect);

        const classSpellSet = this.classSpellSets.getClassSets(sco.SpellClassSet);

        for (let i = 0; i < affectMasks.length; i++)
        {
            const sset = classSpellSet[i];
            let bit = 1;
            while (bit !== 0)
            {
                if (bit & affectMasks[i]) 
                {
                    for (const spellId in sset[bit])
                    {
                        if (this.classSpellLists.isHandledSpell(parseInt(spellId))) return true;
                    }
                }
                bit = bit << 1;
            }
        }

        return false;
    }
}

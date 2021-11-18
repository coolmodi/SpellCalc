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
    [AURA_TYPE.SPELL_AURA_233]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_HASTE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_POWER_REGEN]: true, // As of TBC the API provides regen values including MP5
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
                case 28753: // hunter t3 mana restore
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_CRIT_MANARESTORE,
                        affectSpell: [4096], // TODO: spellset
                        value: 50
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
                default:
                    throw "Triggered spell needs some love"
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
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_FLAT_VALUE;
                    break;
                case 1: // SPELLMOD_DURATION
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_FLAT_DURATION;
                    aed.value /= 1000;
                    break;
                case 16: // SPELLMOD_RESIST_MISS_CHANCE
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE;
                    break;
                case 14: // SPELLMOD_COST
                case 10: // SPELLMOD_CASTING_TIME (handled by addon api, gear change will always trigger update)
                case 2: // SPELLMOD_THREAT
                case 5: // SPELLMOD_RANGE
                case 6:  // SPELLMOD_RADIUS
                case 11: // SPELLMOD_COOLDOWN (TODO: if DPSCD is ever implemented?)
                case 17: // SPELLMOD_JUMP_TARGETS (TODO: make this add chain targets?)
                case 18: // SPELLMOD_CHANCE_OF_SUCCESS
                case 12: // TODO: SPELLMOD_EFFECT2 (melee stuff mostly?)
                case 3: // TODO: SPELLMOD_EFFECT1 (melee stuff mostly?)
                case 23: // TODO: SPELLMOD_EFFECT3 (melee stuff mostly?)
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
                case 22: // SPELLMOD_DOT
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING;
                    break;
                case 20: // SPELLMOD_EFFECT_PAST_FIRST
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST;
                    break;
                case 15: // SPELLMOD_CRIT_DAMAGE_BONUS
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT;
                    break;
                case 27: // SPELLMOD_MULTIPLE_VALUE
                case 1: // SPELLMOD_DURATION (shouldn't be used for DoTs and HoTs)
                case 11: // SPELLMOD_COOLDOWN
                case 5: // SPELLMOD_RANGE
                case 14: // SPELLMOD_COST
                case 2: // SPELLMOD_THREAT
                case 6: // SPELLMOD_RADIUS
                case 9: // SPELLMOD_NOT_LOSE_CASTING_TIME
                case 3: // TODO: SPELLMOD_EFFECT1 (melee stuff mostly?)
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
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: [2147483648],
                        value: effect.EffectBasePoints + 1,
                    }
                case 34294:
                case 43743:
                case 33695:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectBasePoints + 1,
                    }

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
                case 34246: // Increases the periodic healing of your Lifebloom by up to $s1. 
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_EFFECT1_FLAT_SPELLPOWER,
                        affectSpell: [0, 16],
                        value: 88
                    }
                case 37169: // TODO: Your Eviscerate and Envenom abilities cause 40 extra damage per combo point.
                case 37182: // TODO: Increases the amount healed by your Judgement of Light by $s1.
                case 34241: // TODO: Increases periodic damage done by Rip by $s1 per combo point.
                case 38320: // TODO: Increases the benefit your Flash of Light spell receives from Blessing of Light by ${$m1/2} and Holy Light spell receives from Blessing of Light by $s1.
                case 39926: // TODO: ToL heal bonus improvement
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
                    return;
                default:
                    throw "SPELL_AURA_DUMMY spell not handled!";
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
                    return;
                default:
                    throw "SPELL_AURA_ADD_TARGET_TRIGGER spell not handled!";
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
                case 37327: // TODO: Increases your Starfire damage against targets afflicted with Moonfire or Insect Swarm by $s1%.
                case 37447:
                case 37424:
                    return;
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
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectBasePoints + 1,
                    }
                default:
                    throw "SPELL_AURA_OVERRIDE_CLASS_SCRIPTS spell not handled!";
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
    }

    /**
     * Get spellmask array.
     * @param effect 
     */
    private getAffectSpell(effect: SpellEffect)
    {
        if (effect["EffectSpellClassMask[0]"] === 0 && effect["EffectSpellClassMask[1]"] === 0) throw "wtf?"
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

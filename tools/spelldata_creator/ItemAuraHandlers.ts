import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { SpellData, SpellEffect } from "./SpellData";

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
                // TODO: future
                case 28804: // Epiphany priest T3
                case 28772: // Frostfire dmg taken debuff proc
                case 28753: // hunter t3 mana restore
                case 9057: // Damage
                case 18980: // Dmg
                case 27775: // proc spelldamage increase
                case 26121: // proc spelldamage increase
                case 23864: // Energy restore
                case 27788: // Energy restore
                case 28813: // Energy restore
                case 23580: // Bloodfang dmg proc
                    return;
                case 18350: // Dummy trigger
                    if (effect.SpellID == 23572) // Earhtfury mana restore
                    {
                        return {
                            type: ADDON_EFFECT_TYPE.EARTHFURY_RETURN,
                            value: 1
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
                case 26975: // Battlegear of Eternal Justice
                    return; // TODO: 20% chance to regain 100 mana when you cast a Judgement.
                default:
                    throw "Triggered spell needs some love"
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_TARGET_RESISTANCE] = (effect) =>
        {
            const aed: AddonEffectData = {
                type: ADDON_EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
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
                case 12: // TODO: SPELLMOD_EFFECT2
                case 3: // TODO: SPELLMOD_EFFECT1
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
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_PCT_DAMAGE;
                    break;
                case 20: // SPELLMOD_EFFECT_PAST_FIRST
                    aed.type = ADDON_EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST;
                    break;
                case 27: // SPELLMOD_MULTIPLE_VALUE
                case 1: // SPELLMOD_DURATION (shouldn't be used for DoTs and HoTs)
                case 11: // SPELLMOD_COOLDOWN
                case 5: // SPELLMOD_RANGE
                case 14: // SPELLMOD_COST
                case 2: // SPELLMOD_THREAT
                case 6: // SPELLMOD_RADIUS
                case 9: // SPELLMOD_NOT_LOSE_CASTING_TIME
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
                case 28851:
                case 28853:
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectBasePoints + 1,
                    }
                case 28847: // TODO: Gain up to 25 mana each time you cast Healing Touch.
                case 28849: // TODO: Regain up to 10 mana each time you cast Lesser Healing Wave.
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
                    return;
                default:
                    throw "SPELL_AURA_DUMMY spell not handled!";
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_ADD_TARGET_TRIGGER] = (effect) =>
        {
            switch (effect.EffectTriggerSpell)
            {
                case 28820:
                    return {
                        type: ADDON_EFFECT_TYPE.CONDITION_TRIGGER,
                        value: "_addon.BUFF_CONDITIONS.EARTHSHATTERER_8PCS"
                    }
                case 22009: // Greater Heal (Renew)
                case 23590: // Judgement (Dmg proc)
                    return {
                        type: ADDON_EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
                        affectSpell: this.getAffectSpell(effect),
                        value: effect.EffectTriggerSpell
                    }
                case 28839:
                case 17769: // Wolfshead Helm
                case 17770: // "
                // TODO: these
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
                case 28854: // Increases the damage of your Moonfire spell by up to 17%.
                    return;
                case 27859:
                case 27855:
                case 27853:
                case 28857:
                case 28856:
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
        if (effect["EffectSpellClassMask[0]"] === 0) throw "wtf?"
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

import { SpellData, SpellEffect } from "../SpellData";

function getBaseValue(effect: SpellEffect)
{
    let value = 0;
    if (effect.EffectDieSides == 0)
        value = effect.EffectBasePoints;
    else if (effect.EffectDieSides == 1)
        value = effect.EffectBasePoints + 1;
    else
        switch (effect.SpellID)
        {
            case 14147:
            case 23314:
            case 23313:
                value = Math.round(effect.EffectBasePoints + effect.EffectDieSides / 2);
                break;
            default:
                throw new Error("DieSides neither 0 nor 1!");
        }


    if (effect.EffectPointsPerResource != 0)
    {
        value += effect.EffectPointsPerResource * 5;
    }

    return value;
}

export class TargetAuraHandlers
{
    private readonly spellData: SpellData;
    readonly handlers: { [index: number]: (effect: SpellEffect) => AddonEffectData | void } = {};

    constructor(spellData: SpellData)
    {
        this.spellData = spellData;

        this.handlers[AURA_TYPE.MOD_HEALING_TAKEN_PCT] = effect => 
        {
            const value = getBaseValue(effect);
            const aed: AddonEffectData = {
                type: ADDON_EFFECT_TYPE.TARGET_HEALING_RECIEVED,
                value: value,
                hasStacks: this.hasAuraCumStacks(effect.SpellID),
                auraCategory: (value > 0) ? ADDON_AURA_CATEGORY.HEALING_RECIEVED_POSITIVE : ADDON_AURA_CATEGORY.HEALING_RECIEVED_NEGATIVE,
            };
            return aed;
        }

        this.handlers[AURA_TYPE.MOD_MECHANIC_DAMAGE_TAKEN_PERCENT] = effect => 
        {
            if (effect.EffectMiscValue_0 == 0) throw new Error("MOD_MECHANIC_DAMAGE_TAKEN_PERCENT: EffectMiscValue_0 is 0!");
            return {
                type: ADDON_EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
                affectMechanic: effect.EffectMiscValue_0,
                value: getBaseValue(effect),
                auraCategory: (effect.EffectMiscValue_0 == SpellMechanic.BLEED) ? ADDON_AURA_CATEGORY.BLEED_DAMAGE : undefined,
                hasStacks: this.hasAuraCumStacks(effect.SpellID)
            };
        }

        this.handlers[AURA_TYPE.MOD_DAMAGE_PERCENT_TAKEN] = effect => 
        {
            if (effect.EffectMiscValue_0 == 0)
            {
                if (effect.SpellID == 28348) return;
                throw new Error("MOD_DAMAGE_PERCENT_TAKEN: EffectMiscValue_0 is 0!");
            }

            const value = getBaseValue(effect);
            if (value == 0) return;

            return {
                type: ADDON_EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
                affectMask: effect.EffectMiscValue_0,
                value: value,
                hasStacks: this.hasAuraCumStacks(effect.SpellID)
            };
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_RESISTANCE] = effect => 
        {
            if (effect.EffectMiscValue_0 == 0) throw new Error("SPELL_AURA_MOD_RESISTANCE: EffectMiscValue_0 is 0!");

            const spellName = this.spellData.getSpellName(effect.SpellID)?.Name_lang;
            if (spellName && spellName == "Degrade")
            {
                return {
                    type: ADDON_EFFECT_TYPE.SCRIPT_AURASCRIPT,
                    value: 123,
                    scriptKey: "Degrade_Armor"
                };
            }

            const value = getBaseValue(effect);
            if (value == 0) return;

            return {
                type: ADDON_EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
                affectMask: effect.EffectMiscValue_0,
                value: -value,
                hasStacks: this.hasAuraCumStacks(effect.SpellID),
            };
        }

        this.handlers[AURA_TYPE.MOD_RESISTANCE_PCT] = effect => 
        {
            if (effect.EffectMiscValue_0 == 0) throw new Error("MOD_RESISTANCE_PCT: EffectMiscValue_0 is 0!");
            return {
                type: ADDON_EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
                affectMask: effect.EffectMiscValue_0,
                value: getBaseValue(effect),
                hasStacks: this.hasAuraCumStacks(effect.SpellID)
            };
        }
    }

    /**
     * Check if spell aura is cumulatively stacking.
     * @param spellId 
     * @returns 
     */
    hasAuraCumStacks(spellId: number)
    {
        const cumAura = this.spellData.getSpellAuraOptions(spellId)?.CumulativeAura;
        return typeof cumAura !== "undefined" && cumAura > 1;
    }
}

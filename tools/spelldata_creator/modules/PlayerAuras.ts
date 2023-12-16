import { AuraHandlers } from "./../ItemAuraHandlers";
import { createEffectLua, createFileHead } from "./../itemFunctions";
import { SpellData, SpellEffect } from "./../SpellData";

const DO_AURAS: { [index: number]: true | undefined } = {
    //[AURA_TYPE.SPELL_AURA_MOD_DAMAGE_TAKEN]: true,
    [AURA_TYPE.SPELL_AURA_OBS_MOD_MANA]: true,
    //[AURA_TYPE.SPELL_AURA_MOD_RESISTANCE]: true,
    [AURA_TYPE.SPELL_AURA_PERIODIC_ENERGIZE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HIT_CHANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_HIT_CHANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_DONE_CREATURE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_PERCENT_DONE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_POWER_REGEN]: true,
    //[AURA_TYPE.MOD_DAMAGE_PERCENT_TAKEN]: true,
    //[AURA_TYPE.MOD_RESISTANCE_PCT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MELEE_ATTACK_POWER_VERSUS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_FLAT_SPELL_DAMAGE_VERSUS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_DONE_VERSUS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_TARGET_RESISTANCE]: true,
    [AURA_TYPE.MOD_HEALING_DONE_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_ADD_FLAT_MODIFIER]: true,
    [AURA_TYPE.SPELL_AURA_ADD_PCT_MODIFIER]: true,
}

export class PlayerAuras
{
    private readonly spellData: SpellData;
    private readonly auraHandlers: AuraHandlers;

    constructor(spellData: SpellData, auraHandlers: AuraHandlers)
    {
        this.spellData = spellData;
        this.auraHandlers = auraHandlers;
    }

    /**
     * Process spell and return addon effect data if spell has a valid effect.
     * @param spellId 
     */
    private processEffects(spellEffects: SpellEffect[]): AddonEffectData[]
    {
        const aedarr: AddonEffectData[] = [];

        if (!spellEffects) return aedarr;

        const misc = this.spellData.getSpellMisc(spellEffects[0].SpellID, true);
        if (!misc) return aedarr;

        //if (misc.Attributes_0 & SPELL_ATTR0.SPELL_ATTR_PASSIVE) return aedarr;
        if (misc.Attributes_0 & SPELL_ATTR0.SPELL_ATTR_DO_NOT_DISPLAY) return aedarr;

        for (let spellEffect of spellEffects)
        {
            if (spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA 
                && spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA
                && spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_APPLY_AREA_AURA_PARTY) continue;
            if (!DO_AURAS[spellEffect.EffectAura]) continue;
            if (!this.auraHandlers.handlers[spellEffect.EffectAura]) 
            {
                //console.log("Aura type " + spellEffect.EffectAura + " not handled! spellId: " + spellEffect.SpellID);
                throw new Error("Aura type " + spellEffect.EffectAura + " not handled! spellId: " + spellEffect.SpellID);
                continue;
            }
            
            const aed = this.auraHandlers.handlers[spellEffect.EffectAura](spellEffect);
            if (aed) aedarr.push(aed);
        }

        return aedarr;
    }

    private getSpellData()
    {
        const filteredSpells = new Map<number, AddonEffectData[]>();

        console.log("Building spell aura data...");

        const spells = this.spellData.spellEffectsBySpellId;

        for (const [spellId, effects] of spells)
        {
            const addonEffects = this.processEffects(effects);
            if (addonEffects.length === 0) continue;

            if (!filteredSpells.has(spellId)) filteredSpells.set(spellId, []);
            const flistentry = filteredSpells.get(spellId)!;
            for (const aeff of addonEffects)
            {
                flistentry.push(aeff);
            }
        }

        return filteredSpells;
    }

    getAuraLua()
    {
        console.log("Creating Lua for spell aura data...");

        const auraData = this.getSpellData();

        let luaStr = ""

        luaStr = createFileHead();
        luaStr += "---@type table<integer, UnitAuraEffect[]>\n"
        luaStr += "_addon.aurasPlayer = {\n";

        for (const [spellId, effects] of auraData)
        {
            luaStr += `    [${spellId}] = { -- ${this.spellData.getSpellName(spellId).Name_lang}\n`;
            for (let i = 0; i < effects.length; i++)
            {
                luaStr += createEffectLua("        ", effects[i]);
            }
            luaStr += `    },\n`;
        }

        luaStr += `}\n`;

        console.log("Aura data created!");
        return luaStr;
    }
}

import { createEffectLua, createFileHead } from "../itemFunctions";
import { SpellData, SpellEffect } from "../SpellData";
import { TargetAuraHandlers } from "./TargetAuraHandlers";

const DO_AURAS: { [index: number]: true | undefined } = {
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_TAKEN]: true, // = spell power? (misc_0 = school mask)
    [AURA_TYPE.MOD_HEALING_TAKEN]: true, // = heal power?
    [AURA_TYPE.SPELL_AURA_MOD_RESISTANCE]: true,
    [AURA_TYPE.MOD_DAMAGE_PERCENT_TAKEN]: true,
    [AURA_TYPE.MOD_RESISTANCE_PCT]: true,
    [AURA_TYPE.MOD_HEALING_TAKEN_PCT]: true,
    [AURA_TYPE.MOD_MECHANIC_DAMAGE_TAKEN_PERCENT]: true,
}

export class TargetAuras
{
    private readonly spellData: SpellData;
    private readonly handlers: TargetAuraHandlers["handlers"];

    constructor(spellData: SpellData)
    {
        this.spellData = spellData;
        this.handlers = new TargetAuraHandlers(spellData).handlers;
    }

    /**
     * Process spell and return addon effect data if spell has a valid effect.
     * @param spellId 
     */
    private processEffects(spellEffects: SpellEffect[]): AddonEffectData[]
    {
        const aedarr: AddonEffectData[] = [];

        if (!spellEffects) return aedarr;

        const spellId = spellEffects[0].SpellID;
        const misc = this.spellData.getSpellMisc(spellId, true);
        const name = this.spellData.getSpellName(spellId, true)?.Name_lang;

        if (!misc
            || !name
            || name.toLowerCase().indexOf("test") !== -1
            || misc.Attributes_0 & SPELL_ATTR0.SPELL_ATTR_DO_NOT_DISPLAY) return aedarr;

        for (let spellEffect of spellEffects)
        {
            if (spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA
                && spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA
                && spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_APPLY_AREA_AURA_PARTY) continue;
            if (!DO_AURAS[spellEffect.EffectAura]) continue;
            if (!this.handlers[spellEffect.EffectAura]) 
            {
                //console.log("Aura type " + spellEffect.EffectAura + " not handled! spellId: " + spellEffect.SpellID);
                throw new Error("Aura type " + spellEffect.EffectAura + " not handled! spellId: " + spellEffect.SpellID);
                continue;
            }

            const aed = this.handlers[spellEffect.EffectAura](spellEffect);
            if (aed) aedarr.push(aed);
        }

        return aedarr;
    }

    private getSpellData()
    {
        const filteredSpells = new Map<number, AddonEffectData[]>();

        console.log("Building spell target aura data...");

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
        console.log("Creating Lua for spell target aura data...");

        const auraData = this.getSpellData();

        let luaStr = ""

        luaStr = createFileHead();
        luaStr += "---@type table<integer, UnitAuraEffect[]>\n"
        luaStr += "_addon.aurasTarget = {\n";

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

        console.log("Target aura data created!");
        return luaStr;
    }
}

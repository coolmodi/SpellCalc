import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { readDBCSVtoMap } from "./CSVReader";
import { AuraHandlers } from "./ItemAuraHandlers";
import { createEffectLua, createFileHead, getItemDbData, orderItemsByClass } from "./itemFunctions";
import { SpellData } from "./SpellData";

const AURA_TYPES_TO_IGNORE: { [index: number]: true | undefined } = {
    [AURA_TYPE.SPELL_AURA_MOD_ATTACK_POWER]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RESISTANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SKILL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_CRIT_PERCENT]: true, // TODO: why do I ignore this?
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_DONE]: true, // spell bonus damage
    [AURA_TYPE.SPELL_AURA_MOD_HEALING_DONE]: true, // spell bonus heal
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_STAT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HIT_CHANCE]: true, // can get from ingame API
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_HIT_CHANCE]: true, // can get from ingame API
    [AURA_TYPE.SPELL_AURA_MOD_PARRY_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MELEE_ATTACK_POWER_VERSUS]: true, // TODO: future
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER_VERSUS]: true, // TODO: future
    [AURA_TYPE.SPELL_AURA_MOD_THREAT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_CRIT_CHANCE_SCHOOL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_POWER_COST_SCHOOL_PCT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_ENERGY]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SHIELD_BLOCKVALUE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPEED_ALWAYS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SWIM_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DODGE_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_BLOCK_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MECHANIC_RESISTANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_CRITICAL_THREAT]: true,
    [AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL]: true,
    [AURA_TYPE.SPELL_AURA_PERIODIC_HEAL]: true,
    [AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_AMMO_HASTE]: true, // TODO: needed or from ingame API?
    [AURA_TYPE.SPELL_AURA_DAMAGE_SHIELD]: true,
    [AURA_TYPE.SPELL_AURA_TRACK_RESOURCES]: true,
    [AURA_TYPE.SPELL_AURA_WATER_BREATHING]: true,
    [AURA_TYPE.SPELL_AURA_MOD_STEALTH_LEVEL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HEALTH_REGEN_IN_COMBAT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_STEALTH_DETECT]: true,
    [AURA_TYPE.SPELL_AURA_MECHANIC_IMMUNITY]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MOUNTED_SPEED_ALWAYS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INVISIBILITY_DETECTION]: true,
    [AURA_TYPE.SPELL_AURA_PROC_TRIGGER_DAMAGE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_CRIT_CHANCE]: true, // this seems to show up in addon API data
    [AURA_TYPE.SPELL_AURA_PERIODIC_MANA_LEECH]: true,
    [AURA_TYPE.SPELL_AURA_PERIODIC_DAMAGE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HASTE]: true,
    [AURA_TYPE.SPELL_AURA_SAFE_FALL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_TAKEN]: true,
    [AURA_TYPE.SPELL_AURA_FORCE_REACTION]: true,
    [AURA_TYPE.SPELL_AURA_PERIODIC_DAMAGE_PERCENT]: true,

    [AURA_TYPE.SPELL_AURA_MOD_POWER_REGEN]: true, // TODO: phase out old item system completely
    [AURA_TYPE.SPELL_AURA_MOD_TARGET_RESISTANCE]: true, // TODO: phase out old item system completely
}

interface ItemEffect
{
    ID: number,
    LegacySlotIndex: number,
    TriggerType: number,
    Charges: number,
    CoolDownMSec: number,
    CategoryCoolDownMSec: number,
    SpellCategoryID: number,
    SpellID: number,
    ChrSpecializationID: number,
    ParentItemID: number
}

interface DbRow
{
    entry: number,
    name: string,
    AllowableClass: number,
    class: number,
    subclass: number
}

export class ItemEffectsCreator
{
    private readonly spellData: SpellData;
    private readonly auraHandlers: AuraHandlers;

    constructor(spellData: SpellData, classSpellLists: ClassSpellLists, classSpellSets: ClassSpellSets)
    {
        this.spellData = spellData;
        this.auraHandlers = new AuraHandlers(spellData, classSpellLists, classSpellSets);
    }

    /**
     * Process spell and return addon effect data if spell has a valid effect.
     * @param spellId 
     */
    private processSpell(spellId: number): AddonEffectData[]
    {
        const spellEffects = this.spellData.getSpellEffects(spellId);
        const aedarr: AddonEffectData[] = [];

        for (let spellEffect of spellEffects)
        {
            if (spellId === 24746 || spellId === 7363 || spellId === 17816 || spellId === 24748
                || spellId === 24782 || (spellId === 24392 && spellEffect.EffectIndex === 1)
                || spellId === 28143 || spellId === 28144 || spellId === 28145 || spellId === 28142) continue;
            if (spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA) throw "Item bonus effect doesn't apply an aura?!" + spellId;
            if (AURA_TYPES_TO_IGNORE[spellEffect.EffectAura]) continue;
            if (!this.auraHandlers.handlers[spellEffect.EffectAura]) throw "Aura type isn't ignore but also not handled!";
            const aed = this.auraHandlers.handlers[spellEffect.EffectAura](spellEffect);
            if (aed) aedarr.push(aed);
        }

        return aedarr;
    }

    private getItemEffectData(dbData: { [itemId: number]: DbRow })
    {
        const itemEffects = readDBCSVtoMap<ItemEffect>("data/dbc/itemeffect.csv", "ID");
        const filteredItems = new Map<number, AddonEffectData[]>();
        let done = 0;

        for (const ie of itemEffects.values())
        {
            if (++done % 20 === 0) console.log("Doing item " + done + " of " + itemEffects.size);

            if (ie.TriggerType !== 1) continue; // 1 == on equip auras, we can ignore the rest

            // Items not in the DB shouldn't matter
            if (!dbData[ie.ParentItemID]) continue;

            const addonSpellEffect = this.processSpell(ie.SpellID);
            if (addonSpellEffect.length === 0) continue;

            if (!filteredItems.has(ie.ParentItemID)) filteredItems.set(ie.ParentItemID, []);
            const flistentry = filteredItems.get(ie.ParentItemID)!;

            for (const eff of addonSpellEffect)
            {
                flistentry.push(eff);
            }
        }

        return filteredItems;
    }

    async getItemEffectLua()
    {
        console.log("Creating Lua for  item effect data...");

        const dbData = await getItemDbData();
        const itemEffectData = this.getItemEffectData(dbData);

        const luaStrings = {
            warrior: "",
            paladin: "",
            hunter: "",
            rogue: "",
            priest: "",
            shaman: "",
            mage: "",
            warlock: "",
            druid: "",
            GENERAL: ""
        };

        const ordered = await orderItemsByClass(itemEffectData);

        luaStrings.GENERAL = createFileHead();
        luaStrings.GENERAL += "_addon.itemEffects = {\n";

        for (const [itemId, effects] of ordered.GENERAL)
        {
            luaStrings.GENERAL += `    [${itemId}] = { -- ${dbData[itemId].name}\n`;
            for (let i = 0; i < effects.length; i++)
            {
                luaStrings.GENERAL += createEffectLua("        ", effects[i]);
            }
            luaStrings.GENERAL += `    },\n`;
        }

        luaStrings.GENERAL += `}\n`;

        for (const className in ordered)
        {
            if (className != "GENERAL") luaStrings[className as keyof typeof ordered] = createFileHead(className);
        }

        for (const className in ordered)
        {
            if (className == "GENERAL") continue;

            for (const [itemId, effects] of ordered[className as keyof typeof ordered])
            {
                let entrystr = `_addon.itemEffects[${itemId}] = { -- ${dbData[itemId].name}\n`;
                for (let i = 0; i < effects.length; i++)
                {
                    entrystr += createEffectLua("    ", effects[i]);
                }
                entrystr += `}\n\n`;
                luaStrings[className as keyof typeof ordered] += entrystr; 
            }
        }

        console.log("Lua item effect data created!");
        return luaStrings;
    }
}


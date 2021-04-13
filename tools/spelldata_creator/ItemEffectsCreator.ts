import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { readDBCSVtoMap } from "./CSVReader";
import { AuraHandlers, USELESS_AURAS } from "./ItemAuraHandlers";
import { createEffectLua, createFileHead, getItemDbData, orderItemsByClass } from "./itemFunctions";
import { SpellData } from "./SpellData";

const AURA_TYPES_TO_IGNORE: { [index: number]: true | undefined } = {
    //[AURA_TYPE.SPELL_AURA_MOD_POWER_REGEN]: true, // TODO: phase out old item system completely
    //[AURA_TYPE.SPELL_AURA_MOD_TARGET_RESISTANCE]: true, // TODO: phase out old item system completely
    [AURA_TYPE.SPELL_AURA_PERIODIC_DAMAGE_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_PERIODIC_DAMAGE]: true,
    [AURA_TYPE.SPELL_AURA_PROC_TRIGGER_DAMAGE]: true,
    [AURA_TYPE.SPELL_AURA_DAMAGE_SHIELD]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_AMMO_HASTE]: true, // TODO: needed or from ingame API?
    [AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL]: true,
    [AURA_TYPE.SPELL_AURA_PERIODIC_HEAL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MELEE_ATTACK_POWER_VERSUS]: true, // TODO: future
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER_VERSUS]: true, // TODO: future
    [AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL]: true, // TODO: check this?
}
Object.assign(AURA_TYPES_TO_IGNORE, USELESS_AURAS);

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

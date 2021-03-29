import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { readDBCSVtoMap } from "./CSVReader";
import { AuraHandlers } from "./ItemAuraHandlers";
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
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SWIM_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DODGE_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_BLOCK_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MECHANIC_RESISTANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_CRITICAL_THREAT]: true,
}

interface ItemSet
{
    ID: number,
    Name_lang: string,
    SetFlags: number,
    RequiredSkill: number,
    RequiredSkillRank: number,
    ["ItemID[0]"]: number,
    ["ItemID[1]"]: number,
    ["ItemID[2]"]: number,
    ["ItemID[3]"]: number,
    ["ItemID[4]"]: number,
    ["ItemID[5]"]: number,
    ["ItemID[6]"]: number,
    ["ItemID[7]"]: number,
    ["ItemID[8]"]: number,
    ["ItemID[9]"]: number,
    ["ItemID[10]"]: number,
    ["ItemID[11]"]: number,
    ["ItemID[12]"]: number,
    ["ItemID[13]"]: number,
    ["ItemID[14]"]: number,
    ["ItemID[15]"]: number,
    ["ItemID[16]"]: number
}

interface ItemSetSpell
{
    ID: number,
    ChrSpecID: number,
    SpellID: number,
    Threshold: number,
    ItemSetID: number
}

interface ItemSetAddonData
{
    ID: number,
    name: string,
    items: number[],
    effects: {
        need: number,
        effect: AddonEffectData
    }[]
}

export class ItemSetCreator
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
            if (spellId === 24746) continue;
            if (spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA) throw "Item bonus effect doesn't apply an aura?!" + spellId;
            if (AURA_TYPES_TO_IGNORE[spellEffect.EffectAura]) continue;
            if (!this.auraHandlers.handlers[spellEffect.EffectAura]) throw "Aura type isn't ignore but also not handled!";
            const aed = this.auraHandlers.handlers[spellEffect.EffectAura](spellEffect);
            if (aed) aedarr.push(aed);
        }

        return aedarr;
    }

    /**
     * Process data for item set.
     * @param setDataEntry 
     * @param spellsbyItemSet 
     * @returns Itemset data if set has valid spell effects on any bonus.
     */
    private getAddonDataForSet(setDataEntry: ItemSet, spellsbyItemSet: Map<number, ItemSetSpell[]>)
    {
        const setSpells = spellsbyItemSet.get(setDataEntry.ID);
        const setAddonData: ItemSetAddonData = {
            ID: setDataEntry.ID,
            name: setDataEntry.Name_lang,
            items: [],
            effects: []
        }

        if (!setSpells)
        {
            console.log(setDataEntry.ID + ": " + setDataEntry.Name_lang + " has no spells assinged, SKIPPING!");
            return;
        }

        for (let i = 0; i <= 16; i++)
        {
            const itemKey = ("ItemID[" + i + "]") as keyof ItemSet;
            if (setDataEntry[itemKey] != 0) setAddonData.items.push(setDataEntry[itemKey] as number);
        }

        for (let setSpellEntry of setSpells)
        {
            const aedarr = this.processSpell(setSpellEntry.SpellID);
            for (let aed of aedarr)
            {
                setAddonData.effects.push({
                    need: setSpellEntry.Threshold,
                    effect: aed
                });
            }
        }

        if (setAddonData.effects.length === 0)
        {
            console.log(setDataEntry.ID + ": " + setDataEntry.Name_lang + " has no valid spells, SKIPPING!");
            return;
        }

        return setAddonData;
    }

    /**
     * Get item set spells mapped by item set ID.
     */
    private getSpellsByItemSet()
    {
        console.log("Mapping set spells...");
        const itemSetSpellData = readDBCSVtoMap<ItemSetSpell>("data/dbc/itemsetspell.csv", "ID");
        const spellsbyItemSet = new Map<number, ItemSetSpell[]>();

        for (let spellEntry of itemSetSpellData.values())
        {
            if (!spellsbyItemSet.has(spellEntry.ItemSetID)) spellsbyItemSet.set(spellEntry.ItemSetID, []);
            spellsbyItemSet.get(spellEntry.ItemSetID)!.push(spellEntry);
        }

        for (let setSpells of spellsbyItemSet.values())
        {
            setSpells.sort((a, b) =>
            {
                return a.Threshold - b.Threshold;
            });
        }

        console.log("Mapped " + spellsbyItemSet.size + " set spells!");
        return spellsbyItemSet;
    }

    /**
     * Get processed data of all valid item sets.
     */
    private getProcessedSetData()
    {
        const spellsbyItemSet = this.getSpellsByItemSet();
        const itemSetData = readDBCSVtoMap<ItemSet>("data/dbc/itemset.csv", "ID");
        const setAddonExportData = new Map<number, ItemSetAddonData>();

        console.log("Creating data for sets...");
        for (const setDataEntry of itemSetData.values())
        {
            const addonSetData = this.getAddonDataForSet(setDataEntry, spellsbyItemSet);
            if (addonSetData) 
            {
                console.log(setDataEntry.ID + ": " + setDataEntry.Name_lang + " added!");
                setAddonExportData.set(setDataEntry.ID, addonSetData);
            }
        }

        console.log("Created " + setAddonExportData.size + " set data entries!");
        return setAddonExportData;
    }

    /**
     * Get Lua code for item set data file.
     */
    getItemSetLua()
    {
        console.log("Creating Lua for  item set data...");
        const processedData = this.getProcessedSetData();

        let lua = `-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);

_addon.itemSetData = {\n`;

        for (const [setId, setData] of processedData)
        {
            lua += `    [${setId}] = {\n`;
            lua += `        name = "${setData.name}",\n`;
            lua += `        effects = {\n`;

            for (let i = 0; i < setData.effects.length; i++)
            {
                const eff = setData.effects[i];
                lua += `            [${i + 1}] = {\n`;
                lua += `                need = ${eff.need},\n`;
                lua += `                effect = {\n`;
                lua += `                    effect = ${eff.effect.effect},\n`;
                if (eff.effect.affectMask) lua += `                    affectMask = ${eff.effect.affectMask},\n`;
                if (eff.effect.affectSpell) lua += `                    affectSpell = {${eff.effect.affectSpell.join(", ")}},\n`;
                if (typeof eff.effect.value !== "undefined") lua += `                    value = ${eff.effect.value},\n`;
                lua += `                }\n`;
                lua += `            },\n`;
            }

            lua += `        }\n`;
            lua += `    },\n`;
        }

        lua += "}\n\n_addon.setItemData = {\n";

        for (const [setId, setData] of processedData)
        {
            for (const itemId of setData.items)
            {
                lua += `    [${itemId}] = ${setId},\n`
            }
        }

        lua += "}";

        console.log("Lua item set data created!");
        return lua;
    }
}


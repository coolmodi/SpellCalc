import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { readDBCSVtoMap } from "./CSVReader";
import { AuraHandlers, USELESS_AURAS } from "./ItemAuraHandlers";
import { createEffectLua, createFileHead, orderItemsByClass } from "./itemFunctions";
import { SpellData } from "./SpellData";

const AURA_TYPES_TO_IGNORE: { [index: number]: true | undefined } = {
    [AURA_TYPE.SPELL_AURA_MOD_MELEE_ATTACK_POWER_VERSUS]: true, // TODO: future
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER_VERSUS]: true, // TODO: future
}
Object.assign(AURA_TYPES_TO_IGNORE, USELESS_AURAS);

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
    async getItemSetLua()
    {
        console.log("Creating Lua for  item set data...");
        const processedData = this.getProcessedSetData();

        const itemToSetId = new Map<number, ItemSetAddonData>();
        for (const setData of processedData.values())
        {
            itemToSetId.set(setData.items[0], setData);
        }
        const ordered = await orderItemsByClass(itemToSetId);

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

        luaStrings.GENERAL = createFileHead();
        luaStrings.GENERAL += "_addon.itemSetData = {\n";

        for (const setData of ordered.GENERAL.values())
        {
            luaStrings.GENERAL += `    [${setData.ID}] = {\n`;
            luaStrings.GENERAL += `        name = "${setData.name}",\n`;
            luaStrings.GENERAL += `        effects = {\n`;
            for (let i = 0; i < setData.effects.length; i++)
            {
                luaStrings.GENERAL += createEffectLua("            ", setData.effects[i].effect, { need: setData.effects[i].need });
            }
            luaStrings.GENERAL += `        }\n`;
            luaStrings.GENERAL += `    },\n`;
        }

        luaStrings.GENERAL += `}\n\n_addon.setItemData = {\n`;

        for (const setData of ordered.GENERAL.values())
        {
            for (const itemId of setData.items)
            {
                luaStrings.GENERAL += `    [${itemId}] = ${setData.ID},\n`
            }
        }

        luaStrings.GENERAL += "}";

        for (const className in ordered)
        {
            if (className == "GENERAL") continue;

            luaStrings[className as keyof typeof ordered] = createFileHead(className);

            for (const setData of ordered[className as keyof typeof ordered].values())
            {
                let entrystr = `_addon.itemSetData[${setData.ID}] = {\n`;
                entrystr += `    name = "${setData.name}",\n`;
                entrystr += `    effects = {\n`;
                for (let i = 0; i < setData.effects.length; i++)
                {
                    entrystr += createEffectLua("        ", setData.effects[i].effect, { need: setData.effects[i].need });
                }
                entrystr += `    }\n`;
                entrystr += `}\n`;
                for (const itemId of setData.items)
                {
                    entrystr += `_addon.setItemData[${itemId}] = ${setData.ID};\n`
                }
                entrystr += "\n";

                luaStrings[className as keyof typeof ordered] += entrystr;
            }
        }

        console.log("Lua item set data created!");
        return luaStrings;
    }
}


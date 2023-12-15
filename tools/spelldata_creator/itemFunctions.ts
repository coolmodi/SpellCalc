import { readDBCSV } from "./CSVReader";
import { cfg } from "./config";
interface DbRow
{
    entry: number,
    name: string,
    AllowableClass: number,
    class: number,
    subclass: number
}

interface DBCItemSparse
{
    ID: number,
    AllowableRace: number,
    Display_lang: string,
    Flags_0: number,
    Flags_1: number,
    Flags_2: number,
    Flags_3: number,
    ItemSet: number,
    AllowableClass: number,
    InventoryType: number
}

interface DBCItem
{
    ID: number,
    ClassID: number,
    SubclassID: number,
    InventoryType: number
}

const classMask = {
    warrior: 1,
    paladin: 1 << 1,
    hunter: 1 << 2,
    rogue: 1 << 3,
    priest: 1 << 4,
    deathknight: 1 << 5,
    shaman: 1 << 6,
    mage: 1 << 7,
    warlock: 1 << 8,
    druid: 1 << 10
};

const allClasses = function ()
{
    let ac = 0;
    for (const className in classMask) ac |= classMask[className as keyof typeof classMask];
    return ac;
}();

const LE_ITEM_CLASS_ARMOR = 4;
const LE_ITEM_ARMOR_LIBRAM = 7;
const LE_ITEM_ARMOR_IDOL = 8;
const LE_ITEM_ARMOR_TOTEM = 9;

interface ItemDBdata
{
    [itemId: string]: DbRow
}
let dbDataCache: ItemDBdata;

/**
 * Get item DB data.
 */
export function getItemDbData()
{
    if (dbDataCache) return dbDataCache;

    const sparse = readDBCSV<DBCItemSparse>(cfg.dataDir + "dbc/ItemSparse.csv", "ID");
    const item = readDBCSV<DBCItem>(cfg.dataDir + "dbc/Item.csv", "ID");

    dbDataCache = {};

    for (const id in item)
    {
        if (!sparse[id])
        {
            console.log("No item sparse for item " + id);
            continue;
        }

        dbDataCache[id] = {
            entry: item[id].ID,
            class: item[id].ClassID,
            subclass: item[id].SubclassID,
            AllowableClass: sparse[id].AllowableClass,
            name: sparse[id].Display_lang
        }
    }

    return dbDataCache;
}

/**
 * Order item data by classes that can use it. 
 * @param itemMap Item data mapped by itemId
 * @returns Object containing maps of the same type for each class
 */
export async function orderItemsByClass<T>(itemMap: Map<number, T>)
{
    const dbData = getItemDbData();

    const ordered = {
        warrior: new Map<number, T>(),
        paladin: new Map<number, T>(),
        hunter: new Map<number, T>(),
        rogue: new Map<number, T>(),
        priest: new Map<number, T>(),
        shaman: new Map<number, T>(),
        mage: new Map<number, T>(),
        warlock: new Map<number, T>(),
        druid: new Map<number, T>(),
        deathknight: new Map<number, T>(),
        GENERAL: new Map<number, T>(),
    };

    for (const [itemId, effects] of itemMap)
    {
        const dbentry = dbData[itemId];

        if (dbentry.class === LE_ITEM_CLASS_ARMOR && dbentry.subclass == LE_ITEM_ARMOR_IDOL)
        {
            ordered.druid.set(itemId, effects);
        }
        else if (dbentry.class === LE_ITEM_CLASS_ARMOR && dbentry.subclass == LE_ITEM_ARMOR_LIBRAM)
        {
            ordered.paladin.set(itemId, effects);
        }
        else if (dbentry.class === LE_ITEM_CLASS_ARMOR && dbentry.subclass == LE_ITEM_ARMOR_TOTEM)
        {
            ordered.shaman.set(itemId, effects);
        }
        else if (itemId === 20006)
        {
            ordered.priest.set(itemId, effects);
        }
        else if ((dbentry.AllowableClass & allClasses) === allClasses)
        {
            ordered.GENERAL.set(itemId, effects);
        }
        else
        {
            for (const className in classMask)
            {
                if (dbentry.AllowableClass & classMask[className as keyof typeof classMask])
                {
                    ordered[className as keyof typeof classMask].set(itemId, effects);
                }
            }
        }
    }

    return ordered;
}

/**
 * Return string of format
 * {
 *     type = type,
 *     [affectMask = affectMask,]
 *     [affectSpell = affectSpell,]
 *     [value = value]
 * },\n
 * @param indent 
 * @param eff 
 */
export function createEffectLua(indent: string, eff: AddonEffectData, additionalMembers?: { [key: string]: any })
{
    let lua = `${indent}{\n`;
    lua += `${indent}    type = ${eff.type},\n`;
    if (eff.affectMask) lua += `${indent}    affectMask = ${eff.affectMask},\n`;
    if (eff.affectSpell) lua += `${indent}    affectSpell = {${eff.affectSpell.join(", ")}},\n`;
    if (typeof eff.value !== "undefined") lua += `${indent}    value = ${eff.value},\n`;
    if (typeof eff.scriptKey !== "undefined") lua += `${indent}    scriptKey = "${eff.scriptKey},"\n`;
    if (additionalMembers)
    {
        for (const k in additionalMembers)
        {
            lua += `${indent}    ${k} = ${additionalMembers[k]},\n`;
        }
    }
    lua += `${indent}},\n`;
    return lua;
}

/**
 * Create a head for a data file.
 * @param classNameRestriction
 * @returns 
 */
export function createFileHead(classNameRestriction?: string)
{
    if (classNameRestriction)
    {
        return `-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "${classNameRestriction.toUpperCase()}" then
    return;
end

`;
    }

    return `-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);

`;
}
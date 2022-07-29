import { SpellData } from "./SpellData";
import * as fs from "fs";

function getMechanicSpellList(s: SpellData, m: SpellMechanic)
{
    const list: number[] = [];
    for (const spellId in s.spellCategories)
    {
        if (s.spellCategories[spellId].Mechanic == m)
        {
            list.push(parseInt(spellId));
        }
    }
    return list;
}

export function createMechanicLists(m: SpellMechanic[], s: SpellData)
{
    console.log("Creating lists for auras with mechanics");
    let str = `-- GENERATED

local _, _addon = ...;

_addon.mechanicAuras = {
`;

    for (const mech of m)
    {
        console.log("Creating lists for mechanic " + mech);
        const l = getMechanicSpellList(s, mech);
        str += `    --------------------------------\n`;
        str += `    -- Mechanic: ${mech}\n`;
        str += `    --------------------------------\n`;
        for (const spellId of l)
        {
            const name = s.getSpellName(spellId).Name_lang;
            str += `    [${spellId}] = ${mech}, -- ${name}\n`;
        }
    }

    str += "}";

    fs.writeFileSync(__dirname + "/../../../data/mechanicAuras.lua", str);
}
import { SpellData, SpellEffect } from "./SpellData";
import * as fs from "fs";
import { cfg } from "./config";

function getMechanicSpellList(s: SpellData, m: SpellMechanic)
{
    const list = new Map<number, SpellEffect[]>();
    
    // Get all spells with mechanic on spell level
    for (const spellId in s.spellCategories)
    {
        if (s.spellCategories[spellId].Mechanic == m)
        {
            const sid = parseInt(spellId);
            const effs = s.getSpellEffects(sid);
            list.set(sid, effs);
        }
    }

    // Get all spells with mechanic on effect level
    for (const effId in s.spellEffects)
    {
        const eff = s.spellEffects[effId];
        if (list.has(eff.SpellID)) continue;
        if (eff.EffectMechanic == m)
        {
            list.set(eff.SpellID, [eff]);
        }
    }

    // Filter spells that don't apply auras
    for (const spellId of list.keys())
    {
        let hasAura = false;
        const effs = s.getSpellEffects(spellId);
        for (const eff of effs)
        {
            if (eff.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA || eff.Effect == EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA)
            {
                hasAura = true;
                break;
            }
        }
        if (!hasAura) list.delete(spellId);
    }

    return list;
}

export function createMechanicLists(m: SpellMechanic[], s: SpellData)
{
    console.log("Creating lists for auras with mechanics");
    let str = `-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);

---@type table<integer, SpellMechanic>
_addon.mechanicAuras = {
`;

    for (const mech of m)
    {
        console.log("Creating lists for mechanic " + mech);
        const l = getMechanicSpellList(s, mech);
        str += `    --------------------------------\n`;
        str += `    -- Mechanic: ${mech}\n`;
        str += `    --------------------------------\n`;
        for (const spellId of l.keys())
        {
            const name = s.getSpellName(spellId).Name_lang;
            str += `    [${spellId}] = ${mech}, -- ${name}\n`;
        }
    }

    str += "}";

    fs.writeFileSync(cfg.outputDir + "mechanicAuras.lua", str);
}
-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "HUNTER" then
    return;
end

_addon.itemEffects[20056] = { -- Highlander's Mail Pauldrons
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[20203] = { -- Defiler's Mail Pauldrons
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[19831] = { -- Zandalar Predator's Mantle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[19833] = { -- Zandalar Predator's Bracers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[22438] = { -- Cryptstalker Headpiece
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[22442] = { -- Cryptstalker Girdle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[21401] = { -- Scythe of the Unseen Path
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[23067] = { -- Ring of  the Cryptstalker
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22441] = { -- Cryptstalker Handguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[22436] = { -- Cryptstalker Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[22437] = { -- Cryptstalker Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}


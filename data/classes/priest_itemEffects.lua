-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.itemEffects[21351] = { -- Vestments of the Oracle
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21350] = { -- Mantle of the Oracle
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21565] = { -- Rune of Perfection
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[21566] = { -- Rune of Perfection
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}


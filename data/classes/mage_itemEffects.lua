-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.itemEffects[16536] = { -- Warlord's Silk Amice
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[16444] = { -- Field Marshal's Silk Spaulders
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[16487] = { -- Blood Guard's Silk Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16440] = { -- Marshal's Silk Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16391] = { -- Knight-Lieutenant's Silk Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16540] = { -- General's Silk Handguards
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[21343] = { -- Enigma Robes
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[21345] = { -- Enigma Shoulderpads
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21565] = { -- Rune of Perfection
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[21566] = { -- Rune of Perfection
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[23290] = { -- Knight-Lieutenant's Silk Handwraps
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[22870] = { -- Blood Guard's Silk Handwraps
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[29077] = { -- Vestments of the Aldor
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[31059] = { -- Mantle of the Tempest
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 18,
    },
}


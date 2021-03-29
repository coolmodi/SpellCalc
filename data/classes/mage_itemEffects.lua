-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.itemEffects[16487] = { -- Blood Guard's Silk Gloves
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16440] = { -- Marshal's Silk Gloves
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16391] = { -- Knight-Lieutenant's Silk Gloves
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16540] = { -- General's Silk Handguards
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[23290] = { -- Knight-Lieutenant's Silk Handwraps
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[22870] = { -- Blood Guard's Silk Handwraps
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}


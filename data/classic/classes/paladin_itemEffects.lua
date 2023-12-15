-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.itemEffects[23203] = { -- Libram of Fervor
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {512, 0, 0, 0},
        value = 48,
    },
}

_addon.itemEffects[23006] = { -- Libram of Light
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 83,
    },
}

_addon.itemEffects[23201] = { -- Libram of Divinity
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 53,
    },
}

_addon.itemEffects[209574] = { -- Discarded Tenets of the Silver Hand
    {
        type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
        affectMask = 32,
        value = 15,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER_RANGED,
        affectMask = 32,
        value = 1,
    },
}


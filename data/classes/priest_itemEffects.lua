-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.itemEffects[18608] = { -- Benediction
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {156507776, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[19594] = { -- The All-Seeing Eye of Zuldazar
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1, 0, 0, 0},
        value = 35,
    },
}

_addon.itemEffects[20006] = { -- Circle of Hope
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {156507840, 0, 0, 0},
        value = 1,
    },
}


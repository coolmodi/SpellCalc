---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

-- Shadowform
_addon.aurasPlayer[15473] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.SHADOW,
        value = 15,
    }
}

-- Inner Focus
_addon.aurasPlayer[14751] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = { -908837232, 622624, 4194304 },
        value = 25
    }
}

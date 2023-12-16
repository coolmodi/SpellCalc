---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

-- Divine Favor
_addon.aurasPlayer[20216] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = { 2147483648 + 1073741824 + 2097152 },
        value = 100,
    }
};

-- Vengeance 1
_addon.aurasPlayer[20050] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.HOLY + _addon.CONST.SCHOOL_MASK.PHYSICAL,
        value = 3
    }
};

-- Vengeance 2
_addon.aurasPlayer[20052] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.HOLY + _addon.CONST.SCHOOL_MASK.PHYSICAL,
        value = 6
    }
};

-- Vengeance 3
_addon.aurasPlayer[20053] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.HOLY + _addon.CONST.SCHOOL_MASK.PHYSICAL,
        value = 9
    }
};

-- Vengeance 4
_addon.aurasPlayer[20054] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.HOLY + _addon.CONST.SCHOOL_MASK.PHYSICAL,
        value = 12
    }
};

-- Vengeance 5
_addon.aurasPlayer[20055] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.HOLY + _addon.CONST.SCHOOL_MASK.PHYSICAL,
        value = 15
    }
};

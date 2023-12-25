---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

_addon.aurasPlayer[407988] = { -- Savage Roar
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.PHYSICAL,
        value = 30
    }
};

_addon.aurasPlayer[17116] = { -- Nature's Swiftness dummy
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 1500
    }
};

_addon.itemEffects[22399] = { -- Idol of Health (Dummy effect to trigger update)
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 0
    }
}

--------------------------------------------------------------------------
-- Runes
--------------------------------------------------------------------------

-- Lifebloom rune Rejuvenation GCD reduce
_addon:DefineRuneSpell(408124, {
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
        affectSpell = { 16, 0, 0, 0 },
        value = -500,
    }
});

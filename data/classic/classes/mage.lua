---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

local MageArmorEffect = {
    {
        type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
        value = 30,
    }
};
_addon.aurasPlayer[6117] = MageArmorEffect;
_addon.aurasPlayer[22782] = MageArmorEffect;
_addon.aurasPlayer[22783] = MageArmorEffect;

--------------------------------------------------------------------------
-- Runes
--------------------------------------------------------------------------

-- Feet: Spell Power
_addon:DefineRuneSpell(412322, _addon.aurasPlayer[412322]);

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

-- Arcane Power
_addon.aurasPlayer[12042] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = { 551686903, 69632, 268697664, 524288 },
        value = 30,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
        affectSpell = { 4194437, 131072 },
        value = 30,
    }
};

local MageArmorEffect = {
    {
        type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
        value = 30,
    }
};
_addon.aurasPlayer[6117] = MageArmorEffect;
_addon.aurasPlayer[22782] = MageArmorEffect;
_addon.aurasPlayer[22783] = MageArmorEffect;

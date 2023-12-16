---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

-- Elemental Mastery
_addon.aurasPlayer[16166] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = { -1877999613, 266240, 0, 1073741824 },
        value = 100,
    }
};

-- Nature's Swiftness dummy
_addon.aurasPlayer[16188] = {
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 0
    }
};

-- TODO: Convert T3 effect to new system
--[[ local T3LightningShieldEffect = {
    condition = _addon.CONST.BUFF_CONDITIONS.EARTHSHATTERER_8PCS,
    effect = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
    value = 15,
}
_addon.aurasPlayer[324] = T3LightningShieldEffect;
_addon.aurasPlayer[325] = T3LightningShieldEffect;
_addon.aurasPlayer[905] = T3LightningShieldEffect;
_addon.aurasPlayer[945] = T3LightningShieldEffect;
_addon.aurasPlayer[8134] = T3LightningShieldEffect;
_addon.aurasPlayer[10431] = T3LightningShieldEffect;
_addon.aurasPlayer[10432] = T3LightningShieldEffect;
 ]]
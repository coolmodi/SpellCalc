---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

-- Nature's Swiftness dummy
_addon.aurasPlayer[16188] = {
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 0
    }
};

-- Water Shield
_addon.aurasPlayer[408510] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
        scriptKey = "Water_Shield",
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

 --------------------------------------------------------------------------
-- Scripts
--------------------------------------------------------------------------

---@type AuraEffectBase
local wsAura = {
    type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
}
_addon.scripting.RegisterAuraScript("Water_Shield", function (apply, auraId, fromPlayer, scriptType, cacheValue)
    local name = "WaterShield";
    if apply then
        local mana = UnitPowerMax("player", 0);
        local restorePer5 = (1 / 500) * mana;
        _addon:ApplyAuraEffect(name, wsAura, restorePer5, auraId, fromPlayer);
        return restorePer5;
    else
        assert(cacheValue, "Water Shield aura removed while cacheValue is nil!");
        _addon:RemoveAuraEffect(name, wsAura, cacheValue, auraId, fromPlayer);
    end
end);

-- Dual Wield Spec Rune
-- TODO: Stormstrike OH attack?
_addon:DefineRuneSpell(408496, {
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
        value = 10,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 10,
    }
});

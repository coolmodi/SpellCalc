---@class AddonEnv
local _addon = select(2, ...);

-- Homunculi Degrade debuff
---@type AuraEffectBase
local degradeEffect = {
    type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
    affectMask = _addon.CONST.SCHOOL_MASK.PHYSICAL
};
_addon.scripting.RegisterAuraScript("Degrade_Armor", function(apply, auraId, fromPlayer, _, cacheValue)
    local name = "Degrade_Armor_Script_Effect";
    if apply then
        local guessedValue = 185 + UnitLevel("player") * 35;
        _addon:ApplyAuraEffect(name, degradeEffect, guessedValue, auraId, fromPlayer);
        return guessedValue;
    else
        assert(cacheValue, "Degrade_Armor_Script_Effect faded without cached value!");
        _addon:RemoveAuraEffect(name, degradeEffect, cacheValue, auraId, fromPlayer);
    end
end);

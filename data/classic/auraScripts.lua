---@class AddonEnv
local _addon = select(2, ...);

do
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
end


do
    -- Blessing of Light Id -> HL, FoL
    local BOL_VALUES = {
        [19977] = { 210, 60 },
        [19978] = { 300, 85 },
        [19979] = { 400, 115 },
        [25890] = { 400, 115 },
    }

    ---@type AuraEffectBase
    local bolEffectHL = {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = { 2147483648 }
    };

    ---@type AuraEffectBase
    local bolEffectFoL = {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = { 1073741824 }
    };

    _addon.scripting.RegisterAuraScript("Blessing_of_Light", function(apply, auraId, fromPlayer)
        local name = "Blessing_of_Light_Script_Effect";
        local values = BOL_VALUES[auraId];
        assert(values, "Undefined Blessing of Light spell!");
        if apply then
            _addon:ApplyAuraEffect(name.."HL", bolEffectHL, values[1], auraId, fromPlayer);
            _addon:ApplyAuraEffect(name.."FoL", bolEffectFoL, values[2], auraId, fromPlayer);
        else
            _addon:RemoveAuraEffect(name.."HL", bolEffectHL, values[1], auraId, fromPlayer);
            _addon:RemoveAuraEffect(name.."FoL", bolEffectFoL, values[2], auraId, fromPlayer);
        end
    end);

    for spellId in pairs(BOL_VALUES) do
        _addon.aurasTarget[spellId] = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
                value = 0,
                scriptKey = "Blessing_of_Light"
            }
        }
    end
end

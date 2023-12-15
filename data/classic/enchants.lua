---@class AddonEnv
local _addon = select(2, ...);

---@type table<integer, EnchantData>
_addon.enchantData = {
    --[[ [2624] = { -- Minor Mana Oil
        name = GetSpellInfo(25118),
        effect = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
    [2625] = { -- Lesser Mana Oil
        name = GetSpellInfo(25120),
        effect = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
    [2629] = { -- Brilliant Mana Oil
        name = GetSpellInfo(25123),
        effect = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 12,
    }, ]]
};

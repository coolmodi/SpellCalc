---@type AddonEnv
local _addon = select(2, ...);

_addon.enchantData = {
    [2624] = { -- Minor Mana Oil
        name = GetSpellInfo(25118),
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
    [2625] = { -- Lesser Mana Oil
        name = GetSpellInfo(25120),
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
    [2629] = { -- Brilliant Mana Oil
        name = GetSpellInfo(25123),
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 12,
    },
};
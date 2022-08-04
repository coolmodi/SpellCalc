---@class AddonEnv
local _addon = select(2, ...);

_addon.itemEffects[32409] = { -- Relentless Earthstorm Diamond
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_CRIT_BASE_MULT,
        affectMask = _addon.SCHOOL_MASK.ALL,
        value = 3,
    }
}
_addon.itemEffects[34220] = _addon.itemEffects[32409]; -- Chaotic Skyfire Diamond
_addon.itemEffects[41398] = _addon.itemEffects[32409]; -- Relentless Earthsiege Diamond
_addon.itemEffects[41285] = _addon.itemEffects[32409]; -- Chaotic Skyflare Diamond

_addon.itemEffects[25901] = { -- Insightful Earthstorm Diamond
    {
        type = _addon.EFFECT_TYPE.GLOBAL_FLAT_MANARESTORE_AVG,
        value = 15,
    }
}
local _, _addon = ...;

_addon.itemEffects = {
    [18608] = { -- Benediction
        {
            type = _addon.EFFECT_TYPE.MOD_CRIT,
            affectSchool = _addon.SCHOOL_MASK.HOLY,
            value = 2
        }
    }
}
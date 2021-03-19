---@type AddonEnv
local _addon = select(2, ...);

_addon.itemEffects = {
    [19812] = { -- Rune of the Dawn
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_SPELL_DAMAGE_VERSUS,
            affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 48
        }
    },
    [23207] = { -- Mark of the Champion
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_SPELL_DAMAGE_VERSUS,
            affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD + _addon.CREATURE_TYPE_MASK.DEMON,
            value = 85
        }
    },
    [23091] = { -- Bracers of Undead Cleansing
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_SPELL_DAMAGE_VERSUS,
            affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 26
        }
    },
    [23084] = { -- Gloves of Undead Cleansing
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_SPELL_DAMAGE_VERSUS,
            affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 35
        }
    },
    [23085] = { -- Robe of Undead Cleansing
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_SPELL_DAMAGE_VERSUS,
            affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 48
        }
    },
    [18346] = { -- Threadbare Trousers
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_SPELL_DAMAGE_VERSUS,
            affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 35
        }
    },
}
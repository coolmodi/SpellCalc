---@type AddonEnv
local _addon = select(2, ...);

_addon.itemEffects = {
    [18608] = { -- Benediction
        {
            type = _addon.EFFECT_TYPE.MOD_CRIT,
            affectSchool = _addon.SCHOOL_MASK.HOLY,
            value = 2
        }
    },
    [23201] = { -- Libram of Divinity
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {1073741824},
            value = 53
        }
    },
    [23006] = { -- Libram of Light
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {1073741824},
            value = 83
        }
    },
    -- TODO: https://classic.wowhead.com/item=23203/libram-of-fervor
    [16540] = { -- General's Silk Handguards
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_VALUE,
            affectSpell = {32768},
            value = 285
        }
    },
    [16440] = { -- Marshal's Silk Gloves
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_VALUE,
            affectSpell = {32768},
            value = 285
        }
    },
    [23199] = { -- Totem of the Storm
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {1 + 2},
            value = 33
        }
    },
    [23200] = { -- Totem of Sustaining
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {128},
            value = 53
        }
    },
    [22396] = { -- Totem of Life
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {128},
            value = 80
        }
    },
    [22395] = { -- Totem of Rage
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {1048576 + 268435456 + 2147483648},
            value = 30
        }
    },
    -- TODO: https://classic.wowhead.com/item=23005/totem-of-flowing-water
    [22398] = { -- Idol of Rejuvenation
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {16},
            value = 50
        }
    },
    [22399] = { -- Idol of Health (Dummy effect to trigger update)
        {
            type = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
            value = 0
        }
    },
    -- TODO: https://classic.wowhead.com/item=23197/idol-of-the-moon
    -- TODO: https://classic.wowhead.com/item=23004/idol-of-longevity
}
---@type AddonEnv
local _addon = select(2, ...);

local FLASH_OF_LIGHT = GetSpellInfo(19750);
local MANA_SHIELD = GetSpellInfo(1463);
local LIGHTNING_BOLT = GetSpellInfo(403);
local CHAIN_LIGHTNING = GetSpellInfo(421);
local LESSER_HEALING_WAVE = GetSpellInfo(8004);
local EARTH_SHOCK = GetSpellInfo(8042);
local FLAME_SHOCK = GetSpellInfo(8050);
local FROST_SHOCK = GetSpellInfo(8056);
local REJUVENATION = GetSpellInfo(1058);

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
            affectSpell = {FLASH_OF_LIGHT},
            value = 53
        }
    },
    [23006] = { -- Libram of Light
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {FLASH_OF_LIGHT},
            value = 83
        }
    },
    -- TODO: https://classic.wowhead.com/item=23203/libram-of-fervor
    [16540] = { -- General's Silk Handguards
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_VALUE,
            affectSpell = {MANA_SHIELD},
            value = 285
        }
    },
    [16440] = { -- Marshal's Silk Gloves
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_VALUE,
            affectSpell = {MANA_SHIELD},
            value = 285
        }
    },
    [23199] = { -- Totem of the Storm
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {LIGHTNING_BOLT, CHAIN_LIGHTNING},
            value = 33
        }
    },
    [23200] = { -- Totem of Sustaining
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {LESSER_HEALING_WAVE},
            value = 53
        }
    },
    [22396] = { -- Totem of Life
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {LESSER_HEALING_WAVE},
            value = 80
        }
    },
    [22395] = { -- Totem of Rage
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {EARTH_SHOCK, FLAME_SHOCK, FROST_SHOCK},
            value = 30
        }
    },
    -- TODO: https://classic.wowhead.com/item=23005/totem-of-flowing-water
    [22398] = { -- Idol of Rejuvenation
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {REJUVENATION},
            value = 50
        }
    },
    [22399] = { -- Idol of Health (Dummy effect to trigger update)
        {
            type = _addon.EFFECT_TYPE.MOD_EFFECT,
            affectSpell = {REJUVENATION},
            value = 0
        }
    },
    -- TODO: https://classic.wowhead.com/item=23197/idol-of-the-moon
    -- TODO: https://classic.wowhead.com/item=23004/idol-of-longevity
}
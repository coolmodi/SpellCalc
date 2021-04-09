---@type AddonEnv
local _addon = select(2, ...);

-- Buffs the player can have
_addon.aurasPlayer = {
    [16609] = { -- Warchief's Blessing
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10,
    },
    -- Same thing as with totems (see below)...
    [19742] = { -- Blessing of Wisdom 1
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10,
        ttValue = "(%d+)"
    },
    [19850] = { -- Blessing of Wisdom 2
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 15,
        ttValue = "(%d+)"
    },
    [19852] = { -- Blessing of Wisdom 3
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 20,
        ttValue = "(%d+)"
    },
    [19853] = { -- Blessing of Wisdom 4
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 25,
        ttValue = "(%d+)"
    },
    [19854] = { -- Blessing of Wisdom 5
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 30,
        ttValue = "(%d+)"
    },
    [25290] = { -- Blessing of Wisdom 6
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 33,
        ttValue = "(%d+)"
    },
    [25894] = { -- Greater Blessing of Wisdom 1
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 30,
        ttValue = "(%d+)"
    },
    [25918] = { -- Greater Blessing of Wisdom 2
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 33,
        ttValue = "(%d+)"
    },
    -- For some reason the tooltip of other's totem buffs can't be read when aura is gained
    -- So yeah, lets just put them here like that so I don't have to find out why...
    [5677] = { -- Mana Spring 1
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10, -- 4/2s
    },
    [10491] = { -- Mana Spring 2
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 15, -- 6/2s
    },
    [10493] = { -- Mana Spring 3
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 20, -- 8/2s
    },
    [10494] = { -- Mana Spring 4
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 25, -- 10/2s
    },
    [18194] = { -- Nightfin Soup
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
    [10060] = { -- Power Infusion
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
                value = 20,
            },
            {
                type = _addon.EFFECT_TYPE.PCT_HEALING,
                value = 20,
            }
        }
    },
    [26166] = { -- Obsidian Insight
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = _addon.SCHOOL_MASK.FIRE + _addon.SCHOOL_MASK.FROST + _addon.SCHOOL_MASK.NATURE + _addon.SCHOOL_MASK.SHADOW + _addon.SCHOOL_MASK.ARCANE,
        value = 100,
    },

    [30880] = { -- Echoes of Lordaeron H 1
        type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
        affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 1
    },
    [30683] = { -- Echoes of Lordaeron H 2
        type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
        affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 2
    },
    [30682] = { -- Echoes of Lordaeron H 3
        type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
        affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 3
    },
    [29520] = { -- Echoes of Lordaeron H 4
        type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
        affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 5
    },

    [11413] = { -- Echoes of Lordaeron A 1
        type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
        affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 1
    },
    [11414] = { -- Echoes of Lordaeron A 2
        type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
        affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 2
    },
    [11415] = { -- Echoes of Lordaeron A 3
        type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
        affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 3
    },
    [1386] = { -- Echoes of Lordaeron A 4
        type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
        affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD + _addon.CREATURE_TYPE_MASK.DEMON,
        value = 5
    },
    [28145] = { -- Power of the Guardian (Druid)
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    }
};

-- Buffs and debuffs the target can have (NYI)
_addon.aurasTarget = {
    -- TODO: auras on the target
    -- e.g. pala blessing for more heal, mage magic buffy thingy, etc.
    -- e.g. shadow weaving, mage frosty thingy, etc.
};
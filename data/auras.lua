---@type AddonEnv
local _addon = select(2, ...);

-- Buffs the player can have
_addon.aurasPlayer = {
    [5677] = { -- Mana Spring 1
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 15, -- 6/2s
    },
    [10491] = { -- Mana Spring 2
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 22, -- 9/2s
    },
    [10493] = { -- Mana Spring 3
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 32, -- 13/2s
    },
    [10494] = { -- Mana Spring 4
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 42, -- 17/2s
    },
    [25569] = { -- Mana Spring 5
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 50, -- 20/2s
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
};

-- Buffs and debuffs the target can have (NYI)
_addon.aurasTarget = {
    -- TODO: auras on the target
    -- e.g. pala blessing for more heal, mage magic buffy thingy, etc.
    -- e.g. shadow weaving, mage frosty thingy, etc.
};
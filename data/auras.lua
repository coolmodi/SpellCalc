---@type AddonEnv
local _addon = select(2, ...);

local BLESSING_OF_WISDOM = GetSpellInfo(19852);
local GREATER_BLESSING_OF_WISDOM = GetSpellInfo(25918);


-- Buffs the player can have
_addon.buffData = {
    [16609] = { -- Warchief's Blessing
        effect = _addon.EFFECT_TYPE.MP5,
        value = 10,
    },
    -- Same thing as with totems (see below)...
    [19742] = { -- Blessing of Wisdom 1
        effect = _addon.EFFECT_TYPE.MP5,
        value = 10,
        ttValue = "(%d+)"
    },
    [19850] = { -- Blessing of Wisdom 2
        effect = _addon.EFFECT_TYPE.MP5,
        value = 15,
        ttValue = "(%d+)"
    },
    [19852] = { -- Blessing of Wisdom 3
        effect = _addon.EFFECT_TYPE.MP5,
        value = 20,
        ttValue = "(%d+)"
    },
    [19853] = { -- Blessing of Wisdom 4
        effect = _addon.EFFECT_TYPE.MP5,
        value = 25,
        ttValue = "(%d+)"
    },
    [19854] = { -- Blessing of Wisdom 5
        effect = _addon.EFFECT_TYPE.MP5,
        value = 30,
        ttValue = "(%d+)"
    },
    [25290] = { -- Blessing of Wisdom 6
        effect = _addon.EFFECT_TYPE.MP5,
        value = 33,
        ttValue = "(%d+)"
    },
    [25894] = { -- Greater Blessing of Wisdom 1
        effect = _addon.EFFECT_TYPE.MP5,
        value = 30,
        ttValue = "(%d+)"
    },
    [25918] = { -- Greater Blessing of Wisdom 2
        effect = _addon.EFFECT_TYPE.MP5,
        value = 33,
        ttValue = "(%d+)"
    },
    -- For some reason the tooltip of other's totem buffs can't be read when aura is gained
    -- So yeah, lets just put them here like that so I don't have to find out why...
    [5677] = { -- Mana Spring 1
        effect = _addon.EFFECT_TYPE.MP5,
        value = 10, -- 4/2s
    },
    [10491] = { -- Mana Spring 2
        effect = _addon.EFFECT_TYPE.MP5,
        value = 15, -- 6/2s
    },
    [10493] = { -- Mana Spring 3
        effect = _addon.EFFECT_TYPE.MP5,
        value = 20, -- 8/2s
    },
    [10494] = { -- Mana Spring 4
        effect = _addon.EFFECT_TYPE.MP5,
        value = 25, -- 10/2s
    },
    [18194] = { -- Nightfin Soup
        effect = _addon.EFFECT_TYPE.MP5,
        value = 8,
    },
    [10060] = { -- Power Infusion
        effects = {
            {
                effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
                affectSchool = _addon.SCHOOL_MASK.ALL_SPELL,
                value = 20,
            },
            {
                effect = _addon.EFFECT_TYPE.MOD_PCT_HEALING,
                value = 20,
            }
        }
    },
    [26166] = { -- Obsidian Insight
        effect = _addon.EFFECT_TYPE.RESISTANCE_PEN,
        affectSchool = _addon.SCHOOL_MASK.FIRE + _addon.SCHOOL_MASK.FROST + _addon.SCHOOL_MASK.NATURE + _addon.SCHOOL_MASK.SHADOW + _addon.SCHOOL_MASK.ARCANE,
        value = 100,
    },
    [2624] = { -- Minor Mana Oil (Temp enchant ID!)
        name = GetSpellInfo(25118),
        effect = _addon.EFFECT_TYPE.MP5,
        value = 4,
    },
    [2625] = { -- Lesser Mana Oil (Temp enchant ID!)
        name = GetSpellInfo(25120),
        effect = _addon.EFFECT_TYPE.MP5,
        value = 8,
    },
    [2629] = { -- Brilliant Mana Oil (Temp enchant ID!)
        name = GetSpellInfo(25123),
        effect = _addon.EFFECT_TYPE.MP5,
        value = 12,
    },

    [30880] = { -- Echoes of Lordaeron H 1
        name = GetSpellInfo(30880),
        effect = _addon.EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS,
        affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 1
    },
    [30683] = { -- Echoes of Lordaeron H 2
        name = GetSpellInfo(30683),
        effect = _addon.EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS,
        affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 2
    },
    [30682] = { -- Echoes of Lordaeron H 3
        name = GetSpellInfo(30682),
        effect = _addon.EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS,
        affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 3
    },
    [29520] = { -- Echoes of Lordaeron H 4
        name = GetSpellInfo(29520),
        effect = _addon.EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS,
        affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 5
    },

    [11413] = { -- Echoes of Lordaeron A 1
        name = GetSpellInfo(11413),
        effect = _addon.EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS,
        affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 1
    },
    [11414] = { -- Echoes of Lordaeron A 2
        name = GetSpellInfo(11414),
        effect = _addon.EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS,
        affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 2
    },
    [11415] = { -- Echoes of Lordaeron A 3
        name = GetSpellInfo(11415),
        effect = _addon.EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS,
        affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD,
        value = 3
    },
    [1386] = { -- Echoes of Lordaeron A 4
        name = GetSpellInfo(1386),
        effect = _addon.EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS,
        affectSchool = _addon.CREATURE_TYPE_MASK.UNDEAD + _addon.CREATURE_TYPE_MASK.DEMON,
        value = 5
    },
};

-- Buffs the target can have (NYI)
_addon.targetBuffs = {
    -- TODO: buffs on the target
    -- e.g. pala blessing for more heal, mage magic buffy thingy, etc.
};

-- Debuffs the target can have (NYI)
_addon.debuffData = {
    -- TODO: debuffs on the target
    -- e.g. shadow weaving, mage frosty thingy, etc.
};
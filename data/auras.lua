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
    [BLESSING_OF_WISDOM] = {
        effect = _addon.EFFECT_TYPE.MP5,
        ttValue = "(%d+)",
    },
    [GREATER_BLESSING_OF_WISDOM] = {
        effect = _addon.EFFECT_TYPE.MP5,
        ttValue = "(%d+)",
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
                effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSchool = _addon.SCHOOL_MASK.ALL,
                value = 20,
            },
            {
                effect = _addon.EFFECT_TYPE.MOD_HEALING_DONE_ALL,
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

    -- TODO: Other buffs that are outside the scope of base API queries
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
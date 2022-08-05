---@class AddonEnv
local _addon = select(2, ...);
local CONST = _addon.CONST;

-- Buffs the player can have
_addon.aurasPlayer = {
    [5677] = { -- Mana Spring 1
        {
            type = CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 15 -- 6/2s
        }
    },
    [10491] = { -- Mana Spring 2
        {
            type = CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 22 -- 9/2s
        }
    },
    [10493] = { -- Mana Spring 3
        {
            type = CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 32 -- 13/2s
        }
    },
    [10494] = { -- Mana Spring 4
        {
            type = CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 42 -- 17/2s
        }
    },
    [25569] = { -- Mana Spring 5
        {
            type = CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 50 -- 20/2s
        }
    },
    [26166] = { -- Obsidian Insight
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = CONST.SCHOOL_MASK.FIRE + CONST.SCHOOL_MASK.FROST +
                CONST.SCHOOL_MASK.NATURE + CONST.SCHOOL_MASK.SHADOW +
                CONST.SCHOOL_MASK.ARCANE,
            value = 100
        }
    },

    [30880] = { -- Echoes of Lordaeron H 1
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 1
        }
    },
    [30683] = { -- Echoes of Lordaeron H 2
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 2
        }
    },
    [30682] = { -- Echoes of Lordaeron H 3
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 3
        }
    },
    [29520] = { -- Echoes of Lordaeron H 4
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 5
        }
    },

    [11413] = { -- Echoes of Lordaeron A 1
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 1
        }
    },
    [11414] = { -- Echoes of Lordaeron A 2
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 2
        }
    },
    [11415] = { -- Echoes of Lordaeron A 3
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 3
        }
    },
    [1386] = { -- Echoes of Lordaeron A 4
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD +
                CONST.CREATURE_TYPE_MASK.DEMON,
            value = 5
        }
    },
    [33377] = { -- Blessing of Auchindoun
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [32071] = { -- Hellfire Superiority A
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [32049] = { -- Hellfire Superiority H
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [33795] = { -- Strength of the Halaani
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [20218] = { -- Sanctity Aura
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.HOLY,
            value = 10
        }
    },
    [30708] = { -- Totem of Wrath
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 3 }
    },
    [28488] = { -- Scourgebane Infusion
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_FLAT_SPELLPOWER,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 15
        }
    },
    -- 28486 "Scourgebane Draught" 30 AP vs undead
    [6562] = { -- Heroic Presence
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE, value = 1 },
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 1 }
    },
    [28878] = { -- Inspiring Presence
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE, value = 1 },
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 1 }
    },
    [49016] = { -- Hysteria
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.PHYSICAL,
            value = 20
        }
    },
    [57933] = { -- TotT
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 15
        }
    }
}

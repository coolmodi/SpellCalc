-- GENERATED, DO NOT EDIT DIRECTLY!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {
    -----------------------------
    -- Elemental
    -----------------------------
    { -- Concussion
        tree = 1,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {-1877999613, 0, 0, 0},
                perPoint = 1,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {268435456, 0, 0, 0},
                perPoint = 1,
            },
        }
    },
    { -- Call of Flame
        tree = 1,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1073741824, 0, 0, 0},
                perPoint = 5,
            },
        }
    },
    { -- Elemental Focus
        tree = 1,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.CLEARCAST_CHANCE_DMG,
                perPoint = 10,
            },
        }
    },
    { -- Call of Thunder
        tree = 1,
        tier = 3,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {3, 0, 0, 0},
                values = {2, 3, 4, 6},
            },
        }
    },
    { -- Elemental Fury
        tree = 1,
        tier = 5,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {-785383421, 4096, 0, 1073741824},
                values = {},
            },
        }
    },
    -----------------------------
    -- Enhancement
    -----------------------------
    { -- Improved Lightning Shield
        tree = 2,
        tier = 2,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {1024, 0, 0, 0},
                perPoint = 5,
            },
        }
    },
    { -- Weapon Mastery
        tree = 2,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = 1,
                perPoint = 2,
            },
        }
    },
    -----------------------------
    -- Restoration
    -----------------------------
    { -- Nature's Guidance
        tree = 3,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                perPoint = 1,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                perPoint = 1,
            },
        }
    },
    { -- Tidal Mastery
        tree = 3,
        tier = 4,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {1475, 0, 8388688, 0},
                perPoint = 1,
            },
        }
    },
    { -- Purification
        tree = 3,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {448, 0, 8388688, 0},
                perPoint = 2,
            },
        }
    },
}

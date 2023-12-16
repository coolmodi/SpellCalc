-- GENERATED, DO NOT EDIT DIRECTLY!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {
    -----------------------------
    -- Balance
    -----------------------------
    { -- Improved Moonfire
        tree = 1,
        tier = 2,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {2, 0, 0, 64},
                perPoint = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {2, 0, 0, 64},
                perPoint = 2,
            },
        }
    },
    { -- Natural Weapons
        tree = 1,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = 1,
                perPoint = 2,
            },
        }
    },
    { -- Improved Thorns
        tree = 1,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {256, 0, 0, 0},
                perPoint = 25,
            },
        }
    },
    { -- Vengeance
        tree = 1,
        tier = 4,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {7, 0, 33554432, 64},
                perPoint = 20,
            },
        }
    },
    { -- Moonfury
        tree = 1,
        tier = 6,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {7, 0, 33554432, 64},
                perPoint = 2,
            },
        }
    },
    -----------------------------
    -- Feral Combat
    -----------------------------
    { -- Feral Aggression
        tree = 2,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {8388608, 0, 0, 0},
                perPoint = 3,
            },
        }
    },
    { -- Savage Fury
        tree = 2,
        tier = 5,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {6144, 1088, 0, 0},
                perPoint = 10,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {4096, 0, 0, 0},
                perPoint = 10,
            },
        }
    },
    -----------------------------
    -- Restoration
    -----------------------------
    { -- Reflection
        tree = 3,
        tier = 3,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                perPoint = 5,
            },
        }
    },
    { -- Improved Rejuvenation
        tree = 3,
        tier = 4,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {16, 0, 0, 0},
                perPoint = 5,
            },
        }
    },
    { -- Gift of Nature
        tree = 3,
        tier = 5,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {240, 100663312, 0, 0},
                perPoint = 2,
            },
        }
    },
    { -- Improved Regrowth
        tree = 3,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {64, 0, 0, 0},
                perPoint = 10,
            },
        }
    },
}

-- GENERATED, DO NOT EDIT DIRECTLY!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {
    -----------------------------
    -- Affliction
    -----------------------------
    { -- Suppression
        tree = 1,
        tier = 1,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {-2142714854, 262145, 0, 0},
                perPoint = 2,
            },
        }
    },
    { -- Improved Drain Life
        tree = 1,
        tier = 2,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {8, 0, 0, 0},
                perPoint = 2,
            },
        }
    },
    { -- Improved Curse of Agony
        tree = 1,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {1024, 0, 0, 0},
                perPoint = 2,
            },
        }
    },
    { -- Shadow Mastery
        tree = 1,
        tier = 6,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {145, 327680, 131072, 0},
                perPoint = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2, 0, 0, 0},
                perPoint = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {541704, 1, 0, 0},
                perPoint = 2,
            },
        }
    },
    -----------------------------
    -- 
    -----------------------------
    -----------------------------
    -- Destruction
    -----------------------------
    { -- Devastation
        tree = 3,
        tier = 3,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {997, 196672, 131072, 0},
                perPoint = 1,
            },
        }
    },
    { -- Improved Searing Pain
        tree = 3,
        tier = 4,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {256, 0, 0, 0},
                perPoint = 2,
            },
        }
    },
    { -- Improved Immolate
        tree = 3,
        tier = 5,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {4, 0, 0, 0},
                perPoint = 5,
            },
        }
    },
    { -- Ruin
        tree = 3,
        tier = 5,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {997, 196672, 131072, 0},
                values = {},
            },
        }
    },
    { -- Emberstorm
        tree = 3,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {868, 131136, 2, 0},
                perPoint = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {100, 0, 2, 0},
                perPoint = 2,
            },
        }
    },
}

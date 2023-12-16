-- GENERATED, DO NOT EDIT DIRECTLY!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {
    -----------------------------
    -- Holy
    -----------------------------
    { -- Improved Seal of Righteousness
        tree = 1,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {1024, 0, 0, 0},
                perPoint = 3,
            },
        }
    },
    { -- Healing Light
        tree = 1,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {-1073741824, 0, 0, 0},
                perPoint = 4,
            },
        }
    },
    { -- Illumination
        tree = 1,
        tier = 4,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.ILLUMINATION,
                perPoint = 20,
            },
        }
    },
    -----------------------------
    -- Protection
    -----------------------------
    { -- Precision
        tree = 2,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                perPoint = 1,
            },
        }
    },
    { -- One-Handed Weapon Specialization
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
    -- Retribution
    -----------------------------
    { -- Improved Retribution Aura
        tree = 3,
        tier = 4,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {8, 0, 0, 0},
                perPoint = 25,
            },
        }
    },
    { -- Two-Handed Weapon Specialization
        tree = 3,
        tier = 5,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = 1,
                perPoint = 2,
            },
        }
    },
}

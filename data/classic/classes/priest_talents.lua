-- GENERATED, DO NOT EDIT DIRECTLY!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {
    -----------------------------
    -- Discipline
    -----------------------------
    { -- Improved Power Word: Shield
        tree = 1,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {1, 0, 0, 0},
                perPoint = 5,
            },
        }
    },
    { -- Meditation
        tree = 1,
        tier = 3,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                perPoint = 5,
            },
        }
    },
    { -- Force of Will
        tree = 1,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {139993232, 557058, 0, 0},
                perPoint = 1,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {5775504, 565250, 0, 0},
                perPoint = 1,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {10518528, 8192, 0, 268435456},
                perPoint = 1,
            },
        }
    },
    -----------------------------
    -- Holy
    -----------------------------
    { -- Improved Renew
        tree = 2,
        tier = 1,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {64, 0, 0, 0},
                perPoint = 5,
            },
        }
    },
    { -- Holy Specialization
        tree = 2,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {424943232, 98336, 0, 0},
                perPoint = 1,
            },
        }
    },
    { -- Searing Light
        tree = 2,
        tier = 4,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1048704, 0, 0, 0},
                perPoint = 5,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {1048576, 0, 0, 0},
                perPoint = 5,
            },
        }
    },
    { -- Spiritual Healing
        tree = 2,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {419700288, 65568, 0, 0},
                perPoint = 2,
            },
        }
    },
    -----------------------------
    -- Shadow
    -----------------------------
    { -- Improved Shadow Word: Pain
        tree = 3,
        tier = 2,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {32768, 0, 0, 0},
                perPoint = 3000,
            },
        }
    },
    { -- Shadow Focus
        tree = 3,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {109813760, 1572866, 0, 268435456},
                perPoint = 2,
            },
        }
    },
    { -- Darkness
        tree = 3,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {33562624, 524290, 0, 0},
                perPoint = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {8421376, 0, 0, 268435456},
                perPoint = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {524288, 0, 0, 0},
                perPoint = 2,
            },
        }
    },
}

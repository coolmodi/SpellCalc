-- GENERATED, DO NOT EDIT DIRECTLY!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {
    -----------------------------
    -- Arcane
    -----------------------------
    { -- Arcane Subtlety
        tree = 1,
        tier = 1,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
                affectMask = 126,
                perPoint = 5,
            },
        }
    },
    { -- Arcane Focus
        tree = 1,
        tier = 1,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {539230208, 0, 268697664, 16384},
                perPoint = 2,
            },
        }
    },
    { -- Arcane Concentration
        tree = 1,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.CLEARCAST_CHANCE_DMG,
                perPoint = 2,
            },
        }
    },
    { -- Improved Arcane Explosion
        tree = 1,
        tier = 3,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {4096, 0, 0, 0},
                perPoint = 2,
            },
        }
    },
    { -- Arcane Meditation
        tree = 1,
        tier = 4,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                perPoint = 5,
            },
        }
    },
    { -- Arcane Instability
        tree = 1,
        tier = 6,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {551686903, 69632, 268697696, 540672},
                perPoint = 1,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {4194437, 131072, 0, 0},
                perPoint = 1,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {551688951, 69632, 268701792, 540674},
                perPoint = 1,
            },
        }
    },
    -----------------------------
    -- Fire
    -----------------------------
    { -- Ignite
        tree = 2,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EXTRA_ON_CRIT,
                affectSpell = {43451023732, 200704, 524808, 536887296},
                perPoint = 8,
            },
        }
    },
    { -- Incinerate
        tree = 2,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {18, 0, 0, 0},
                perPoint = 2,
            },
        }
    },
    { -- Improved Flamestrike
        tree = 2,
        tier = 3,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {4, 0, 0, 0},
                perPoint = 5,
            },
        }
    },
    { -- Master of Elements
        tree = 2,
        tier = 4,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.ILLUMINATION,
                perPoint = 10,
            },
        }
    },
    { -- Critical Mass
        tree = 2,
        tier = 5,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {12582935, 69632, 262400, 16384},
                perPoint = 2,
            },
        }
    },
    { -- Fire Power
        tree = 2,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {12582935, 69632, 262144, 16384},
                perPoint = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {4194309, 131072, 262144, 0},
                perPoint = 2,
            },
        }
    },
    -----------------------------
    -- Frost
    -----------------------------
    { -- Elemental Precision
        tree = 3,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {12714743, 1249280, 262240, 540672},
                perPoint = 2,
            },
        }
    },
    { -- Ice Shards
        tree = 3,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {131808, 4096, 96, 524288},
                perPoint = 20,
            },
        }
    },
    { -- Piercing Ice
        tree = 3,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {131808, 4096, 96, 524288},
                perPoint = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {128, 0, 0, 0},
                perPoint = 2,
            },
        }
    },
    { -- Improved Cone of Cold
        tree = 3,
        tier = 5,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {512, 0, 0, 0},
                values = {25, 35},
            },
        }
    },
}

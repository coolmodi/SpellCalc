---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.talentData = {
    -----------------------------
    -- Elemental
    -----------------------------
    { -- Concussion
        tree = 1,
        talent = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {-1877999613},
                perPoint = 1
            }
        }
    },
    { -- Call of Flame
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {134217728 + 4096 + 16}, -- Nova, Magma, Searing
                perPoint = 5
            }
        }
    },
    { -- Elemental Focus TODO: Can proc on EO. Effective additional reduction equal to EO * 0.04 * critChance?
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.ILLUMINATION,
                perPoint = 80 -- = 40% for 2 spells
            }
        }
    },
    { -- Call of Thunder
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {3},
                perPoint = 1
            }
        }
    },
    { -- Elemental Fury
        tree = 1,
        talent = 13,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {-785383421 + 134217728 + 4096 + 16}, -- Default + Nova, Magma, Searing
                perPoint = 100
            }
        }
    },
    { -- Unrelenting Storm
        tree = 1,
        talent = 14,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.MANA_PER_5_FROM_INT,
                perPoint = 2,
            }
        }
    },
    { -- Elemental Precision
        tree = 1,
        talent = 15,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {-605023225, -1926925674, 206320262, -37482307},
                perPoint = 2
            }
        }
    },
    { -- Lightning Overload
        tree = 1,
        talent = 19,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SHAMAN_LIGHTNING_OVERLOAD,
                affectSpell = {3},
                perPoint = 4
            }
        }
    },
    -----------------------------
    -- Enhancement
    -----------------------------
    { -- Elemental Precision
        tree = 2,
        talent = 6,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1024},
                perPoint = 5
            }
        }
    },
    -----------------------------
    -- Restoration
    -----------------------------
    { -- Nature's Guidance
        tree = 3,
        talent = 6,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                perPoint = 1
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                perPoint = 1
            }
        }
    },

    { -- Restorative Totems
        tree = 3,
        talent = 10,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {524288},
                perPoint = 5
            }
        }
    },
    { -- Tidal Mastery
        tree = 3,
        talent = 11,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {1475},
                perPoint = 1
            }
        }
    },
    { -- Purification
        tree = 3,
        talent = 15,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.PCT_HEALING,
                perPoint = 2
            }
        }
    },
    { -- Improved Chain Heal
        tree = 3,
        talent = 19,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {256},
                perPoint = 10
            }
        }
    },
};

_addon.aurasPlayer[16166] = { -- Elemental Mastery
    {type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
    affectSpell = {-1877999613},
    value = 100,}
};

_addon.aurasPlayer[16188] = { -- Nature's Swiftness dummy
    {type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
    value = 1500}
};
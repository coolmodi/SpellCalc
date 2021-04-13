---@type AddonEnv
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.talentData = {
    -----------------------------
    -- Arcane
    -----------------------------
    { -- Arcane Subtlety
        tree = 1,
        talent = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
                affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
                perPoint = 5
            }
        }
    },
    { -- Arcane Focus
        tree = 1,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {-1591717888, 16},
                perPoint = 2
            }
        }
    },
    { -- Arcane Concentration
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CLEARCAST_CHANCE_DMG,
                perPoint = 2
            }
        }
    },
    { -- Arcane Impact
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {536875008},
                perPoint = 2
            }
        }
    },
    { -- Arcane Meditation
        tree = 1,
        talent = 12,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                perPoint = 10
            }
        }
    },
    { -- Arcane Instability
        tree = 1,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
                perPoint = 1
            }
        }
    },
    -- TODO: Arcane Potency
    { -- Empowered Arcane Missiles
        tree = 1,
        talent = 19,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {2097152},
                perPoint = 3
            }
        }
    },
    { -- Spell Power
        tree = 1,
        talent = 21,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {551686775, 8},
                perPoint = 25
            }
        }
    },
    -----------------------------
    -- Fire
    -----------------------------
    { -- Ignite
        tree = 2,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.IGNITE,
                perPoint = 8
            }
        }
    },
    { -- Incinerate
        tree = 2,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {18},
                perPoint = 2
            }
        }
    },
    { -- Improved Flamestrike
        tree = 2,
        talent = 7,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {4},
                perPoint = 5
            }
        }
    },
    { -- Master of Elements
        tree = 2,
        talent = 12,
        effects = {
            {
                type = _addon.EFFECT_TYPE.ILLUMINATION,
                perPoint = 10
            }
        }
    },
    { -- Playing with Fire
        tree = 2,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                perPoint = 1
            }
        }
    },
    -- { -- Critical Mass TODO: test this and Pyromaniac
    --     tree = 2,
    --     talent = 14,
    --     effects = {
    --         {
    --             type = _addon.EFFECT_TYPE.SCHOOLMOD_FLAT_CRIT,
    --             affectMask = _addon.SCHOOL_MASK.FIRE,
    --             perPoint = 2
    --         }
    --     }
    -- },
    { -- Fire Power
        tree = 2,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {12845079, 8},
                perPoint = 2
            }
        }
    },
    -- TODO: Molten Fury
    { -- Empowered Fireball
        tree = 2,
        talent = 21,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {1},
                perPoint = 3
            }
        }
    },
    -----------------------------
    -- Frost
    -----------------------------
    { -- Elemental Precision
        tree = 3,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {13763319, 8},
                perPoint = 1
            }
        }
    },
    { -- Ice Shards
        tree = 3,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {131808},
                perPoint = 20
            }
        }
    },
    { -- Piercing Ice
        tree = 3,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {131808},
                perPoint = 2
            }
        }
    },
    { -- Improved Cone of Cold
        tree = 3,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {512},
                perPoint = 10,
                base = 5
            }
        }
    },
    { -- Arctic Winds
        tree = 3,
        talent = 20,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.SCHOOL_MASK.FROST,
                perPoint = 1,
            }
        }
    },
    { -- Empowered Frostbolt
        tree = 3,
        talent = 21,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {32},
                perPoint = 2,
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {32},
                perPoint = 1,
            }
        }
    }
};

_addon.aurasPlayer[12042] = { -- Arcane Power
    type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
    affectSpell = {685904631, 8},
    value = 30,
};

local mageArmorEffect = {
    type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
    value = 30,
};
_addon.aurasPlayer[6117] = mageArmorEffect;
_addon.aurasPlayer[22782] = mageArmorEffect;
_addon.aurasPlayer[22783] = mageArmorEffect;
_addon.aurasPlayer[27125] = mageArmorEffect;
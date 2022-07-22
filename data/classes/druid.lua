---@type AddonEnv
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.talentData = {
    -----------------------------
    -- Balance
    -----------------------------
    { -- Genesis
        tree = 1,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2097746, 67108880},
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {4194432},
                perPoint = 1
            }
        }
    },
    { -- Nature's Majesty
        tree = 1,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {37, 41943040},
                perPoint = 2
            }
        }
    },
    { -- Improve Moonfire
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {2},
                perPoint = 5
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {2},
                perPoint = 5
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2},
                perPoint = 5
            }
        }
    },
    { -- Brambles
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {256},
                perPoint = 25
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {512},
                perPoint = 25
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {0, 512},
                perPoint = 5
            }
        }
    },
    { -- Nature's Splendor
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {18},
                perPoint = 3
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {64},
                perPoint = 6
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {2097152, 16},
                perPoint = 2
            }
        }
    },
    { -- Vengeance
        tree = 1,
        talent = 10,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {7, 8388608},
                perPoint = 20
            }
        }
    },
    -- TODO: Celestial Focus (1/11), spell haste effect? Available from API?
    -- TODO: Improved Insect Swarm (1/14), dmg if aura on target
    { -- Dreamstate
        tree = 1,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MANA_PER_5_FROM_INT,
                perPoint = 3,
                base = 1
            }
        }
    },
    { -- Moonfury
        tree = 1,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {7},
                values = {3, 6, 10}
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2},
                values = {3, 6, 10}
            }
        }
    },
    { -- Balance of Power
        tree = 1,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                perPoint = 2
            },
        }
    },
    -- TODO: Improved Moonkin Form (1/19), haste from API?
    -- TODO: Improved Faerie Fire (1/20), crit if aura on target
    { -- Wrath of Cenarius
        tree = 1,
        talent = 22,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {4},
                perPoint = 4
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {1},
                perPoint = 2
            }
        }
    },
    { -- Gale Winds
        tree = 1,
        talent = 26,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {4194304, 16777216},
                perPoint = 15
            }
        }
    },
    { -- Earth and Moon
        tree = 1,
        talent = 27,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
                perPoint = 2
            }
        }
    },
    -----------------------------
    -- Feral
    -----------------------------
    { -- Feral Aggression
        tree = 2,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {8388608},
                perPoint = 3
            }
        }
    },
    { -- Savage Fury
        tree = 2,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {6144, 1088, 262144},
                perPoint = 10
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {4096},
                perPoint = 10
            }
        }
    },
    { -- Predatory Instincts
        tree = 2,
        talent = 23,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_CRIT_BASE_MULT,
                affectMask = _addon.SCHOOL_MASK.PHYSICAL,
                values = {3, 7, 10}
            }
        }
    },
    -- TODO: Rend and Tear (2/28), dmg and crit on bleeding targets
    -- TODO: Primal Gore (2/29), enable crit on DoT
    -----------------------------
    -- Restoration
    -----------------------------
    { -- Intensity
        tree = 3,
        talent = 7,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                values = {17, 33, 50}
            }
        }
    },
    { -- Omen of Clarity
        tree = 3,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CLEARCAST_CHANCE,
                perPoint = 6 -- TODO: procchance, fix basecost calc
            }
        }
    },
    -- TODO: Master Shapeshifter (3/9), bonus in stance
    { -- Improved Rejuvenation
        tree = 3,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {16},
                perPoint = 5
            }
        }
    },
    { -- Gift of Nature
        tree = 3,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {224, 33554448},
                perPoint = 2
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {80, 67108880},
                perPoint = 2
            }
        }
    },
    { -- Empowered Touch
        tree = 3,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {32},
                perPoint = 20
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {0, 33554432},
                perPoint = 10
            }
        }
    },
    { -- Improved Regrowth
        tree = 3,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {64},
                perPoint = 5
            }
        }
    },
    { -- Natural Perfection
        tree = 3,
        talent = 19,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_FLAT_CRIT,
                affectMask = _addon.SCHOOL_MASK.ALL,
                perPoint = 1
            }
        }
    },
    { -- Empowered Rejuvenation
        tree = 3,
        talent = 20,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_SPELL_SCALE,
                affectSpell = {208, 67108880},
                perPoint = 4
            }
        }
    },
    -- TODO: Living Seed (3/21)
    { -- Gift of the Earthmother
        tree = 3,
        talent = 26,
        effects = {
            -- TODO: Haste from API?
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_GCD_MS,
                affectSpell = {0, 16},
                perPoint = -30
            }
        }
    },
};

_addon.aurasPlayer[17116] = { -- Nature's Swiftness dummy
    type = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
    value = 1500
};

_addon.aurasPlayer[16886] = { -- Nature's Grace
    type = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
    value = 1500
};

_addon.aurasPlayer[48518] = { -- Eclipse (Lunar)
    type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
    affectSpell = {4},
    value = 40
};

_addon.aurasPlayer[48517] = { -- Eclipse (Solar)
    type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
    affectSpell = {1},
    value = 40
};
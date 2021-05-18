---@type AddonEnv
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.talentData = {
    -----------------------------
    -- Discipline
    -----------------------------
    -- Improved Power Word: Shield
    {
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {1},
                perPoint = 5
            }
        }
    },
    -- Meditation
    {
        tree = 1,
        talent = 9,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                perPoint = 10
            }
        }
    },
    -- Focused Power
    {
        tree = 1,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {8320, 128},
                perPoint = 2
            }
        }
    },
    -- Force of will
    {
        tree = 1,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {49848464, 1042},
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {139993232, 18},
                perPoint = 1
            }
        }
    },
    -----------------------------
    -- Holy
    -----------------------------
    -- Improved Renew
    {
        tree = 2,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {64},
                perPoint = 5
            }
        }
    },
    { -- Searing Light
        tree = 2,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1048704},
                perPoint = 5
            }
        }
    },
    { -- Spiritual Healing
        tree = 2,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.PCT_HEALING,
                perPoint = 2
            }
        }
    },
    { -- Holy Concentration
        tree = 2,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_CLEARCAST_CHANCE,
                affectSpell = {6144, 4},
                perPoint = 2
            }
        }
    },
    { -- Empowered Healing
        tree = 2,
        talent = 20,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {4096},
                perPoint = 4
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {2048, 4},
                perPoint = 2
            }
        }
    },
    -----------------------------
    -- Shadow
    -----------------------------
    -- Improved Shadow Word: Pain
    {
        tree = 3,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {32768},
                perPoint = 3
            }
        }
    },
    -- Shadow Focus
    {
        tree = 3,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {109813764, 1098},
                perPoint = 2
            }
        }
    },
    -- Darkness
    {
        tree = 3,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {42508288, 1026},
                perPoint = 2
            }
        }
    },
    -- Shadow Power
    {
        tree = 3,
        talent = 19,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {8192, 2},
                perPoint = 3
            }
        }
    },
};

-- Shadowform
_addon.aurasPlayer[15473] = {
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.SHADOW,
    value = 15,
}

-- Inner Focus
_addon.aurasPlayer[14751] = {
    type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
    affectSpell = {-917225840, 54},
    value = 25
}
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.talentData = {
    -- Meditation
    {
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                perPoint = 5
            }
        }
    },
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
    -- Force of will
    {
        tree = 1,
        talent = 14,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {16294032},
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {139993232},
                perPoint = 1
            }
        }
    },

    -- Improved Renew
    {
        tree = 2,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {64},
                perPoint = 5
            }
        }
    },
    -- Holy Spec
    {
        tree = 2,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {156507776},
                perPoint = 1
            }
        }
    },
    { -- Searing Light
        tree = 2,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {1048704},
                perPoint = 5
            }
        }
    },
    { -- Spiritual Healing
        tree = 2,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_HEALING,
                affectSpell = {151264832},
                perPoint = 2
            }
        }
    },

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
                affectSpell = {109813760},
                perPoint = 2
            }
        }
    },
    -- Darkness
    {
        tree = 3,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {33562624},
                perPoint = 2
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {8421376 + 524288},
                perPoint = 2
            }
        }
    },
};

-- Shadowform
_addon.buffData[15473] = {
    effect = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.SHADOW,
    value = 15,
}

-- Inner Focus
_addon.buffData[14751] = {
    effect = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
    affectSpell = {-917225840},
    value = 25
}

_addon.itemEffects[18608] = { -- Benediction
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_FLAT_CRIT,
        affectMask = _addon.SCHOOL_MASK.HOLY,
        value = 2
    }
}
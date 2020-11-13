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
                type = _addon.EFFECT_TYPE.FSR_REGEN,
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
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
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
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {16294032},
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
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
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
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
                type = _addon.EFFECT_TYPE.MOD_CRIT,
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
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
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
                type = _addon.EFFECT_TYPE.MOD_HEALING_DONE,
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
                type = _addon.EFFECT_TYPE.MOD_DURATION,
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
                type = _addon.EFFECT_TYPE.MOD_HIT_SPELL,
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
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {33562624},
                perPoint = 2
            },
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {8421376 + 524288},
                perPoint = 2
            }
        }
    },
};

-- Shadowform
_addon.buffData[15473] = {
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.SHADOW,
    value = 15,
}

-- Inner Focus
_addon.buffData[14751] = {
    effect = _addon.EFFECT_TYPE.MOD_CRIT,
    affectSpell = {-917225840},
    value = 25
}
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.talentData = {
    { -- Focused Starlight
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {5},
                perPoint = 2
            }
        }
    },
    { -- Improve Moonfire
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {2},
                perPoint = 5
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {2},
                perPoint = 5
            }
        }
    },
    { -- Improve Thorns
        tree = 1,
        talent = 7,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {256},
                perPoint = 25
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {512},
                perPoint = 25
            }
        }
    },
    { -- Vengeance
        tree = 1,
        talent = 10,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {7},
                perPoint = 20
            }
        }
    },
    { -- Nature's Grace
        tree = 1,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.DRUID_NATURES_GRACE,
                perPoint = 1
            }
        }
    },
    { -- Moonfury
        tree = 1,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {7},
                perPoint = 2
            },
        }
    },
    { -- Balance of Power
        tree = 1,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                perPoint = 2
            },
        }
    },
    { -- Wrath of Cenarius
        tree = 1,
        talent = 20,
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

    { -- Feral Aggression (TODO: mask includes Rip, should it?)
        tree = 2,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {8388608},
                perPoint = 3
            }
        }
    },
    { -- Savage Fury
        tree = 2,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {4096 + 2048},
                perPoint = 10
            }
        }
    },

    { -- Intensity
        tree = 3,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                perPoint = 10
            }
        }
    },
    { -- Improved Rejuvenation
        tree = 3,
        talent = 10,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_HEALING,
                affectSpell = {16},
                perPoint = 5
            }
        }
    },
    { -- Gift of Nature
        tree = 3,
        talent = 12,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_HEALING,
                affectSpell = {240},
                perPoint = 2
            }
        }
    },
    { -- Empowered Touch
        tree = 3,
        talent = 14,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {32},
                perPoint = 10
            }
        }
    },
    { -- Improved Regrowth
        tree = 3,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {64},
                perPoint = 10
            }
        }
    },
    -- Natural Perfection TODO: found by API?
    { -- Empowered Rejuvenation
        tree = 3,
        talent = 19,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_SPELL_SCALE,
                affectSpell = {208},
                perPoint = 4
            }
        }
    },
};

_addon.aurasPlayer[17116] = { -- Nature's Swiftness dummy
    type = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
    value = 1500
};

_addon.itemEffects[22399] = { -- Idol of Health (Dummy effect to trigger update)
    {
        type = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 1500
    }
}
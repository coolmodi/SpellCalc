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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {7},
                perPoint = 2
            },
        }
    },
    { -- Balance of Power TODO: check if this is still not reflected in API on release
        tree = 1,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                perPoint = 2
            },
        }
    },
    { -- Dreamstate
        tree = 1,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MANA_PER_5_FROM_INT,
                perPoint = 3,
                base = 1
            }
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
    -----------------------------
    -- Feral
    -----------------------------
    { -- Feral Aggression (TODO: mask includes Rip, should it?)
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
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {4096, 1024},
                perPoint = 10
            }
        }
    },
    -----------------------------
    -- Restoration
    -----------------------------
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {240, 16},
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
    { -- Empowered Rejuvenation
        tree = 3,
        talent = 19,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_SPELL_SCALE,
                affectSpell = {208, 16},
                perPoint = 4
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
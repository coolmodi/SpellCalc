local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.talentData = {
    { -- Arcane Subtlety
        tree = 1,
        talent = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
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
                affectSpell = {2359296},
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
    { -- Improved Arcane Explosion
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {4096},
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
                perPoint = 5
            }
        }
    },
    { -- Arcane Instability
        tree = 1,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {12589815},
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {12589815},
                perPoint = 1
            }
        }
    },

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
    { -- Critical Mass
        tree = 2,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {12582935},
                perPoint = 2
            }
        }
    },
    { -- Fire Power
        tree = 2,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {12582935},
                perPoint = 2
            }
        }
    },

    { -- Elemental Precision
        tree = 3,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {12583671},
                perPoint = 2
            }
        }
    },
    { -- Ice Shards
        tree = 3,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {736},
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
                affectSpell = {736},
                perPoint = 2
            }
        }
    },
    { -- Improved Cone of Cold
        tree = 3,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
                affectSpell = {512},
                perPoint = 10,
                base = 5
            }
        }
    },
};

_addon.aurasPlayer[12042] = { -- Arcane Power
    type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
    affectSpell = {12589815},
    value = 30,
};

local MageArmorEffect = {
    type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
    value = 30,
};
_addon.aurasPlayer[6117] = MageArmorEffect;
_addon.aurasPlayer[22782] = MageArmorEffect;
_addon.aurasPlayer[22783] = MageArmorEffect;
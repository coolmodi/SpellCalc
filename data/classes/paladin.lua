local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.talentData = {
    { -- Healing Light
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {-1073741824},
                perPoint = 4
            }
        }
    },
    { -- Improved Seal of Righteousness
        tree = 1,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {134217728 + 1024},
                perPoint = 3
            }
        }
    },
    { -- Illumination
        tree = 1,
        talent = 9,
        effects = {
            {
                type = _addon.EFFECT_TYPE.ILLUMINATION,
                perPoint = 20
            }
        }
    },
    { -- Holy Power
        tree = 1,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_FLAT_CRIT,
                affectMask = _addon.SCHOOL_MASK.HOLY,
                perPoint = 1
            }
        }
    },

    { -- Precision
        tree = 2,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.WEAPONMOD_FLAT_HIT_CHANCE,
                affectMask = _addon.WEAPON_TYPES_MASK.MELEE,
                perPoint = 1
            }
        }
    },
};

_addon.aurasPlayer[20216] = { -- Divine Favor
    type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
    affectSpell = {2147483648 + 1073741824 + 2097152},
    value = 100,
};

_addon.aurasPlayer[20050] = { -- Vengeance 1
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 3
};

_addon.aurasPlayer[20052] = { -- Vengeance 2
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 6
};

_addon.aurasPlayer[20053] = { -- Vengeance 3
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 9
};

_addon.aurasPlayer[20054] = { -- Vengeance 4
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 12
};

_addon.aurasPlayer[20055] = { -- Vengeance 5
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 15
};
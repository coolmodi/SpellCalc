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
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_EFFECT,
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
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_EFFECT,
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
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSchool = _addon.SCHOOL_MASK.HOLY,
                perPoint = 1
            }
        }
    },

    { -- Precision
        tree = 2,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HIT_WEAPON,
                affectSchool = _addon.WEAPON_TYPES_MASK.MELEE,
                perPoint = 1
            }
        }
    },
};

_addon.buffData[20216] = { -- Divine Favor
    effect = _addon.EFFECT_TYPE.MOD_CRIT,
    affectSpell = {2147483648 + 1073741824 + 2097152},
    value = 100,
};

_addon.buffData[20050] = { -- Vengeance 1
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 3
};

_addon.buffData[20052] = { -- Vengeance 2
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 6
};

_addon.buffData[20053] = { -- Vengeance 3
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 9
};

_addon.buffData[20054] = { -- Vengeance 4
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 12
};

_addon.buffData[20055] = { -- Vengeance 5
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 15
};

_addon.itemEffects[23201] = { -- Libram of Divinity
    {
        type = _addon.EFFECT_TYPE.EXTRA_SP,
        affectSpell = {1073741824},
        value = 53
    }
}

_addon.itemEffects[23006] = { -- Libram of Light
    {
        type = _addon.EFFECT_TYPE.EXTRA_SP,
        affectSpell = {1073741824},
        value = 83
    }
}

-- TODO: https://classic.wowhead.com/item=23203/libram-of-fervor
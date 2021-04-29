---@type AddonEnv
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.talentData = {
    -----------------------------
    -- Holy
    -----------------------------
    { -- Improved Seal of Righteousness
        tree = 1,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {134217728 + 1024},
                perPoint = 3
            }
        }
    },
    { -- Healing Light
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {-1073741824},
                perPoint = 4
            }
        }
    },
    { -- Illumination TODO: not 100% anymore
        tree = 1,
        talent = 9,
        effects = {
            {
                type = _addon.EFFECT_TYPE.ILLUMINATION,
                perPoint = 20
            }
        }
    },
    { -- Sanctified Light
        tree = 1,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {-2147483648},
                perPoint = 2
            }
        }
    },
    { -- Purifying Power
        tree = 1,
        talent = 14,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {0, 2},
                perPoint = 10
            }
        }
    },
    -----------------------------
    -- Protection
    -----------------------------
    { -- Precision
        tree = 2,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                neededWeaponMask = _addon.WEAPON_TYPES_MASK.MELEE,
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                neededWeaponMask = _addon.WEAPON_TYPES_MASK.MELEE,
                perPoint = 1
            }
        }
    },
    { -- One-Handed Weapon Specialization (only affect magic, physical modifier appears in the API for attack damage)
        tree = 2,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                neededWeaponMask = _addon.WEAPON_TYPES_MASK.AXE_1H + _addon.WEAPON_TYPES_MASK.MACE_1H + _addon.WEAPON_TYPES_MASK.SWORD_1H,
                affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
                perPoint = 1
            }
        }
    },
    { -- Improved Holy Shield
        tree = 2,
        talent = 18,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {0, 64},
                perPoint = 10
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_CHARGES,
                affectSpell = {0, 64},
                perPoint = 2
            }
        }
    },
    -----------------------------
    -- Retribution
    -----------------------------
    { -- Improved Retribution Aura
        tree = 3,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {8},
                perPoint = 25
            }
        }
    },
    { -- Crusade
        tree = 3,
        talent = 12,
        effects = {
            {
                type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
                affectMask = _addon.CREATURE_TYPE_MASK.HUMANOID + _addon.CREATURE_TYPE_MASK.DEMON + _addon.CREATURE_TYPE_MASK.UNDEAD + _addon.CREATURE_TYPE_MASK.ELEMENTAL,
                perPoint = 1
            }
        }
    },
    { -- Fanaticism
        tree = 3,
        talent = 21,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {1024, 8},
                perPoint = 3
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
    value = 1
};

_addon.aurasPlayer[20052] = { -- Vengeance 2
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 2
};

_addon.aurasPlayer[20053] = { -- Vengeance 3
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 3
};

_addon.aurasPlayer[20054] = { -- Vengeance 4
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 4
};

_addon.aurasPlayer[20055] = { -- Vengeance 5
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.HOLY,
    value = 5
};

_addon.aurasPlayer[31884] = { -- Avenging Wrath
    type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 30
}
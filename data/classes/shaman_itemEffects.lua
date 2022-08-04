-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.itemEffects[22395] = { -- Totem of Rage
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {-1877999616, 0, 0, 0},
        value = 30,
    },
}

_addon.itemEffects[22396] = { -- Totem of Life
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 80,
    },
}

_addon.itemEffects[21565] = { -- Rune of Perfection
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[21566] = { -- Rune of Perfection
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21373] = { -- Stormcaller's Footguards
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[23199] = { -- Totem of the Storm
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {3, 0, 0, 0},
        value = 33,
    },
}

_addon.itemEffects[23200] = { -- Totem of Sustaining
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 53,
    },
}

_addon.itemEffects[25645] = { -- Totem of the Plains
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 79,
    },
}

_addon.itemEffects[26000] = { -- Gladiator's Linked Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {1024, 0, 0, 0},
        value = 8,
    },
}

_addon.itemEffects[27947] = { -- Totem of Impact
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {-1877999616, 0, 0, 0},
        value = 46,
    },
}

_addon.itemEffects[27544] = { -- Totem of Spontaneous Regrowth
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 88,
    },
}

_addon.itemEffects[27984] = { -- Totem of Impact
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {-1877999616, 0, 0, 0},
        value = 46,
    },
}

_addon.itemEffects[28248] = { -- Totem of the Void
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {3, 0, 0, 0},
        value = 55,
    },
}

_addon.itemEffects[28842] = { -- High Warlord's Linked Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {1024, 0, 0, 0},
        value = 8,
    },
}

_addon.itemEffects[28690] = { -- Grand Marshal's Linked Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {1024, 0, 0, 0},
        value = 8,
    },
}

_addon.itemEffects[28523] = { -- Totem of Healing Rains
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {256, 0, 0, 0},
        value = 87,
    },
}

_addon.itemEffects[32330] = { -- Totem of Ancestral Guidance
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {3, 0, 0, 0},
        value = 85,
    },
}

_addon.itemEffects[32005] = { -- Merciless Gladiator's Linked Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {1024, 0, 0, 0},
        value = 8,
    },
}

_addon.itemEffects[32030] = { -- Merciless Gladiator's Ringmail Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {128, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[31397] = { -- Gladiator's Ringmail Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {128, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[33706] = { -- Vengeful Gladiator's Linked Armor
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[33708] = { -- Vengeful Gladiator's Linked Helm
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[33709] = { -- Vengeful Gladiator's Linked Leggings
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[35042] = { -- Brutal Gladiator's Linked Armor
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[35044] = { -- Brutal Gladiator's Linked Helm
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[35045] = { -- Brutal Gladiator's Linked Leggings
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}


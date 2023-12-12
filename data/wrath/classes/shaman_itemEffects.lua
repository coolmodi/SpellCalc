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
        affectSpell = {64},
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

_addon.itemEffects[32139] = { -- Chancellor's Linked Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {1024, 0, 0, 0},
        value = 8,
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

_addon.itemEffects[38361] = { -- Venture Co. Lightning Rod
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 4096, 0, 0},
        value = 121,
    },
}

_addon.itemEffects[38367] = { -- Venture Co. Flame Slicer
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 0, 4, 0},
        value = 25,
    },
}

_addon.itemEffects[38368] = { -- Totem of the Bay
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {256, 0, 0, 0},
        value = 102,
    },
}

_addon.itemEffects[40267] = { -- Totem of Hex
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {3, 0, 0, 0},
        value = 165,
    },
}

_addon.itemEffects[42665] = { -- Vengeful Gladiator's Ringmail Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {128, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[42670] = { -- Gladiator's Linked Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {1024, 0, 0, 0},
        value = 8,
    },
}

_addon.itemEffects[42595] = { -- Savage Gladiator's Totem of the Third Wind
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 204,
    },
}

_addon.itemEffects[42596] = { -- Hateful Gladiator's Totem of the Third Wind
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 236,
    },
}

_addon.itemEffects[42597] = { -- Deadly Gladiator's Totem of the Third Wind
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 267,
    },
}

_addon.itemEffects[42598] = { -- Furious Gladiator's Totem of the Third Wind
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 320,
    },
}

_addon.itemEffects[42599] = { -- Relentless Gladiator's Totem of the Third Wind
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 404,
    },
}

_addon.itemEffects[45169] = { -- Totem of the Dancing Flame
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 0, 4096, 0},
        value = 155,
    },
}

_addon.itemEffects[45255] = { -- Thunderfall Totem
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 4096, 0, 0},
        value = 215,
    },
}

_addon.itemEffects[45114] = { -- Steamcaller's Totem
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {256, 0, 0, 0},
        value = 243,
    },
}

_addon.itemEffects[51501] = { -- Wrathful Gladiator's Totem of the Third Wind
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 459,
    },
}


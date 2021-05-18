-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.itemEffects[23006] = { -- Libram of Light
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 83,
    },
}

_addon.itemEffects[23201] = { -- Libram of Divinity
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 53,
    },
}

_addon.itemEffects[25644] = { -- Blessed Book of Nagrand
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 79,
    },
}

_addon.itemEffects[27703] = { -- Gladiator's Lamellar Gauntlets
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[28296] = { -- Libram of the Lightbringer
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {2147483648},
        value = 87,
    },
}

_addon.itemEffects[28065] = { -- Libram of Wracking
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {0, 2, 0, 0},
        value = 120,
    },
}

_addon.itemEffects[27917] = { -- Libram of the Eternal Rest
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {32, 0, 0, 0},
        value = 47,
    },
}

_addon.itemEffects[31614] = { -- Gladiator's Ornamented Gloves
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[31993] = { -- Merciless Gladiator's Lamellar Gauntlets
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[32021] = { -- Merciless Gladiator's Ornamented Gloves
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[33723] = { -- Vengeful Gladiator's Ornamented Gloves
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[33504] = { -- Libram of Divine Purpose
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {0, 16, 0, 0},
        value = 94,
    },
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1024, 0, 0, 0},
        value = 68,
    },
}

_addon.itemEffects[33696] = { -- Vengeful Gladiator's Lamellar Gauntlets
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[35028] = { -- Brutal Gladiator's Lamellar Gauntlets
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[35060] = { -- Brutal Gladiator's Ornamented Gloves
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}


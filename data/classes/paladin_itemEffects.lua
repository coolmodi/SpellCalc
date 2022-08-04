-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.itemEffects[23006] = { -- Libram of Light
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 43,
    },
}

_addon.itemEffects[23201] = { -- Libram of Divinity
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 28,
    },
}

_addon.itemEffects[25644] = { -- Blessed Book of Nagrand
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 79,
    },
}

_addon.itemEffects[27703] = { -- Gladiator's Lamellar Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[28296] = { -- Libram of the Lightbringer
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {2147483648},
        value = 47,
    },
}

_addon.itemEffects[28065] = { -- Libram of Wracking
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {0, 2097154},
        value = 120,
    },
}

_addon.itemEffects[27917] = { -- Libram of the Eternal Rest
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {32, 0, 0, 0},
        value = 47,
    },
}

_addon.itemEffects[28592] = { -- Libram of Souls Redeemed
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 89,
    },
}

_addon.itemEffects[31614] = { -- Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[31993] = { -- Merciless Gladiator's Lamellar Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[32021] = { -- Merciless Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[33723] = { -- Vengeful Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[33750] = { -- Vengeful Gladiator's Scaled Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 32768, 0, 0},
        value = 5,
    },
}

_addon.itemEffects[33504] = { -- Libram of Divine Purpose
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {134217728},
        value = 94,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1024, 0, 0, 0},
        value = 68,
    },
}

_addon.itemEffects[33696] = { -- Vengeful Gladiator's Lamellar Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[35089] = { -- Brutal Gladiator's Scaled Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 32768, 0, 0},
        value = 5,
    },
}

_addon.itemEffects[35028] = { -- Brutal Gladiator's Lamellar Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[35060] = { -- Brutal Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[38362] = { -- Venture Co. Libram of Retribution
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 131072, 0, 0},
        value = 81,
    },
}

_addon.itemEffects[38363] = { -- Venture Co. Libram of Protection
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 1048576, 0, 0},
        value = 96,
    },
}

_addon.itemEffects[38364] = { -- Venture Co. Libram of Mostly Holy Deeds
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 65536, 0, 0},
        value = 69,
    },
}

_addon.itemEffects[40337] = { -- Libram of Resurgence
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {32, 0, 0, 0},
        value = 141,
    },
}

_addon.itemEffects[40798] = { -- Savage Gladiator's Scaled Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 32768, 0, 0},
        value = 5,
    },
}

_addon.itemEffects[40802] = { -- Hateful Gladiator's Scaled Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 32768, 0, 0},
        value = 5,
    },
}

_addon.itemEffects[40805] = { -- Deadly Gladiator's Scaled Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 32768, 0, 0},
        value = 5,
    },
}

_addon.itemEffects[40808] = { -- Furious Gladiator's Scaled Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 32768, 0, 0},
        value = 5,
    },
}

_addon.itemEffects[40812] = { -- Relentless Gladiator's Scaled Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 32768, 0, 0},
        value = 5,
    },
}

_addon.itemEffects[40918] = { -- Savage Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[40925] = { -- Hateful Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[40926] = { -- Deadly Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[40927] = { -- Furious Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[40928] = { -- Relentless Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[42614] = { -- Deadly Gladiator's Libram of Justice
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824, 0, 0, 0},
        value = 331,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 267,
    },
}

_addon.itemEffects[42615] = { -- Furious Gladiator's Libram of Justice
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824, 0, 0, 0},
        value = 375,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 303,
    },
}

_addon.itemEffects[42616] = { -- Relentless Gladiator's Libram of Justice
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824, 0, 0, 0},
        value = 436,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 352,
    },
}

_addon.itemEffects[42636] = { -- Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[42612] = { -- Savage Gladiator's Libram of Justice
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 204,
    },
}

_addon.itemEffects[42613] = { -- Hateful Gladiator's Libram of Justice
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824, 0, 0, 0},
        value = 293,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 236,
    },
}

_addon.itemEffects[45510] = { -- Libram of Discord
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 131072, 0, 0},
        value = 235,
    },
}

_addon.itemEffects[45436] = { -- Libram of the Resolute
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {2147483648},
        value = 160,
    },
}

_addon.itemEffects[51469] = { -- Wrathful Gladiator's Ornamented Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[51472] = { -- Wrathful Gladiator's Libram of Justice
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824, 0, 0, 0},
        value = 510,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1073741824, 0, 0, 0},
        value = 510,
    },
}

_addon.itemEffects[51475] = { -- Wrathful Gladiator's Scaled Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 32768, 0, 0},
        value = 5,
    },
}


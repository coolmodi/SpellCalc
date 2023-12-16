-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.itemEffects[16536] = { -- Warlord's Silk Amice
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[16444] = { -- Field Marshal's Silk Spaulders
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[16801] = { -- Arcanist Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16487] = { -- Blood Guard's Silk Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16797] = { -- Arcanist Mantle
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16440] = { -- Marshal's Silk Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16391] = { -- Knight-Lieutenant's Silk Gloves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[16918] = { -- Netherwind Bindings
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16914] = { -- Netherwind Crown
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16917] = { -- Netherwind Mantle
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16799] = { -- Arcanist Bindings
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[16539] = { -- General's Silk Boots
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
}

_addon.itemEffects[16540] = { -- General's Silk Handguards
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[18468] = { -- Royal Seal of Eldre'Thalas
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[16437] = { -- Marshal's Silk Footwraps
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
}

_addon.itemEffects[20061] = { -- Highlander's Epaulets
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[19844] = { -- Zandalar Illusionist's Robe DEPRECATED
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 2,
    },
}

_addon.itemEffects[16795] = { -- Arcanist Crown
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
}

_addon.itemEffects[20034] = { -- Zandalar Illusionist's Robe
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
}

_addon.itemEffects[21343] = { -- Enigma Robes
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[21344] = { -- Enigma Boots
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21413] = { -- Blade of Vaulted Secrets
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
}

_addon.itemEffects[20176] = { -- Defiler's Epaulets
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21345] = { -- Enigma Shoulderpads
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21347] = { -- Enigma Circlet
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
}

_addon.itemEffects[21563] = { -- Don Rodrigo's Band
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 20,
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

_addon.itemEffects[21346] = { -- Enigma Leggings
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[23290] = { -- Knight-Lieutenant's Silk Handwraps
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[23291] = { -- Knight-Lieutenant's Silk Walkers
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
}

_addon.itemEffects[22870] = { -- Blood Guard's Silk Handwraps
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32768, 0, 0, 0},
        value = 285,
    },
}

_addon.itemEffects[22860] = { -- Blood Guard's Silk Walkers
    {
        type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
        value = 1,
    },
}


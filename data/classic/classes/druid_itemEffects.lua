-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.itemEffects[16836] = { -- Cenarion Spaulders
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16829] = { -- Cenarion Boots
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[16833] = { -- Cenarion Vestments
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[16900] = { -- Stormrage Cover
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16902] = { -- Stormrage Pauldrons
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16903] = { -- Stormrage Belt
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16901] = { -- Stormrage Legguards
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16835] = { -- Cenarion Leggings
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16828] = { -- Cenarion Belt
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[19613] = { -- Pristine Enchanted South Seas Kelp
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {5, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[21354] = { -- Genesis Shoulderpads
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[21355] = { -- Genesis Boots
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21356] = { -- Genesis Trousers
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
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

_addon.itemEffects[21408] = { -- Band of Unending Life
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22398] = { -- Idol of Rejuvenation
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {16, 0, 0, 0},
        value = 50,
    },
}

_addon.itemEffects[23197] = { -- Idol of the Moon
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {2, 0, 0, 0},
        value = 17,
    },
}

_addon.itemEffects[216490] = { -- Idol of Wrath
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
        affectSpell = {1, 0, 0, 0},
        value = 2,
    },
}


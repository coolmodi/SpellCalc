-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.itemEffects[16836] = { -- Cenarion Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16829] = { -- Cenarion Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[16833] = { -- Cenarion Vestments
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[16900] = { -- Stormrage Cover
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16902] = { -- Stormrage Pauldrons
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16903] = { -- Stormrage Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16901] = { -- Stormrage Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16835] = { -- Cenarion Leggings
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16828] = { -- Cenarion Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[19613] = { -- Pristine Enchanted South Seas Kelp
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {5, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[21354] = { -- Genesis Shoulderpads
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[21355] = { -- Genesis Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21356] = { -- Genesis Trousers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21565] = { -- Rune of Perfection
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[21566] = { -- Rune of Perfection
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21408] = { -- Band of Unending Life
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22495] = { -- Dreamwalker Wristguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22398] = { -- Idol of Rejuvenation
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {16, 0, 0, 0},
        value = 50,
    },
}

_addon.itemEffects[22489] = { -- Dreamwalker Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[22488] = { -- Dreamwalker Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[22491] = { -- Dreamwalker Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22492] = { -- Dreamwalker Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22494] = { -- Dreamwalker Girdle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}


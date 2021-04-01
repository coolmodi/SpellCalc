-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.itemEffects[14154] = { -- Truefaith Vestments
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16812] = { -- Gloves of Prophecy
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16922] = { -- Leggings of Transcendence
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[16814] = { -- Pants of Prophecy
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[17603] = { -- Marshal's Satin Pants
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16817] = { -- Girdle of Prophecy
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16819] = { -- Vambraces of Prophecy
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}

_addon.itemEffects[17605] = { -- Field Marshal's Satin Vestments
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[17623] = { -- Warlord's Satin Cowl
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[17602] = { -- Field Marshal's Headdress
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[18469] = { -- Royal Seal of Eldre'Thalas
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[17624] = { -- Warlord's Satin Robes
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[17625] = { -- General's Satin Leggings
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[18608] = { -- Benediction
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {156507776, 0, 0, 0},
        value = 2,
    },
}

_addon.itemEffects[19594] = { -- The All-Seeing Eye of Zuldazar
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1, 0, 0, 0},
        value = 35,
    },
}

_addon.itemEffects[20061] = { -- Highlander's Epaulets
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[18609] = { -- Anathema
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[20006] = { -- Circle of Hope
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {156507840, 0, 0, 0},
        value = 1,
    },
}

_addon.itemEffects[21351] = { -- Vestments of the Oracle
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21352] = { -- Trousers of the Oracle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22515] = { -- Shoulderpads of Faith
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[20176] = { -- Defiler's Epaulets
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21348] = { -- Tiara of the Oracle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[21349] = { -- Footwraps of the Oracle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[21350] = { -- Mantle of the Oracle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21411] = { -- Ring of Infinite Wisdom
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[23262] = { -- Champion's Satin Mantle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[21563] = { -- Don Rodrigo's Band
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 20,
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

_addon.itemEffects[21410] = { -- Gavel of Infinite Wisdom
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[23302] = { -- Knight-Captain's Satin Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22514] = { -- Circlet of Faith
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22516] = { -- Sandals of Faith
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[23261] = { -- Champion's Satin Hood
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[23303] = { -- Knight-Captain's Satin Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22885] = { -- Legionnaire's Satin Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22882] = { -- Legionnaire's Satin Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[23316] = { -- Lieutenant Commander's Satin Hood
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[23317] = { -- Lieutenant Commander's Satin Mantle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22517] = { -- Gloves of Faith
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[22512] = { -- Robe of Faith
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}


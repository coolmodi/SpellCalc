-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.itemEffects[16573] = { -- General's Mail Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[16842] = { -- Earthfury Helmet
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16843] = { -- Earthfury Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16844] = { -- Earthfury Epaulets
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16838] = { -- Earthfury Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16948] = { -- Gauntlets of Ten Storms
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16943] = { -- Bracers of Ten Storms
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[20056] = { -- Highlander's Mail Pauldrons
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[20203] = { -- Defiler's Mail Pauldrons
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[19829] = { -- Zandalar Augur's Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[19830] = { -- Zandalar Augur's Bracers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[22469] = { -- Earthshatter Handguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22470] = { -- Earthshatter Girdle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[22465] = { -- Earthshatter Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 9,
    },
}

_addon.itemEffects[22395] = { -- Totem of Rage
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {-1877999616, 0, 0, 0},
        value = 30,
    },
}

_addon.itemEffects[22468] = { -- Earthshatter Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22471] = { -- Earthshatter Wristguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[22466] = { -- Earthshatter Headpiece
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[22467] = { -- Earthshatter Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[22464] = { -- Earthshatter Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 12,
    },
}

_addon.itemEffects[22396] = { -- Totem of Life
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 80,
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

_addon.itemEffects[21373] = { -- Stormcaller's Footguards
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 10,
    },
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21375] = { -- Stormcaller's Leggings
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21376] = { -- Stormcaller's Pauldrons
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[23065] = { -- Ring of the Earthshatterer
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[23199] = { -- Totem of the Storm
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {3, 0, 0, 0},
        value = 33,
    },
}

_addon.itemEffects[23200] = { -- Totem of Sustaining
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {128, 0, 0, 0},
        value = 53,
    },
}


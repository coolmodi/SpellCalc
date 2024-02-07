-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.itemEffects[16954] = { -- Judgement Legplates
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16855] = { -- Lawbringer Legplates
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[16953] = { -- Judgement Spaulders
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[16857] = { -- Lawbringer Bracers
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16472] = { -- Marshal's Lamellar Boots
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16473] = { -- Field Marshal's Lamellar Chestplate
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[16474] = { -- Field Marshal's Lamellar Faceguard
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[16958] = { -- Judgement Breastplate
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[16956] = { -- Judgement Gauntlets
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16476] = { -- Field Marshal's Lamellar Pauldrons
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16854] = { -- Lawbringer Helm
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16859] = { -- Lawbringer Boots
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}

_addon.itemEffects[21388] = { -- Avenger's Greaves
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21390] = { -- Avenger's Legguards
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21391] = { -- Avenger's Pauldrons
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[21395] = { -- Blade of Eternal Justice
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21397] = { -- Cape of Eternal Justice
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[23203] = { -- Libram of Fervor
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {512, 0, 0, 0},
        value = 48,
    },
}

_addon.itemEffects[23006] = { -- Libram of Light
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 83,
    },
}

_addon.itemEffects[23666] = { -- Belt of the Grand Crusader
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[23066] = { -- Ring of Redemption
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[23667] = { -- Spaulders of the Grand Crusader
    {
        type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[23201] = { -- Libram of Divinity
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {1073741824},
        value = 53,
    },
}

_addon.itemEffects[209574] = { -- Discarded Tenets of the Silver Hand
    {
        type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
        affectMask = 32,
        value = 15,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER_RANGED,
        affectMask = 32,
        value = 0,
    },
}


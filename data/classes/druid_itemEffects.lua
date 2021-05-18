-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.itemEffects[21355] = { -- Genesis Boots
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21565] = { -- Rune of Perfection
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[21566] = { -- Rune of Perfection
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[22398] = { -- Idol of Rejuvenation
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {16, 0, 0, 0},
        value = 50,
    },
}

_addon.itemEffects[22399] = { -- Idol of Health
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32, 0, 0, 0},
        value = 100,
    },
}

_addon.itemEffects[23197] = { -- Idol of the Moon
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {2, 0, 0, 0},
        value = 33,
    },
}

_addon.itemEffects[25643] = { -- Harold's Rejuvenating Broach
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {16, 0, 0, 0},
        value = 86,
    },
}

_addon.itemEffects[27518] = { -- Ivory Idol of the Moongoddess
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {4, 0, 0, 0},
        value = 55,
    },
}

_addon.itemEffects[27886] = { -- Idol of the Emerald Queen
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_EFFECT1_FLAT_SPELLPOWER,
        affectSpell = {0, 16},
        value = 88,
    },
}

_addon.itemEffects[27744] = { -- Idol of Ursoc
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 256, 0, 0},
        value = 8,
    },
}

_addon.itemEffects[28568] = { -- Idol of the Avian Heart
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32, 0, 0, 0},
        value = 136,
    },
}

_addon.itemEffects[31025] = { -- Idol of the Avenger
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1, 0, 0, 0},
        value = 25,
    },
}

_addon.itemEffects[34444] = { -- Thunderheart Wristguards
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 91,
    },
}

_addon.itemEffects[33672] = { -- Vengeful Gladiator's Dragonhide Helm
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[33673] = { -- Vengeful Gladiator's Dragonhide Legguards
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[33675] = { -- Vengeful Gladiator's Dragonhide Tunic
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[34999] = { -- Brutal Gladiator's Dragonhide Helm
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[35000] = { -- Brutal Gladiator's Dragonhide Legguards
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[35002] = { -- Brutal Gladiator's Dragonhide Tunic
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}


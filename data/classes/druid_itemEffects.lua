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
        value = 47,
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

_addon.itemEffects[38366] = { -- Idol of Pure Thoughts
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {16, 0, 0, 0},
        value = 33,
    },
}

_addon.itemEffects[40321] = { -- Idol of the Shooting Star
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {4, 0, 0, 0},
        value = 165,
    },
}

_addon.itemEffects[40711] = { -- Idol of Lush Moss
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_EFFECT1_FLAT_SPELLPOWER,
        affectSpell = {0, 16},
        value = 125,
    },
}

_addon.itemEffects[40712] = { -- Idol of Steadfast Renewal
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1, 0, 0, 0},
        value = 70,
    },
}

_addon.itemEffects[45270] = { -- Idol of the Crying Wind
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {2097152},
        value = 374,
    },
}

_addon.itemEffects[46138] = { -- Idol of the Flourishing Life
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {0, 33554432},
        value = 187,
    },
}


local _, _addon = ...;

local FLASH_OF_LIGHT = GetSpellInfo(19750);
local MANA_SHIELD = GetSpellInfo(1463);

_addon.itemEffects = {
    [18608] = { -- Benediction
        {
            type = _addon.EFFECT_TYPE.MOD_CRIT,
            affectSchool = _addon.SCHOOL_MASK.HOLY,
            value = 2
        }
    },
    [23201] = { -- Libram of Divinity
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {FLASH_OF_LIGHT},
            value = 53
        }
    },
    [23006] = { -- Libram of Light
        {
            type = _addon.EFFECT_TYPE.EXTRA_SP,
            affectSpell = {FLASH_OF_LIGHT},
            value = 83
        }
    },
    [16540] = { -- General's Silk Handguards
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_VALUE,
            affectSpell = {MANA_SHIELD},
            value = 285
        }
    },
    [16440] = { -- Marshal's Silk Gloves
        {
            type = _addon.EFFECT_TYPE.MOD_FLAT_VALUE,
            affectSpell = {MANA_SHIELD},
            value = 285
        }
    }
}
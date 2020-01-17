local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

local HOLY_LIGHT = GetSpellInfo(635);
local FLASH_OF_LIGHT = GetSpellInfo(19750);
local HOLY_SHOCK = GetSpellInfo(20473);
local SEAL_OF_RIGHTEOUSNESS = GetSpellInfo(20288);
local JUDGEMENT_OF_RIGHTEOUSNESS = GetSpellInfo(20286);

_addon.talentData = {
    { -- Healing Light
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {HOLY_LIGHT, FLASH_OF_LIGHT},
                perPoint = 4
            }
        }
    },
    { -- Improved Seal of Righteousness
        tree = 1,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {SEAL_OF_RIGHTEOUSNESS, JUDGEMENT_OF_RIGHTEOUSNESS},
                perPoint = 3
            }
        }
    },
    { -- Illumination
        tree = 1,
        talent = 9,
        effects = {
            {
                type = _addon.EFFECT_TYPE.ILLUMINATION,
                perPoint = 20
            }
        }
    },
    { -- Holy Power
        tree = 1,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSchool = _addon.SCHOOL_MASK.HOLY,
                perPoint = 1
            }
        }
    },

    { -- Precision
        tree = 2,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HIT_WEAPON,
                affectSchool = _addon.WEAPON_TYPES_MASK.MELEE,
                perPoint = 1
            }
        }
    },
};

_addon.buffData[20216] = { -- Divine Favor
    effect = _addon.EFFECT_TYPE.MOD_CRIT,
    affectSpell = {HOLY_LIGHT, HOLY_SHOCK, FLASH_OF_LIGHT},
    value = 100,
};

_addon.buffData[20050] = { -- Vengeance 1
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 3
};

_addon.buffData[20052] = { -- Vengeance 2
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 6
};

_addon.buffData[20053] = { -- Vengeance 3
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 9
};

_addon.buffData[20054] = { -- Vengeance 4
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 12
};

_addon.buffData[20055] = { -- Vengeance 5
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.HOLY,
    value = 15
};
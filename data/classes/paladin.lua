local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

local HOLY_LIGHT = GetSpellInfo(635);
local FLASH_OF_LIGHT = GetSpellInfo(19750);
local HOLY_SHOCK = GetSpellInfo(20473);

_addon.talentData = {
    { -- Healing Light
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HEALING_DONE,
                affectSpell = {HOLY_LIGHT, FLASH_OF_LIGHT},
                perPoint = 4
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
};

_addon.buffData[20216] = { -- Divine Favor
    effect = _addon.EFFECT_TYPE.MOD_CRIT,
    affectSpell = {HOLY_LIGHT, HOLY_SHOCK, FLASH_OF_LIGHT},
    value = 100,
};
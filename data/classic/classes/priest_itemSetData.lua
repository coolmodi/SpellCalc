-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.itemSetData[202] = {
    name = "Vestments of Prophecy",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {2048, 0, 0, 0},
            value = -100,
            need = 3,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {512, 0, 0, 0},
            value = 25,
            need = 8,
        },
    }
}
_addon.setItemData[16811] = 202; -- Boots of Prophecy
_addon.setItemData[16813] = 202; -- Circlet of Prophecy
_addon.setItemData[16817] = 202; -- Girdle of Prophecy
_addon.setItemData[16812] = 202; -- Gloves of Prophecy
_addon.setItemData[16814] = 202; -- Pants of Prophecy
_addon.setItemData[16816] = 202; -- Mantle of Prophecy
_addon.setItemData[16815] = 202; -- Robes of Prophecy
_addon.setItemData[16819] = 202; -- Vambraces of Prophecy

_addon.itemSetData[211] = {
    name = "Vestments of Transcendence",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
            value = 15,
            need = 3,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {4096, 0, 0, 0},
            value = 22009,
            need = 8,
        },
    }
}
_addon.setItemData[16925] = 211; -- Belt of Transcendence
_addon.setItemData[16926] = 211; -- Bindings of Transcendence
_addon.setItemData[16919] = 211; -- Boots of Transcendence
_addon.setItemData[16921] = 211; -- Halo of Transcendence
_addon.setItemData[16920] = 211; -- Handguards of Transcendence
_addon.setItemData[16922] = 211; -- Leggings of Transcendence
_addon.setItemData[16924] = 211; -- Pauldrons of Transcendence
_addon.setItemData[16923] = 211; -- Robes of Transcendence

_addon.itemSetData[507] = {
    name = "Garments of the Oracle",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = 3000,
            need = 5,
        },
    }
}
_addon.setItemData[21349] = 507; -- Footwraps of the Oracle
_addon.setItemData[21350] = 507; -- Mantle of the Oracle
_addon.setItemData[21348] = 507; -- Tiara of the Oracle
_addon.setItemData[21352] = 507; -- Trousers of the Oracle
_addon.setItemData[21351] = 507; -- Vestments of the Oracle

_addon.itemSetData[508] = {
    name = "Finery of Infinite Wisdom",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {32768, 0, 0, 0},
            value = 5,
            need = 3,
        },
    }
}
_addon.setItemData[21410] = 508; -- Gavel of Infinite Wisdom
_addon.setItemData[21411] = 508; -- Ring of Infinite Wisdom
_addon.setItemData[21412] = 508; -- Shroud of Infinite Wisdom


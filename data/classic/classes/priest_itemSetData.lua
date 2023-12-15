-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.itemSetData[202] = {
    name = "VestmentsofProphecy",
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
_addon.setItemData[16811] = 202; -- BootsofProphecy
_addon.setItemData[16813] = 202; -- CircletofProphecy
_addon.setItemData[16817] = 202; -- GirdleofProphecy
_addon.setItemData[16812] = 202; -- GlovesofProphecy
_addon.setItemData[16814] = 202; -- PantsofProphecy
_addon.setItemData[16816] = 202; -- MantleofProphecy
_addon.setItemData[16815] = 202; -- RobesofProphecy
_addon.setItemData[16819] = 202; -- VambracesofProphecy

_addon.itemSetData[211] = {
    name = "VestmentsofTranscendence",
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
_addon.setItemData[16925] = 211; -- BeltofTranscendence
_addon.setItemData[16926] = 211; -- BindingsofTranscendence
_addon.setItemData[16919] = 211; -- BootsofTranscendence
_addon.setItemData[16921] = 211; -- HaloofTranscendence
_addon.setItemData[16920] = 211; -- HandguardsofTranscendence
_addon.setItemData[16922] = 211; -- LeggingsofTranscendence
_addon.setItemData[16924] = 211; -- PauldronsofTranscendence
_addon.setItemData[16923] = 211; -- RobesofTranscendence

_addon.itemSetData[507] = {
    name = "GarmentsoftheOracle",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = 3000,
            need = 5,
        },
    }
}
_addon.setItemData[21349] = 507; -- FootwrapsoftheOracle
_addon.setItemData[21350] = 507; -- MantleoftheOracle
_addon.setItemData[21348] = 507; -- TiaraoftheOracle
_addon.setItemData[21352] = 507; -- TrousersoftheOracle
_addon.setItemData[21351] = 507; -- VestmentsoftheOracle

_addon.itemSetData[508] = {
    name = "FineryofInfiniteWisdom",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {32768, 0, 0, 0},
            value = 5,
            need = 3,
        },
    }
}
_addon.setItemData[21410] = 508; -- GavelofInfiniteWisdom
_addon.setItemData[21411] = 508; -- RingofInfiniteWisdom
_addon.setItemData[21412] = 508; -- ShroudofInfiniteWisdom


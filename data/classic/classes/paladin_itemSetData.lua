-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.itemSetData[217] = {
    name = "JudgementArmor",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {8388608, 0, 0, 0},
            value = 23590,
            need = 8,
        },
    }
}
_addon.setItemData[16952] = 217; -- JudgementBelt
_addon.setItemData[16951] = 217; -- JudgementBindings
_addon.setItemData[16958] = 217; -- JudgementBreastplate
_addon.setItemData[16955] = 217; -- JudgementCrown
_addon.setItemData[16956] = 217; -- JudgementGauntlets
_addon.setItemData[16954] = 217; -- JudgementLegplates
_addon.setItemData[16957] = 217; -- JudgementSabatons
_addon.setItemData[16953] = 217; -- JudgementSpaulders

_addon.itemSetData[506] = {
    name = "BattlegearofEternalJustice",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MANARESTORE,
            affectSpell = {8388608},
            value = 20,
            need = 3,
        },
    }
}
_addon.setItemData[21397] = 506; -- CapeofEternalJustice
_addon.setItemData[21395] = 506; -- BladeofEternalJustice
_addon.setItemData[21396] = 506; -- RingofEternalJustice


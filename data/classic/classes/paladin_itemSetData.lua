-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.itemSetData[217] = {
    name = "Judgement Armor",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {8388608, 0, 0, 0},
            value = 23590,
            need = 8,
        },
    }
}
_addon.setItemData[16952] = 217; -- Judgement Belt
_addon.setItemData[16951] = 217; -- Judgement Bindings
_addon.setItemData[16958] = 217; -- Judgement Breastplate
_addon.setItemData[16955] = 217; -- Judgement Crown
_addon.setItemData[16956] = 217; -- Judgement Gauntlets
_addon.setItemData[16954] = 217; -- Judgement Legplates
_addon.setItemData[16957] = 217; -- Judgement Sabatons
_addon.setItemData[16953] = 217; -- Judgement Spaulders

_addon.itemSetData[475] = {
    name = "Freethinker's Armor",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 4,
            need = 2,
        },
    }
}
_addon.setItemData[19952] = 475; -- Gri'lek's Charm of Valor
_addon.setItemData[19588] = 475; -- Hero's Brand
_addon.setItemData[19827] = 475; -- Zandalar Freethinker's Armguards
_addon.setItemData[19826] = 475; -- Zandalar Freethinker's Belt
_addon.setItemData[19825] = 475; -- Zandalar Freethinker's Breastplate

_addon.itemSetData[506] = {
    name = "Battlegear of Eternal Justice",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MANARESTORE,
            affectSpell = {8388608},
            value = 20,
            need = 3,
        },
    }
}
_addon.setItemData[21397] = 506; -- Cape of Eternal Justice
_addon.setItemData[21395] = 506; -- Blade of Eternal Justice
_addon.setItemData[21396] = 506; -- Ring of Eternal Justice


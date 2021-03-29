-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.itemSetData[217] = {
    name = "Judgement Armor",
    effects = {
        [1] = {
            need = 8,
            effect = {
                effect = _addon.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
                affectSpell = {8388608, 0, 0, 0},
                value = 23590,
            }
        },
    }
}
_addon.setItemData[16952] = 217;
_addon.setItemData[16951] = 217;
_addon.setItemData[16958] = 217;
_addon.setItemData[16955] = 217;
_addon.setItemData[16956] = 217;
_addon.setItemData[16954] = 217;
_addon.setItemData[16957] = 217;
_addon.setItemData[16953] = 217;

_addon.itemSetData[475] = {
    name = "Freethinker's Armor",
    effects = {
        [1] = {
            need = 2,
            effect = {
                effect = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
                value = 4,
            }
        },
    }
}
_addon.setItemData[19952] = 475;
_addon.setItemData[19588] = 475;
_addon.setItemData[19827] = 475;
_addon.setItemData[19826] = 475;
_addon.setItemData[19825] = 475;


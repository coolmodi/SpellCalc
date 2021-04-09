-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.itemSetData[211] = {
    name = "Vestments of Transcendence",
    effects = {
        {
            need = 8,
            type = _addon.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {4096, 0, 0, 0},
            value = 22009,
        },
    }
}
_addon.setItemData[16925] = 211;
_addon.setItemData[16926] = 211;
_addon.setItemData[16919] = 211;
_addon.setItemData[16921] = 211;
_addon.setItemData[16920] = 211;
_addon.setItemData[16922] = 211;
_addon.setItemData[16924] = 211;
_addon.setItemData[16923] = 211;

_addon.itemSetData[663] = {
    name = "Incarnate Raiment",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {512, 0, 0, 0},
            value = 37563,
        },
    }
}
_addon.setItemData[29055] = 663;
_addon.setItemData[29049] = 663;
_addon.setItemData[29054] = 663;
_addon.setItemData[29050] = 663;
_addon.setItemData[29053] = 663;


-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.itemSetData[205] = {
    name = "Cenarion Raiment",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {256, 0, 0, 0},
            value = 4,
        },
    }
}
_addon.setItemData[16828] = 205;
_addon.setItemData[16829] = 205;
_addon.setItemData[16830] = 205;
_addon.setItemData[16833] = 205;
_addon.setItemData[16831] = 205;
_addon.setItemData[16834] = 205;
_addon.setItemData[16835] = 205;
_addon.setItemData[16836] = 205;

_addon.itemSetData[214] = {
    name = "Stormrage Raiment",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
            value = 15,
        },
        {
            need = 8,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {16, 0, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[16903] = 214;
_addon.setItemData[16898] = 214;
_addon.setItemData[16904] = 214;
_addon.setItemData[16897] = 214;
_addon.setItemData[16900] = 214;
_addon.setItemData[16899] = 214;
_addon.setItemData[16901] = 214;
_addon.setItemData[16902] = 214;

_addon.itemSetData[479] = {
    name = "Haruspex's Garb",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 4,
        },
        {
            need = 5,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {4, 0, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[19613] = 479;
_addon.setItemData[19955] = 479;
_addon.setItemData[19840] = 479;
_addon.setItemData[19839] = 479;
_addon.setItemData[19838] = 479;

_addon.itemSetData[521] = {
    name = "Dreamwalker Raiment",
    effects = {
        {
            need = 8,
            type = _addon.EFFECT_TYPE.ILLUMINATION,
            value = 30,
        },
    }
}
_addon.setItemData[22492] = 521;
_addon.setItemData[22494] = 521;
_addon.setItemData[22493] = 521;
_addon.setItemData[22490] = 521;
_addon.setItemData[22489] = 521;
_addon.setItemData[22491] = 521;
_addon.setItemData[22488] = 521;
_addon.setItemData[22495] = 521;
_addon.setItemData[23064] = 521;


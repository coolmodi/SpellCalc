-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.itemSetData[205] = {
    name = "Cenarion Raiment",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {256, 0, 0, 0},
            value = 4,
            need = 3,
        },
    }
}
_addon.setItemData[16828] = 205; -- Cenarion Belt
_addon.setItemData[16829] = 205; -- Cenarion Boots
_addon.setItemData[16830] = 205; -- Cenarion Bracers
_addon.setItemData[16833] = 205; -- Cenarion Vestments
_addon.setItemData[16831] = 205; -- Cenarion Gloves
_addon.setItemData[16834] = 205; -- Cenarion Helm
_addon.setItemData[16835] = 205; -- Cenarion Leggings
_addon.setItemData[16836] = 205; -- Cenarion Spaulders

_addon.itemSetData[214] = {
    name = "Stormrage Raiment",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
            value = 15,
            need = 3,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {16, 0, 0, 0},
            value = 3000,
            need = 8,
        },
    }
}
_addon.setItemData[16903] = 214; -- Stormrage Belt
_addon.setItemData[16898] = 214; -- Stormrage Boots
_addon.setItemData[16904] = 214; -- Stormrage Bracers
_addon.setItemData[16897] = 214; -- Stormrage Chestguard
_addon.setItemData[16900] = 214; -- Stormrage Cover
_addon.setItemData[16899] = 214; -- Stormrage Handguards
_addon.setItemData[16901] = 214; -- Stormrage Legguards
_addon.setItemData[16902] = 214; -- Stormrage Pauldrons

_addon.itemSetData[479] = {
    name = "Haruspex's Garb",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 4,
            need = 2,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {4, 0, 0, 0},
            value = 3,
            need = 5,
        },
    }
}
_addon.setItemData[19613] = 479; -- Pristine Enchanted South Seas Kelp
_addon.setItemData[19955] = 479; -- Wushoolay's Charm of Nature
_addon.setItemData[19840] = 479; -- Zandalar Haruspex's Bracers
_addon.setItemData[19839] = 479; -- Zandalar Haruspex's Belt
_addon.setItemData[19838] = 479; -- Zandalar Haruspex's Tunic


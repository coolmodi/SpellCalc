-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.itemSetData[205] = {
    name = "CenarionRaiment",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {256, 0, 0, 0},
            value = 4,
            need = 3,
        },
    }
}
_addon.setItemData[16828] = 205; -- CenarionBelt
_addon.setItemData[16829] = 205; -- CenarionBoots
_addon.setItemData[16830] = 205; -- CenarionBracers
_addon.setItemData[16833] = 205; -- CenarionVestments
_addon.setItemData[16831] = 205; -- CenarionGloves
_addon.setItemData[16834] = 205; -- CenarionHelm
_addon.setItemData[16835] = 205; -- CenarionLeggings
_addon.setItemData[16836] = 205; -- CenarionSpaulders

_addon.itemSetData[214] = {
    name = "StormrageRaiment",
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
_addon.setItemData[16903] = 214; -- StormrageBelt
_addon.setItemData[16898] = 214; -- StormrageBoots
_addon.setItemData[16904] = 214; -- StormrageBracers
_addon.setItemData[16897] = 214; -- StormrageChestguard
_addon.setItemData[16900] = 214; -- StormrageCover
_addon.setItemData[16899] = 214; -- StormrageHandguards
_addon.setItemData[16901] = 214; -- StormrageLegguards
_addon.setItemData[16902] = 214; -- StormragePauldrons

_addon.itemSetData[479] = {
    name = "Haruspex'sGarb",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {4, 0, 0, 0},
            value = 3,
            need = 5,
        },
    }
}
_addon.setItemData[19613] = 479; -- PristineEnchantedSouthSeasKelp
_addon.setItemData[19955] = 479; -- Wushoolay'sCharmofNature
_addon.setItemData[19840] = 479; -- ZandalarHaruspex'sBracers
_addon.setItemData[19839] = 479; -- ZandalarHaruspex'sBelt
_addon.setItemData[19838] = 479; -- ZandalarHaruspex'sTunic


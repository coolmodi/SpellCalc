-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.itemSetData[201] = {
    name = "Arcanist Regalia",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 124,
            value = 10,
            need = 5,
        },
    }
}
_addon.setItemData[16802] = 201; -- Arcanist Belt
_addon.setItemData[16799] = 201; -- Arcanist Bindings
_addon.setItemData[16795] = 201; -- Arcanist Crown
_addon.setItemData[16800] = 201; -- Arcanist Boots
_addon.setItemData[16801] = 201; -- Arcanist Gloves
_addon.setItemData[16796] = 201; -- Arcanist Leggings
_addon.setItemData[16797] = 201; -- Arcanist Mantle
_addon.setItemData[16798] = 201; -- Arcanist Robes

_addon.itemSetData[210] = {
    name = "Netherwind Regalia",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC,
            affectSpell = {33},
            value = 1,
            need = 8,
        },
    }
}
_addon.setItemData[16818] = 210; -- Netherwind Belt
_addon.setItemData[16918] = 210; -- Netherwind Bindings
_addon.setItemData[16912] = 210; -- Netherwind Boots
_addon.setItemData[16914] = 210; -- Netherwind Crown
_addon.setItemData[16917] = 210; -- Netherwind Mantle
_addon.setItemData[16913] = 210; -- Netherwind Gloves
_addon.setItemData[16915] = 210; -- Netherwind Pants
_addon.setItemData[16916] = 210; -- Netherwind Robes

_addon.itemSetData[504] = {
    name = "Trappings of Vaulted Secrets",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {32768, 0, 0, 0},
            value = 15,
            need = 3,
        },
    }
}
_addon.setItemData[21414] = 504; -- Band of Vaulted Secrets
_addon.setItemData[21413] = 504; -- Blade of Vaulted Secrets
_addon.setItemData[21415] = 504; -- Drape of Vaulted Secrets


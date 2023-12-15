-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.itemSetData[201] = {
    name = "ArcanistRegalia",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 124,
            value = 10,
            need = 5,
        },
    }
}
_addon.setItemData[16802] = 201; -- ArcanistBelt
_addon.setItemData[16799] = 201; -- ArcanistBindings
_addon.setItemData[16795] = 201; -- ArcanistCrown
_addon.setItemData[16800] = 201; -- ArcanistBoots
_addon.setItemData[16801] = 201; -- ArcanistGloves
_addon.setItemData[16796] = 201; -- ArcanistLeggings
_addon.setItemData[16797] = 201; -- ArcanistMantle
_addon.setItemData[16798] = 201; -- ArcanistRobes

_addon.itemSetData[210] = {
    name = "NetherwindRegalia",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC,
            affectSpell = {33},
            value = 1,
            need = 8,
        },
    }
}
_addon.setItemData[16818] = 210; -- NetherwindBelt
_addon.setItemData[16918] = 210; -- NetherwindBindings
_addon.setItemData[16912] = 210; -- NetherwindBoots
_addon.setItemData[16914] = 210; -- NetherwindCrown
_addon.setItemData[16917] = 210; -- NetherwindMantle
_addon.setItemData[16913] = 210; -- NetherwindGloves
_addon.setItemData[16915] = 210; -- NetherwindPants
_addon.setItemData[16916] = 210; -- NetherwindRobes

_addon.itemSetData[504] = {
    name = "TrappingsofVaultedSecrets",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {32768, 0, 0, 0},
            value = 15,
            need = 3,
        },
    }
}
_addon.setItemData[21414] = 504; -- BandofVaultedSecrets
_addon.setItemData[21413] = 504; -- BladeofVaultedSecrets
_addon.setItemData[21415] = 504; -- DrapeofVaultedSecrets


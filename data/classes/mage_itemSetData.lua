-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.itemSetData[201] = {
    name = "Arcanist Regalia",
    effects = {
        {
            need = 5,
            type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 124,
            value = 38,
        },
    }
}
_addon.setItemData[16802] = 201;
_addon.setItemData[16799] = 201;
_addon.setItemData[16795] = 201;
_addon.setItemData[16800] = 201;
_addon.setItemData[16801] = 201;
_addon.setItemData[16796] = 201;
_addon.setItemData[16797] = 201;
_addon.setItemData[16798] = 201;

_addon.itemSetData[210] = {
    name = "Netherwind Regalia",
    effects = {
        {
            need = 8,
            type = _addon.EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC,
            affectSpell = {33},
            value = 1,
        },
    }
}
_addon.setItemData[16818] = 210;
_addon.setItemData[16918] = 210;
_addon.setItemData[16912] = 210;
_addon.setItemData[16914] = 210;
_addon.setItemData[16917] = 210;
_addon.setItemData[16913] = 210;
_addon.setItemData[16915] = 210;
_addon.setItemData[16916] = 210;

_addon.itemSetData[504] = {
    name = "Trappings of Vaulted Secrets",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {32768, 0, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[21414] = 504;
_addon.setItemData[21413] = 504;
_addon.setItemData[21415] = 504;

_addon.itemSetData[649] = {
    name = "Tirisfal Regalia",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
            affectSpell = {536870912, 0, 0, 0},
            value = 20,
        },
    }
}
_addon.setItemData[30206] = 649;
_addon.setItemData[30205] = 649;
_addon.setItemData[30207] = 649;
_addon.setItemData[30210] = 649;
_addon.setItemData[30196] = 649;

_addon.itemSetData[671] = {
    name = "Tempest Regalia",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
            affectSpell = {2097185, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31056] = 671;
_addon.setItemData[31055] = 671;
_addon.setItemData[31058] = 671;
_addon.setItemData[31059] = 671;
_addon.setItemData[31057] = 671;
_addon.setItemData[34574] = 671;
_addon.setItemData[34447] = 671;
_addon.setItemData[34557] = 671;


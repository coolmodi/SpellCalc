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
            need = 5,
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
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
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC,
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
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
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
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {536870912, 0, 0, 0},
            value = 5,
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
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {67108864, 0, 0, 0},
            value = 2000,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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

_addon.itemSetData[803] = {
    name = "Frostfire Garb",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
            affectSpell = {6429431, 1282112, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[43777] = 803;
_addon.setItemData[43778] = 803;
_addon.setItemData[43779] = 803;
_addon.setItemData[43780] = 803;
_addon.setItemData[43781] = 803;

_addon.itemSetData[843] = {
    name = "Khadgar's Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {538968097, 4096, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48725] = 843;
_addon.setItemData[48726] = 843;
_addon.setItemData[48727] = 843;
_addon.setItemData[48728] = 843;
_addon.setItemData[48729] = 843;

_addon.itemSetData[844] = {
    name = "Sunstrider's Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {538968097, 4096, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48730] = 844;
_addon.setItemData[48731] = 844;
_addon.setItemData[48732] = 844;
_addon.setItemData[48733] = 844;
_addon.setItemData[48734] = 844;


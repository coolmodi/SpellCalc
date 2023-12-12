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
            need = 8,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC,
            affectSpell = {33},
            value = 1,
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
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {32768, 0, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[21414] = 504; -- Band of Vaulted Secrets
_addon.setItemData[21413] = 504; -- Blade of Vaulted Secrets
_addon.setItemData[21415] = 504; -- Drape of Vaulted Secrets

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
_addon.setItemData[30206] = 649; -- Cowl of Tirisfal
_addon.setItemData[30205] = 649; -- Gloves of Tirisfal
_addon.setItemData[30207] = 649; -- Leggings of Tirisfal
_addon.setItemData[30210] = 649; -- Mantle of Tirisfal
_addon.setItemData[30196] = 649; -- Robes of Tirisfal

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
_addon.setItemData[31056] = 671; -- Cowl of the Tempest
_addon.setItemData[31055] = 671; -- Gloves of the Tempest
_addon.setItemData[31058] = 671; -- Leggings of the Tempest
_addon.setItemData[31059] = 671; -- Mantle of the Tempest
_addon.setItemData[31057] = 671; -- Robes of the Tempest
_addon.setItemData[34574] = 671; -- Boots of the Tempest
_addon.setItemData[34447] = 671; -- Bracers of the Tempest
_addon.setItemData[34557] = 671; -- Belt of the Tempest

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
_addon.setItemData[39491] = 803; -- Heroes' Frostfire Circlet
_addon.setItemData[40416] = 803; -- Valorous Frostfire Circlet
_addon.setItemData[43777] = 803; -- Frostfire Circlet
_addon.setItemData[39495] = 803; -- Heroes' Frostfire Gloves
_addon.setItemData[40415] = 803; -- Valorous Frostfire Gloves
_addon.setItemData[43778] = 803; -- Frostfire Gloves
_addon.setItemData[39493] = 803; -- Heroes' Frostfire Leggings
_addon.setItemData[40417] = 803; -- Valorous Frostfire Leggings
_addon.setItemData[43779] = 803; -- Frostfire Leggings
_addon.setItemData[39492] = 803; -- Heroes' Frostfire Robe
_addon.setItemData[40418] = 803; -- Valorous Frostfire Robe
_addon.setItemData[43780] = 803; -- Frostfire Robe
_addon.setItemData[39494] = 803; -- Heroes' Frostfire Shoulderpads
_addon.setItemData[40419] = 803; -- Valorous Frostfire Shoulderpads
_addon.setItemData[43781] = 803; -- Frostfire Shoulderpads

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
_addon.setItemData[47752] = 843; -- Khadgar's Gauntlets of Conquest
_addon.setItemData[47753] = 843; -- Khadgar's Gauntlets of Triumph
_addon.setItemData[47762] = 843; -- Khadgar's Gauntlets of Triumph
_addon.setItemData[48725] = 843; -- Khadgar's Gauntlets 
_addon.setItemData[47748] = 843; -- Khadgar's Hood of Conquest
_addon.setItemData[47754] = 843; -- Khadgar's Hood of Triumph
_addon.setItemData[47761] = 843; -- Khadgar's Hood of Triumph
_addon.setItemData[48726] = 843; -- Khadgar's Hood 
_addon.setItemData[47750] = 843; -- Khadgar's Leggings of Conquest
_addon.setItemData[47755] = 843; -- Khadgar's Leggings of Triumph
_addon.setItemData[47760] = 843; -- Khadgar's Leggings of Triumph
_addon.setItemData[48727] = 843; -- Khadgar's Leggings 
_addon.setItemData[47749] = 843; -- Khadgar's Robe of Conquest
_addon.setItemData[47756] = 843; -- Khadgar's Robe of Triumph
_addon.setItemData[47759] = 843; -- Khadgar's Robe of Triumph
_addon.setItemData[48728] = 843; -- Khadgar's Robe 
_addon.setItemData[47751] = 843; -- Khadgar's Shoulderpads of Conquest
_addon.setItemData[47757] = 843; -- Khadgar's Shoulderpads of Triumph
_addon.setItemData[47758] = 843; -- Khadgar's Shoulderpads of Triumph
_addon.setItemData[48729] = 843; -- Khadgar's Shoulderpads 

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
_addon.setItemData[47763] = 844; -- Sunstrider's Gauntlets of Triumph
_addon.setItemData[47772] = 844; -- Sunstrider's Gauntlets of Triumph
_addon.setItemData[47773] = 844; -- Sunstrider's Gauntlets of Conquest
_addon.setItemData[48730] = 844; -- Sunstrider's Gauntlets 
_addon.setItemData[47764] = 844; -- Sunstrider's Hood of Triumph
_addon.setItemData[47771] = 844; -- Sunstrider's Hood of Triumph
_addon.setItemData[47774] = 844; -- Sunstrider's Hood of Conquest
_addon.setItemData[48731] = 844; -- Sunstrider's Hood 
_addon.setItemData[47765] = 844; -- Sunstrider's Leggings of Triumph
_addon.setItemData[47770] = 844; -- Sunstrider's Leggings of Triumph
_addon.setItemData[47775] = 844; -- Sunstrider's Leggings of Conquest
_addon.setItemData[48732] = 844; -- Sunstrider's Leggings 
_addon.setItemData[47766] = 844; -- Sunstrider's Robe of Triumph
_addon.setItemData[47769] = 844; -- Sunstrider's Robe of Triumph
_addon.setItemData[47776] = 844; -- Sunstrider's Robe of Conquest
_addon.setItemData[48733] = 844; -- Sunstrider's Robe 
_addon.setItemData[47767] = 844; -- Sunstrider's Shoulderpads of Triumph
_addon.setItemData[47768] = 844; -- Sunstrider's Shoulderpads of Triumph
_addon.setItemData[47777] = 844; -- Sunstrider's Shoulderpads of Conquest
_addon.setItemData[48734] = 844; -- Sunstrider's Shoulderpads 


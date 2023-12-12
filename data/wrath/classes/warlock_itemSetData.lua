-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

_addon.itemSetData[481] = {
    name = "Demoniac's Threads",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {2, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[19605] = 481; -- Kezan's Unstoppable Taint
_addon.setItemData[19957] = 481; -- Hazza'rah's Charm of Destruction
_addon.setItemData[19848] = 481; -- Zandalar Demoniac's Wraps
_addon.setItemData[19849] = 481; -- Zandalar Demoniac's Mantle
_addon.setItemData[20033] = 481; -- Zandalar Demoniac's Robe

_addon.itemSetData[499] = {
    name = "Doomcaller's Attire",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {4, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[21337] = 499; -- Doomcaller's Circlet
_addon.setItemData[21338] = 499; -- Doomcaller's Footwraps
_addon.setItemData[21335] = 499; -- Doomcaller's Mantle
_addon.setItemData[21334] = 499; -- Doomcaller's Robes
_addon.setItemData[21336] = 499; -- Doomcaller's Trousers

_addon.itemSetData[529] = {
    name = "Plagueheart Raiment",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {2, 0, 0, 0},
            value = 12,
        },
    }
}
_addon.setItemData[22510] = 529; -- Plagueheart Belt
_addon.setItemData[22511] = 529; -- Plagueheart Bindings
_addon.setItemData[22506] = 529; -- Plagueheart Circlet
_addon.setItemData[22509] = 529; -- Plagueheart Gloves
_addon.setItemData[22505] = 529; -- Plagueheart Leggings
_addon.setItemData[22504] = 529; -- Plagueheart Robe
_addon.setItemData[22508] = 529; -- Plagueheart Sandals
_addon.setItemData[22507] = 529; -- Plagueheart Shoulderpads
_addon.setItemData[23063] = 529; -- Plagueheart Ring

_addon.itemSetData[644] = {
    name = "Oblivion Raiment",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 32768, 0, 0},
            value = 180,
        },
    }
}
_addon.setItemData[27537] = 644; -- Gloves of Oblivion
_addon.setItemData[28415] = 644; -- Hood of Oblivion
_addon.setItemData[28232] = 644; -- Robe of Oblivion
_addon.setItemData[27778] = 644; -- Spaulders of Oblivion
_addon.setItemData[27948] = 644; -- Trousers of Oblivion

_addon.itemSetData[645] = {
    name = "Voidheart Raiment",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {6, 0, 0, 0},
            value = 3000,
        },
    }
}
_addon.setItemData[28963] = 645; -- Voidheart Crown
_addon.setItemData[28968] = 645; -- Voidheart Gloves
_addon.setItemData[28966] = 645; -- Voidheart Leggings
_addon.setItemData[28967] = 645; -- Voidheart Mantle
_addon.setItemData[28964] = 645; -- Voidheart Robe

_addon.itemSetData[646] = {
    name = "Corruptor Raiment",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {6, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[30211] = 646; -- Gloves of the Corruptor
_addon.setItemData[30212] = 646; -- Hood of the Corruptor
_addon.setItemData[30213] = 646; -- Leggings of the Corruptor
_addon.setItemData[30215] = 646; -- Mantle of the Corruptor
_addon.setItemData[30214] = 646; -- Robe of the Corruptor

_addon.itemSetData[670] = {
    name = "Malefic Raiment",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1, 64, 0, 0},
            value = 6,
        },
    }
}
_addon.setItemData[31050] = 670; -- Gloves of the Malefic
_addon.setItemData[31051] = 670; -- Hood of the Malefic
_addon.setItemData[31053] = 670; -- Leggings of the Malefic
_addon.setItemData[31054] = 670; -- Mantle of the Malefic
_addon.setItemData[31052] = 670; -- Robe of the Malefic
_addon.setItemData[34564] = 670; -- Boots of the Malefic
_addon.setItemData[34436] = 670; -- Bracers of the Malefic
_addon.setItemData[34541] = 670; -- Belt of the Malefic

_addon.itemSetData[837] = {
    name = "Deathbringer Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 256, 0, 0},
            value = 20,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {4, 8388608, 0, 0},
            value = 10,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {4, 0, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {1, 64, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[45419] = 837; -- Valorous Deathbringer Gloves
_addon.setItemData[46135] = 837; -- Conqueror's Deathbringer Gloves
_addon.setItemData[46242] = 837; -- Deathbringer Gloves
_addon.setItemData[45417] = 837; -- Valorous Deathbringer Hood
_addon.setItemData[46140] = 837; -- Conqueror's Deathbringer Hood
_addon.setItemData[46243] = 837; -- Deathbringer Hood
_addon.setItemData[45420] = 837; -- Valorous Deathbringer Leggings
_addon.setItemData[46139] = 837; -- Conqueror's Deathbringer Leggings
_addon.setItemData[46244] = 837; -- Deathbringer Leggings
_addon.setItemData[45421] = 837; -- Valorous Deathbringer Robe
_addon.setItemData[46137] = 837; -- Conqueror's Deathbringer Robe
_addon.setItemData[46245] = 837; -- Deathbringer Robe
_addon.setItemData[45422] = 837; -- Valorous Deathbringer Shoulderpads
_addon.setItemData[46136] = 837; -- Conqueror's Deathbringer Shoulderpads
_addon.setItemData[46246] = 837; -- Deathbringer Shoulderpads

_addon.itemSetData[845] = {
    name = "Gul'dan's Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {6, 256, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {4, 0, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[47797] = 845; -- Gul'dan's Gloves of Triumph
_addon.setItemData[47802] = 845; -- Gul'dan's Gloves of Conquest
_addon.setItemData[47803] = 845; -- Gul'dan's Gloves of Triumph
_addon.setItemData[48735] = 845; -- Gul'dan's Gloves 
_addon.setItemData[47796] = 845; -- Gul'dan's Hood of Triumph
_addon.setItemData[47801] = 845; -- Gul'dan's Hood of Conquest
_addon.setItemData[47804] = 845; -- Gul'dan's Hood of Triumph
_addon.setItemData[48736] = 845; -- Gul'dan's Hood 
_addon.setItemData[47795] = 845; -- Gul'dan's Leggings of Triumph
_addon.setItemData[47800] = 845; -- Gul'dan's Leggings of Conquest
_addon.setItemData[47805] = 845; -- Gul'dan's Leggings of Triumph
_addon.setItemData[48737] = 845; -- Gul'dan's Leggings 
_addon.setItemData[47794] = 845; -- Gul'dan's Robe of Triumph
_addon.setItemData[47799] = 845; -- Gul'dan's Robe of Conquest
_addon.setItemData[47806] = 845; -- Gul'dan's Robe of Triumph
_addon.setItemData[48738] = 845; -- Gul'dan's Robe 
_addon.setItemData[47793] = 845; -- Gul'dan's Shoulderpads of Triumph
_addon.setItemData[47798] = 845; -- Gul'dan's Shoulderpads of Conquest
_addon.setItemData[47807] = 845; -- Gul'dan's Shoulderpads of Triumph
_addon.setItemData[48739] = 845; -- Gul'dan's Shoulderpads 

_addon.itemSetData[846] = {
    name = "Kel'Thuzad's Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {6, 256, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {4, 0, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[47782] = 846; -- Kel'Thuzad's Gloves of Triumph
_addon.setItemData[47783] = 846; -- Kel'Thuzad's Gloves of Conquest
_addon.setItemData[47788] = 846; -- Kel'Thuzad's Gloves of Triumph
_addon.setItemData[48740] = 846; -- Kel'Thuzad's Gloves 
_addon.setItemData[47778] = 846; -- Kel'Thuzad's Hood of Triumph
_addon.setItemData[47784] = 846; -- Kel'Thuzad's Hood of Conquest
_addon.setItemData[47789] = 846; -- Kel'Thuzad's Hood of Triumph
_addon.setItemData[48741] = 846; -- Kel'Thuzad's Hood 
_addon.setItemData[47780] = 846; -- Kel'Thuzad's Leggings of Triumph
_addon.setItemData[47785] = 846; -- Kel'Thuzad's Leggings of Conquest
_addon.setItemData[47790] = 846; -- Kel'Thuzad's Leggings of Triumph
_addon.setItemData[48742] = 846; -- Kel'Thuzad's Leggings 
_addon.setItemData[47779] = 846; -- Kel'Thuzad's Robe of Triumph
_addon.setItemData[47786] = 846; -- Kel'Thuzad's Robe of Conquest
_addon.setItemData[47791] = 846; -- Kel'Thuzad's Robe of Triumph
_addon.setItemData[48743] = 846; -- Kel'Thuzad's Robe 
_addon.setItemData[47781] = 846; -- Kel'Thuzad's Shoulderpads of Triumph
_addon.setItemData[47787] = 846; -- Kel'Thuzad's Shoulderpads of Conquest
_addon.setItemData[47792] = 846; -- Kel'Thuzad's Shoulderpads of Triumph
_addon.setItemData[48744] = 846; -- Kel'Thuzad's Shoulderpads 

_addon.itemSetData[884] = {
    name = "Dark Coven's Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {3, 192, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[50240] = 884; -- Dark Coven Gloves
_addon.setItemData[51209] = 884; -- Sanctified Dark Coven Gloves
_addon.setItemData[51230] = 884; -- Sanctified Dark Coven Gloves
_addon.setItemData[51766] = 884; -- Dark Coven Gloves
_addon.setItemData[50241] = 884; -- Dark Coven Hood
_addon.setItemData[51208] = 884; -- Sanctified Dark Coven Hood
_addon.setItemData[51231] = 884; -- Sanctified Dark Coven Hood
_addon.setItemData[51765] = 884; -- Dark Coven Hood
_addon.setItemData[50242] = 884; -- Dark Coven Leggings
_addon.setItemData[51207] = 884; -- Sanctified Dark Coven Leggings
_addon.setItemData[51232] = 884; -- Sanctified Dark Coven Leggings
_addon.setItemData[51764] = 884; -- Dark Coven Leggings
_addon.setItemData[50243] = 884; -- Dark Coven Robe
_addon.setItemData[51206] = 884; -- Sanctified Dark Coven Robe
_addon.setItemData[51233] = 884; -- Sanctified Dark Coven Robe
_addon.setItemData[51763] = 884; -- Dark Coven Robe
_addon.setItemData[50244] = 884; -- Dark Coven Shoulderpads
_addon.setItemData[51205] = 884; -- Sanctified Dark Coven Shoulderpads
_addon.setItemData[51234] = 884; -- Sanctified Dark Coven Shoulderpads
_addon.setItemData[51762] = 884; -- Dark Coven Shoulderpads


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
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {256, 0, 0, 0},
            value = 4,
        },
        {
            need = 8,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {4194304, 0, 0, 0},
            value = 15,
        },
        {
            need = 8,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {4194304, 0, 0, 0},
            value = 15,
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
            need = 8,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {16, 0, 0, 0},
            value = 3000,
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
            need = 5,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {4, 0, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[19613] = 479; -- Pristine Enchanted South Seas Kelp
_addon.setItemData[19955] = 479; -- Wushoolay's Charm of Nature
_addon.setItemData[19840] = 479; -- Zandalar Haruspex's Bracers
_addon.setItemData[19839] = 479; -- Zandalar Haruspex's Belt
_addon.setItemData[19838] = 479; -- Zandalar Haruspex's Tunic

_addon.itemSetData[521] = {
    name = "Dreamwalker Raiment",
    effects = {
        {
            need = 8,
            type = _addon.CONST.EFFECT_TYPE.ILLUMINATION,
            value = 30,
        },
    }
}
_addon.setItemData[22492] = 521; -- Dreamwalker Boots
_addon.setItemData[22494] = 521; -- Dreamwalker Girdle
_addon.setItemData[22493] = 521; -- Dreamwalker Handguards
_addon.setItemData[22490] = 521; -- Dreamwalker Headpiece
_addon.setItemData[22489] = 521; -- Dreamwalker Legguards
_addon.setItemData[22491] = 521; -- Dreamwalker Spaulders
_addon.setItemData[22488] = 521; -- Dreamwalker Tunic
_addon.setItemData[22495] = 521; -- Dreamwalker Wristguards
_addon.setItemData[23064] = 521; -- Ring of the Dreamwalker

_addon.itemSetData[638] = {
    name = "Malorne Raiment",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MANARESTORE,
            affectSpell = {240, 16},
            value = 6,
        },
    }
}
_addon.setItemData[29087] = 638; -- Chestguard of Malorne
_addon.setItemData[29086] = 638; -- Crown of Malorne
_addon.setItemData[29090] = 638; -- Handguards of Malorne
_addon.setItemData[29088] = 638; -- Legguards of Malorne
_addon.setItemData[29089] = 638; -- Shoulderguards of Malorne

_addon.itemSetData[639] = {
    name = "Malorne Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MANARESTORE,
            affectSpell = {6291975},
            value = 6,
        },
    }
}
_addon.setItemData[29093] = 639; -- Antlers of Malorne
_addon.setItemData[29094] = 639; -- Britches of Malorne
_addon.setItemData[29091] = 639; -- Chestpiece of Malorne
_addon.setItemData[29092] = 639; -- Gloves of Malorne
_addon.setItemData[29095] = 639; -- Pauldrons of Malorne

_addon.itemSetData[641] = {
    name = "Nordrassil Harness",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {32768, 0, 0, 0},
            value = 33,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 256, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[30222] = 641; -- Nordrassil Chestplate
_addon.setItemData[30223] = 641; -- Nordrassil Handgrips
_addon.setItemData[30228] = 641; -- Nordrassil Headdress
_addon.setItemData[30229] = 641; -- Nordrassil Feral-Kilt
_addon.setItemData[30230] = 641; -- Nordrassil Feral-Mantle

_addon.itemSetData[642] = {
    name = "Nordrassil Raiment",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = 6000,
        },
    }
}
_addon.setItemData[30216] = 642; -- Nordrassil Chestguard
_addon.setItemData[30217] = 642; -- Nordrassil Gloves
_addon.setItemData[30219] = 642; -- Nordrassil Headguard
_addon.setItemData[30220] = 642; -- Nordrassil Life-Kilt
_addon.setItemData[30221] = 642; -- Nordrassil Life-Mantle

_addon.itemSetData[676] = {
    name = "Thunderheart Harness",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {8388608, 1048576, 0, 0},
            value = 15,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {8388608, 0, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[31042] = 676; -- Thunderheart Chestguard
_addon.setItemData[31034] = 676; -- Thunderheart Gauntlets
_addon.setItemData[31039] = 676; -- Thunderheart Cover
_addon.setItemData[31044] = 676; -- Thunderheart Leggings
_addon.setItemData[31048] = 676; -- Thunderheart Pauldrons
_addon.setItemData[34556] = 676; -- Thunderheart Waistguard
_addon.setItemData[34444] = 676; -- Thunderheart Wristguards
_addon.setItemData[34573] = 676; -- Thunderheart Treads

_addon.itemSetData[677] = {
    name = "Thunderheart Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {2, 0, 0, 0},
            value = 3000,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {4, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31043] = 677; -- Thunderheart Vest
_addon.setItemData[31035] = 677; -- Thunderheart Handguards
_addon.setItemData[31040] = 677; -- Thunderheart Headguard
_addon.setItemData[31046] = 677; -- Thunderheart Pants
_addon.setItemData[31049] = 677; -- Thunderheart Shoulderpads
_addon.setItemData[34572] = 677; -- Thunderheart Footwraps
_addon.setItemData[34446] = 677; -- Thunderheart Bands
_addon.setItemData[34555] = 677; -- Thunderheart Cord

_addon.itemSetData[678] = {
    name = "Thunderheart Raiment",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {32, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31041] = 678; -- Thunderheart Tunic
_addon.setItemData[31032] = 678; -- Thunderheart Gloves
_addon.setItemData[31037] = 678; -- Thunderheart Helmet
_addon.setItemData[31045] = 678; -- Thunderheart Legguards
_addon.setItemData[31047] = 678; -- Thunderheart Spaulders
_addon.setItemData[34571] = 678; -- Thunderheart Boots
_addon.setItemData[34445] = 678; -- Thunderheart Bracers
_addon.setItemData[34554] = 678; -- Thunderheart Belt

_addon.itemSetData[798] = {
    name = "Dreamwalker Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {8388608, 0, 0, 0},
            value = 4000,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 256, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[39557] = 798; -- Heroes' Dreamwalker Handgrips
_addon.setItemData[40472] = 798; -- Valorous Dreamwalker Handgrips
_addon.setItemData[43751] = 798; -- Dreamwalker Handgrips
_addon.setItemData[39553] = 798; -- Heroes' Dreamwalker Headguard
_addon.setItemData[40473] = 798; -- Valorous Dreamwalker Headguard
_addon.setItemData[43753] = 798; -- Dreamwalker Headguard
_addon.setItemData[39555] = 798; -- Heroes' Dreamwalker Legguards
_addon.setItemData[40493] = 798; -- Valorous Dreamwalker Legguards
_addon.setItemData[43756] = 798; -- Dreamwalker Legguards
_addon.setItemData[39554] = 798; -- Heroes' Dreamwalker Raiments
_addon.setItemData[40471] = 798; -- Valorous Dreamwalker Raiments
_addon.setItemData[43822] = 798; -- Dreamwalker Raiments
_addon.setItemData[39556] = 798; -- Heroes' Dreamwalker Shoulderpads
_addon.setItemData[40494] = 798; -- Valorous Dreamwalker Shoulderpads
_addon.setItemData[43758] = 798; -- Dreamwalker Shoulderpads

_addon.itemSetData[799] = {
    name = "Dreamwalker Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SCRIPT_SET_VALUE,
            value = 5,
            scriptKey = "Druid_T7_Nourish,"
        },
    }
}
_addon.setItemData[39543] = 799; -- Heroes' Dreamwalker Handguards
_addon.setItemData[40460] = 799; -- Valorous Dreamwalker Handguards
_addon.setItemData[43752] = 799; -- Dreamwalker Handguards
_addon.setItemData[39531] = 799; -- Heroes' Dreamwalker Headpiece
_addon.setItemData[40461] = 799; -- Valorous Dreamwalker Headpiece
_addon.setItemData[43754] = 799; -- Dreamwalker Headpiece
_addon.setItemData[39539] = 799; -- Heroes' Dreamwalker Leggings
_addon.setItemData[40462] = 799; -- Valorous Dreamwalker Leggings
_addon.setItemData[43755] = 799; -- Dreamwalker Leggings
_addon.setItemData[39542] = 799; -- Heroes' Dreamwalker Spaulders
_addon.setItemData[40465] = 799; -- Valorous Dreamwalker Spaulders
_addon.setItemData[43759] = 799; -- Dreamwalker Spaulders
_addon.setItemData[39538] = 799; -- Heroes' Dreamwalker Robe
_addon.setItemData[40463] = 799; -- Valorous Dreamwalker Robe
_addon.setItemData[43820] = 799; -- Dreamwalker Robe

_addon.itemSetData[800] = {
    name = "Dreamwalker Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {2097152, 0, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {5, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[39545] = 800; -- Heroes' Dreamwalker Cover
_addon.setItemData[40467] = 800; -- Valorous Dreamwalker Cover
_addon.setItemData[43749] = 800; -- Dreamwalker Cover
_addon.setItemData[39544] = 800; -- Heroes' Dreamwalker Gloves
_addon.setItemData[40466] = 800; -- Valorous Dreamwalker Gloves
_addon.setItemData[43750] = 800; -- Dreamwalker Gloves
_addon.setItemData[39548] = 800; -- Heroes' Dreamwalker Mantle
_addon.setItemData[40470] = 800; -- Valorous Dreamwalker Mantle
_addon.setItemData[43757] = 800; -- Dreamwalker Mantle
_addon.setItemData[39546] = 800; -- Heroes' Dreamwalker Trousers
_addon.setItemData[40468] = 800; -- Valorous Dreamwalker Trousers
_addon.setItemData[43760] = 800; -- Dreamwalker Trousers
_addon.setItemData[39547] = 800; -- Heroes' Dreamwalker Vestments
_addon.setItemData[40469] = 800; -- Valorous Dreamwalker Vestments
_addon.setItemData[43761] = 800; -- Dreamwalker Vestments

_addon.itemSetData[851] = {
    name = "Malfurion's Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {0, 33554432, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {16, 0, 0, 0},
            value = 1,
        },
    }
}
_addon.setItemData[48132] = 851; -- Malfurion's Handguards of Conquest
_addon.setItemData[48133] = 851; -- Malfurion's Handguards of Triumph
_addon.setItemData[48142] = 851; -- Malfurion's Handguards of Triumph
_addon.setItemData[48774] = 851; -- Malfurion's Handguards 
_addon.setItemData[48102] = 851; -- Malfurion's Headpiece of Conquest
_addon.setItemData[48134] = 851; -- Malfurion's Headpiece of Triumph
_addon.setItemData[48141] = 851; -- Malfurion's Headpiece of Triumph
_addon.setItemData[48775] = 851; -- Malfurion's Headpiece 
_addon.setItemData[48130] = 851; -- Malfurion's Leggings of Conquest
_addon.setItemData[48135] = 851; -- Malfurion's Leggings of Triumph
_addon.setItemData[48140] = 851; -- Malfurion's Leggings of Triumph
_addon.setItemData[48776] = 851; -- Malfurion's Leggings 
_addon.setItemData[48129] = 851; -- Malfurion's Robe of Conquest
_addon.setItemData[48136] = 851; -- Malfurion's Robe of Triumph
_addon.setItemData[48139] = 851; -- Malfurion's Robe of Triumph
_addon.setItemData[48777] = 851; -- Malfurion's Robe 
_addon.setItemData[48131] = 851; -- Malfurion's Spaulders of Conquest
_addon.setItemData[48137] = 851; -- Malfurion's Spaulders of Triumph
_addon.setItemData[48138] = 851; -- Malfurion's Spaulders of Triumph
_addon.setItemData[48778] = 851; -- Malfurion's Spaulders 

_addon.itemSetData[852] = {
    name = "Runetotem's Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {0, 33554432, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {16, 0, 0, 0},
            value = 1,
        },
    }
}
_addon.setItemData[48143] = 852; -- Runetotem's Handguards of Triumph
_addon.setItemData[48152] = 852; -- Runetotem's Handguards of Triumph
_addon.setItemData[48153] = 852; -- Runetotem's Handguards of Conquest
_addon.setItemData[48769] = 852; -- Runetotem's Handguards 
_addon.setItemData[48144] = 852; -- Runetotem's Headpiece of Triumph
_addon.setItemData[48151] = 852; -- Runetotem's Headpiece of Triumph
_addon.setItemData[48154] = 852; -- Runetotem's Headpiece of Conquest
_addon.setItemData[48770] = 852; -- Runetotem's Headpiece 
_addon.setItemData[48145] = 852; -- Runetotem's Leggings of Triumph
_addon.setItemData[48150] = 852; -- Runetotem's Leggings of Triumph
_addon.setItemData[48155] = 852; -- Runetotem's Leggings of Conquest
_addon.setItemData[48771] = 852; -- Runetotem's Leggings 
_addon.setItemData[48146] = 852; -- Runetotem's Robe of Triumph
_addon.setItemData[48149] = 852; -- Runetotem's Robe of Triumph
_addon.setItemData[48156] = 852; -- Runetotem's Robe of Conquest
_addon.setItemData[48772] = 852; -- Runetotem's Robe 
_addon.setItemData[48147] = 852; -- Runetotem's Spaulders of Triumph
_addon.setItemData[48148] = 852; -- Runetotem's Spaulders of Triumph
_addon.setItemData[48157] = 852; -- Runetotem's Spaulders of Conquest
_addon.setItemData[48773] = 852; -- Runetotem's Spaulders 

_addon.itemSetData[853] = {
    name = "Malfurion's Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {2, 0, 0, 0},
            value = 1,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {5, 0, 0, 0},
            value = 4,
        },
    }
}
_addon.setItemData[48158] = 853; -- Malfurion's Cover of Conquest
_addon.setItemData[48164] = 853; -- Malfurion's Cover of Triumph
_addon.setItemData[48171] = 853; -- Malfurion's Cover of Triumph
_addon.setItemData[48786] = 853; -- Malfurion's Cover 
_addon.setItemData[48162] = 853; -- Malfurion's Gloves of Conquest
_addon.setItemData[48163] = 853; -- Malfurion's Gloves of Triumph
_addon.setItemData[48172] = 853; -- Malfurion's Gloves of Triumph
_addon.setItemData[48787] = 853; -- Malfurion's Gloves 
_addon.setItemData[48161] = 853; -- Malfurion's Mantle of Conquest
_addon.setItemData[48167] = 853; -- Malfurion's Mantle of Triumph
_addon.setItemData[48168] = 853; -- Malfurion's Mantle of Triumph
_addon.setItemData[48788] = 853; -- Malfurion's Mantle 
_addon.setItemData[48160] = 853; -- Malfurion's Trousers of Conquest
_addon.setItemData[48165] = 853; -- Malfurion's Trousers of Triumph
_addon.setItemData[48170] = 853; -- Malfurion's Trousers of Triumph
_addon.setItemData[48789] = 853; -- Malfurion's Trousers 
_addon.setItemData[48159] = 853; -- Malfurion's Vestments of Conquest
_addon.setItemData[48166] = 853; -- Malfurion's Vestments of Triumph
_addon.setItemData[48169] = 853; -- Malfurion's Vestments of Triumph
_addon.setItemData[48790] = 853; -- Malfurion's Vestments 

_addon.itemSetData[854] = {
    name = "Runetotem's Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {2, 0, 0, 0},
            value = 1,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {5, 0, 0, 0},
            value = 4,
        },
    }
}
_addon.setItemData[48174] = 854; -- Runetotem's Cover of Triumph
_addon.setItemData[48181] = 854; -- Runetotem's Cover of Triumph
_addon.setItemData[48184] = 854; -- Runetotem's Cover of Conquest
_addon.setItemData[48781] = 854; -- Runetotem's Cover 
_addon.setItemData[48173] = 854; -- Runetotem's Gloves of Triumph
_addon.setItemData[48182] = 854; -- Runetotem's Gloves of Triumph
_addon.setItemData[48183] = 854; -- Runetotem's Gloves of Conquest
_addon.setItemData[48782] = 854; -- Runetotem's Gloves 
_addon.setItemData[48177] = 854; -- Runetotem's Mantle of Triumph
_addon.setItemData[48178] = 854; -- Runetotem's Mantle of Triumph
_addon.setItemData[48187] = 854; -- Runetotem's Mantle of Conquest
_addon.setItemData[48783] = 854; -- Runetotem's Mantle 
_addon.setItemData[48175] = 854; -- Runetotem's Trousers of Triumph
_addon.setItemData[48180] = 854; -- Runetotem's Trousers of Triumph
_addon.setItemData[48185] = 854; -- Runetotem's Trousers of Conquest
_addon.setItemData[48784] = 854; -- Runetotem's Trousers 
_addon.setItemData[48176] = 854; -- Runetotem's Vestments of Triumph
_addon.setItemData[48179] = 854; -- Runetotem's Vestments of Triumph
_addon.setItemData[48186] = 854; -- Runetotem's Vestments of Conquest
_addon.setItemData[48785] = 854; -- Runetotem's Vestments 

_addon.itemSetData[855] = {
    name = "Malfurion's Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {4096, 0, 0, 0},
            value = 3000,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 256, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48203] = 855; -- Malfurion's Handgrips of Triumph
_addon.setItemData[48212] = 855; -- Malfurion's Handgrips of Triumph
_addon.setItemData[48213] = 855; -- Malfurion's Handgrips of Conquest
_addon.setItemData[48799] = 855; -- Malfurion's Handgrips 
_addon.setItemData[48204] = 855; -- Malfurion's Headguard of Triumph
_addon.setItemData[48211] = 855; -- Malfurion's Headguard of Triumph
_addon.setItemData[48214] = 855; -- Malfurion's Headguard of Conquest
_addon.setItemData[48800] = 855; -- Malfurion's Headguard 
_addon.setItemData[48205] = 855; -- Malfurion's Legguards of Triumph
_addon.setItemData[48210] = 855; -- Malfurion's Legguards of Triumph
_addon.setItemData[48215] = 855; -- Malfurion's Legguards of Conquest
_addon.setItemData[48801] = 855; -- Malfurion's Legguards 
_addon.setItemData[48206] = 855; -- Malfurion's Raiments of Triumph
_addon.setItemData[48209] = 855; -- Malfurion's Raiments of Triumph
_addon.setItemData[48216] = 855; -- Malfurion's Raiments of Conquest
_addon.setItemData[48802] = 855; -- Malfurion's Raiments 
_addon.setItemData[48207] = 855; -- Malfurion's Shoulderpads of Triumph
_addon.setItemData[48208] = 855; -- Malfurion's Shoulderpads of Triumph
_addon.setItemData[48217] = 855; -- Malfurion's Shoulderpads of Conquest
_addon.setItemData[48803] = 855; -- Malfurion's Shoulderpads 

_addon.itemSetData[856] = {
    name = "Runetotem's Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {4096, 0, 0, 0},
            value = 3000,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 256, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48192] = 856; -- Runetotem's Handgrips of Conquest
_addon.setItemData[48193] = 856; -- Runetotem's Handgrips of Triumph
_addon.setItemData[48202] = 856; -- Runetotem's Handgrips of Triumph
_addon.setItemData[48794] = 856; -- Runetotem's Handgrips 
_addon.setItemData[48188] = 856; -- Runetotem's Headguard of Conquest
_addon.setItemData[48194] = 856; -- Runetotem's Headguard of Triumph
_addon.setItemData[48201] = 856; -- Runetotem's Headguard of Triumph
_addon.setItemData[48795] = 856; -- Runetotem's Headguard 
_addon.setItemData[48190] = 856; -- Runetotem's Legguards of Conquest
_addon.setItemData[48195] = 856; -- Runetotem's Legguards of Triumph
_addon.setItemData[48200] = 856; -- Runetotem's Legguards of Triumph
_addon.setItemData[48796] = 856; -- Runetotem's Legguards 
_addon.setItemData[48189] = 856; -- Runetotem's Raiments of Conquest
_addon.setItemData[48196] = 856; -- Runetotem's Raiments of Triumph
_addon.setItemData[48199] = 856; -- Runetotem's Raiments of Triumph
_addon.setItemData[48797] = 856; -- Runetotem's Raiments 
_addon.setItemData[48191] = 856; -- Runetotem's Shoulderpads of Conquest
_addon.setItemData[48197] = 856; -- Runetotem's Shoulderpads of Triumph
_addon.setItemData[48198] = 856; -- Runetotem's Shoulderpads of Triumph
_addon.setItemData[48798] = 856; -- Runetotem's Shoulderpads 

_addon.itemSetData[887] = {
    name = "Lasherweave Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 67108864},
            value = 15,
        },
    }
}
_addon.setItemData[50106] = 887; -- Lasherweave Robes
_addon.setItemData[51139] = 887; -- Sanctified Lasherweave Robes
_addon.setItemData[51300] = 887; -- Sanctified Lasherweave Robes
_addon.setItemData[51696] = 887; -- Lasherweave Robes
_addon.setItemData[50107] = 887; -- Lasherweave Gauntlets
_addon.setItemData[51138] = 887; -- Sanctified Lasherweave Gauntlets
_addon.setItemData[51301] = 887; -- Sanctified Lasherweave Gauntlets
_addon.setItemData[51695] = 887; -- Lasherweave Gauntlets
_addon.setItemData[50108] = 887; -- Lasherweave Helmet
_addon.setItemData[51137] = 887; -- Sanctified Lasherweave Helmet
_addon.setItemData[51302] = 887; -- Sanctified Lasherweave Helmet
_addon.setItemData[51694] = 887; -- Lasherweave Helmet
_addon.setItemData[50109] = 887; -- Lasherweave Legplates
_addon.setItemData[51136] = 887; -- Sanctified Lasherweave Legplates
_addon.setItemData[51303] = 887; -- Sanctified Lasherweave Legplates
_addon.setItemData[51693] = 887; -- Lasherweave Legplates
_addon.setItemData[50113] = 887; -- Lasherweave Pauldrons
_addon.setItemData[51135] = 887; -- Sanctified Lasherweave Pauldrons
_addon.setItemData[51304] = 887; -- Sanctified Lasherweave Pauldrons
_addon.setItemData[51692] = 887; -- Lasherweave Pauldrons

_addon.itemSetData[889] = {
    name = "Lasherweave Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 1048832, 0, 0},
            value = 20,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 256, 0, 0},
            value = 20,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {4096, 0, 0, 0},
            value = 1,
        },
    }
}
_addon.setItemData[50824] = 889; -- Lasherweave Shoulderpads
_addon.setItemData[51140] = 889; -- Sanctified Lasherweave Shoulderpads
_addon.setItemData[51299] = 889; -- Sanctified Lasherweave Shoulderpads
_addon.setItemData[51701] = 889; -- Lasherweave Shoulderpads
_addon.setItemData[50825] = 889; -- Lasherweave Legguards
_addon.setItemData[51142] = 889; -- Sanctified Lasherweave Legguards
_addon.setItemData[51297] = 889; -- Sanctified Lasherweave Legguards
_addon.setItemData[51700] = 889; -- Lasherweave Legguards
_addon.setItemData[50826] = 889; -- Lasherweave Headguard
_addon.setItemData[51143] = 889; -- Sanctified Lasherweave Headguard
_addon.setItemData[51296] = 889; -- Sanctified Lasherweave Headguard
_addon.setItemData[51699] = 889; -- Lasherweave Headguard
_addon.setItemData[50827] = 889; -- Lasherweave Handgrips
_addon.setItemData[51144] = 889; -- Sanctified Lasherweave Handgrips
_addon.setItemData[51295] = 889; -- Sanctified Lasherweave Handgrips
_addon.setItemData[51698] = 889; -- Lasherweave Handgrips
_addon.setItemData[50828] = 889; -- Lasherweave Raiment
_addon.setItemData[51141] = 889; -- Sanctified Lasherweave Raiment
_addon.setItemData[51298] = 889; -- Sanctified Lasherweave Raiment
_addon.setItemData[51697] = 889; -- Lasherweave Raiment


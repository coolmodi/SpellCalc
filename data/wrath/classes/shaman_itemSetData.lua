-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.itemSetData[207] = {
    name = "The Earthfury",
    effects = {
        {
            need = 5,
            type = _addon.CONST.EFFECT_TYPE.EARTHFURY_RETURN,
            value = 1,
        },
    }
}
_addon.setItemData[16838] = 207; -- Earthfury Belt
_addon.setItemData[16837] = 207; -- Earthfury Boots
_addon.setItemData[16840] = 207; -- Earthfury Bracers
_addon.setItemData[16841] = 207; -- Earthfury Vestments
_addon.setItemData[16844] = 207; -- Earthfury Epaulets
_addon.setItemData[16839] = 207; -- Earthfury Gauntlets
_addon.setItemData[16842] = 207; -- Earthfury Helmet
_addon.setItemData[16843] = 207; -- Earthfury Legguards

_addon.itemSetData[216] = {
    name = "The Ten Storms",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {256, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[16944] = 216; -- Belt of Ten Storms
_addon.setItemData[16943] = 216; -- Bracers of Ten Storms
_addon.setItemData[16950] = 216; -- Breastplate of Ten Storms
_addon.setItemData[16945] = 216; -- Epaulets of Ten Storms
_addon.setItemData[16948] = 216; -- Gauntlets of Ten Storms
_addon.setItemData[16949] = 216; -- Greaves of Ten Storms
_addon.setItemData[16947] = 216; -- Helmet of Ten Storms
_addon.setItemData[16946] = 216; -- Legplates of Ten Storms

_addon.itemSetData[301] = {
    name = "Champion's Earthshaker",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[16519] = 301; -- Blood Guard's Mail Grips
_addon.setItemData[16518] = 301; -- Blood Guard's Mail Walkers
_addon.setItemData[16522] = 301; -- Legionnaire's Mail Chestpiece
_addon.setItemData[16523] = 301; -- Legionnaire's Mail Leggings
_addon.setItemData[16521] = 301; -- Champion's Mail Helm
_addon.setItemData[16524] = 301; -- Champion's Mail Shoulders

_addon.itemSetData[386] = {
    name = "Warlord's Earthshaker",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[16577] = 386; -- Warlord's Mail Armor
_addon.setItemData[16578] = 386; -- Warlord's Mail Helm
_addon.setItemData[16580] = 386; -- Warlord's Mail Spaulders
_addon.setItemData[16573] = 386; -- General's Mail Boots
_addon.setItemData[16574] = 386; -- General's Mail Gauntlets
_addon.setItemData[16579] = 386; -- General's Mail Leggings

_addon.itemSetData[476] = {
    name = "Augur's Regalia",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {-2147483648, 0, 0, 0},
            value = 1000,
        },
    }
}
_addon.setItemData[19609] = 476; -- Unmarred Vision of Voodress
_addon.setItemData[19956] = 476; -- Wushoolay's Charm of Spirits
_addon.setItemData[19830] = 476; -- Zandalar Augur's Bracers
_addon.setItemData[19829] = 476; -- Zandalar Augur's Belt
_addon.setItemData[19828] = 476; -- Zandalar Augur's Hauberk

_addon.itemSetData[502] = {
    name = "Gift of the Gathering Storm",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {2, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[21400] = 502; -- Cloak of the Gathering Storm
_addon.setItemData[21398] = 502; -- Hammer of the Gathering Storm
_addon.setItemData[21399] = 502; -- Ring of the Gathering Storm

_addon.itemSetData[538] = {
    name = "Champion's Stormcaller",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[22857] = 538; -- Blood Guard's Mail Greaves
_addon.setItemData[22867] = 538; -- Blood Guard's Mail Vices
_addon.setItemData[22876] = 538; -- Legionnaire's Mail Hauberk
_addon.setItemData[22887] = 538; -- Legionnaire's Mail Legguards
_addon.setItemData[23259] = 538; -- Champion's Mail Headguard
_addon.setItemData[23260] = 538; -- Champion's Mail Pauldrons

_addon.itemSetData[603] = {
    name = "Grand Marshal's Thunderfist",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[28694] = 603; -- Grand Marshal's Mail Armor
_addon.setItemData[28695] = 603; -- Grand Marshal's Mail Gauntlets
_addon.setItemData[28696] = 603; -- Grand Marshal's Mail Helm
_addon.setItemData[28697] = 603; -- Grand Marshal's Mail Leggings
_addon.setItemData[28698] = 603; -- Grand Marshal's Mail Spaulders

_addon.itemSetData[604] = {
    name = "High Warlord's Thunderfist",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[28846] = 604; -- High Warlord's Mail Armor
_addon.setItemData[28847] = 604; -- High Warlord's Mail Gauntlets
_addon.setItemData[28848] = 604; -- High Warlord's Mail Helm
_addon.setItemData[28849] = 604; -- High Warlord's Mail Leggings
_addon.setItemData[28850] = 604; -- High Warlord's Mail Spaulders

_addon.itemSetData[630] = {
    name = "Tidefury Raiment",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {2, 0, 0, 0},
            value = 19,
        },
    }
}
_addon.setItemData[28231] = 630; -- Tidefury Chestpiece
_addon.setItemData[27510] = 630; -- Tidefury Gauntlets
_addon.setItemData[28349] = 630; -- Tidefury Helm
_addon.setItemData[27909] = 630; -- Tidefury Kilt
_addon.setItemData[27802] = 630; -- Tidefury Shoulderguards

_addon.itemSetData[632] = {
    name = "Cyclone Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_CRIT_MANARESTORE,
            affectSpell = {-1877999613},
            value = 30,
        },
    }
}
_addon.setItemData[29033] = 632; -- Cyclone Chestguard
_addon.setItemData[29035] = 632; -- Cyclone Faceguard
_addon.setItemData[29034] = 632; -- Cyclone Handguards
_addon.setItemData[29036] = 632; -- Cyclone Legguards
_addon.setItemData[29037] = 632; -- Cyclone Shoulderguards

_addon.itemSetData[633] = {
    name = "Cyclone Harness",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 16, 0, 0},
            value = 30,
        },
    }
}
_addon.setItemData[29038] = 633; -- Cyclone Breastplate
_addon.setItemData[29039] = 633; -- Cyclone Gauntlets
_addon.setItemData[29040] = 633; -- Cyclone Helm
_addon.setItemData[29043] = 633; -- Cyclone Shoulderplates
_addon.setItemData[29042] = 633; -- Cyclone War-Kilt

_addon.itemSetData[635] = {
    name = "Cataclysm Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_CRIT_MANARESTORE,
            affectSpell = {1},
            value = 40,
        },
    }
}
_addon.setItemData[30169] = 635; -- Cataclysm Chestpiece
_addon.setItemData[30170] = 635; -- Cataclysm Handgrips
_addon.setItemData[30171] = 635; -- Cataclysm Headpiece
_addon.setItemData[30172] = 635; -- Cataclysm Leggings
_addon.setItemData[30173] = 635; -- Cataclysm Shoulderpads

_addon.itemSetData[682] = {
    name = "Skyshatter Harness",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
            affectSpell = {0, 16, 0, 0},
            value = 100,
        },
    }
}
_addon.setItemData[31018] = 682; -- Skyshatter Tunic
_addon.setItemData[31011] = 682; -- Skyshatter Grips
_addon.setItemData[31015] = 682; -- Skyshatter Cover
_addon.setItemData[31021] = 682; -- Skyshatter Pants
_addon.setItemData[31024] = 682; -- Skyshatter Pauldrons
_addon.setItemData[34567] = 682; -- Skyshatter Greaves
_addon.setItemData[34439] = 682; -- Skyshatter Wristguards
_addon.setItemData[34545] = 682; -- Skyshatter Girdle

_addon.itemSetData[683] = {
    name = "Skyshatter Raiment",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {256, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31016] = 683; -- Skyshatter Chestguard
_addon.setItemData[31007] = 683; -- Skyshatter Gloves
_addon.setItemData[31012] = 683; -- Skyshatter Helmet
_addon.setItemData[31019] = 683; -- Skyshatter Leggings
_addon.setItemData[31022] = 683; -- Skyshatter Shoulderpads
_addon.setItemData[34543] = 683; -- Skyshatter Belt
_addon.setItemData[34438] = 683; -- Skyshatter Bracers
_addon.setItemData[34565] = 683; -- Skyshatter Boots

_addon.itemSetData[684] = {
    name = "Skyshatter Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31017] = 684; -- Skyshatter Breastplate
_addon.setItemData[31008] = 684; -- Skyshatter Gauntlets
_addon.setItemData[31014] = 684; -- Skyshatter Headguard
_addon.setItemData[31020] = 684; -- Skyshatter Legguards
_addon.setItemData[31023] = 684; -- Skyshatter Mantle
_addon.setItemData[34542] = 684; -- Skyshatter Cord
_addon.setItemData[34437] = 684; -- Skyshatter Bands
_addon.setItemData[34566] = 684; -- Skyshatter Treads

_addon.itemSetData[717] = {
    name = "Field Marshal's Earthshaker",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[29608] = 717; -- Marshal's Mail Leggings
_addon.setItemData[29606] = 717; -- Marshal's Mail Boots
_addon.setItemData[29611] = 717; -- Field Marshal's Mail Spaulders
_addon.setItemData[29609] = 717; -- Field Marshal's Mail Armor
_addon.setItemData[29607] = 717; -- Marshal's Mail Gauntlets
_addon.setItemData[29610] = 717; -- Field Marshal's Mail Helm

_addon.itemSetData[718] = {
    name = "Lieutenant Commander's Earthshaker",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[29599] = 718; -- Lieutenant Commander's Mail Pauldrons
_addon.setItemData[29595] = 718; -- Knight-Lieutenant's Mail Vices
_addon.setItemData[29597] = 718; -- Knight-Captain's Mail Legguards
_addon.setItemData[29596] = 718; -- Knight-Captain's Mail Hauberk
_addon.setItemData[29598] = 718; -- Lieutenant Commander's Mail Headguard
_addon.setItemData[29594] = 718; -- Knight-Lieutenant's Mail Greaves

_addon.itemSetData[746] = {
    name = "Seer's Mail Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[35386] = 746; -- Seer's Mail Armor
_addon.setItemData[35472] = 746; -- Seer's Mail Armor
_addon.setItemData[35387] = 746; -- Seer's Mail Gauntlets
_addon.setItemData[35388] = 746; -- Seer's Mail Helm
_addon.setItemData[35389] = 746; -- Seer's Mail Leggings
_addon.setItemData[35390] = 746; -- Seer's Mail Spaulders

_addon.itemSetData[795] = {
    name = "Earthshatter Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1024, 0, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[39597] = 795; -- Heroes' Earthshatter Chestguard
_addon.setItemData[40523] = 795; -- Valorous Earthshatter Chestguard
_addon.setItemData[43762] = 795; -- Earthshatter Chestguard
_addon.setItemData[39602] = 795; -- Heroes' Earthshatter Faceguard
_addon.setItemData[40521] = 795; -- Valorous Earthshatter Faceguard
_addon.setItemData[43763] = 795; -- Earthshatter Faceguard
_addon.setItemData[39601] = 795; -- Heroes' Earthshatter Grips
_addon.setItemData[40520] = 795; -- Valorous Earthshatter Grips
_addon.setItemData[43765] = 795; -- Earthshatter Grips
_addon.setItemData[39604] = 795; -- Heroes' Earthshatter Shoulderguards
_addon.setItemData[40524] = 795; -- Valorous Earthshatter Shoulderguards
_addon.setItemData[43772] = 795; -- Earthshatter Shoulderguards
_addon.setItemData[39603] = 795; -- Heroes' Earthshatter War-Kilt
_addon.setItemData[40522] = 795; -- Valorous Earthshatter War-Kilt
_addon.setItemData[43776] = 795; -- Earthshatter War-Kilt

_addon.itemSetData[796] = {
    name = "Earthshatter Garb",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
            affectSpell = {0, 4096, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[39593] = 796; -- Heroes' Earthshatter Gloves
_addon.setItemData[40515] = 796; -- Valorous Earthshatter Gloves
_addon.setItemData[43764] = 796; -- Earthshatter Gloves
_addon.setItemData[39592] = 796; -- Heroes' Earthshatter Hauberk
_addon.setItemData[40514] = 796; -- Valorous Earthshatter Hauberk
_addon.setItemData[43767] = 796; -- Earthshatter Hauberk
_addon.setItemData[39594] = 796; -- Heroes' Earthshatter Helm
_addon.setItemData[40516] = 796; -- Valorous Earthshatter Helm
_addon.setItemData[43769] = 796; -- Earthshatter Helm
_addon.setItemData[39595] = 796; -- Heroes' Earthshatter Kilt
_addon.setItemData[40517] = 796; -- Valorous Earthshatter Kilt
_addon.setItemData[43770] = 796; -- Earthshatter Kilt
_addon.setItemData[39596] = 796; -- Heroes' Earthshatter Shoulderpads
_addon.setItemData[40518] = 796; -- Valorous Earthshatter Shoulderpads
_addon.setItemData[43773] = 796; -- Earthshatter Shoulderpads

_addon.itemSetData[797] = {
    name = "Earthshatter Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {320, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[39591] = 797; -- Heroes' Earthshatter Handguards
_addon.setItemData[40509] = 797; -- Valorous Earthshatter Handguards
_addon.setItemData[43766] = 797; -- Earthshatter Handguards
_addon.setItemData[39583] = 797; -- Heroes' Earthshatter Headpiece
_addon.setItemData[40510] = 797; -- Valorous Earthshatter Headpiece
_addon.setItemData[43768] = 797; -- Earthshatter Headpiece
_addon.setItemData[39589] = 797; -- Heroes' Earthshatter Legguards
_addon.setItemData[40512] = 797; -- Valorous Earthshatter Legguards
_addon.setItemData[43771] = 797; -- Earthshatter Legguards
_addon.setItemData[39590] = 797; -- Heroes' Earthshatter Spaulders
_addon.setItemData[40513] = 797; -- Valorous Earthshatter Spaulders
_addon.setItemData[43774] = 797; -- Earthshatter Spaulders
_addon.setItemData[39588] = 797; -- Heroes' Earthshatter Tunic
_addon.setItemData[40508] = 797; -- Valorous Earthshatter Tunic
_addon.setItemData[43775] = 797; -- Earthshatter Tunic

_addon.itemSetData[823] = {
    name = "Worldbreaker Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 16, 4, 0},
            value = 20,
        },
    }
}
_addon.setItemData[45413] = 823; -- Valorous Worldbreaker Chestguard
_addon.setItemData[46205] = 823; -- Conqueror's Worldbreaker Chestguard
_addon.setItemData[46293] = 823; -- Worldbreaker Chestguard
_addon.setItemData[45412] = 823; -- Valorous Worldbreaker Faceguard
_addon.setItemData[46212] = 823; -- Conqueror's Worldbreaker Faceguard
_addon.setItemData[46294] = 823; -- Worldbreaker Faceguard
_addon.setItemData[45414] = 823; -- Valorous Worldbreaker Grips
_addon.setItemData[46200] = 823; -- Conqueror's Worldbreaker Grips
_addon.setItemData[46296] = 823; -- Worldbreaker Grips
_addon.setItemData[45415] = 823; -- Valorous Worldbreaker Shoulderguards
_addon.setItemData[46203] = 823; -- Conqueror's Worldbreaker Shoulderguards
_addon.setItemData[46303] = 823; -- Worldbreaker Shoulderguards
_addon.setItemData[45416] = 823; -- Valorous Worldbreaker War-Kilt
_addon.setItemData[46208] = 823; -- Conqueror's Worldbreaker War-Kilt
_addon.setItemData[46307] = 823; -- Worldbreaker War-Kilt

_addon.itemSetData[824] = {
    name = "Worldbreaker Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {268435456, 0, 0, 0},
            value = 20,
        },
    }
}
_addon.setItemData[45406] = 824; -- Valorous Worldbreaker Gloves
_addon.setItemData[46207] = 824; -- Conqueror's Worldbreaker Gloves
_addon.setItemData[46295] = 824; -- Worldbreaker Gloves
_addon.setItemData[45411] = 824; -- Valorous Worldbreaker Hauberk
_addon.setItemData[46206] = 824; -- Conqueror's Worldbreaker Hauberk
_addon.setItemData[46298] = 824; -- Worldbreaker Hauberk
_addon.setItemData[45408] = 824; -- Valorous Worldbreaker Helm
_addon.setItemData[46209] = 824; -- Conqueror's Worldbreaker Helm
_addon.setItemData[46300] = 824; -- Worldbreaker Helm
_addon.setItemData[45409] = 824; -- Valorous Worldbreaker Kilt
_addon.setItemData[46210] = 824; -- Conqueror's Worldbreaker Kilt
_addon.setItemData[46301] = 824; -- Worldbreaker Kilt
_addon.setItemData[45410] = 824; -- Valorous Worldbreaker Shoulderpads
_addon.setItemData[46211] = 824; -- Conqueror's Worldbreaker Shoulderpads
_addon.setItemData[46304] = 824; -- Worldbreaker Shoulderpads

_addon.itemSetData[861] = {
    name = "Nobundo's Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 0, 16, 0},
            value = 20,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 0, 16, 0},
            value = 20,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {256, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48284] = 861; -- Nobundo's Handguards of Conquest
_addon.setItemData[48286] = 861; -- Nobundo's Handguards of Triumph
_addon.setItemData[48293] = 861; -- Nobundo's Handguards of Triumph
_addon.setItemData[48824] = 861; -- Nobundo's Handguards 
_addon.setItemData[48280] = 861; -- Nobundo's Headpiece of Conquest
_addon.setItemData[48287] = 861; -- Nobundo's Headpiece of Triumph
_addon.setItemData[48292] = 861; -- Nobundo's Headpiece of Triumph
_addon.setItemData[48825] = 861; -- Nobundo's Headpiece 
_addon.setItemData[48282] = 861; -- Nobundo's Legguards of Conquest
_addon.setItemData[48288] = 861; -- Nobundo's Legguards of Triumph
_addon.setItemData[48291] = 861; -- Nobundo's Legguards of Triumph
_addon.setItemData[48826] = 861; -- Nobundo's Legguards 
_addon.setItemData[48283] = 861; -- Nobundo's Spaulders of Conquest
_addon.setItemData[48289] = 861; -- Nobundo's Spaulders of Triumph
_addon.setItemData[48290] = 861; -- Nobundo's Spaulders of Triumph
_addon.setItemData[48827] = 861; -- Nobundo's Spaulders 
_addon.setItemData[48281] = 861; -- Nobundo's Tunic of Conquest
_addon.setItemData[48285] = 861; -- Nobundo's Tunic of Triumph
_addon.setItemData[48294] = 861; -- Nobundo's Tunic of Triumph
_addon.setItemData[48828] = 861; -- Nobundo's Tunic 

_addon.itemSetData[862] = {
    name = "Thrall's Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 0, 16, 0},
            value = 20,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 0, 16, 0},
            value = 20,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {256, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48296] = 862; -- Thrall's Handguards of Conquest
_addon.setItemData[48301] = 862; -- Thrall's Handguards of Triumph
_addon.setItemData[48306] = 862; -- Thrall's Handguards of Triumph
_addon.setItemData[48829] = 862; -- Thrall's Handguards 
_addon.setItemData[48297] = 862; -- Thrall's Headpiece of Conquest
_addon.setItemData[48302] = 862; -- Thrall's Headpiece of Triumph
_addon.setItemData[48307] = 862; -- Thrall's Headpiece of Triumph
_addon.setItemData[48830] = 862; -- Thrall's Headpiece 
_addon.setItemData[48298] = 862; -- Thrall's Legguards of Conquest
_addon.setItemData[48303] = 862; -- Thrall's Legguards of Triumph
_addon.setItemData[48308] = 862; -- Thrall's Legguards of Triumph
_addon.setItemData[48831] = 862; -- Thrall's Legguards 
_addon.setItemData[48299] = 862; -- Thrall's Spaulders of Conquest
_addon.setItemData[48304] = 862; -- Thrall's Spaulders of Triumph
_addon.setItemData[48309] = 862; -- Thrall's Spaulders of Triumph
_addon.setItemData[48832] = 862; -- Thrall's Spaulders 
_addon.setItemData[48295] = 862; -- Thrall's Tunic of Conquest
_addon.setItemData[48300] = 862; -- Thrall's Tunic of Triumph
_addon.setItemData[48305] = 862; -- Thrall's Tunic of Triumph
_addon.setItemData[48833] = 862; -- Thrall's Tunic 

_addon.itemSetData[863] = {
    name = "Thrall's Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {268435456, 0, 0, 0},
            value = 9000,
        },
    }
}
_addon.setItemData[48327] = 863; -- Thrall's Gloves of Triumph
_addon.setItemData[48334] = 863; -- Thrall's Gloves of Triumph
_addon.setItemData[48337] = 863; -- Thrall's Gloves of Conquest
_addon.setItemData[48841] = 863; -- Thrall's Gloves 
_addon.setItemData[48326] = 863; -- Thrall's Hauberk of Triumph
_addon.setItemData[48335] = 863; -- Thrall's Hauberk of Triumph
_addon.setItemData[48336] = 863; -- Thrall's Hauberk of Conquest
_addon.setItemData[48842] = 863; -- Thrall's Hauberk 
_addon.setItemData[48328] = 863; -- Thrall's Helm of Triumph
_addon.setItemData[48333] = 863; -- Thrall's Helm of Triumph
_addon.setItemData[48338] = 863; -- Thrall's Helm of Conquest
_addon.setItemData[48843] = 863; -- Thrall's Helm 
_addon.setItemData[48329] = 863; -- Thrall's Kilt of Triumph
_addon.setItemData[48332] = 863; -- Thrall's Kilt of Triumph
_addon.setItemData[48339] = 863; -- Thrall's Kilt of Conquest
_addon.setItemData[48844] = 863; -- Thrall's Kilt 
_addon.setItemData[48330] = 863; -- Thrall's Shoulderpads of Triumph
_addon.setItemData[48331] = 863; -- Thrall's Shoulderpads of Triumph
_addon.setItemData[48340] = 863; -- Thrall's Shoulderpads of Conquest
_addon.setItemData[48845] = 863; -- Thrall's Shoulderpads 

_addon.itemSetData[864] = {
    name = "Nobundo's Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {268435456, 0, 0, 0},
            value = 9000,
        },
    }
}
_addon.setItemData[48312] = 864; -- Nobundo's Gloves of Conquest
_addon.setItemData[48317] = 864; -- Nobundo's Gloves of Triumph
_addon.setItemData[48324] = 864; -- Nobundo's Gloves of Triumph
_addon.setItemData[48836] = 864; -- Nobundo's Gloves 
_addon.setItemData[48310] = 864; -- Nobundo's Hauberk of Conquest
_addon.setItemData[48316] = 864; -- Nobundo's Hauberk of Triumph
_addon.setItemData[48325] = 864; -- Nobundo's Hauberk of Triumph
_addon.setItemData[48837] = 864; -- Nobundo's Hauberk 
_addon.setItemData[48313] = 864; -- Nobundo's Helm of Conquest
_addon.setItemData[48318] = 864; -- Nobundo's Helm of Triumph
_addon.setItemData[48323] = 864; -- Nobundo's Helm of Triumph
_addon.setItemData[48838] = 864; -- Nobundo's Helm 
_addon.setItemData[48314] = 864; -- Nobundo's Kilt of Conquest
_addon.setItemData[48319] = 864; -- Nobundo's Kilt of Triumph
_addon.setItemData[48322] = 864; -- Nobundo's Kilt of Triumph
_addon.setItemData[48839] = 864; -- Nobundo's Kilt 
_addon.setItemData[48315] = 864; -- Nobundo's Shoulderpads of Conquest
_addon.setItemData[48320] = 864; -- Nobundo's Shoulderpads of Triumph
_addon.setItemData[48321] = 864; -- Nobundo's Shoulderpads of Triumph
_addon.setItemData[48840] = 864; -- Nobundo's Shoulderpads 

_addon.itemSetData[865] = {
    name = "Nobundo's Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 25,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 25,
        },
    }
}
_addon.setItemData[48341] = 865; -- Nobundo's Chestguard of Conquest
_addon.setItemData[48346] = 865; -- Nobundo's Chestguard of Triumph
_addon.setItemData[48355] = 865; -- Nobundo's Chestguard of Triumph
_addon.setItemData[48846] = 865; -- Nobundo's Chestguard 
_addon.setItemData[48343] = 865; -- Nobundo's Faceguard of Conquest
_addon.setItemData[48348] = 865; -- Nobundo's Faceguard of Triumph
_addon.setItemData[48353] = 865; -- Nobundo's Faceguard of Triumph
_addon.setItemData[48847] = 865; -- Nobundo's Faceguard 
_addon.setItemData[48342] = 865; -- Nobundo's Grips of Conquest
_addon.setItemData[48347] = 865; -- Nobundo's Grips of Triumph
_addon.setItemData[48354] = 865; -- Nobundo's Grips of Triumph
_addon.setItemData[48848] = 865; -- Nobundo's Grips 
_addon.setItemData[48345] = 865; -- Nobundo's Shoulderguards of Conquest
_addon.setItemData[48350] = 865; -- Nobundo's Shoulderguards of Triumph
_addon.setItemData[48351] = 865; -- Nobundo's Shoulderguards of Triumph
_addon.setItemData[48849] = 865; -- Nobundo's Shoulderguards 
_addon.setItemData[48344] = 865; -- Nobundo's War-Kilt of Conquest
_addon.setItemData[48349] = 865; -- Nobundo's War-Kilt of Triumph
_addon.setItemData[48352] = 865; -- Nobundo's War-Kilt of Triumph
_addon.setItemData[48850] = 865; -- Nobundo's War-Kilt 

_addon.itemSetData[866] = {
    name = "Thrall's Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 25,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 25,
        },
    }
}
_addon.setItemData[48360] = 866; -- Thrall's Shoulderguards of Triumph
_addon.setItemData[48361] = 866; -- Thrall's Shoulderguards of Triumph
_addon.setItemData[48370] = 866; -- Thrall's Shoulderguards of Conquest
_addon.setItemData[48854] = 866; -- Thrall's Shoulderguards 
_addon.setItemData[48359] = 866; -- Thrall's War-Kilt of Triumph
_addon.setItemData[48362] = 866; -- Thrall's War-Kilt of Triumph
_addon.setItemData[48369] = 866; -- Thrall's War-Kilt of Conquest
_addon.setItemData[48855] = 866; -- Thrall's War-Kilt 
_addon.setItemData[48358] = 866; -- Thrall's Faceguard of Triumph
_addon.setItemData[48363] = 866; -- Thrall's Faceguard of Triumph
_addon.setItemData[48368] = 866; -- Thrall's Faceguard of Conquest
_addon.setItemData[48852] = 866; -- Thrall's Faceguard 
_addon.setItemData[48357] = 866; -- Thrall's Grips of Triumph
_addon.setItemData[48364] = 866; -- Thrall's Grips of Triumph
_addon.setItemData[48367] = 866; -- Thrall's Grips of Conquest
_addon.setItemData[48853] = 866; -- Thrall's Grips 
_addon.setItemData[48356] = 866; -- Thrall's Chestguard of Triumph
_addon.setItemData[48365] = 866; -- Thrall's Chestguard of Triumph
_addon.setItemData[48366] = 866; -- Thrall's Chestguard of Conquest
_addon.setItemData[48851] = 866; -- Thrall's Chestguard 


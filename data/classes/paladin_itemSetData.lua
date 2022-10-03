-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.itemSetData[217] = {
    name = "Judgement Armor",
    effects = {
        {
            need = 8,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {8388608, 0, 0, 0},
            value = 23590,
        },
    }
}
_addon.setItemData[16952] = 217; -- Judgement Belt
_addon.setItemData[16951] = 217; -- Judgement Bindings
_addon.setItemData[16958] = 217; -- Judgement Breastplate
_addon.setItemData[16955] = 217; -- Judgement Crown
_addon.setItemData[16956] = 217; -- Judgement Gauntlets
_addon.setItemData[16954] = 217; -- Judgement Legplates
_addon.setItemData[16957] = 217; -- Judgement Sabatons
_addon.setItemData[16953] = 217; -- Judgement Spaulders

_addon.itemSetData[506] = {
    name = "Battlegear of Eternal Justice",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MANARESTORE,
            affectSpell = {8388608},
            value = 20,
        },
    }
}
_addon.setItemData[21397] = 506; -- Cape of Eternal Justice
_addon.setItemData[21395] = 506; -- Blade of Eternal Justice
_addon.setItemData[21396] = 506; -- Ring of Eternal Justice

_addon.itemSetData[625] = {
    name = "Justicar Armor",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 2048, 0, 0},
            value = 10,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 2048, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 64, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[29066] = 625; -- Justicar Chestguard
_addon.setItemData[29068] = 625; -- Justicar Faceguard
_addon.setItemData[29067] = 625; -- Justicar Handguards
_addon.setItemData[29069] = 625; -- Justicar Legguards
_addon.setItemData[29070] = 625; -- Justicar Shoulderguards

_addon.itemSetData[626] = {
    name = "Justicar Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {8388608, 0, 8, 0},
            value = 33,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 0, 16, 0},
            value = 93,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 512, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[29071] = 626; -- Justicar Breastplate
_addon.setItemData[29073] = 626; -- Justicar Crown
_addon.setItemData[29072] = 626; -- Justicar Gauntlets
_addon.setItemData[29074] = 626; -- Justicar Greaves
_addon.setItemData[29075] = 626; -- Justicar Shoulderplates

_addon.itemSetData[628] = {
    name = "Crystalforge Armor",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {8, 0, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[30123] = 628; -- Crystalforge Chestguard
_addon.setItemData[30125] = 628; -- Crystalforge Faceguard
_addon.setItemData[30124] = 628; -- Crystalforge Handguards
_addon.setItemData[30126] = 628; -- Crystalforge Legguards
_addon.setItemData[30127] = 628; -- Crystalforge Shoulderguards

_addon.itemSetData[679] = {
    name = "Lightbringer Armor",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {32, 0, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[30991] = 679; -- Lightbringer Chestguard
_addon.setItemData[30987] = 679; -- Lightbringer Faceguard
_addon.setItemData[30985] = 679; -- Lightbringer Handguards
_addon.setItemData[30995] = 679; -- Lightbringer Legguards
_addon.setItemData[30998] = 679; -- Lightbringer Shoulderguards
_addon.setItemData[34488] = 679; -- Lightbringer Waistguard
_addon.setItemData[34433] = 679; -- Lightbringer Wristguards
_addon.setItemData[34560] = 679; -- Lightbringer Stompers

_addon.itemSetData[680] = {
    name = "Lightbringer Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 128, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[30990] = 680; -- Lightbringer Breastplate
_addon.setItemData[30982] = 680; -- Lightbringer Gauntlets
_addon.setItemData[30993] = 680; -- Lightbringer Greaves
_addon.setItemData[30997] = 680; -- Lightbringer Shoulderbraces
_addon.setItemData[30989] = 680; -- Lightbringer War-Helm
_addon.setItemData[34561] = 680; -- Lightbringer Boots
_addon.setItemData[34431] = 680; -- Lightbringer Bands
_addon.setItemData[34485] = 680; -- Lightbringer Girdle

_addon.itemSetData[681] = {
    name = "Lightbringer Raiment",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1073741824, 0, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-2147483648, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[30992] = 681; -- Lightbringer Chestpiece
_addon.setItemData[30983] = 681; -- Lightbringer Gloves
_addon.setItemData[30988] = 681; -- Lightbringer Greathelm
_addon.setItemData[30994] = 681; -- Lightbringer Leggings
_addon.setItemData[30996] = 681; -- Lightbringer Pauldrons
_addon.setItemData[34432] = 681; -- Lightbringer Bracers
_addon.setItemData[34487] = 681; -- Lightbringer Belt
_addon.setItemData[34559] = 681; -- Lightbringer Treads

_addon.itemSetData[690] = {
    name = "Gladiator's Redemption",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[31613] = 690; -- Gladiator's Ornamented Chestguard
_addon.setItemData[32020] = 690; -- Merciless Gladiator's Ornamented Chestguard
_addon.setItemData[33722] = 690; -- Vengeful Gladiator's Ornamented Chestguard
_addon.setItemData[35059] = 690; -- Brutal Gladiator's Ornamented Chestguard
_addon.setItemData[31614] = 690; -- Gladiator's Ornamented Gloves
_addon.setItemData[32021] = 690; -- Merciless Gladiator's Ornamented Gloves
_addon.setItemData[33723] = 690; -- Vengeful Gladiator's Ornamented Gloves
_addon.setItemData[35060] = 690; -- Brutal Gladiator's Ornamented Gloves
_addon.setItemData[31616] = 690; -- Gladiator's Ornamented Headcover
_addon.setItemData[32022] = 690; -- Merciless Gladiator's Ornamented Headcover
_addon.setItemData[33724] = 690; -- Vengeful Gladiator's Ornamented Headcover
_addon.setItemData[35061] = 690; -- Brutal Gladiator's Ornamented Headcover
_addon.setItemData[31618] = 690; -- Gladiator's Ornamented Legplates
_addon.setItemData[32023] = 690; -- Merciless Gladiator's Ornamented Legplates
_addon.setItemData[33725] = 690; -- Vengeful Gladiator's Ornamented Legplates
_addon.setItemData[35062] = 690; -- Brutal Gladiator's Ornamented Legplates
_addon.setItemData[31619] = 690; -- Gladiator's Ornamented Spaulders
_addon.setItemData[32024] = 690; -- Merciless Gladiator's Ornamented Spaulders
_addon.setItemData[33726] = 690; -- Vengeful Gladiator's Ornamented Spaulders
_addon.setItemData[35063] = 690; -- Brutal Gladiator's Ornamented Spaulders

_addon.itemSetData[693] = {
    name = "Grand Marshal's Redemption",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[31630] = 693; -- Grand Marshal's Ornamented Chestplate
_addon.setItemData[31631] = 693; -- Grand Marshal's Ornamented Gloves
_addon.setItemData[31632] = 693; -- Grand Marshal's Ornamented Headguard
_addon.setItemData[31633] = 693; -- Grand Marshal's Ornamented Leggings
_addon.setItemData[31634] = 693; -- Grand Marshal's Ornamented Spaulders

_addon.itemSetData[694] = {
    name = "High Warlord's Redemption",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[31635] = 694; -- High Warlord's Ornamented Chestplate
_addon.setItemData[31636] = 694; -- High Warlord's Ornamented Gloves
_addon.setItemData[31637] = 694; -- High Warlord's Ornamented Headguard
_addon.setItemData[31638] = 694; -- High Warlord's Ornamented Leggings
_addon.setItemData[31639] = 694; -- High Warlord's Ornamented Spaulders

_addon.itemSetData[767] = {
    name = "Gladiator's Redemption",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[40898] = 767; -- Savage Gladiator's Ornamented Chestguard
_addon.setItemData[40904] = 767; -- Hateful Gladiator's Ornamented Chestguard
_addon.setItemData[40905] = 767; -- Deadly Gladiator's Ornamented Chestguard
_addon.setItemData[40907] = 767; -- Furious Gladiator's Ornamented Chestguard
_addon.setItemData[40910] = 767; -- Relentless Gladiator's Ornamented Chestguard
_addon.setItemData[42635] = 767; -- Gladiator's Ornamented Chestguard
_addon.setItemData[51468] = 767; -- Wrathful Gladiator's Ornamented Chestguard
_addon.setItemData[40918] = 767; -- Savage Gladiator's Ornamented Gloves
_addon.setItemData[40925] = 767; -- Hateful Gladiator's Ornamented Gloves
_addon.setItemData[40926] = 767; -- Deadly Gladiator's Ornamented Gloves
_addon.setItemData[40927] = 767; -- Furious Gladiator's Ornamented Gloves
_addon.setItemData[40928] = 767; -- Relentless Gladiator's Ornamented Gloves
_addon.setItemData[42636] = 767; -- Gladiator's Ornamented Gloves
_addon.setItemData[51469] = 767; -- Wrathful Gladiator's Ornamented Gloves
_addon.setItemData[40930] = 767; -- Savage Gladiator's Ornamented Headcover
_addon.setItemData[40931] = 767; -- Hateful Gladiator's Ornamented Headcover
_addon.setItemData[40932] = 767; -- Deadly Gladiator's Ornamented Headcover
_addon.setItemData[40933] = 767; -- Furious Gladiator's Ornamented Headcover
_addon.setItemData[40934] = 767; -- Relentless Gladiator's Ornamented Headcover
_addon.setItemData[42637] = 767; -- Gladiator's Ornamented Headcover
_addon.setItemData[51470] = 767; -- Wrathful Gladiator's Ornamented Headcover
_addon.setItemData[40936] = 767; -- Savage Gladiator's Ornamented Legplates
_addon.setItemData[40937] = 767; -- Hateful Gladiator's Ornamented Legplates
_addon.setItemData[40938] = 767; -- Deadly Gladiator's Ornamented Legplates
_addon.setItemData[40939] = 767; -- Furious Gladiator's Ornamented Legplates
_addon.setItemData[40940] = 767; -- Relentless Gladiator's Ornamented Legplates
_addon.setItemData[42638] = 767; -- Gladiator's Ornamented Legplates
_addon.setItemData[51471] = 767; -- Wrathful Gladiator's Ornamented Legplates
_addon.setItemData[40960] = 767; -- Savage Gladiator's Ornamented Spaulders
_addon.setItemData[40961] = 767; -- Hateful Gladiator's Ornamented Spaulders
_addon.setItemData[40962] = 767; -- Deadly Gladiator's Ornamented Spaulders
_addon.setItemData[40963] = 767; -- Furious Gladiator's Ornamented Spaulders
_addon.setItemData[40964] = 767; -- Relentless Gladiator's Ornamented Spaulders
_addon.setItemData[42639] = 767; -- Gladiator's Ornamented Spaulders
_addon.setItemData[51473] = 767; -- Wrathful Gladiator's Ornamented Spaulders

_addon.itemSetData[789] = {
    name = "Redemption Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 131072, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[39633] = 789; -- Heroes' Redemption Chestpiece
_addon.setItemData[40574] = 789; -- Valorous Redemption Chestpiece
_addon.setItemData[43794] = 789; -- Redemption Chestpiece
_addon.setItemData[39634] = 789; -- Heroes' Redemption Gauntlets
_addon.setItemData[40575] = 789; -- Valorous Redemption Gauntlets
_addon.setItemData[43796] = 789; -- Redemption Gauntlets
_addon.setItemData[39635] = 789; -- Heroes' Redemption Helm
_addon.setItemData[40576] = 789; -- Valorous Redemption Helm
_addon.setItemData[43801] = 789; -- Redemption Helm
_addon.setItemData[39636] = 789; -- Heroes' Redemption Legplates
_addon.setItemData[40577] = 789; -- Valorous Redemption Legplates
_addon.setItemData[43803] = 789; -- Redemption Legplates
_addon.setItemData[39637] = 789; -- Heroes' Redemption Shoulderplates
_addon.setItemData[40578] = 789; -- Valorous Redemption Shoulderplates
_addon.setItemData[43805] = 789; -- Redemption Shoulderplates

_addon.itemSetData[790] = {
    name = "Redemption Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {2097152, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[39632] = 790; -- Heroes' Redemption Gloves
_addon.setItemData[40570] = 790; -- Valorous Redemption Gloves
_addon.setItemData[43797] = 790; -- Redemption Gloves
_addon.setItemData[39630] = 790; -- Heroes' Redemption Greaves
_addon.setItemData[40572] = 790; -- Valorous Redemption Greaves
_addon.setItemData[43798] = 790; -- Redemption Greaves
_addon.setItemData[39628] = 790; -- Heroes' Redemption Headpiece
_addon.setItemData[40571] = 790; -- Valorous Redemption Headpiece
_addon.setItemData[43800] = 790; -- Redemption Headpiece
_addon.setItemData[39631] = 790; -- Heroes' Redemption Spaulders
_addon.setItemData[40573] = 790; -- Valorous Redemption Spaulders
_addon.setItemData[43806] = 790; -- Redemption Spaulders
_addon.setItemData[39629] = 790; -- Heroes' Redemption Tunic
_addon.setItemData[40569] = 790; -- Valorous Redemption Tunic
_addon.setItemData[43807] = 790; -- Redemption Tunic

_addon.itemSetData[791] = {
    name = "Redemption Plate",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 262144, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[39638] = 791; -- Heroes' Redemption Breastplate
_addon.setItemData[40579] = 791; -- Valorous Redemption Breastplate
_addon.setItemData[43793] = 791; -- Redemption Breastplate
_addon.setItemData[39640] = 791; -- Heroes' Redemption Faceguard
_addon.setItemData[40581] = 791; -- Valorous Redemption Faceguard
_addon.setItemData[43795] = 791; -- Redemption Faceguard
_addon.setItemData[39639] = 791; -- Heroes' Redemption Handguards
_addon.setItemData[40580] = 791; -- Valorous Redemption Handguards
_addon.setItemData[43799] = 791; -- Redemption Handguards
_addon.setItemData[39641] = 791; -- Heroes' Redemption Legguards
_addon.setItemData[40583] = 791; -- Valorous Redemption Legguards
_addon.setItemData[43802] = 791; -- Redemption Legguards
_addon.setItemData[39642] = 791; -- Heroes' Redemption Shoulderguards
_addon.setItemData[40584] = 791; -- Valorous Redemption Shoulderguards
_addon.setItemData[43804] = 791; -- Redemption Shoulderguards

_addon.itemSetData[820] = {
    name = "Aegis Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 130, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {0, 163840, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[45375] = 820; -- Valorous Aegis Battleplate
_addon.setItemData[46154] = 820; -- Conqueror's Aegis Battleplate
_addon.setItemData[46213] = 820; -- Aegis Battleplate
_addon.setItemData[45376] = 820; -- Valorous Aegis Gauntlets
_addon.setItemData[46155] = 820; -- Conqueror's Aegis Gauntlets
_addon.setItemData[46216] = 820; -- Aegis Gauntlets
_addon.setItemData[45377] = 820; -- Valorous Aegis Helm
_addon.setItemData[46156] = 820; -- Conqueror's Aegis Helm
_addon.setItemData[46221] = 820; -- Aegis Helm
_addon.setItemData[45379] = 820; -- Valorous Aegis Legplates
_addon.setItemData[46153] = 820; -- Conqueror's Aegis Legplates
_addon.setItemData[46224] = 820; -- Aegis Legplates
_addon.setItemData[45380] = 820; -- Valorous Aegis Shoulderplates
_addon.setItemData[46152] = 820; -- Conqueror's Aegis Shoulderplates
_addon.setItemData[46226] = 820; -- Aegis Shoulderplates

_addon.itemSetData[821] = {
    name = "Aegis Plate",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 536872960, 0, 0},
            value = 10,
        },
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 2048, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[45381] = 821; -- Valorous Aegis Breastplate
_addon.setItemData[46173] = 821; -- Conqueror's Aegis Breastplate
_addon.setItemData[46214] = 821; -- Aegis Breastplate
_addon.setItemData[45382] = 821; -- Valorous Aegis Faceguard
_addon.setItemData[46175] = 821; -- Conqueror's Aegis Faceguard
_addon.setItemData[46215] = 821; -- Aegis Faceguard
_addon.setItemData[45383] = 821; -- Valorous Aegis Handguards
_addon.setItemData[46174] = 821; -- Conqueror's Aegis Handguards
_addon.setItemData[46219] = 821; -- Aegis Handguards
_addon.setItemData[45384] = 821; -- Valorous Aegis Legguards
_addon.setItemData[46176] = 821; -- Conqueror's Aegis Legguards
_addon.setItemData[46222] = 821; -- Aegis Legguards
_addon.setItemData[45385] = 821; -- Valorous Aegis Shoulderguards
_addon.setItemData[46177] = 821; -- Conqueror's Aegis Shoulderguards
_addon.setItemData[46225] = 821; -- Aegis Shoulderguards

_addon.itemSetData[877] = {
    name = "Turalyon's Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {536870912, 0, 0, 0},
            value = 1,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48602] = 877; -- Turalyon's Battleplate of Conquest
_addon.setItemData[48607] = 877; -- Turalyon's Battleplate of Triumph
_addon.setItemData[48616] = 877; -- Turalyon's Battleplate of Triumph
_addon.setItemData[48915] = 877; -- Turalyon's Battleplate 
_addon.setItemData[48603] = 877; -- Turalyon's Gauntlets of Conquest
_addon.setItemData[48608] = 877; -- Turalyon's Gauntlets of Triumph
_addon.setItemData[48615] = 877; -- Turalyon's Gauntlets of Triumph
_addon.setItemData[48916] = 877; -- Turalyon's Gauntlets 
_addon.setItemData[48604] = 877; -- Turalyon's Helm of Conquest
_addon.setItemData[48609] = 877; -- Turalyon's Helm of Triumph
_addon.setItemData[48614] = 877; -- Turalyon's Helm of Triumph
_addon.setItemData[48917] = 877; -- Turalyon's Helm 
_addon.setItemData[48605] = 877; -- Turalyon's Legplates of Conquest
_addon.setItemData[48610] = 877; -- Turalyon's Legplates of Triumph
_addon.setItemData[48613] = 877; -- Turalyon's Legplates of Triumph
_addon.setItemData[48918] = 877; -- Turalyon's Legplates 
_addon.setItemData[48606] = 877; -- Turalyon's Shoulderplates of Conquest
_addon.setItemData[48611] = 877; -- Turalyon's Shoulderplates of Triumph
_addon.setItemData[48612] = 877; -- Turalyon's Shoulderplates of Triumph
_addon.setItemData[48919] = 877; -- Turalyon's Shoulderplates 

_addon.itemSetData[878] = {
    name = "Liadrin's Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {536870912, 0, 0, 0},
            value = 1,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48617] = 878; -- Liadrin's Battleplate of Triumph
_addon.setItemData[48626] = 878; -- Liadrin's Battleplate of Triumph
_addon.setItemData[48631] = 878; -- Liadrin's Battleplate of Conquest
_addon.setItemData[48910] = 878; -- Liadrin's Battleplate 
_addon.setItemData[48618] = 878; -- Liadrin's Gauntlets of Triumph
_addon.setItemData[48625] = 878; -- Liadrin's Gauntlets of Triumph
_addon.setItemData[48630] = 878; -- Liadrin's Gauntlets of Conquest
_addon.setItemData[48911] = 878; -- Liadrin's Gauntlets 
_addon.setItemData[48619] = 878; -- Liadrin's Helm of Triumph
_addon.setItemData[48624] = 878; -- Liadrin's Helm of Triumph
_addon.setItemData[48629] = 878; -- Liadrin's Helm of Conquest
_addon.setItemData[48912] = 878; -- Liadrin's Helm 
_addon.setItemData[48620] = 878; -- Liadrin's Legplates of Triumph
_addon.setItemData[48623] = 878; -- Liadrin's Legplates of Triumph
_addon.setItemData[48628] = 878; -- Liadrin's Legplates of Conquest
_addon.setItemData[48913] = 878; -- Liadrin's Legplates 
_addon.setItemData[48621] = 878; -- Liadrin's Shoulderplates of Triumph
_addon.setItemData[48622] = 878; -- Liadrin's Shoulderplates of Triumph
_addon.setItemData[48627] = 878; -- Liadrin's Shoulderplates of Conquest
_addon.setItemData[48914] = 878; -- Liadrin's Shoulderplates 

_addon.itemSetData[879] = {
    name = "Turalyon's Plate",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 262144, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48632] = 879; -- Turalyon's Breastplate of Conquest
_addon.setItemData[48641] = 879; -- Turalyon's Breastplate of Triumph
_addon.setItemData[48642] = 879; -- Turalyon's Breastplate of Triumph
_addon.setItemData[48927] = 879; -- Turalyon's Breastplate 
_addon.setItemData[48634] = 879; -- Turalyon's Faceguard of Conquest
_addon.setItemData[48639] = 879; -- Turalyon's Faceguard of Triumph
_addon.setItemData[48644] = 879; -- Turalyon's Faceguard of Triumph
_addon.setItemData[48928] = 879; -- Turalyon's Faceguard 
_addon.setItemData[48633] = 879; -- Turalyon's Handguards of Conquest
_addon.setItemData[48640] = 879; -- Turalyon's Handguards of Triumph
_addon.setItemData[48643] = 879; -- Turalyon's Handguards of Triumph
_addon.setItemData[48929] = 879; -- Turalyon's Handguards 
_addon.setItemData[48635] = 879; -- Turalyon's Legguards of Conquest
_addon.setItemData[48638] = 879; -- Turalyon's Legguards of Triumph
_addon.setItemData[48645] = 879; -- Turalyon's Legguards of Triumph
_addon.setItemData[48930] = 879; -- Turalyon's Legguards 
_addon.setItemData[48636] = 879; -- Turalyon's Shoulderguards of Conquest
_addon.setItemData[48637] = 879; -- Turalyon's Shoulderguards of Triumph
_addon.setItemData[48646] = 879; -- Turalyon's Shoulderguards of Triumph
_addon.setItemData[48931] = 879; -- Turalyon's Shoulderguards 

_addon.itemSetData[880] = {
    name = "Liadrin's Plate",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 262144, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48651] = 880; -- Liadrin's Breastplate of Triumph
_addon.setItemData[48652] = 880; -- Liadrin's Breastplate of Conquest
_addon.setItemData[48657] = 880; -- Liadrin's Breastplate of Triumph
_addon.setItemData[48922] = 880; -- Liadrin's Breastplate 
_addon.setItemData[48649] = 880; -- Liadrin's Faceguard of Triumph
_addon.setItemData[48654] = 880; -- Liadrin's Faceguard of Conquest
_addon.setItemData[48659] = 880; -- Liadrin's Faceguard of Triumph
_addon.setItemData[48923] = 880; -- Liadrin's Faceguard 
_addon.setItemData[48650] = 880; -- Liadrin's Handguards of Triumph
_addon.setItemData[48653] = 880; -- Liadrin's Handguards of Conquest
_addon.setItemData[48658] = 880; -- Liadrin's Handguards of Triumph
_addon.setItemData[48924] = 880; -- Liadrin's Handguards 
_addon.setItemData[48648] = 880; -- Liadrin's Legguards of Triumph
_addon.setItemData[48655] = 880; -- Liadrin's Legguards of Conquest
_addon.setItemData[48660] = 880; -- Liadrin's Legguards of Triumph
_addon.setItemData[48925] = 880; -- Liadrin's Legguards 
_addon.setItemData[48647] = 880; -- Liadrin's Shoulderguards of Triumph
_addon.setItemData[48656] = 880; -- Liadrin's Shoulderguards of Conquest
_addon.setItemData[48661] = 880; -- Liadrin's Shoulderguards of Triumph
_addon.setItemData[48926] = 880; -- Liadrin's Shoulderguards 

_addon.itemSetData[899] = {
    name = "Lightsworn Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SCRIPT_SET_VALUE,
            value = 35,
            scriptKey = "Pala_T10_DI,"
        },
    }
}
_addon.setItemData[50865] = 899; -- Lightsworn Spaulders
_addon.setItemData[51166] = 899; -- Sanctified Lightsworn Spaulders
_addon.setItemData[51273] = 899; -- Sanctified Lightsworn Spaulders
_addon.setItemData[51726] = 899; -- Lightsworn Spaulders
_addon.setItemData[50866] = 899; -- Lightsworn Greaves
_addon.setItemData[51168] = 899; -- Sanctified Lightsworn Greaves
_addon.setItemData[51271] = 899; -- Sanctified Lightsworn Greaves
_addon.setItemData[51725] = 899; -- Lightsworn Greaves
_addon.setItemData[50867] = 899; -- Lightsworn Headpiece
_addon.setItemData[51167] = 899; -- Sanctified Lightsworn Headpiece
_addon.setItemData[51272] = 899; -- Sanctified Lightsworn Headpiece
_addon.setItemData[51724] = 899; -- Lightsworn Headpiece
_addon.setItemData[50868] = 899; -- Lightsworn Gloves
_addon.setItemData[51169] = 899; -- Sanctified Lightsworn Gloves
_addon.setItemData[51270] = 899; -- Sanctified Lightsworn Gloves
_addon.setItemData[51723] = 899; -- Lightsworn Gloves
_addon.setItemData[50869] = 899; -- Lightsworn Tunic
_addon.setItemData[51165] = 899; -- Sanctified Lightsworn Tunic
_addon.setItemData[51274] = 899; -- Sanctified Lightsworn Tunic
_addon.setItemData[51722] = 899; -- Lightsworn Tunic

_addon.itemSetData[900] = {
    name = "Lightsworn Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {41943040, 536872960, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 2048, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[50324] = 900; -- Lightsworn Shoulderplates
_addon.setItemData[51160] = 900; -- Sanctified Lightsworn Shoulderplates
_addon.setItemData[51279] = 900; -- Sanctified Lightsworn Shoulderplates
_addon.setItemData[51721] = 900; -- Lightsworn Shoulderplates
_addon.setItemData[50325] = 900; -- Lightsworn Legplates
_addon.setItemData[51161] = 900; -- Sanctified Lightsworn Legplates
_addon.setItemData[51278] = 900; -- Sanctified Lightsworn Legplates
_addon.setItemData[51720] = 900; -- Lightsworn Legplates
_addon.setItemData[50326] = 900; -- Lightsworn Helmet
_addon.setItemData[51162] = 900; -- Sanctified Lightsworn Helmet
_addon.setItemData[51277] = 900; -- Sanctified Lightsworn Helmet
_addon.setItemData[51719] = 900; -- Lightsworn Helmet
_addon.setItemData[50327] = 900; -- Lightsworn Gauntlets
_addon.setItemData[51163] = 900; -- Sanctified Lightsworn Gauntlets
_addon.setItemData[51276] = 900; -- Sanctified Lightsworn Gauntlets
_addon.setItemData[51718] = 900; -- Lightsworn Gauntlets
_addon.setItemData[50328] = 900; -- Lightsworn Battleplate
_addon.setItemData[51164] = 900; -- Sanctified Lightsworn Battleplate
_addon.setItemData[51275] = 900; -- Sanctified Lightsworn Battleplate
_addon.setItemData[51717] = 900; -- Lightsworn Battleplate

_addon.itemSetData[901] = {
    name = "Lightsworn Plate",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 262144, 0, 0},
            value = 20,
        },
    }
}
_addon.setItemData[50860] = 901; -- Lightsworn Shoulderguards
_addon.setItemData[51170] = 901; -- Sanctified Lightsworn Shoulderguards
_addon.setItemData[51269] = 901; -- Sanctified Lightsworn Shoulderguards
_addon.setItemData[51731] = 901; -- Lightsworn Shoulderguards
_addon.setItemData[50861] = 901; -- Lightsworn Legguards
_addon.setItemData[51171] = 901; -- Sanctified Lightsworn Legguards
_addon.setItemData[51268] = 901; -- Sanctified Lightsworn Legguards
_addon.setItemData[51730] = 901; -- Lightsworn Legguards
_addon.setItemData[50862] = 901; -- Lightsworn Faceguard
_addon.setItemData[51173] = 901; -- Sanctified Lightsworn Faceguard
_addon.setItemData[51266] = 901; -- Sanctified Lightsworn Faceguard
_addon.setItemData[51729] = 901; -- Lightsworn Faceguard
_addon.setItemData[50863] = 901; -- Lightsworn Handguards
_addon.setItemData[51172] = 901; -- Sanctified Lightsworn Handguards
_addon.setItemData[51267] = 901; -- Sanctified Lightsworn Handguards
_addon.setItemData[51728] = 901; -- Lightsworn Handguards
_addon.setItemData[50864] = 901; -- Lightsworn Chestguard
_addon.setItemData[51174] = 901; -- Sanctified Lightsworn Chestguard
_addon.setItemData[51265] = 901; -- Sanctified Lightsworn Chestguard
_addon.setItemData[51727] = 901; -- Lightsworn Chestguard


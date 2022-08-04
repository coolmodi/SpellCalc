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
            type = _addon.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {8388608, 0, 0, 0},
            value = 23590,
        },
    }
}
_addon.setItemData[16952] = 217;
_addon.setItemData[16951] = 217;
_addon.setItemData[16958] = 217;
_addon.setItemData[16955] = 217;
_addon.setItemData[16956] = 217;
_addon.setItemData[16954] = 217;
_addon.setItemData[16957] = 217;
_addon.setItemData[16953] = 217;

_addon.itemSetData[506] = {
    name = "Battlegear of Eternal Justice",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_MANARESTORE,
            affectSpell = {8388608},
            value = 20,
        },
    }
}
_addon.setItemData[21397] = 506;
_addon.setItemData[21395] = 506;
_addon.setItemData[21396] = 506;

_addon.itemSetData[625] = {
    name = "Justicar Armor",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 2048, 0, 0},
            value = 10,
        },
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 2048, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 64, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[29066] = 625;
_addon.setItemData[29068] = 625;
_addon.setItemData[29067] = 625;
_addon.setItemData[29069] = 625;
_addon.setItemData[29070] = 625;

_addon.itemSetData[626] = {
    name = "Justicar Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 512, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[29071] = 626;
_addon.setItemData[29073] = 626;
_addon.setItemData[29072] = 626;
_addon.setItemData[29074] = 626;
_addon.setItemData[29075] = 626;

_addon.itemSetData[628] = {
    name = "Crystalforge Armor",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {8, 0, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[30123] = 628;
_addon.setItemData[30125] = 628;
_addon.setItemData[30124] = 628;
_addon.setItemData[30126] = 628;
_addon.setItemData[30127] = 628;

_addon.itemSetData[679] = {
    name = "Lightbringer Armor",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {32, 0, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[30991] = 679;
_addon.setItemData[30987] = 679;
_addon.setItemData[30985] = 679;
_addon.setItemData[30995] = 679;
_addon.setItemData[30998] = 679;
_addon.setItemData[34488] = 679;
_addon.setItemData[34433] = 679;
_addon.setItemData[34560] = 679;

_addon.itemSetData[680] = {
    name = "Lightbringer Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 128, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[30990] = 680;
_addon.setItemData[30982] = 680;
_addon.setItemData[30993] = 680;
_addon.setItemData[30997] = 680;
_addon.setItemData[30989] = 680;
_addon.setItemData[34561] = 680;
_addon.setItemData[34431] = 680;
_addon.setItemData[34485] = 680;

_addon.itemSetData[681] = {
    name = "Lightbringer Raiment",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1073741824, 0, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-2147483648, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[30992] = 681;
_addon.setItemData[30983] = 681;
_addon.setItemData[30988] = 681;
_addon.setItemData[30994] = 681;
_addon.setItemData[30996] = 681;
_addon.setItemData[34432] = 681;
_addon.setItemData[34487] = 681;
_addon.setItemData[34559] = 681;

_addon.itemSetData[690] = {
    name = "Gladiator's Redemption",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[31613] = 690;
_addon.setItemData[31614] = 690;
_addon.setItemData[31616] = 690;
_addon.setItemData[31618] = 690;
_addon.setItemData[31619] = 690;

_addon.itemSetData[693] = {
    name = "Grand Marshal's Redemption",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[31630] = 693;
_addon.setItemData[31631] = 693;
_addon.setItemData[31632] = 693;
_addon.setItemData[31633] = 693;
_addon.setItemData[31634] = 693;

_addon.itemSetData[694] = {
    name = "High Warlord's Redemption",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[31635] = 694;
_addon.setItemData[31636] = 694;
_addon.setItemData[31637] = 694;
_addon.setItemData[31638] = 694;
_addon.setItemData[31639] = 694;

_addon.itemSetData[767] = {
    name = "Gladiator's Redemption",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[42635] = 767;
_addon.setItemData[42636] = 767;
_addon.setItemData[42637] = 767;
_addon.setItemData[42638] = 767;
_addon.setItemData[42639] = 767;

_addon.itemSetData[789] = {
    name = "Redemption Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 131072, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[43794] = 789;
_addon.setItemData[43796] = 789;
_addon.setItemData[43801] = 789;
_addon.setItemData[43803] = 789;
_addon.setItemData[43805] = 789;

_addon.itemSetData[790] = {
    name = "Redemption Regalia",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {2097152, 65536, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[43797] = 790;
_addon.setItemData[43798] = 790;
_addon.setItemData[43800] = 790;
_addon.setItemData[43806] = 790;
_addon.setItemData[43807] = 790;

_addon.itemSetData[791] = {
    name = "Redemption Plate",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 262144, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[43793] = 791;
_addon.setItemData[43795] = 791;
_addon.setItemData[43799] = 791;
_addon.setItemData[43802] = 791;
_addon.setItemData[43804] = 791;

_addon.itemSetData[820] = {
    name = "Aegis Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 130, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {0, 163840, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[46213] = 820;
_addon.setItemData[46216] = 820;
_addon.setItemData[46221] = 820;
_addon.setItemData[46224] = 820;
_addon.setItemData[46226] = 820;

_addon.itemSetData[821] = {
    name = "Aegis Plate",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 536872960, 0, 0},
            value = 10,
        },
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 2048, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[46214] = 821;
_addon.setItemData[46215] = 821;
_addon.setItemData[46219] = 821;
_addon.setItemData[46222] = 821;
_addon.setItemData[46225] = 821;

_addon.itemSetData[877] = {
    name = "Turalyon's Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {536870912, 0, 0, 0},
            value = 1,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48915] = 877;
_addon.setItemData[48916] = 877;
_addon.setItemData[48917] = 877;
_addon.setItemData[48918] = 877;
_addon.setItemData[48919] = 877;

_addon.itemSetData[878] = {
    name = "Liadrin's Battlegear",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {536870912, 0, 0, 0},
            value = 1,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48910] = 878;
_addon.setItemData[48911] = 878;
_addon.setItemData[48912] = 878;
_addon.setItemData[48913] = 878;
_addon.setItemData[48914] = 878;

_addon.itemSetData[879] = {
    name = "Turalyon's Plate",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 262144, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48927] = 879;
_addon.setItemData[48928] = 879;
_addon.setItemData[48929] = 879;
_addon.setItemData[48930] = 879;
_addon.setItemData[48931] = 879;

_addon.itemSetData[880] = {
    name = "Liadrin's Plate",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 262144, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48922] = 880;
_addon.setItemData[48923] = 880;
_addon.setItemData[48924] = 880;
_addon.setItemData[48925] = 880;
_addon.setItemData[48926] = 880;

_addon.itemSetData[900] = {
    name = "Lightsworn Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {41943040, 536872960, 0, 0},
            value = 10,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 2048, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[51721] = 900;
_addon.setItemData[51720] = 900;
_addon.setItemData[51719] = 900;
_addon.setItemData[51718] = 900;
_addon.setItemData[51717] = 900;

_addon.itemSetData[901] = {
    name = "Lightsworn Plate",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 262144, 0, 0},
            value = 20,
        },
    }
}
_addon.setItemData[51731] = 901;
_addon.setItemData[51730] = 901;
_addon.setItemData[51729] = 901;
_addon.setItemData[51728] = 901;
_addon.setItemData[51727] = 901;


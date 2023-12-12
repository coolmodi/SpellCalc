-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.itemSetData[202] = {
    name = "Vestments of Prophecy",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {2048, 0, 0, 0},
            value = -100,
        },
        {
            need = 8,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {512, 0, 0, 0},
            value = 25,
        },
    }
}
_addon.setItemData[16811] = 202; -- Boots of Prophecy
_addon.setItemData[16813] = 202; -- Circlet of Prophecy
_addon.setItemData[16817] = 202; -- Girdle of Prophecy
_addon.setItemData[16812] = 202; -- Gloves of Prophecy
_addon.setItemData[16814] = 202; -- Pants of Prophecy
_addon.setItemData[16816] = 202; -- Mantle of Prophecy
_addon.setItemData[16815] = 202; -- Robes of Prophecy
_addon.setItemData[16819] = 202; -- Vambraces of Prophecy

_addon.itemSetData[211] = {
    name = "Vestments of Transcendence",
    effects = {
        {
            need = 8,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {4096, 0, 0, 0},
            value = 22009,
        },
    }
}
_addon.setItemData[16925] = 211; -- Belt of Transcendence
_addon.setItemData[16926] = 211; -- Bindings of Transcendence
_addon.setItemData[16919] = 211; -- Boots of Transcendence
_addon.setItemData[16921] = 211; -- Halo of Transcendence
_addon.setItemData[16920] = 211; -- Handguards of Transcendence
_addon.setItemData[16922] = 211; -- Leggings of Transcendence
_addon.setItemData[16924] = 211; -- Pauldrons of Transcendence
_addon.setItemData[16923] = 211; -- Robes of Transcendence

_addon.itemSetData[507] = {
    name = "Garments of the Oracle",
    effects = {
        {
            need = 5,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = 3000,
        },
    }
}
_addon.setItemData[21349] = 507; -- Footwraps of the Oracle
_addon.setItemData[21350] = 507; -- Mantle of the Oracle
_addon.setItemData[21348] = 507; -- Tiara of the Oracle
_addon.setItemData[21352] = 507; -- Trousers of the Oracle
_addon.setItemData[21351] = 507; -- Vestments of the Oracle

_addon.itemSetData[508] = {
    name = "Finery of Infinite Wisdom",
    effects = {
        {
            need = 3,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {32768, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[21410] = 508; -- Gavel of Infinite Wisdom
_addon.setItemData[21411] = 508; -- Ring of Infinite Wisdom
_addon.setItemData[21412] = 508; -- Shroud of Infinite Wisdom

_addon.itemSetData[663] = {
    name = "Incarnate Raiment",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
            affectSpell = {512, 0, 0, 0},
            value = 37563,
        },
    }
}
_addon.setItemData[29055] = 663; -- Handwraps of the Incarnate
_addon.setItemData[29049] = 663; -- Light-Collar of the Incarnate
_addon.setItemData[29054] = 663; -- Light-Mantle of the Incarnate
_addon.setItemData[29050] = 663; -- Robes of the Incarnate
_addon.setItemData[29053] = 663; -- Trousers of the Incarnate

_addon.itemSetData[664] = {
    name = "Incarnate Regalia",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {128, 0, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[29057] = 664; -- Gloves of the Incarnate
_addon.setItemData[29059] = 664; -- Leggings of the Incarnate
_addon.setItemData[29056] = 664; -- Shroud of the Incarnate
_addon.setItemData[29058] = 664; -- Soul-Collar of the Incarnate
_addon.setItemData[29060] = 664; -- Soul-Mantle of the Incarnate

_addon.itemSetData[665] = {
    name = "Avatar Raiment",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.BOOLEAN_BITFLAG_SET,
            value = 1,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = 3000,
        },
    }
}
_addon.setItemData[30153] = 665; -- Breeches of the Avatar
_addon.setItemData[30152] = 665; -- Cowl of the Avatar
_addon.setItemData[30151] = 665; -- Gloves of the Avatar
_addon.setItemData[30154] = 665; -- Mantle of the Avatar
_addon.setItemData[30150] = 665; -- Vestments of the Avatar

_addon.itemSetData[666] = {
    name = "Avatar Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_MANARESTORE,
            affectSpell = {49848464, 1042},
            value = 9,
        },
    }
}
_addon.setItemData[30160] = 666; -- Handguards of the Avatar
_addon.setItemData[30161] = 666; -- Hood of the Avatar
_addon.setItemData[30162] = 666; -- Leggings of the Avatar
_addon.setItemData[30159] = 666; -- Shroud of the Avatar
_addon.setItemData[30163] = 666; -- Wings of the Avatar

_addon.itemSetData[674] = {
    name = "Absolution Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {32768, 0, 0, 0},
            value = 3000,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {8192, 0, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[31061] = 674; -- Handguards of Absolution
_addon.setItemData[31064] = 674; -- Hood of Absolution
_addon.setItemData[31067] = 674; -- Leggings of Absolution
_addon.setItemData[31070] = 674; -- Shoulderpads of Absolution
_addon.setItemData[31065] = 674; -- Shroud of Absolution
_addon.setItemData[34434] = 674; -- Bracers of Absolution
_addon.setItemData[34528] = 674; -- Cord of Absolution
_addon.setItemData[34563] = 674; -- Treads of Absolution

_addon.itemSetData[675] = {
    name = "Vestments of Absolution",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {4096, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31068] = 675; -- Breeches of Absolution
_addon.setItemData[31063] = 675; -- Cowl of Absolution
_addon.setItemData[31060] = 675; -- Gloves of Absolution
_addon.setItemData[31069] = 675; -- Mantle of Absolution
_addon.setItemData[31066] = 675; -- Vestments of Absolution
_addon.setItemData[34562] = 675; -- Boots of Absolution
_addon.setItemData[34527] = 675; -- Belt of Absolution
_addon.setItemData[34435] = 675; -- Cuffs of Absolution

_addon.itemSetData[804] = {
    name = "Regalia of Faith",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_CHARGES,
            affectSpell = {0, 32, 0, 0},
            value = 1,
        },
    }
}
_addon.setItemData[39514] = 804; -- Heroes' Crown of Faith
_addon.setItemData[40447] = 804; -- Valorous Crown of Faith
_addon.setItemData[43733] = 804; -- Crown of Faith
_addon.setItemData[39519] = 804; -- Heroes' Gloves of Faith
_addon.setItemData[40445] = 804; -- Valorous Gloves of Faith
_addon.setItemData[43782] = 804; -- Gloves of Faith
_addon.setItemData[39517] = 804; -- Heroes' Leggings of Faith
_addon.setItemData[40448] = 804; -- Valorous Leggings of Faith
_addon.setItemData[43784] = 804; -- Leggings of Faith
_addon.setItemData[39515] = 804; -- Heroes' Robe of Faith
_addon.setItemData[40449] = 804; -- Valorous Robe of Faith
_addon.setItemData[43808] = 804; -- Robe of Faith
_addon.setItemData[39518] = 804; -- Heroes' Shoulderpads of Faith
_addon.setItemData[40450] = 804; -- Valorous Shoulderpads of Faith
_addon.setItemData[43810] = 804; -- Shoulderpads of Faith

_addon.itemSetData[805] = {
    name = "Garb of Faith",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {0, 2, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[39521] = 805; -- Heroes' Circlet of Faith
_addon.setItemData[40456] = 805; -- Valorous Circlet of Faith
_addon.setItemData[43732] = 805; -- Circlet of Faith
_addon.setItemData[39530] = 805; -- Heroes' Handwraps of Faith
_addon.setItemData[40454] = 805; -- Valorous Handwraps of Faith
_addon.setItemData[43783] = 805; -- Handwraps of Faith
_addon.setItemData[39529] = 805; -- Heroes' Mantle of Faith
_addon.setItemData[40459] = 805; -- Valorous Mantle of Faith
_addon.setItemData[43785] = 805; -- Mantle of Faith
_addon.setItemData[39528] = 805; -- Heroes' Pants of Faith
_addon.setItemData[40457] = 805; -- Valorous Pants of Faith
_addon.setItemData[43786] = 805; -- Pants of Faith
_addon.setItemData[39523] = 805; -- Heroes' Raiments of Faith
_addon.setItemData[40458] = 805; -- Valorous Raiments of Faith
_addon.setItemData[43792] = 805; -- Raiments of Faith

_addon.itemSetData[832] = {
    name = "Sanctification Garb",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {33554432, 0, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[45391] = 832; -- Valorous Circlet of Sanctification
_addon.setItemData[46172] = 832; -- Conqueror's Circlet of Sanctification
_addon.setItemData[46230] = 832; -- Circlet of Sanctification
_addon.setItemData[45392] = 832; -- Valorous Handwraps of Sanctification
_addon.setItemData[46163] = 832; -- Conqueror's Handwraps of Sanctification
_addon.setItemData[46248] = 832; -- Handwraps of Sanctification
_addon.setItemData[45393] = 832; -- Valorous Mantle of Sanctification
_addon.setItemData[46165] = 832; -- Conqueror's Mantle of Sanctification
_addon.setItemData[46255] = 832; -- Mantle of Sanctification
_addon.setItemData[45394] = 832; -- Valorous Pants of Sanctification
_addon.setItemData[46170] = 832; -- Conqueror's Pants of Sanctification
_addon.setItemData[46256] = 832; -- Pants of Sanctification
_addon.setItemData[45395] = 832; -- Valorous Raiments of Sanctification
_addon.setItemData[46168] = 832; -- Conqueror's Raiments of Sanctification
_addon.setItemData[46257] = 832; -- Raiments of Sanctification

_addon.itemSetData[833] = {
    name = "Sanctification Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {512, 0, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[45386] = 833; -- Valorous Cowl of Sanctification
_addon.setItemData[46197] = 833; -- Conqueror's Cowl of Sanctification
_addon.setItemData[46231] = 833; -- Cowl of Sanctification
_addon.setItemData[45387] = 833; -- Valorous Gloves of Sanctification
_addon.setItemData[46188] = 833; -- Conqueror's Gloves of Sanctification
_addon.setItemData[46247] = 833; -- Gloves of Sanctification
_addon.setItemData[45388] = 833; -- Valorous Leggings of Sanctification
_addon.setItemData[46195] = 833; -- Conqueror's Leggings of Sanctification
_addon.setItemData[46254] = 833; -- Leggings of Sanctification
_addon.setItemData[45389] = 833; -- Valorous Robe of Sanctification
_addon.setItemData[46193] = 833; -- Conqueror's Robe of Sanctification
_addon.setItemData[46258] = 833; -- Robe of Sanctification
_addon.setItemData[45390] = 833; -- Valorous Shoulderpads of Sanctification
_addon.setItemData[46190] = 833; -- Conqueror's Shoulderpads of Sanctification
_addon.setItemData[46259] = 833; -- Shoulderpads of Sanctification

_addon.itemSetData[847] = {
    name = "Velen's Raiment",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 32},
            value = 20,
        },
    }
}
_addon.setItemData[47914] = 847; -- Velen's Cowl of Conquest
_addon.setItemData[47984] = 847; -- Velen's Cowl of Triumph
_addon.setItemData[48035] = 847; -- Velen's Cowl of Triumph
_addon.setItemData[48745] = 847; -- Velen's Cowl 
_addon.setItemData[47982] = 847; -- Velen's Gloves of Conquest
_addon.setItemData[47983] = 847; -- Velen's Gloves of Triumph
_addon.setItemData[48037] = 847; -- Velen's Gloves of Triumph
_addon.setItemData[48746] = 847; -- Velen's Gloves 
_addon.setItemData[47980] = 847; -- Velen's Leggings of Conquest
_addon.setItemData[47985] = 847; -- Velen's Leggings of Triumph
_addon.setItemData[48033] = 847; -- Velen's Leggings of Triumph
_addon.setItemData[48747] = 847; -- Velen's Leggings 
_addon.setItemData[47936] = 847; -- Velen's Robe of Conquest
_addon.setItemData[47986] = 847; -- Velen's Robe of Triumph
_addon.setItemData[48031] = 847; -- Velen's Robe of Triumph
_addon.setItemData[48748] = 847; -- Velen's Robe 
_addon.setItemData[47981] = 847; -- Velen's Shoulderpads of Conquest
_addon.setItemData[47987] = 847; -- Velen's Shoulderpads of Triumph
_addon.setItemData[48029] = 847; -- Velen's Shoulderpads of Triumph
_addon.setItemData[48749] = 847; -- Velen's Shoulderpads 

_addon.itemSetData[848] = {
    name = "Zabra's Raiment",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 32},
            value = 20,
        },
    }
}
_addon.setItemData[48058] = 848; -- Zabra's Cowl of Triumph
_addon.setItemData[48065] = 848; -- Zabra's Cowl of Triumph
_addon.setItemData[48068] = 848; -- Zabra's Cowl of Conquest
_addon.setItemData[48750] = 848; -- Zabra's Cowl 
_addon.setItemData[48057] = 848; -- Zabra's Gloves of Triumph
_addon.setItemData[48066] = 848; -- Zabra's Gloves of Triumph
_addon.setItemData[48067] = 848; -- Zabra's Gloves of Conquest
_addon.setItemData[48751] = 848; -- Zabra's Gloves 
_addon.setItemData[48059] = 848; -- Zabra's Leggings of Triumph
_addon.setItemData[48064] = 848; -- Zabra's Leggings of Triumph
_addon.setItemData[48069] = 848; -- Zabra's Leggings of Conquest
_addon.setItemData[48752] = 848; -- Zabra's Leggings 
_addon.setItemData[48060] = 848; -- Zabra's Robe of Triumph
_addon.setItemData[48063] = 848; -- Zabra's Robe of Triumph
_addon.setItemData[48070] = 848; -- Zabra's Robe of Conquest
_addon.setItemData[48753] = 848; -- Zabra's Robe 
_addon.setItemData[48061] = 848; -- Zabra's Shoulderpads of Triumph
_addon.setItemData[48062] = 848; -- Zabra's Shoulderpads of Triumph
_addon.setItemData[48071] = 848; -- Zabra's Shoulderpads of Conquest
_addon.setItemData[48754] = 848; -- Zabra's Shoulderpads 

_addon.itemSetData[849] = {
    name = "Velen's Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {0, 1024, 0, 0},
            value = 6000,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48073] = 849; -- Velen's Circlet of Conquest
_addon.setItemData[48078] = 849; -- Velen's Circlet of Triumph
_addon.setItemData[48085] = 849; -- Velen's Circlet of Triumph
_addon.setItemData[48755] = 849; -- Velen's Circlet 
_addon.setItemData[48072] = 849; -- Velen's Handwraps of Conquest
_addon.setItemData[48077] = 849; -- Velen's Handwraps of Triumph
_addon.setItemData[48086] = 849; -- Velen's Handwraps of Triumph
_addon.setItemData[48756] = 849; -- Velen's Handwraps 
_addon.setItemData[48076] = 849; -- Velen's Mantle of Conquest
_addon.setItemData[48081] = 849; -- Velen's Mantle of Triumph
_addon.setItemData[48082] = 849; -- Velen's Mantle of Triumph
_addon.setItemData[48757] = 849; -- Velen's Mantle 
_addon.setItemData[48074] = 849; -- Velen's Pants of Conquest
_addon.setItemData[48079] = 849; -- Velen's Pants of Triumph
_addon.setItemData[48084] = 849; -- Velen's Pants of Triumph
_addon.setItemData[48758] = 849; -- Velen's Pants 
_addon.setItemData[48075] = 849; -- Velen's Raiments of Conquest
_addon.setItemData[48080] = 849; -- Velen's Raiments of Triumph
_addon.setItemData[48083] = 849; -- Velen's Raiments of Triumph
_addon.setItemData[48759] = 849; -- Velen's Raiments 

_addon.itemSetData[850] = {
    name = "Zabra's Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {0, 1024, 0, 0},
            value = 6000,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {8388608, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[48088] = 850; -- Zabra's Circlet of Triumph
_addon.setItemData[48095] = 850; -- Zabra's Circlet of Triumph
_addon.setItemData[48098] = 850; -- Zabra's Circlet of Conquest
_addon.setItemData[48760] = 850; -- Zabra's Circlet 
_addon.setItemData[48087] = 850; -- Zabra's Handwraps of Triumph
_addon.setItemData[48096] = 850; -- Zabra's Handwraps of Triumph
_addon.setItemData[48097] = 850; -- Zabra's Handwraps of Conquest
_addon.setItemData[48761] = 850; -- Zabra's Handwraps 
_addon.setItemData[48091] = 850; -- Zabra's Mantle of Triumph
_addon.setItemData[48092] = 850; -- Zabra's Mantle of Triumph
_addon.setItemData[48101] = 850; -- Zabra's Mantle of Conquest
_addon.setItemData[48762] = 850; -- Zabra's Mantle 
_addon.setItemData[48089] = 850; -- Zabra's Pants of Triumph
_addon.setItemData[48094] = 850; -- Zabra's Pants of Triumph
_addon.setItemData[48099] = 850; -- Zabra's Pants of Conquest
_addon.setItemData[48763] = 850; -- Zabra's Pants 
_addon.setItemData[48090] = 850; -- Zabra's Raiments of Triumph
_addon.setItemData[48093] = 850; -- Zabra's Raiments of Triumph
_addon.setItemData[48100] = 850; -- Zabra's Raiments of Conquest
_addon.setItemData[48764] = 850; -- Zabra's Raiments 

_addon.itemSetData[885] = {
    name = "Crimson Acolyte's Raiment",
    effects = {
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {1, 0, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {268435456, 0, 0, 0},
            value = 10,
        },
    }
}
_addon.setItemData[50769] = 885; -- Crimson Acolyte Leggings
_addon.setItemData[51177] = 885; -- Sanctified Crimson Acolyte Leggings
_addon.setItemData[51262] = 885; -- Sanctified Crimson Acolyte Leggings
_addon.setItemData[51732] = 885; -- Crimson Acolyte Leggings
_addon.setItemData[50768] = 885; -- Crimson Acolyte Robe
_addon.setItemData[51176] = 885; -- Sanctified Crimson Acolyte Robe
_addon.setItemData[51263] = 885; -- Sanctified Crimson Acolyte Robe
_addon.setItemData[51733] = 885; -- Crimson Acolyte Robe
_addon.setItemData[50767] = 885; -- Crimson Acolyte Shoulderpads
_addon.setItemData[51175] = 885; -- Sanctified Crimson Acolyte Shoulderpads
_addon.setItemData[51264] = 885; -- Sanctified Crimson Acolyte Shoulderpads
_addon.setItemData[51734] = 885; -- Crimson Acolyte Shoulderpads
_addon.setItemData[50766] = 885; -- Crimson Acolyte Gloves
_addon.setItemData[51179] = 885; -- Sanctified Crimson Acolyte Gloves
_addon.setItemData[51260] = 885; -- Sanctified Crimson Acolyte Gloves
_addon.setItemData[51735] = 885; -- Crimson Acolyte Gloves
_addon.setItemData[50765] = 885; -- Crimson Acolyte Hood
_addon.setItemData[51178] = 885; -- Sanctified Crimson Acolyte Hood
_addon.setItemData[51261] = 885; -- Sanctified Crimson Acolyte Hood
_addon.setItemData[51736] = 885; -- Crimson Acolyte Hood

_addon.itemSetData[886] = {
    name = "Crimson Acolyte's Regalia",
    effects = {
        {
            need = 2,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {33587200, 1024, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {0, 0, 64, 0},
            value = -510,
        },
        {
            need = 4,
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_TICKPERIOD,
            affectSpell = {0, 0, 64, 0},
            value = -170,
        },
    }
}
_addon.setItemData[50393] = 886; -- Crimson Acolyte Pants
_addon.setItemData[51181] = 886; -- Sanctified Crimson Acolyte Pants
_addon.setItemData[51258] = 886; -- Sanctified Crimson Acolyte Pants
_addon.setItemData[51741] = 886; -- Crimson Acolyte Pants
_addon.setItemData[50394] = 886; -- Crimson Acolyte Raiments
_addon.setItemData[51180] = 886; -- Sanctified Crimson Acolyte Raiments
_addon.setItemData[51259] = 886; -- Sanctified Crimson Acolyte Raiments
_addon.setItemData[51740] = 886; -- Crimson Acolyte Raiments
_addon.setItemData[50396] = 886; -- Crimson Acolyte Mantle
_addon.setItemData[51182] = 886; -- Sanctified Crimson Acolyte Mantle
_addon.setItemData[51257] = 886; -- Sanctified Crimson Acolyte Mantle
_addon.setItemData[51739] = 886; -- Crimson Acolyte Mantle
_addon.setItemData[50391] = 886; -- Crimson Acolyte Handwraps
_addon.setItemData[51183] = 886; -- Sanctified Crimson Acolyte Handwraps
_addon.setItemData[51256] = 886; -- Sanctified Crimson Acolyte Handwraps
_addon.setItemData[51738] = 886; -- Crimson Acolyte Handwraps
_addon.setItemData[50392] = 886; -- Crimson Acolyte Cowl
_addon.setItemData[51184] = 886; -- Sanctified Crimson Acolyte Cowl
_addon.setItemData[51255] = 886; -- Sanctified Crimson Acolyte Cowl
_addon.setItemData[51737] = 886; -- Crimson Acolyte Cowl


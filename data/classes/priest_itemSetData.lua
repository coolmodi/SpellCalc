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
_addon.setItemData[16811] = 202;
_addon.setItemData[16813] = 202;
_addon.setItemData[16817] = 202;
_addon.setItemData[16812] = 202;
_addon.setItemData[16814] = 202;
_addon.setItemData[16816] = 202;
_addon.setItemData[16815] = 202;
_addon.setItemData[16819] = 202;

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
_addon.setItemData[16925] = 211;
_addon.setItemData[16926] = 211;
_addon.setItemData[16919] = 211;
_addon.setItemData[16921] = 211;
_addon.setItemData[16920] = 211;
_addon.setItemData[16922] = 211;
_addon.setItemData[16924] = 211;
_addon.setItemData[16923] = 211;

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
_addon.setItemData[21349] = 507;
_addon.setItemData[21350] = 507;
_addon.setItemData[21348] = 507;
_addon.setItemData[21352] = 507;
_addon.setItemData[21351] = 507;

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
_addon.setItemData[21410] = 508;
_addon.setItemData[21411] = 508;
_addon.setItemData[21412] = 508;

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
_addon.setItemData[29055] = 663;
_addon.setItemData[29049] = 663;
_addon.setItemData[29054] = 663;
_addon.setItemData[29050] = 663;
_addon.setItemData[29053] = 663;

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
_addon.setItemData[29057] = 664;
_addon.setItemData[29059] = 664;
_addon.setItemData[29056] = 664;
_addon.setItemData[29058] = 664;
_addon.setItemData[29060] = 664;

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
_addon.setItemData[30153] = 665;
_addon.setItemData[30152] = 665;
_addon.setItemData[30151] = 665;
_addon.setItemData[30154] = 665;
_addon.setItemData[30150] = 665;

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
_addon.setItemData[30160] = 666;
_addon.setItemData[30161] = 666;
_addon.setItemData[30162] = 666;
_addon.setItemData[30159] = 666;
_addon.setItemData[30163] = 666;

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
_addon.setItemData[31061] = 674;
_addon.setItemData[31064] = 674;
_addon.setItemData[31067] = 674;
_addon.setItemData[31070] = 674;
_addon.setItemData[31065] = 674;
_addon.setItemData[34434] = 674;
_addon.setItemData[34528] = 674;
_addon.setItemData[34563] = 674;

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
_addon.setItemData[31068] = 675;
_addon.setItemData[31063] = 675;
_addon.setItemData[31060] = 675;
_addon.setItemData[31069] = 675;
_addon.setItemData[31066] = 675;
_addon.setItemData[34562] = 675;
_addon.setItemData[34527] = 675;
_addon.setItemData[34435] = 675;

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
_addon.setItemData[43733] = 804;
_addon.setItemData[43782] = 804;
_addon.setItemData[43784] = 804;
_addon.setItemData[43808] = 804;
_addon.setItemData[43810] = 804;

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
_addon.setItemData[43732] = 805;
_addon.setItemData[43783] = 805;
_addon.setItemData[43785] = 805;
_addon.setItemData[43786] = 805;
_addon.setItemData[43792] = 805;

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
_addon.setItemData[46230] = 832;
_addon.setItemData[46248] = 832;
_addon.setItemData[46255] = 832;
_addon.setItemData[46256] = 832;
_addon.setItemData[46257] = 832;

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
_addon.setItemData[46231] = 833;
_addon.setItemData[46247] = 833;
_addon.setItemData[46254] = 833;
_addon.setItemData[46258] = 833;
_addon.setItemData[46259] = 833;

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
_addon.setItemData[48745] = 847;
_addon.setItemData[48746] = 847;
_addon.setItemData[48747] = 847;
_addon.setItemData[48748] = 847;
_addon.setItemData[48749] = 847;

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
_addon.setItemData[48750] = 848;
_addon.setItemData[48751] = 848;
_addon.setItemData[48752] = 848;
_addon.setItemData[48753] = 848;
_addon.setItemData[48754] = 848;

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
_addon.setItemData[48755] = 849;
_addon.setItemData[48756] = 849;
_addon.setItemData[48757] = 849;
_addon.setItemData[48758] = 849;
_addon.setItemData[48759] = 849;

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
_addon.setItemData[48760] = 850;
_addon.setItemData[48761] = 850;
_addon.setItemData[48762] = 850;
_addon.setItemData[48763] = 850;
_addon.setItemData[48764] = 850;

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
_addon.setItemData[51732] = 885;
_addon.setItemData[51733] = 885;
_addon.setItemData[51734] = 885;
_addon.setItemData[51735] = 885;
_addon.setItemData[51736] = 885;

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
_addon.setItemData[51741] = 886;
_addon.setItemData[51740] = 886;
_addon.setItemData[51739] = 886;
_addon.setItemData[51738] = 886;
_addon.setItemData[51737] = 886;


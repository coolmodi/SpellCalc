-- GENERATED! DO NOT EDIT!

---@type AddonEnv
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
            type = _addon.EFFECT_TYPE.EARTHFURY_RETURN,
            value = 1,
        },
    }
}
_addon.setItemData[16838] = 207;
_addon.setItemData[16837] = 207;
_addon.setItemData[16840] = 207;
_addon.setItemData[16841] = 207;
_addon.setItemData[16844] = 207;
_addon.setItemData[16839] = 207;
_addon.setItemData[16842] = 207;
_addon.setItemData[16843] = 207;

_addon.itemSetData[216] = {
    name = "The Ten Storms",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {256, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[16944] = 216;
_addon.setItemData[16943] = 216;
_addon.setItemData[16950] = 216;
_addon.setItemData[16945] = 216;
_addon.setItemData[16948] = 216;
_addon.setItemData[16949] = 216;
_addon.setItemData[16947] = 216;
_addon.setItemData[16946] = 216;

_addon.itemSetData[301] = {
    name = "Champion's Earthshaker",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[16519] = 301;
_addon.setItemData[16518] = 301;
_addon.setItemData[16522] = 301;
_addon.setItemData[16523] = 301;
_addon.setItemData[16521] = 301;
_addon.setItemData[16524] = 301;

_addon.itemSetData[386] = {
    name = "Warlord's Earthshaker",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[16577] = 386;
_addon.setItemData[16578] = 386;
_addon.setItemData[16580] = 386;
_addon.setItemData[16573] = 386;
_addon.setItemData[16574] = 386;
_addon.setItemData[16579] = 386;

_addon.itemSetData[476] = {
    name = "Augur's Regalia",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {-2147483648, 0, 0, 0},
            value = 1,
        },
    }
}
_addon.setItemData[19609] = 476;
_addon.setItemData[19956] = 476;
_addon.setItemData[19830] = 476;
_addon.setItemData[19829] = 476;
_addon.setItemData[19828] = 476;

_addon.itemSetData[502] = {
    name = "Gift of the Gathering Storm",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {2, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[21400] = 502;
_addon.setItemData[21398] = 502;
_addon.setItemData[21399] = 502;

_addon.itemSetData[538] = {
    name = "Champion's Stormcaller",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[22857] = 538;
_addon.setItemData[22867] = 538;
_addon.setItemData[22876] = 538;
_addon.setItemData[22887] = 538;
_addon.setItemData[23259] = 538;
_addon.setItemData[23260] = 538;

_addon.itemSetData[603] = {
    name = "Grand Marshal's Thunderfist",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[28694] = 603;
_addon.setItemData[28695] = 603;
_addon.setItemData[28696] = 603;
_addon.setItemData[28697] = 603;
_addon.setItemData[28698] = 603;

_addon.itemSetData[604] = {
    name = "High Warlord's Thunderfist",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[28846] = 604;
_addon.setItemData[28847] = 604;
_addon.setItemData[28848] = 604;
_addon.setItemData[28849] = 604;
_addon.setItemData[28850] = 604;

_addon.itemSetData[633] = {
    name = "Cyclone Harness",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 16, 0, 0},
            value = 30,
        },
    }
}
_addon.setItemData[29038] = 633;
_addon.setItemData[29039] = 633;
_addon.setItemData[29040] = 633;
_addon.setItemData[29043] = 633;
_addon.setItemData[29042] = 633;

_addon.itemSetData[682] = {
    name = "Skyshatter Harness",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
            affectSpell = {0, 16, 0, 0},
            value = 100,
        },
    }
}
_addon.setItemData[31018] = 682;
_addon.setItemData[31011] = 682;
_addon.setItemData[31015] = 682;
_addon.setItemData[31021] = 682;
_addon.setItemData[31024] = 682;
_addon.setItemData[34567] = 682;
_addon.setItemData[34439] = 682;
_addon.setItemData[34545] = 682;

_addon.itemSetData[683] = {
    name = "Skyshatter Raiment",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
            affectSpell = {256, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31016] = 683;
_addon.setItemData[31007] = 683;
_addon.setItemData[31012] = 683;
_addon.setItemData[31019] = 683;
_addon.setItemData[31022] = 683;
_addon.setItemData[34543] = 683;
_addon.setItemData[34438] = 683;
_addon.setItemData[34565] = 683;

_addon.itemSetData[684] = {
    name = "Skyshatter Regalia",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
            affectSpell = {1, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31017] = 684;
_addon.setItemData[31008] = 684;
_addon.setItemData[31014] = 684;
_addon.setItemData[31020] = 684;
_addon.setItemData[31023] = 684;
_addon.setItemData[34542] = 684;
_addon.setItemData[34437] = 684;
_addon.setItemData[34566] = 684;

_addon.itemSetData[717] = {
    name = "Field Marshal's Earthshaker",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[29608] = 717;
_addon.setItemData[29606] = 717;
_addon.setItemData[29611] = 717;
_addon.setItemData[29609] = 717;
_addon.setItemData[29607] = 717;
_addon.setItemData[29610] = 717;

_addon.itemSetData[718] = {
    name = "Lieutenant Commander's Earthshaker",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[29599] = 718;
_addon.setItemData[29595] = 718;
_addon.setItemData[29597] = 718;
_addon.setItemData[29596] = 718;
_addon.setItemData[29598] = 718;
_addon.setItemData[29594] = 718;

_addon.itemSetData[746] = {
    name = "Seer's Mail Battlegear",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[35386] = 746;
_addon.setItemData[35387] = 746;
_addon.setItemData[35388] = 746;
_addon.setItemData[35389] = 746;
_addon.setItemData[35390] = 746;


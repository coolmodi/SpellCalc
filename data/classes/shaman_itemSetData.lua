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
        [1] = {
            need = 5,
            effect = {
                effect = _addon.EFFECT_TYPE.EARTHFURY_RETURN,
                value = 1,
            }
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
        [1] = {
            need = 3,
            effect = {
                effect = _addon.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
                affectSpell = {256, 0, 0, 0},
                value = 30,
            }
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
        [1] = {
            need = 4,
            effect = {
                effect = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {-1877999616, 0, 0, 0},
                value = 2,
            }
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
        [1] = {
            need = 3,
            effect = {
                effect = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {-1877999616, 0, 0, 0},
                value = 2,
            }
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
        [1] = {
            need = 2,
            effect = {
                effect = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
                value = 4,
            }
        },
        [2] = {
            need = 3,
            effect = {
                effect = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {-2147483648, 0, 0, 0},
                value = 1,
            }
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
        [1] = {
            need = 3,
            effect = {
                effect = _addon.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
                affectSpell = {2, 0, 0, 0},
                value = 5,
            }
        },
    }
}
_addon.setItemData[21400] = 502;
_addon.setItemData[21398] = 502;
_addon.setItemData[21399] = 502;

_addon.itemSetData[527] = {
    name = "The Earthshatterer",
    effects = {
        [1] = {
            need = 8,
            effect = {
                effect = _addon.EFFECT_TYPE.CONDITION_TRIGGER,
                value = _addon.BUFF_CONDITIONS.EARTHSHATTERER_8PCS,
            }
        },
    }
}
_addon.setItemData[22468] = 527;
_addon.setItemData[22470] = 527;
_addon.setItemData[22469] = 527;
_addon.setItemData[22466] = 527;
_addon.setItemData[22465] = 527;
_addon.setItemData[22467] = 527;
_addon.setItemData[22464] = 527;
_addon.setItemData[22471] = 527;
_addon.setItemData[23065] = 527;

_addon.itemSetData[538] = {
    name = "Champion's Stormcaller",
    effects = {
        [1] = {
            need = 4,
            effect = {
                effect = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {-1877999616, 0, 0, 0},
                value = 2,
            }
        },
    }
}
_addon.setItemData[22857] = 538;
_addon.setItemData[22867] = 538;
_addon.setItemData[22876] = 538;
_addon.setItemData[22887] = 538;
_addon.setItemData[23259] = 538;
_addon.setItemData[23260] = 538;


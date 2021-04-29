-- GENERATED! DO NOT EDIT!

---@type AddonEnv
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
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {256, 0, 0, 0},
            value = 4,
        },
    }
}
_addon.setItemData[16828] = 205;
_addon.setItemData[16829] = 205;
_addon.setItemData[16830] = 205;
_addon.setItemData[16833] = 205;
_addon.setItemData[16831] = 205;
_addon.setItemData[16834] = 205;
_addon.setItemData[16835] = 205;
_addon.setItemData[16836] = 205;

_addon.itemSetData[214] = {
    name = "Stormrage Raiment",
    effects = {
        {
            need = 8,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {16, 0, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[16903] = 214;
_addon.setItemData[16898] = 214;
_addon.setItemData[16904] = 214;
_addon.setItemData[16897] = 214;
_addon.setItemData[16900] = 214;
_addon.setItemData[16899] = 214;
_addon.setItemData[16901] = 214;
_addon.setItemData[16902] = 214;

_addon.itemSetData[479] = {
    name = "Haruspex's Garb",
    effects = {
        {
            need = 5,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {4, 0, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[19613] = 479;
_addon.setItemData[19955] = 479;
_addon.setItemData[19840] = 479;
_addon.setItemData[19839] = 479;
_addon.setItemData[19838] = 479;

_addon.itemSetData[521] = {
    name = "Dreamwalker Raiment",
    effects = {
        {
            need = 8,
            type = _addon.EFFECT_TYPE.ILLUMINATION,
            value = 30,
        },
    }
}
_addon.setItemData[22492] = 521;
_addon.setItemData[22494] = 521;
_addon.setItemData[22493] = 521;
_addon.setItemData[22490] = 521;
_addon.setItemData[22489] = 521;
_addon.setItemData[22491] = 521;
_addon.setItemData[22488] = 521;
_addon.setItemData[22495] = 521;
_addon.setItemData[23064] = 521;

_addon.itemSetData[641] = {
    name = "Nordrassil Harness",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 256, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[30222] = 641;
_addon.setItemData[30223] = 641;
_addon.setItemData[30228] = 641;
_addon.setItemData[30229] = 641;
_addon.setItemData[30230] = 641;

_addon.itemSetData[642] = {
    name = "Nordrassil Raiment",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = 6,
        },
    }
}
_addon.setItemData[30216] = 642;
_addon.setItemData[30217] = 642;
_addon.setItemData[30219] = 642;
_addon.setItemData[30220] = 642;
_addon.setItemData[30221] = 642;

_addon.itemSetData[676] = {
    name = "Thunderheart Harness",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {8388608, 1048576, 0, 0},
            value = 15,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {8388608, 0, 0, 0},
            value = 15,
        },
    }
}
_addon.setItemData[31042] = 676;
_addon.setItemData[31034] = 676;
_addon.setItemData[31039] = 676;
_addon.setItemData[31044] = 676;
_addon.setItemData[31048] = 676;
_addon.setItemData[34556] = 676;
_addon.setItemData[34444] = 676;
_addon.setItemData[34573] = 676;

_addon.itemSetData[677] = {
    name = "Thunderheart Regalia",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {2, 0, 0, 0},
            value = 3,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {4, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31043] = 677;
_addon.setItemData[31035] = 677;
_addon.setItemData[31040] = 677;
_addon.setItemData[31046] = 677;
_addon.setItemData[31049] = 677;
_addon.setItemData[34572] = 677;
_addon.setItemData[34446] = 677;
_addon.setItemData[34555] = 677;

_addon.itemSetData[678] = {
    name = "Thunderheart Raiment",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {32, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[31041] = 678;
_addon.setItemData[31032] = 678;
_addon.setItemData[31037] = 678;
_addon.setItemData[31045] = 678;
_addon.setItemData[31047] = 678;
_addon.setItemData[34571] = 678;
_addon.setItemData[34445] = 678;
_addon.setItemData[34554] = 678;


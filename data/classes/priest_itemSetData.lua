-- GENERATED! DO NOT EDIT!

---@type AddonEnv
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
            type = _addon.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {2048, 0, 0, 0},
            value = -100,
        },
        {
            need = 8,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
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
            type = _addon.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
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
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = 3,
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
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
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
            type = _addon.EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL,
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
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {128, 0, 0, 0},
            value = 5,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[30153] = 665;
_addon.setItemData[30152] = 665;
_addon.setItemData[30151] = 665;
_addon.setItemData[30154] = 665;
_addon.setItemData[30150] = 665;

_addon.itemSetData[674] = {
    name = "Absolution Regalia",
    effects = {
        {
            need = 2,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {32768, 0, 0, 0},
            value = 3,
        },
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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


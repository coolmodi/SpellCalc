-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

_addon.itemSetData[481] = {
    name = "Demoniac's Threads",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {2, 0, 0, 0},
            value = 2,
        },
    }
}
_addon.setItemData[19605] = 481;
_addon.setItemData[19957] = 481;
_addon.setItemData[19848] = 481;
_addon.setItemData[19849] = 481;
_addon.setItemData[20033] = 481;

_addon.itemSetData[499] = {
    name = "Doomcaller's Attire",
    effects = {
        {
            need = 3,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {4, 0, 0, 0},
            value = 5,
        },
    }
}
_addon.setItemData[21337] = 499;
_addon.setItemData[21338] = 499;
_addon.setItemData[21335] = 499;
_addon.setItemData[21334] = 499;
_addon.setItemData[21336] = 499;

_addon.itemSetData[529] = {
    name = "Plagueheart Raiment",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {2, 0, 0, 0},
            value = 12,
        },
    }
}
_addon.setItemData[22510] = 529;
_addon.setItemData[22511] = 529;
_addon.setItemData[22506] = 529;
_addon.setItemData[22509] = 529;
_addon.setItemData[22505] = 529;
_addon.setItemData[22504] = 529;
_addon.setItemData[22508] = 529;
_addon.setItemData[22507] = 529;
_addon.setItemData[23063] = 529;

_addon.itemSetData[644] = {
    name = "Oblivion Raiment",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {0, 32768, 0, 0},
            value = 180,
        },
    }
}
_addon.setItemData[27537] = 644;
_addon.setItemData[28415] = 644;
_addon.setItemData[28232] = 644;
_addon.setItemData[27778] = 644;
_addon.setItemData[27948] = 644;

_addon.itemSetData[645] = {
    name = "Voidheart Raiment",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {6, 0, 0, 0},
            value = 3,
        },
    }
}
_addon.setItemData[28963] = 645;
_addon.setItemData[28968] = 645;
_addon.setItemData[28966] = 645;
_addon.setItemData[28967] = 645;
_addon.setItemData[28964] = 645;

_addon.itemSetData[670] = {
    name = "Malefic Raiment",
    effects = {
        {
            need = 4,
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1, 64, 0, 0},
            value = 6,
        },
    }
}
_addon.setItemData[31050] = 670;
_addon.setItemData[31051] = 670;
_addon.setItemData[31053] = 670;
_addon.setItemData[31054] = 670;
_addon.setItemData[31052] = 670;
_addon.setItemData[34564] = 670;
_addon.setItemData[34436] = 670;
_addon.setItemData[34541] = 670;


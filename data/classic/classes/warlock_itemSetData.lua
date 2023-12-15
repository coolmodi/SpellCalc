-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

_addon.itemSetData[345] = {
    name = "Champion'sThreads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 4,
        },
    }
}
_addon.setItemData[17576] = 345; -- BloodGuard'sDreadweaveBoots
_addon.setItemData[17577] = 345; -- BloodGuard'sDreadweaveGloves
_addon.setItemData[17572] = 345; -- Legionnaire'sDreadweaveRobe
_addon.setItemData[17571] = 345; -- Legionnaire'sDreadweaveLeggings
_addon.setItemData[17570] = 345; -- Champion'sDreadweaveHood
_addon.setItemData[17573] = 345; -- Champion'sDreadweaveShoulders

_addon.itemSetData[346] = {
    name = "LieutenantCommander'sThreads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 4,
        },
    }
}
_addon.setItemData[17562] = 346; -- Knight-Lieutenant'sDreadweaveBoots
_addon.setItemData[17564] = 346; -- Knight-Lieutenant'sDreadweaveGloves
_addon.setItemData[17568] = 346; -- Knight-Captain'sDreadweaveRobe
_addon.setItemData[17567] = 346; -- Knight-Captain'sDreadweaveLeggings
_addon.setItemData[17569] = 346; -- LieutenantCommander'sDreadweaveMantle
_addon.setItemData[17566] = 346; -- LieutenantCommander'sHeadguard

_addon.itemSetData[391] = {
    name = "Warlord'sThreads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 3,
        },
    }
}
_addon.setItemData[17586] = 391; -- General'sDreadweaveBoots
_addon.setItemData[17588] = 391; -- General'sDreadweaveGloves
_addon.setItemData[17593] = 391; -- General'sDreadweavePants
_addon.setItemData[17591] = 391; -- Warlord'sDreadweaveHood
_addon.setItemData[17590] = 391; -- Warlord'sDreadweaveMantle
_addon.setItemData[17592] = 391; -- Warlord'sDreadweaveRobe

_addon.itemSetData[392] = {
    name = "FieldMarshal'sThreads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 3,
        },
    }
}
_addon.setItemData[17581] = 392; -- FieldMarshal'sDreadweaveRobe
_addon.setItemData[17580] = 392; -- FieldMarshal'sDreadweaveShoulders
_addon.setItemData[17583] = 392; -- Marshal'sDreadweaveBoots
_addon.setItemData[17584] = 392; -- Marshal'sDreadweaveGloves
_addon.setItemData[17579] = 392; -- Marshal'sDreadweaveLeggings
_addon.setItemData[17578] = 392; -- FieldMarshal'sCoronal

_addon.itemSetData[481] = {
    name = "Demoniac'sThreads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {2, 0, 0, 0},
            value = 2,
            need = 3,
        },
    }
}
_addon.setItemData[19605] = 481; -- Kezan'sUnstoppableTaint
_addon.setItemData[19957] = 481; -- Hazza'rah'sCharmofDestruction
_addon.setItemData[19848] = 481; -- ZandalarDemoniac'sWraps
_addon.setItemData[19849] = 481; -- ZandalarDemoniac'sMantle
_addon.setItemData[20033] = 481; -- ZandalarDemoniac'sRobe

_addon.itemSetData[499] = {
    name = "Doomcaller'sAttire",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {4, 0, 0, 0},
            value = 5,
            need = 3,
        },
    }
}
_addon.setItemData[21337] = 499; -- Doomcaller'sCirclet
_addon.setItemData[21338] = 499; -- Doomcaller'sFootwraps
_addon.setItemData[21335] = 499; -- Doomcaller'sMantle
_addon.setItemData[21334] = 499; -- Doomcaller'sRobes
_addon.setItemData[21336] = 499; -- Doomcaller'sTrousers

_addon.itemSetData[541] = {
    name = "Champion'sDreadgear",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 4,
        },
    }
}
_addon.setItemData[22865] = 541; -- BloodGuard'sDreadweaveHandwraps
_addon.setItemData[22855] = 541; -- BloodGuard'sDreadweaveWalkers
_addon.setItemData[23255] = 541; -- Champion'sDreadweaveCowl
_addon.setItemData[23256] = 541; -- Champion'sDreadweaveSpaulders
_addon.setItemData[22881] = 541; -- Legionnaire'sDreadweaveLegguards
_addon.setItemData[22884] = 541; -- Legionnaire'sDreadweaveTunic

_addon.itemSetData[547] = {
    name = "LieutenantCommander'sDreadgear",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 4,
        },
    }
}
_addon.setItemData[23296] = 547; -- Knight-Captain'sDreadweaveLegguards
_addon.setItemData[23297] = 547; -- Knight-Captain'sDreadweaveTunic
_addon.setItemData[23282] = 547; -- Knight-Lieutenant'sDreadweaveHandwraps
_addon.setItemData[23283] = 547; -- Knight-Lieutenant'sDreadweaveWalkers
_addon.setItemData[23310] = 547; -- LieutenantCommander'sDreadweaveCowl
_addon.setItemData[23311] = 547; -- LieutenantCommander'sDreadweaveSpaulders


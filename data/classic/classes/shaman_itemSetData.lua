-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.itemSetData[207] = {
    name = "TheEarthfury",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.EARTHFURY_RETURN,
            value = 1,
            need = 5,
        },
    }
}
_addon.setItemData[16838] = 207; -- EarthfuryBelt
_addon.setItemData[16837] = 207; -- EarthfuryBoots
_addon.setItemData[16840] = 207; -- EarthfuryBracers
_addon.setItemData[16841] = 207; -- EarthfuryVestments
_addon.setItemData[16844] = 207; -- EarthfuryEpaulets
_addon.setItemData[16839] = 207; -- EarthfuryGauntlets
_addon.setItemData[16842] = 207; -- EarthfuryHelmet
_addon.setItemData[16843] = 207; -- EarthfuryLegguards

_addon.itemSetData[216] = {
    name = "TheTenStorms",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {256, 0, 0, 0},
            value = 30,
            need = 3,
        },
    }
}
_addon.setItemData[16944] = 216; -- BeltofTenStorms
_addon.setItemData[16943] = 216; -- BracersofTenStorms
_addon.setItemData[16950] = 216; -- BreastplateofTenStorms
_addon.setItemData[16945] = 216; -- EpauletsofTenStorms
_addon.setItemData[16948] = 216; -- GauntletsofTenStorms
_addon.setItemData[16949] = 216; -- GreavesofTenStorms
_addon.setItemData[16947] = 216; -- HelmetofTenStorms
_addon.setItemData[16946] = 216; -- LegplatesofTenStorms

_addon.itemSetData[301] = {
    name = "Champion'sEarthshaker",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
            need = 4,
        },
    }
}
_addon.setItemData[16519] = 301; -- BloodGuard'sMailGrips
_addon.setItemData[16518] = 301; -- BloodGuard'sMailWalkers
_addon.setItemData[16522] = 301; -- Legionnaire'sMailChestpiece
_addon.setItemData[16523] = 301; -- Legionnaire'sMailLeggings
_addon.setItemData[16521] = 301; -- Champion'sMailHelm
_addon.setItemData[16524] = 301; -- Champion'sMailShoulders

_addon.itemSetData[386] = {
    name = "Warlord'sEarthshaker",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
            need = 3,
        },
    }
}
_addon.setItemData[16577] = 386; -- Warlord'sMailArmor
_addon.setItemData[16578] = 386; -- Warlord'sMailHelm
_addon.setItemData[16580] = 386; -- Warlord'sMailSpaulders
_addon.setItemData[16573] = 386; -- General'sMailBoots
_addon.setItemData[16574] = 386; -- General'sMailGauntlets
_addon.setItemData[16579] = 386; -- General'sMailLeggings

_addon.itemSetData[476] = {
    name = "Augur'sRegalia",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {-2147483648, 0, 0, 0},
            value = 1000,
            need = 3,
        },
    }
}
_addon.setItemData[19609] = 476; -- UnmarredVisionofVoodress
_addon.setItemData[19956] = 476; -- Wushoolay'sCharmofSpirits
_addon.setItemData[19830] = 476; -- ZandalarAugur'sBracers
_addon.setItemData[19829] = 476; -- ZandalarAugur'sBelt
_addon.setItemData[19828] = 476; -- ZandalarAugur'sHauberk

_addon.itemSetData[502] = {
    name = "GiftoftheGatheringStorm",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {2, 0, 0, 0},
            value = 5,
            need = 3,
        },
    }
}
_addon.setItemData[21400] = 502; -- CloakoftheGatheringStorm
_addon.setItemData[21398] = 502; -- HammeroftheGatheringStorm
_addon.setItemData[21399] = 502; -- RingoftheGatheringStorm

_addon.itemSetData[538] = {
    name = "Champion'sStormcaller",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
            need = 4,
        },
    }
}
_addon.setItemData[22857] = 538; -- BloodGuard'sMailGreaves
_addon.setItemData[22867] = 538; -- BloodGuard'sMailVices
_addon.setItemData[22876] = 538; -- Legionnaire'sMailHauberk
_addon.setItemData[22887] = 538; -- Legionnaire'sMailLegguards
_addon.setItemData[23259] = 538; -- Champion'sMailHeadguard
_addon.setItemData[23260] = 538; -- Champion'sMailPauldrons


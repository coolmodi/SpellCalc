-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.itemSetData[207] = {
    name = "The Earthfury",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.EARTHFURY_RETURN,
            value = 1,
            need = 5,
        },
    }
}
_addon.setItemData[16838] = 207; -- Earthfury Belt
_addon.setItemData[16837] = 207; -- Earthfury Boots
_addon.setItemData[16840] = 207; -- Earthfury Bracers
_addon.setItemData[16841] = 207; -- Earthfury Vestments
_addon.setItemData[16844] = 207; -- Earthfury Epaulets
_addon.setItemData[16839] = 207; -- Earthfury Gauntlets
_addon.setItemData[16842] = 207; -- Earthfury Helmet
_addon.setItemData[16843] = 207; -- Earthfury Legguards

_addon.itemSetData[216] = {
    name = "The Ten Storms",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {256, 0, 0, 0},
            value = 30,
            need = 3,
        },
    }
}
_addon.setItemData[16944] = 216; -- Belt of Ten Storms
_addon.setItemData[16943] = 216; -- Bracers of Ten Storms
_addon.setItemData[16950] = 216; -- Breastplate of Ten Storms
_addon.setItemData[16945] = 216; -- Epaulets of Ten Storms
_addon.setItemData[16948] = 216; -- Gauntlets of Ten Storms
_addon.setItemData[16949] = 216; -- Greaves of Ten Storms
_addon.setItemData[16947] = 216; -- Helmet of Ten Storms
_addon.setItemData[16946] = 216; -- Legplates of Ten Storms

_addon.itemSetData[301] = {
    name = "Champion's Earthshaker",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
            need = 4,
        },
    }
}
_addon.setItemData[16519] = 301; -- Blood Guard's Mail Grips
_addon.setItemData[16518] = 301; -- Blood Guard's Mail Walkers
_addon.setItemData[16522] = 301; -- Legionnaire's Mail Chestpiece
_addon.setItemData[16523] = 301; -- Legionnaire's Mail Leggings
_addon.setItemData[16521] = 301; -- Champion's Mail Helm
_addon.setItemData[16524] = 301; -- Champion's Mail Shoulders

_addon.itemSetData[386] = {
    name = "Warlord's Earthshaker",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
            need = 3,
        },
    }
}
_addon.setItemData[16577] = 386; -- Warlord's Mail Armor
_addon.setItemData[16578] = 386; -- Warlord's Mail Helm
_addon.setItemData[16580] = 386; -- Warlord's Mail Spaulders
_addon.setItemData[16573] = 386; -- General's Mail Boots
_addon.setItemData[16574] = 386; -- General's Mail Gauntlets
_addon.setItemData[16579] = 386; -- General's Mail Leggings

_addon.itemSetData[476] = {
    name = "Augur's Regalia",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 4,
            need = 2,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {-2147483648, 0, 0, 0},
            value = 1000,
            need = 3,
        },
    }
}
_addon.setItemData[19609] = 476; -- Unmarred Vision of Voodress
_addon.setItemData[19956] = 476; -- Wushoolay's Charm of Spirits
_addon.setItemData[19830] = 476; -- Zandalar Augur's Bracers
_addon.setItemData[19829] = 476; -- Zandalar Augur's Belt
_addon.setItemData[19828] = 476; -- Zandalar Augur's Hauberk

_addon.itemSetData[502] = {
    name = "Gift of the Gathering Storm",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
            affectSpell = {2, 0, 0, 0},
            value = 5,
            need = 3,
        },
    }
}
_addon.setItemData[21400] = 502; -- Cloak of the Gathering Storm
_addon.setItemData[21398] = 502; -- Hammer of the Gathering Storm
_addon.setItemData[21399] = 502; -- Ring of the Gathering Storm

_addon.itemSetData[538] = {
    name = "Champion's Stormcaller",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999616, 0, 0, 0},
            value = 2,
            need = 4,
        },
    }
}
_addon.setItemData[22857] = 538; -- Blood Guard's Mail Greaves
_addon.setItemData[22867] = 538; -- Blood Guard's Mail Vices
_addon.setItemData[22876] = 538; -- Legionnaire's Mail Hauberk
_addon.setItemData[22887] = 538; -- Legionnaire's Mail Legguards
_addon.setItemData[23259] = 538; -- Champion's Mail Headguard
_addon.setItemData[23260] = 538; -- Champion's Mail Pauldrons


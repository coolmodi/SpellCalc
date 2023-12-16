-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

_addon.itemSetData[345] = {
    name = "Champion's Threads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 4,
        },
    }
}
_addon.setItemData[17576] = 345; -- Blood Guard's Dreadweave Boots
_addon.setItemData[17577] = 345; -- Blood Guard's Dreadweave Gloves
_addon.setItemData[17572] = 345; -- Legionnaire's Dreadweave Robe
_addon.setItemData[17571] = 345; -- Legionnaire's Dreadweave Leggings
_addon.setItemData[17570] = 345; -- Champion's Dreadweave Hood
_addon.setItemData[17573] = 345; -- Champion's Dreadweave Shoulders

_addon.itemSetData[346] = {
    name = "Lieutenant Commander's Threads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 4,
        },
    }
}
_addon.setItemData[17562] = 346; -- Knight-Lieutenant's Dreadweave Boots
_addon.setItemData[17564] = 346; -- Knight-Lieutenant's Dreadweave Gloves
_addon.setItemData[17568] = 346; -- Knight-Captain's Dreadweave Robe
_addon.setItemData[17567] = 346; -- Knight-Captain's Dreadweave Leggings
_addon.setItemData[17569] = 346; -- Lieutenant Commander's Dreadweave Mantle
_addon.setItemData[17566] = 346; -- Lieutenant Commander's Headguard

_addon.itemSetData[391] = {
    name = "Warlord's Threads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 3,
        },
    }
}
_addon.setItemData[17586] = 391; -- General's Dreadweave Boots
_addon.setItemData[17588] = 391; -- General's Dreadweave Gloves
_addon.setItemData[17593] = 391; -- General's Dreadweave Pants
_addon.setItemData[17591] = 391; -- Warlord's Dreadweave Hood
_addon.setItemData[17590] = 391; -- Warlord's Dreadweave Mantle
_addon.setItemData[17592] = 391; -- Warlord's Dreadweave Robe

_addon.itemSetData[392] = {
    name = "Field Marshal's Threads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 3,
        },
    }
}
_addon.setItemData[17581] = 392; -- Field Marshal's Dreadweave Robe
_addon.setItemData[17580] = 392; -- Field Marshal's Dreadweave Shoulders
_addon.setItemData[17583] = 392; -- Marshal's Dreadweave Boots
_addon.setItemData[17584] = 392; -- Marshal's Dreadweave Gloves
_addon.setItemData[17579] = 392; -- Marshal's Dreadweave Leggings
_addon.setItemData[17578] = 392; -- Field Marshal's Coronal

_addon.itemSetData[481] = {
    name = "Demoniac's Threads",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {2, 0, 0, 0},
            value = 2,
            need = 3,
        },
    }
}
_addon.setItemData[19605] = 481; -- Kezan's Unstoppable Taint
_addon.setItemData[19957] = 481; -- Hazza'rah's Charm of Destruction
_addon.setItemData[19848] = 481; -- Zandalar Demoniac's Wraps
_addon.setItemData[19849] = 481; -- Zandalar Demoniac's Mantle
_addon.setItemData[20033] = 481; -- Zandalar Demoniac's Robe

_addon.itemSetData[499] = {
    name = "Doomcaller's Attire",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {4, 0, 0, 0},
            value = 5,
            need = 3,
        },
    }
}
_addon.setItemData[21337] = 499; -- Doomcaller's Circlet
_addon.setItemData[21338] = 499; -- Doomcaller's Footwraps
_addon.setItemData[21335] = 499; -- Doomcaller's Mantle
_addon.setItemData[21334] = 499; -- Doomcaller's Robes
_addon.setItemData[21336] = 499; -- Doomcaller's Trousers

_addon.itemSetData[541] = {
    name = "Champion's Dreadgear",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 4,
        },
    }
}
_addon.setItemData[22865] = 541; -- Blood Guard's Dreadweave Handwraps
_addon.setItemData[22855] = 541; -- Blood Guard's Dreadweave Walkers
_addon.setItemData[23255] = 541; -- Champion's Dreadweave Cowl
_addon.setItemData[23256] = 541; -- Champion's Dreadweave Spaulders
_addon.setItemData[22881] = 541; -- Legionnaire's Dreadweave Legguards
_addon.setItemData[22884] = 541; -- Legionnaire's Dreadweave Tunic

_addon.itemSetData[547] = {
    name = "Lieutenant Commander's Dreadgear",
    effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {4, 0, 0, 0},
            value = -200,
            need = 4,
        },
    }
}
_addon.setItemData[23296] = 547; -- Knight-Captain's Dreadweave Legguards
_addon.setItemData[23297] = 547; -- Knight-Captain's Dreadweave Tunic
_addon.setItemData[23282] = 547; -- Knight-Lieutenant's Dreadweave Handwraps
_addon.setItemData[23283] = 547; -- Knight-Lieutenant's Dreadweave Walkers
_addon.setItemData[23310] = 547; -- Lieutenant Commander's Dreadweave Cowl
_addon.setItemData[23311] = 547; -- Lieutenant Commander's Dreadweave Spaulders


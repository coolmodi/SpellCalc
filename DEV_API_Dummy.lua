SlashCmdList = {}
UIParent = CreateFrame();
WorldFrame = CreateFrame();

local function SetScript(self, eventName, func) end

GameTooltip = {
    SetOwner = function(self, frame, anchor) end,
    SetText = function(self, text, a, r, g, b, wrap) end,
    AddLine = function(self, text) end,
    AddDoubleLine = function(self, textl, textr) end,
    SetScript = SetScript,
}

bit = {
    band = function(arg1, arg2) return 0 end,
}

--- mhBase, mhMod, ohBase, ohMod
function UnitAttackBothHands(unit)
    return 1, 1, 1, 1;
end

-- base, mod
function UnitRangedAttack(unit)
    return 1, 1;
end

-- mhMin, mhMax, ohMin, ohMax
function UnitDamage(unit)
    return 1, 2, 1, 2;
end

--- as percent
function GetCritChance()
    return 2.5;
end

--- as percent
function GetRangedCritChance()
    return 2.5;
end

--- classLoc, class
function UnitClass(unit)
    return "Localized", "ENGLISH";
end

function GetAddOnMetadata(addonName, metaKey)
    return "value";
end

--- UNIX timestamp
function time()
    return 123;
end

-- ms since start
function debugprofilestop()
    return 123;
end

function CreateFrame(frameType, frameName, parentFrame, inheritsFrame)
    return {}
end

--- name, rank, icon, castTime, minRange, maxRange 
function GetSpellInfo(spellId_spellName_spellLink)
    return "name", "rank", "icon", 1, 1, 1;
end

function UIDropDownMenu_SetWidth(dropDown, width) end
function UIDropDownMenu_Initialize(dropDown, initFunc) end
function UIDropDownMenu_CreateInfo()
    return {
        arg1 = "",
        arg2 = "",
        checked = false,
        func = function() end,
        text = "",
    }
end
function UIDropDownMenu_SetText(self, text) end
--- See UIDropDownMenu_CreateInfo
function UIDropDownMenu_AddButton(buttonInfo) end

function hooksecurefunc(table, key, func) end

--- actionType, actionId
function GetActionInfo(slot)
    return "type", 123
end

function GetMacroSpell(actionId)
    return 123;
end

function  UnitName(unit)
    return "name";
end

function UnitLevel(unit)
    return 1;
end

function UnitIsPlayer(unit)
    return true;
end

function GetSpellBonusDamage(schoolNum)
    return 123;
end

function GetSpellBonusHealing()
    return 123;
end

--- as percent
function GetSpellCritChance(schoolNum)
    return 123;
end

function GetManaRegen()
    return 123;
end

function UnitPowerMax(unit, powerType)
    return 123;
end

--- mainHand, offHand
function UnitAttackSpeed(unit)
    return 1.5, 1.2;
end

--- speed, lowDmg, hiDmg, posBuff, negBuff, percent
function UnitRangedDamage(unit)
    return 1.5, 0, 0, 0, 0, 0;
end

--- itemName, itemLink, itemRarity, itemLevel, itemMinLevel, itemType,itemSubType, itemStackCount, itemEquipLoc, itemTexture, itemSellPrice
function GetItemInfo(itemID_itemString_itemName_itemLink)
    return "itemName", "itemLink", 1, 1, 1, "itemType", "itemSubType", 1, "itemEquipLoc", "itemTexture", 1;
end

function GetInventoryItemID(unit, slot)
    return 123;
end

function GetInventoryItemDurability(slot)
    return 123;
end

--- name, _, _, _, curRank, maxRank
function GetTalentInfo(tree, talent)
    return "name", "_", "_", "_", 1, 2;
end
--- name, _, count, _, _, _, _, _, _, spellId
function UnitBuff(unit, i)
    return "name", "_", 1, "_", "_", "_", "_", "_", "_", 123;
end

--- Wipe table
function wipe(table) end

function GetLocale()
    return "enUS";
end

--- localized, english
function UnitRace(unit)
    return "localized", "English";
end

function GetSpellPowerCost(spellName_spellID)
    return {
        hasRequiredAura = true,
        type = 1,
        name = "name",
        cost = 1,
        minCost = 0,
        requiredAuraID = 0,
        costPercent = 0,
        costPerSec = 0
    }
end

function GetShapeshiftForm()
    return 0;
end

function GetRealmName()
    return "";
end

Bartender4DB = {
    namespaces = {},
    profileKeys = {},
}

DominosDB = {
    profileKeys = {},
    profiles = {},
}

ElvDB = {
    profileKeys = {},
    profiles = {},
}

--- initpos is optional. Returns the matched substring(s) found within string. Multiple return values can occur.
function strmatch(string, pattern, initpos)
    return "", "", "", "";
end

--- icon, name, active, castable, spellId
function GetShapeshiftFormInfo(index)
    return "", "", true, true, 1;
end

function GetHitModifier()
    return 1;
end

function GetSpellHitModifier()
    return 1;
end
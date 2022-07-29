SlashCmdList = {}
UIParent = CreateFrame();
WorldFrame = CreateFrame();

local function SetScript(self, eventName, func) end

GameTooltip = {
    SetOwner = function(self, frame, anchor) end,
    SetText = function(self, text, a, r, g, b, wrap) end,
    AddLine = function(self, text, red, green, blue) end,
    AddDoubleLine = function(self, textL, textR, rL, gL, bL, rR, gR, bR) end,
    SetScript = SetScript,
}

bit = {
    band = function(arg1, arg2) return 0 end,
}

LE_ITEM_CLASS_WEAPON = 2;

--- mhBase, mhMod, ohBase, ohMod
function UnitAttackBothHands(unit)
    return 1, 1, 1, 1;
end

-- base, mod
function UnitRangedAttack(unit)
    return 1, 1;
end

---Get the itemLink for the specified item.
---@param unit string
---@param slotId number
---@return string itemLink
function GetInventoryItemLink(unit, slotId) end

---Get Rank or whatever of spell.
---@param spellId number
---@return string subtext
function GetSpellSubtext(spellId) end


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

--- Splits a string using a delimiter (optionally: into a specified number of pieces)
---@param delimiter string
---@param subject string
---@param pieces number|nil
function strsplit(delimiter, subject, pieces)
    return "","","","","","","","","","";
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

---Gets the player's current mana regeneration rates (in mana per 1 seconds). 
---@return number base @Full regen while outside the fsr
---@return number casting @Regen from mp5 and uninterrupted spirit/int regen
function GetManaRegen()
    return;
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

--- Returns information about an item. 
---@param itemID_itemString_itemName_itemLink string|number @ItemLink, Name or ID
---@return string itemName
---@return string itemLink
---@return number itemQuality
---@return number itemLevel
---@return number itemMinLevel
---@return string itemType
---@return string itemSubType
---@return number itemStackCount
---@return string itemEquipLoc
---@return number itemTexture
---@return number sellPrice
---@return number classID
---@return number subclassID
---@return number bindType
---@return number expacID
---@return number setID
---@return boolean isCraftingReagent
function GetItemInfo(itemID_itemString_itemName_itemLink)
    return;
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

---Returns the buffs/debuffs for the unit.
---@param unit string
---@param index number
---@param filter string|nil What auras to iterate (HELPFUL, HARMFUL), defaults to HELPFUL.
---@return string name The localized name of the aura, otherwise nil if there is no aura for the index.
---@return number icon FileID - The icon texture.
---@return number count The amount of stacks, otherwise 0.
---@return string|nil dispelType The locale-independent magic type of the aura: Curse, Disease, Magic, Poison, otherwise nil.
---@return number duration The full duration of the aura in seconds.
---@return number expirationTime Time the aura expires compared to GetTime(), e.g. to get the remaining duration: expirationtime - GetTime()
---@return string source The unit that applied the aura.
---@return boolean isStealable If the aura may be stolen.
---@return boolean nameplateShowPersonal If the aura should be shown on the player/pet/vehicle nameplate.
---@return number spellId The spell ID for e.g. GetSpellInfo()
---@return boolean canApplyAura If the player can apply the aura.
---@return boolean isBossDebuff If the aura was cast by a boss.
---@return boolean castByPlayer If the aura was applied by a player.
---@return boolean nameplateShowAll If the aura should be shown on nameplates.
---@return number timeMod The scaling factor used for displaying time left.
function UnitAura(unit, index, filter) end

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

---Returns info about one of the unit's stats (strength, agility, stamina, intellect, spirit). 
---@param unit string
---@param statID number
---@return number base @The unit's base stat.
---@return number stat @The unit's current stat.
---@return number posBuff @Any positive buffs applied to the stat.
---@return number negBuff @Any negative buffs applied to the stat.
function UnitStat(unit, statID) end

---@class SpellPowerEntry
local SpellPowerEntry = {
    hasRequiredAura = true,
    type = 1,
    name = "name",
    cost = 1,
    minCost = 0,
    requiredAuraID = 0,
    costPercent = 0,
    costPerSec = 0
}

---@return table<number,SpellPowerEntry>
function GetSpellPowerCost(spellName_spellID)

end

function GetShapeshiftForm()
    return 0;
end

function GetRealmName()
    return "";
end

---@param libName string
---@return table|nil
function LibStub(libName)
    return {};
end

Bartender4 = {}

Bartender4DB = {
    namespaces = {},
    profileKeys = {},
}

DominosDB = {
    profileKeys = {},
    profiles = {},
}

ElvUISpellBookTooltip = {};

ElvDB = {
    profileKeys = {},
    profiles = {},
}

--- initpos is optional. Returns the matched substring(s) found within string. Multiple return values can occur.
function strmatch(string, pattern, initpos)
    return "", "", "", "";
end

--- icon, active, castable, spellId
function GetShapeshiftFormInfo(index)
    return "", true, true, 1;
end

function GetHitModifier()
    return 1;
end

function GetSpellHitModifier()
    return 1;
end

CR_WEAPON_SKILL = 1;
CR_DEFENSE_SKILL = 2;
CR_DODGE = 3;
CR_PARRY = 4;
CR_BLOCK = 5;
CR_HIT_MELEE = 6;
CR_HIT_RANGED = 7;
CR_HIT_SPELL = 8;
CR_CRIT_MELEE = 9;
CR_CRIT_RANGED = 10;
CR_CRIT_SPELL = 11;
CR_MULTISTRIKE = 12;
CR_READINESS = 13;
CR_SPEED = 14;
COMBAT_RATING_RESILIENCE_CRIT_TAKEN = 15;
COMBAT_RATING_RESILIENCE_PLAYER_DAMAGE_TAKEN = 16;
CR_LIFESTEAL = 17;
CR_HASTE_MELEE = 18;
CR_HASTE_RANGED = 19;
CR_HASTE_SPELL = 20;
CR_AVOIDANCE = 21;
CR_WEAPON_SKILL_OFFHAND = 22;
CR_WEAPON_SKILL_RANGED = 23;
CR_EXPERTISE = 24;
CR_ARMOR_PENETRATION = 25;
CR_MASTERY = 26;
CR_PVP_POWER = 27;
CR_VERSATILITY_DAMAGE_DONE = 29;
CR_VERSATILITY_DAMAGE_TAKEN = 31;

---Returns the bonus, in percent (or other converted units, such as skill points), of a specific combat rating for the player.
---@param combatRatingId number
---@return number bonusPct
function GetCombatRatingBonus(combatRatingId)
end

--- Returns the current power of the specified unit.
---@param unitId string
---@param powerType number @Type of resource (mana/rage/energy/etc) to query
---@param unmodified boolean @Return the higher precision internal value (for graphical use only)
---@return number
function UnitPower(unitId, powerType, unmodified)
    return 1;
end

--- Returns the GUID of the specified unit.
---@param unitId string
---@return string
function UnitGUID(unitId)
    return "Creature-0-1133-870-141-71953-0000432FBD";
end

--- Returns the creature type of the specified unit.
---@param unitId string
---@return string
function UnitCreatureType(unitId)
    return "Beast";
end

function InterfaceOptionsFrame_OpenToCategory(panelName) end
function InterfaceOptions_AddCategory(frame) end
InterfaceOptionsFrameAddOns = {};
function OptionsListButtonToggle_OnClick() end
function ChatConfigFrame_PlayCheckboxSound() end
function EditBox_ClearFocus() end
function GameTooltip_Hide() end

---@class SpellRankEffectData
---@field effectType number
---@field auraType number|nil
---@field forceScaleWithHeal boolean|nil
---@field valueBase number
---@field valueRange number|nil
---@field valuePerLevel number|nil
---@field coef number
---@field coefAP number
---@field weaponCoef number|nil
---@field tickPeriod number|nil
---@field chains number|nil
---@field chainMult number|nil
---@field auraStacks number|nil

---@class SpellRankInfo
---@field school number
---@field isChannel boolean|nil
---@field isBinary boolean|nil
---@field GCD number|nil
---@field defType number
---@field cantDogeParryBlock boolean|nil
---@field equippedWeaponMask number|nil
---@field noCrit boolean|nil
---@field forceHeal boolean|nil
---@field charges number|nil
---@field spellLevel number
---@field maxLevel number
---@field duration number|nil
---@field baseCost number|nil
---@field usePeriodicHaste boolean|nil
---@field mechanic number|nil
---@field effects table<number, SpellRankEffectData|nil>

---@type SettingsTable
SpellCalc_settings = SpellCalc_settings;

function GetWeaponEnchantInfo()
    return true, 1, 1, 1, true, 1, 1, 1;
end

SpellCalcStatScreen = {}

---@type AddonEnv
local _addon = select(2, ...);

---@return table<string,table>
_addon.ClassSettings = function()
    return {};
end

---@type table<integer, SpellRankInfo>
_addon.spellRankInfo = {};

_addon.spellClassSet = {
    ---@type table<number, number[]>
    [1] = {},
    ---@type table<number, number[]>
    [2] = {},
    ---@type table<number, number[]>
    [3] = {},
    ---@type table<number, number[]>
    [4] = {},
};

---@alias EffectScript fun(val:number, cs:CalcedSpell, spellId:number, ri:SpellRankInfo, eff:number):number

---@class AuraEffectBase
---@field type number
---@field affectMask number|nil
---@field affectSpell number[]|nil
---@field neededWeaponMask number|nil
---@field scriptKey string|nil Key for script effect. Must be unique!

---@class UnitAuraEffect : AuraEffectBase
---@field value number|nil
---@field scriptValue string|nil Get value from scriptKey.

---@class SetBonusAuraEffect : UnitAuraEffect
---@field need number The number of set items needed for the effect to be active.

---@class ItemSetData
---@field name string
---@field effects SetBonusAuraEffect[]

---@type table<number, ItemSetData>
_addon.itemSetData = {}

---@type table<number, UnitAuraEffect[]>
_addon.itemEffects = {};

-- TODO: fix this stupid structure
---@class PlayerAuraEffect : UnitAuraEffect
---@field effects nil|UnitAuraEffect[]
---@field condition nil|number

---@type table<number, PlayerAuraEffect>
_addon.aurasPlayer = {};

---@class EnchantData : UnitAuraEffect
---@field name string

---@type table<number, EnchantData>
_addon.enchantData = {};

---@class TargetAuraEffect : UnitAuraEffect
---@field hasStacks boolean|nil Does the debuff have stacks (e.g. Sunder Armor).
---@field debuffCategory number Debuffs effects from same category don't stack with eacho ther.

---@type table<number, TargetAuraEffect[]>
_addon.aurasTarget = {};

---@class TalentEffect : AuraEffectBase
---@field base integer|nil
---@field perPoint number|nil
---@field values number[]|nil

---@class TalentDataEntry
---@field tree number
---@field talent number
---@field effects TalentEffect[]

---@class TalentDataRawEntry
---@field tier number
---@field column number
---@field effects TalentEffect[]

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {}

---@type table<number, UnitAuraEffect[]>
_addon.classGlyphs = {}

---@type UnitAuraEffect[]
_addon.classPassives = {};

---Returns information on a glyph socket. 
---@param socketID number glyph [Glyph SocketID|socket index]] (1 to GetNumGlyphSockets() )
---@param talentGroup number|nil (dual) specialization index (1 to GetNumTalentGroups(...)).
---@return boolean enabled
---@return number type
---@return number spellId
---@return string icon
function GetGlyphSocketInfo(socketID, talentGroup) end

---@return number
function GetNumGlyphSockets() end
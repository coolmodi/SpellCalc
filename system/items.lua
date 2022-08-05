---@class AddonEnv
local _addon = select(2, ...);

local ITEM_SLOTS = {
    [1] = "head",
    [2] = "neck",
    [3] = "shoulder",
    [5] = "chest",
    [6] = "waist",
    [7] = "legs",
    [8] = "feet",
    [9] = "wrist",
    [10] = "hands",
    [11] = "finger 1",
    [12] = "finger 2",
    [13] = "trinket 1",
    [14] = "trinket 2",
    [15] = "back",
    [16] = "main hand",
    [17] = "off hand",
    [18] = "ranged",
};

---@type table<integer,boolean|integer,nil>
local missingItems = { _count = 0 };
---@type table<integer, integer>
local items = {};
---@type table<integer, integer>
local sets = {};
---@type table<string, integer|nil>
local weaponSubClass = {
    mainhand = nil,
    offhand = nil,
    ranged = nil
};

local SetWeaponBaseDmgAndSpeed;
do
    local scanTT = CreateFrame("GameTooltip", "SpellCalcItemsScanTT", nil, "GameTooltipTemplate")--[[@as WoWGameTooltip]];
    scanTT:SetOwner(WorldFrame, "ANCHOR_CURSOR");
    scanTT:AddFontStrings(
        scanTT:CreateFontString("$parentTextLeft1", nil, "GameTooltipText"),
        scanTT:CreateFontString("$parentTextRight1", nil, "GameTooltipText"));

    ---Set weapon attack speed and base damage from tooltip.
    ---@param itemId integer|nil
    ---@param key string mainhand, offhand or ranged
    function SetWeaponBaseDmgAndSpeed(itemId, key)
        local speed = 2;
        local dmgLow = 1;
        local dmgHigh = 1;

        if itemId then
            scanTT:ClearLines();
            scanTT:SetOwner(WorldFrame, "ANCHOR_CURSOR");
            scanTT:SetHyperlink("item:" .. itemId .. ":0:0:0:0:0:0:0");
            for i = 1, scanTT:NumLines() do
                local fstringl = _G["SpellCalcItemsScanTTTextLeft" .. i]--[[@as FontString]];
                local fstringr = _G["SpellCalcItemsScanTTTextRight" .. i]--[[@as FontString]];
                if fstringl and fstringr then
                    local textl = fstringl:GetText();
                    local textr = fstringr:GetText();
                    if textl and textr then
                        local dls, dhs = strmatch(textl, "(%d+) %- (%d+)");
                        local dl = tonumber(dls);
                        local dh = tonumber(dhs);
                        local s = tonumber(strmatch(textr, " (%d%.%d%d)"));
                        if dl and dh and s then
                            speed = s;
                            dmgLow = dl;
                            dmgHigh = dh;
                            break;
                        end
                    end
                end
            end
            scanTT:Hide();
        end
        local s = _addon.stats;
        s.baseAttackSpeed[key] = speed;
        s.weaponBaseDamage[key].min = dmgLow;
        s.weaponBaseDamage[key].max = dmgHigh;
    end
end

--- Update set item count and add/remove buffs as needed
---@param setId integer
---@param change integer
local function UpdateSet(setId, change)
    if sets[setId] == nil then
        sets[setId] = change;
    else
        sets[setId] = sets[setId] + change;
    end

    local newCount, oldCount = sets[setId], sets[setId] - change;
    local setData = _addon.itemSetData[setId];

    _addon.util.PrintDebug(("Updating set: %s (%d -> %d)"):format(setData.name, oldCount, newCount));

    for k, effectData in ipairs(setData.effects) do
        local bname = string.format("%s%d-%dp", setData.name, k, effectData.need);
        if effectData.need <= newCount then
            if effectData.need > oldCount then
                _addon.util.PrintDebug(("Add set bonus %s"):format(bname));
                _addon:ApplyAuraEffect(bname, effectData, effectData.value);
            end
        else
            if effectData.need <= oldCount then
                _addon.util.PrintDebug(("Remove set bonus %s"):format(bname));
                _addon:RemoveAuraEffect(bname, effectData, effectData.value);
            end
        end
    end

end

---Handle item update after recieved item data.
---@param itemId integer
function _addon:UpdateRecievedItemData(itemId)
    if missingItems[itemId] then
        missingItems[itemId] = 0;
        missingItems._count = missingItems._count - 1;
        if missingItems._count == 0 then
            self.util.PrintDebug("Data for all items recieved, updating items");
            self:UpdateItems();
        end
    end
end

--- Equip item for slot
---@param itemId integer
---@param slotId integer
local function EquipItem(itemId, slotId)
    _addon.util.PrintDebug("Item " .. itemId .. " -> Slot " .. slotId);
    local itemName, _, _, _, _, _, itemSubTypeName, _, _, _, _, classID, subclassID = GetItemInfo(itemId);
    local setId                                                                     = _addon.setItemData[itemId];

    if itemName == nil then
        if not missingItems[itemId] then
            missingItems[itemId] = true;
            missingItems._count = missingItems._count + 1;
            _addon.util.PrintDebug("Don't have data for item " .. itemId .. " slot " .. slotId .. ", waiting for data");
        end
        return;
    end

    if slotId >= 16 and slotId <= 18 then
        if classID == LE_ITEM_CLASS_WEAPON then
            _addon.util.PrintDebug(ITEM_SLOTS[slotId] .. " is now " .. itemSubTypeName);
            if slotId == 16 then
                weaponSubClass.mainhand = subclassID;
                SetWeaponBaseDmgAndSpeed(itemId, "mainhand");
            elseif slotId == 17 then
                weaponSubClass.offhand = subclassID;
                SetWeaponBaseDmgAndSpeed(itemId, "offhand");
            elseif slotId == 18 then
                weaponSubClass.ranged = subclassID;
                SetWeaponBaseDmgAndSpeed(itemId, "ranged");
            end
        else
            _addon.util.PrintDebug(ITEM_SLOTS[slotId] .. " is not a weapon, leaving empty");
            if slotId == 16 then
                weaponSubClass.mainhand = nil;
                SetWeaponBaseDmgAndSpeed(nil, "mainhand");
            elseif slotId == 17 then
                weaponSubClass.offhand = nil;
                SetWeaponBaseDmgAndSpeed(nil, "offhand");
            elseif slotId == 18 then
                weaponSubClass.ranged = nil;
                SetWeaponBaseDmgAndSpeed(nil, "ranged");
            end
        end
    end

    if _addon.itemEffects[itemId] then
        for _, effect in ipairs(_addon.itemEffects[itemId]) do
            _addon:ApplyAuraEffect(itemName, effect, effect.value);
        end
        _addon:TriggerUpdate();
    end

    if setId then
        _addon.util.PrintDebug("Item is in a set");
        UpdateSet(setId, 1);
    end

    items[slotId] = itemId;
end

--- Unequip previously equipped item
---@param slotId integer
local function UnequipItem(slotId)
    local itemName = GetItemInfo(items[slotId]);
    local setId = _addon.setItemData[items[slotId]];

    if _addon.itemEffects[items[slotId]] then
        for _, effect in ipairs(_addon.itemEffects[items[slotId]]) do
            _addon:RemoveAuraEffect(itemName, effect, effect.value);
        end
        _addon:TriggerUpdate();
    end

    if setId then
        _addon.util.PrintDebug("Item was in a set");
        UpdateSet(setId, -1);
    end

    items[slotId] = nil;

    if slotId >= 16 and slotId <= 18 then
        _addon.util.PrintDebug(ITEM_SLOTS[slotId] .. " is now unarmed");
        if slotId == 16 then
            weaponSubClass.mainhand = nil;
            SetWeaponBaseDmgAndSpeed(nil, "mainhand");
        elseif slotId == 17 then
            weaponSubClass.offhand = nil;
            SetWeaponBaseDmgAndSpeed(nil, "offhand");
        elseif slotId == 18 then
            weaponSubClass.ranged = nil;
            SetWeaponBaseDmgAndSpeed(nil, "ranged");
        end
    end

    _addon.util.PrintDebug("Slot " .. slotId .. " empty");
end

--- Update all item slots
function _addon:UpdateItems()
    self.util.PrintDebug("Update items");
    for slot, slotName in pairs(ITEM_SLOTS) do
        local itemId = GetInventoryItemID("player", slot);
        if itemId ~= nil then
            local durability = GetInventoryItemDurability(slot);
            if items[slot] ~= itemId then
                if items[slot] ~= nil then
                    self.util.PrintDebug("Unequip old item from slot " .. slotName);
                    UnequipItem(slot);
                end
                if durability == nil or durability > 0 then
                    self.util.PrintDebug("Equip new item " .. itemId .. " in slot " .. slotName);
                    EquipItem(itemId, slot);
                end
            else
                if durability ~= nil and durability == 0 then
                    self.util.PrintDebug("Unequip item " .. itemId .. " in slot " .. slotName .. " because it is broken");
                    UnequipItem(slot);
                end
            end
        else
            if items[slot] ~= nil then
                self.util.PrintDebug("Unequip old item from slot " .. slotName);
                UnequipItem(slot);
            end
        end
    end

    -- Handle meta gems.
    -- 99 is used for meta gem item slot ID internally.
    if items[1] then
        local gem1p, gem2p, gem3p = strmatch(GetInventoryItemLink("player", 1), "Hitem:%d+:%d*:(%d*):(%d*):(%d*):");
        local gem1 = tonumber(gem1p)--[[@as integer]];
        local gem2 = tonumber(gem2p)--[[@as integer]];
        local gem3 = tonumber(gem3p)--[[@as integer]];
        local gemId;
        -- Only meta gems should ever have item effects defined.
        if self.itemEffects[gem1] then
            gemId = gem1;
        elseif self.itemEffects[gem2] then
            gemId = gem2;
        elseif self.itemEffects[gem3] then
            gemId = gem3;
        end
        if items[99] ~= gemId then
            if items[99] ~= nil then
                UnequipItem(99);
            end
            if gemId then
                EquipItem(gemId, 99);
            end
        end
    elseif items[99] then
        UnequipItem(99);
    end
end

--- Return true if a two handed weapon is in the main hand slot
function _addon:IsTwoHandEquipped()
    return weaponSubClass.mainhand and
        bit.band(bit.lshift(1, weaponSubClass.mainhand), self.CONST.WEAPON_TYPES_MASK.TWO_HAND) > 0;
end

--- Return true if a one handed weapon is in the main hand slot
function _addon:IsOneHandEquipped()
    return weaponSubClass.mainhand and
        bit.band(bit.lshift(1, weaponSubClass.mainhand), self.CONST.WEAPON_TYPES_MASK.ONE_HAND) > 0;
end

--- Return true if a weapon is in the mainhand slot
function _addon:IsMainHandWeaponEquipped()
    return weaponSubClass.mainhand and bit.band(bit.lshift(1, weaponSubClass.mainhand), self.CONST.WEAPON_TYPES_MASK.MELEE) > 0;
end

--- Return true if a weapon is in the offhand slot
function _addon:IsOffHandWeaponEquipped()
    return weaponSubClass.offhand and bit.band(bit.lshift(1, weaponSubClass.offhand), self.CONST.WEAPON_TYPES_MASK.MELEE) > 0;
end

--- Return true if the given weapon class is equipped
---@param weaponSubClassId integer
---@param slot string mainhand, offhand or ranged
function _addon:IsWeaponTypeEquipped(weaponSubClassId, slot)
    assert(slot == "mainhand" or slot == "offhand" or slot == "ranged", "Invalid weapon slot!");
    return weaponSubClass[slot] == weaponSubClassId;
end

---Check if weapon types are equipped.
---@param weaponSubClassMask integer The mask of possible weapontypes
---@param slot string mainhand, offhand or ranged
---@return boolean
function _addon:IsWeaponTypeMaskEquipped(weaponSubClassMask, slot)
    if slot then
        assert(slot == "mainhand" or slot == "offhand" or slot == "ranged", "Invalid weapon slot!");
        return weaponSubClass[slot] ~= nil and bit.band(bit.lshift(1, weaponSubClass[slot]), weaponSubClassMask) > 0;
    end

    for _, subClass in pairs(weaponSubClass) do
        if bit.band(bit.lshift(1, subClass), weaponSubClassMask) > 0 then
            return true;
        end
    end
    return false;
end

--- Return true if both weapon slots have a weapon equipped
function _addon:IsDualWieldEquipped()
    return self:IsMainHandWeaponEquipped() and self:IsOffHandWeaponEquipped();
end

--- Return WEAPON_SUBCLASS for weapon in given slot if a weapon is equipped
---@param slot string @mainhand, offhand or ranged
---@return integer|nil
function _addon:GetWeaponType(slot)
    assert(slot == "mainhand" or slot == "offhand" or slot == "ranged", "Invalid weapon slot!");
    return weaponSubClass[slot];
end

--- Return WEAPON_TYPES_MASK for weapon in given slot if a weapon is equipped
---@param slot string @mainhand, offhand or ranged
---@return integer|nil
function _addon:GetWeaponTypeMask(slot)
    assert(slot == "mainhand" or slot == "offhand" or slot == "ranged", "Invalid weapon slot!");
    if not weaponSubClass[slot] then return end
    return bit.lshift(1, weaponSubClass[slot]);
end

--- (DEBUG) Equip item to test effects. It will just overwrite the slot!
---@param itemId integer
---@param slotId integer
function _addon:DebugEquipItem(itemId, slotId)
    EquipItem(itemId, slotId)
end

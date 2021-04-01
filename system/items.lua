---@type AddonEnv
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

local missingItems = { _count = 0 };
local items = {};
local sets = {};
local weaponSubClass = {
    mainHand = nil,
    offHand = nil,
    ranged = nil
};

--- Update set item count and add/remove buffs as needed
---@param setId number
---@param change number
local function UpdateSet(setId, change)
    if sets[setId] == nil then
        sets[setId] = change;
    else
        sets[setId] = sets[setId] + change;
    end

    local newCount, oldCount = sets[setId], sets[setId]-change;
    local setData = _addon.itemSetData[setId];

    _addon:PrintDebug(("Updating set: %s (%d -> %d)"):format(setData.name, oldCount, newCount));

    for k, effectData in ipairs(setData.effects) do
        local bname = string.format("%s%d-%dp", setData.name, k, effectData.need);
        if effectData.need <= newCount then
            if effectData.need > oldCount then
                _addon:PrintDebug(("Add set bonus %s"):format(bname));
                _addon:ApplyAuraEffect(bname, effectData, effectData.value);
            end
        else
            if effectData.need <= oldCount then
                _addon:PrintDebug(("Remove set bonus %s"):format(bname));
                _addon:RemoveAuraEffect(bname, effectData, effectData.value);
            end
        end
    end
end

---Handle item update after recieved item data.
---@param itemId number
function _addon:UpdateRecievedItemData(itemId)
    if missingItems[itemId] then
        missingItems[itemId] = 0;
        missingItems._count = missingItems._count - 1;
        if missingItems._count == 0 then
            self:PrintDebug("Data for all items recieved, updating items");
            self:UpdateItems();
        end
    end
end

--- Equip item for slot
---@param itemId number
---@param slotId number
local function EquipItem(itemId, slotId)
    _addon:PrintDebug("Item " .. itemId .. " -> Slot " .. slotId);
    local itemName, _, _, _, _, _, itemSubTypeName, _, _, _, _, _, subclassID  = GetItemInfo(itemId);
    local setId = _addon.setItemData[itemId];

    if itemName == nil then
        if not missingItems[itemId] then
            missingItems[itemId] = true;
            missingItems._count = missingItems._count + 1;
            _addon:PrintDebug("Don't have data for item " .. itemId .. " slot " .. slotId .. ", waiting for data");
        end
        return;
    end

    if slotId >= 16 and slotId <= 18 then
        _addon:PrintDebug(ITEM_SLOTS[slotId] .. " is now " .. itemSubTypeName);
        if slotId == 16 then
            weaponSubClass.mainHand = subclassID;
        elseif slotId == 17 then
            weaponSubClass.offHand = subclassID;
        elseif slotId == 18 then
            weaponSubClass.ranged = subclassID;
        end
    end

    if _addon.itemEffects[itemId] then
        for _, effect in ipairs(_addon.itemEffects[itemId]) do
            _addon:ApplyAuraEffect(itemName, effect, effect.value);
        end
        _addon:TriggerUpdate();
    end

    if setId then
        _addon:PrintDebug("Item is in a set");
        UpdateSet(setId, 1);
    end

    items[slotId] = itemId;
end

--- Unequip previously equipped item
---@param slotId number
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
        _addon:PrintDebug("Item was in a set");
        UpdateSet(setId, -1);
    end

    items[slotId] = nil;

    if slotId >= 16 and slotId <= 18 then
        _addon:PrintDebug(ITEM_SLOTS[slotId] .. " is now unarmed");
        if slotId == 16 then
            weaponSubClass.mainHand = nil;
        elseif slotId == 17 then
            weaponSubClass.offHand = nil;
        elseif slotId == 18 then
            weaponSubClass.ranged = nil;
        end
    end

    _addon:PrintDebug("Slot " .. slotId .. " empty");
end

--- Update all item slots
function _addon:UpdateItems()
    self:PrintDebug("Update items");
    for slot, slotName in pairs(ITEM_SLOTS) do
        local itemId = GetInventoryItemID("player", slot);
        if itemId ~= nil then
            local durability = GetInventoryItemDurability(slot);
            if items[slot] ~= itemId  then
                if items[slot] ~= nil then
                    self:PrintDebug("Unequip old item from slot "..slotName);
                    UnequipItem(slot);
                end
                if durability == nil or durability > 0 then
                    self:PrintDebug("Equip new item " .. itemId .. " in slot "..slotName);
                    EquipItem(itemId, slot);
                end
            else
                if durability ~= nil and durability == 0 then
                    self:PrintDebug("Unequip item " .. itemId .. " in slot "..slotName.." because it is broken");
                    UnequipItem(slot);
                end
            end
        else
            if items[slot] ~= nil then
                self:PrintDebug("Unequip old item from slot "..slotName);
                UnequipItem(slot);
            end
        end
    end
end

--- Return true if a two handed weapon is in the main hand slot
function _addon:IsTwoHandEquipped()
    return weaponSubClass.mainHand and bit.band(bit.lshift(1, weaponSubClass.mainHand), self.WEAPON_TYPES_MASK.TWO_HAND) > 0;
end

--- Return true if a one handed weapon is in the main hand slot
function _addon:IsOneHandEquipped()
    return weaponSubClass.mainHand and bit.band(bit.lshift(1, weaponSubClass.mainHand), self.WEAPON_TYPES_MASK.ONE_HAND) > 0;
end

--- Return true if a weapon is in the mainhand slot
function _addon:IsMainHandWeaponEquipped()
    return weaponSubClass.mainHand and bit.band(bit.lshift(1, weaponSubClass.mainHand), self.WEAPON_TYPES_MASK.MELEE) > 0;
end

--- Return true if a weapon is in the offhand slot
function _addon:IsOffHandWeaponEquipped()
    return weaponSubClass.offHand and bit.band(bit.lshift(1, weaponSubClass.offHand), self.WEAPON_TYPES_MASK.MELEE) > 0;
end

--- Return true if the given weapon class is equipped
---@param weaponSubClassId number
---@param slot string @mainhand, offhand or ranged
function _addon:IsWeaponTypeEquipped(weaponSubClassId, slot)
    assert(slot == "mainhand" or slot == "offhand" or slot == "ranged", "Invalid weapon slot!");
    return weaponSubClass[slot] == weaponSubClassId;
end

--- Return true if both weapon slots have a weapon equipped
function _addon:IsDualWieldEquipped()
    return self:IsMainHandWeaponEquipped() and self:IsOffHandWeaponEquipped();
end

--- Return WEAPON_SUBCLASS for weapon in given slot if a weapon is equipped
---@param slot string @mainhand, offhand or ranged
---@return number|nil
function _addon:GetWeaponType(slot)
    assert(slot == "mainhand" or slot == "offhand" or slot == "ranged", "Invalid weapon slot!");
    return weaponSubClass[slot];
end

--- (DEBUG) Equip item to test effects. It will just overwrite the slot!
---@param itemId number
---@param slotId number
function _addon:DebugEquipItem(itemId, slotId)
    EquipItem(itemId, slotId)
end
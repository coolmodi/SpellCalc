local _, _addon = ...;

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

local WTTM = _addon.WEAPON_TYPE_TO_MASK;
local UNARMED = _addon.WEAPON_TYPES_MASK.UNARMED;
local FISHING_POLE_NAME = _addon.WEAPON_TYPES.FISHING_POLE;

local retryFrame = CreateFrame("Frame");
local retryTimer = 0;
local items = {};
local sets = {};
local weapontypes = {
    mh = UNARMED,
    oh = UNARMED,
    r = UNARMED
};

--- Apply or remove effect for destination
-- @param value The effect value, negative to remove buff
-- @param dest The destination table
-- @param name The name of the buff
local function ApplyOrRemove(value, dest, name)
    dest.val = dest.val + value;
    if value > 0 then
        table.insert(dest.buffs, name);
    else
        _addon:RemoveTableEntry(dest.buffs, name);
    end
end

--- Update set item count and add/remove buffs as needed
-- @param setId The set id
-- @param change The item count change
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
        if effectData.need <= newCount then
            if effectData.need > oldCount then
                if type(effectData.effect) ~= "table" then
                    _addon:PrintWarn(("Set bonus %d not implemented for %s: %s"):format(effectData.need, setData.name, effectData.effect));
                else
                    local ed = effectData.effect;
                    local bname = setData.name .. effectData.need;
                    _addon:PrintDebug(("Add set bonus %s"):format(bname));
                    _addon:ApplyBuff(bname, ed.effect, ed.value, ed.affectSchool, ed.affectSpell);
                end
            end

        else
            if effectData.need <= oldCount then
                if type(effectData.effect) == "table" then
                    local ed = effectData.effect;
                    local bname = setData.name .. effectData.need;
                    _addon:PrintDebug(("Remove set bonus %s"):format(bname));
                    _addon:RemoveBuff(bname, ed.effect, ed.value, ed.affectSchool, ed.affectSpell);
                end
            end
        end
    end
end

local function ChangeItemEffects(itemData, itemName, remove)
    local val;
    if itemData.mp5 then
        val = remove and -itemData.mp5 or itemData.mp5;
        ApplyOrRemove(val, _addon.stats.mp5, itemName);
    end

    -- All flat hit bonus aruras on items should appear in GetSpellHitModifier()
    -- if itemData.hit then
    --     val = remove and -itemData.hit or itemData.hit;
    --     ApplyOrRemove(val, _addon.stats.hitBonus, itemName);
    -- end

    -- if itemData.spellHit then
    --     val = remove and -itemData.spellHit or itemData.spellHit;
    --     ApplyOrRemove(val, _addon.stats.hitBonusSpell, itemName);
    -- end

    if itemData.spellPen then
        val = remove and -itemData.spellPen or itemData.spellPen;
        for i=3,7 do
            ApplyOrRemove(val, _addon.stats.spellPen[i], itemName);
        end
    end

    _addon:TriggerUpdate();
end

--- Trigger full item update when time is up
-- If items are unknown we need to check back after a moment
-- Also on fresh login for some items now for some reason!
-- See EquipItem(), it will trigger this to happen again and again until item names can be resolved
-- TODO: Could use items ID as name, it's just for internal and debug use anyways
local function RetryUpdate(self, delta)
    retryTimer = retryTimer + delta;
    if retryTimer < 0.25 then
        return;
    end
    retryTimer = 0;
    _addon:PrintDebug("Retry item update");
    retryFrame:SetScript("OnUpdate", nil);
    _addon:UpdateItems();
end

--- Equip item for slot
-- @param itemId The item ID to equip
-- @param slotId The slot item is equipped into
local function EquipItem(itemId, slotId)
    _addon:PrintDebug("Item " .. itemId .. " -> Slot " .. slotId);
    local itemData = _addon.itemData[itemId];
    local itemName, _, _, _, _, _, itemSubType = GetItemInfo(itemId);
    local setId = _addon.setItemData[itemId];

    if itemName == nil then
        _addon:PrintDebug("Item " .. itemId .. " name unknown, trigger retry!");
        retryFrame:SetScript("OnUpdate", RetryUpdate);
        return;
    end

    if slotId >= 16 and slotId <= 18 then
        _addon:PrintDebug(ITEM_SLOTS[slotId] .. " is now " .. itemSubType);

        -- hackfix for fishing poles
        if _addon.FISHING_POLES[itemId] then
            itemSubType = FISHING_POLE_NAME;
        end

        if slotId == 16 then
            weapontypes.mh = WTTM[itemSubType];
        elseif slotId == 17 then
            weapontypes.oh = WTTM[itemSubType];
        elseif slotId == 18 then
            weapontypes.r = WTTM[itemSubType];
        end
    end

    if itemData then
        _addon:PrintDebug("Item has effect");
        ChangeItemEffects(itemData, itemName);
    end

    if _addon.itemEffects[itemId] then
        for _, effect in ipairs(_addon.itemEffects[itemId]) do
            _addon:ApplyBuff(itemName, effect.type, effect.value, effect.affectSchool, effect.affectSpell);
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
-- @param slotId The slot item was in
local function UnequipItem(slotId)
    local itemData = _addon.itemData[items[slotId]];
    local itemName = GetItemInfo(items[slotId]);
    local setId = _addon.setItemData[items[slotId]];

    if itemData then
        _addon:PrintDebug("Item had effect");
        ChangeItemEffects(itemData, itemName, true);
    end

    if _addon.itemEffects[items[slotId]] then
        for _, effect in ipairs(_addon.itemEffects[items[slotId]]) do
            _addon:RemoveBuff(itemName, effect.type, effect.value, effect.affectSchool, effect.affectSpell);
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
            weapontypes.mh = UNARMED;
        elseif slotId == 17 then
            weapontypes.oh = UNARMED;
        elseif slotId == 18 then
            weapontypes.r = UNARMED;
        end
    end

    _addon:PrintDebug("Slot " .. slotId .. " empty");
end

--- Update all item slots
function _addon:UpdateItems()
    _addon:PrintDebug("Update items");

    for slot, slotName in pairs(ITEM_SLOTS) do
        local itemId = GetInventoryItemID("player", slot);

        if itemId ~= nil then
            local durability = GetInventoryItemDurability(slot);

            if items[slot] ~= itemId  then
                if items[slot] ~= nil then
                    _addon:PrintDebug("Unequip old item from slot "..slotName);
                    UnequipItem(slot);
                end

                if durability == nil or durability > 0 then
                    _addon:PrintDebug("Equip new item " .. itemId .. " in slot "..slotName);
                    EquipItem(itemId, slot);
                end

            else
                if durability ~= nil and durability == 0 then
                    _addon:PrintDebug("Unequip item " .. itemId .. " in slot "..slotName.." because it is broken");
                    UnequipItem(slot);
                end
            end

        else
            if items[slot] ~= nil then
                _addon:PrintDebug("Unequip old item from slot "..slotName);
                UnequipItem(slot);
            end
        end

    end
end

--- Return true if a two handed weapon is in the main hand slot
function _addon:IsTwoHandEquipped()
    return weapontypes.mh and bit.band(weapontypes.mh, self.WEAPON_TYPES_MASK.TWO_HAND) > 0;
end

--- Return true if a one handed weapon is in the main hand slot
function _addon:IsOneHandEquipped()
    return weapontypes.mh and bit.band(weapontypes.mh, self.WEAPON_TYPES_MASK.ONE_HAND) > 0;
end

--- Return true if a weapon is in the mainhand slot
function _addon:IsMainHandWeaponEquipped()
    return weapontypes.mh and bit.band(weapontypes.mh, self.WEAPON_TYPES_MASK.MELEE) > 0;
end

--- Return true if a weapon is in the offhand slot
function _addon:IsOffHandWeaponEquipped()
    return weapontypes.oh and bit.band(weapontypes.oh, self.WEAPON_TYPES_MASK.MELEE) > 0;
end

--- Return true if any of the given weapon types is equipped
-- @param weaponMask See constants WEAPON_TYPES_MASK
-- @param slot Can be mh, oh or r
function _addon:IsWeaponTypeEquipped(weaponMask, slot)
    return weapontypes[slot] and bit.band(weaponMask, weapontypes[slot]) > 0;
end

--- Return true if both weapon slots have a weapon equipped
function _addon:IsDualWieldEquipped()
    return self:IsMainHandWeaponEquipped() and self:IsOffHandWeaponEquipped();
end

--- Return WEAPON_TYPES_MASK for weapon in given slot
-- @param slot Can be mh, oh or r
function _addon:GetWeaponType(slot)
    return weapontypes[slot];
end
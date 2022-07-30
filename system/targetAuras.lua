--[[
TODO
Add toggles in settings for foreign auras with conditional effects that can't be known?
    "Assume X does Y" e.g. "Assume Devotion Aura increases healing recieved."
    Possibly add whitelist as alternative?

Missing auras
    Master Poisoner crit, somehow infer from poisons?
    Improved Faerie Fire hit (see above)
    Improved Devotion Aura
    Divinity?
    Blessing of Sanctuary?
]]

---@type AddonEnv
local _addon = select(2, ...);
local aurasTarget = _addon.aurasTarget;
local SETargetAuraChanged = _addon.ScriptEffects.TargetAuraChanged;

---@type table<number, ActiveCategoryData>
local activeCategory = {};
for _, v in pairs(_addon.DEBUFF_CATEGORY) do
    ---@class ActiveCategoryData
    ---@field activeSpellId number|nil The aura currently used.
    ---@field auras table<number, number|nil> Value of active auras in this category.
    activeCategory[v] = {
        auras = {}
    }
end

---True => active, false => should be removed, nil => not active
---@type table<number, boolean>
local activeAuraIds = {};
---@type table<number, number>
local activeAuraStacks = {};
---@type table<string, boolean|nil>
local aurasByName = {};
---@type table<string, boolean|nil>
local aurasByNamePersonal = {};

---Apply target aura effect.
---@param spellId number
---@param targetAuraEffect TargetAuraEffect
---@param name string
---@param stacks number
---@param effectSlot number|nil
local function ApplyTargetAuraEffect(spellId, targetAuraEffect, name, stacks, effectSlot)
    if effectSlot then
        name = name.."-"..effectSlot;
    end
    local value = targetAuraEffect.value;
    if stacks > 1 and targetAuraEffect.hasStacks then
        value = value * stacks;
    end

    if not targetAuraEffect.debuffCategory then
        _addon:ApplyAuraEffect(name, targetAuraEffect, value);
        return true;
    end

    local acd = activeCategory[targetAuraEffect.debuffCategory];
    acd.auras[spellId] = value;

    if acd.activeSpellId == nil then
        _addon:ApplyAuraEffect(name, targetAuraEffect, value);
        acd.activeSpellId = spellId;
        return true;
    end

    local currentValue = acd.auras[acd.activeSpellId];
    if math.abs(value) > math.abs(currentValue) then
        local oName = GetSpellInfo(acd.activeSpellId);
        _addon:RemoveAuraEffect(oName, targetAuraEffect, currentValue);
        _addon:ApplyAuraEffect(name, targetAuraEffect, value);
        acd.activeSpellId = spellId;
        return true;
    end

    return false;
end

--- Remove target aura effect.
---@param spellId number
---@param targetAuraEffect TargetAuraEffect
---@param name string
---@param stacks number
---@param effectSlot number|nil
local function RemoveTargetAuraEffect(spellId, targetAuraEffect, name, stacks, effectSlot)
    if effectSlot then
        name = name.."-"..effectSlot;
    end
    local value = targetAuraEffect.value;
    if stacks > 1 and targetAuraEffect.hasStacks then
        value = value * stacks;
    end

    if not targetAuraEffect.debuffCategory then
        _addon:RemoveAuraEffect(name, targetAuraEffect, value);
        return true;
    end

    local acd = activeCategory[targetAuraEffect.debuffCategory];
    acd.auras[spellId] = nil;

    -- If this aura isn't currently used for the category then don't do anything.
    if spellId ~= acd.activeSpellId then return false end

    -- This spell was active, remove and find next highest in category.
    _addon:RemoveAuraEffect(name, targetAuraEffect, value);
    acd.activeSpellId = nil;

    local high;
    for catSpellId, catSpellVal in pairs(acd.auras) do
        if not high or math.abs(catSpellVal) > math.abs(acd.auras[high]) then
            high = catSpellId;
        end
    end

    if high then
        local nName = GetSpellInfo(high);
        local val = acd.auras[high];
        _addon:ApplyAuraEffect(nName, targetAuraEffect, val);
        acd.activeSpellId = high;
    end

    return true;
end

local function UpdateAuratype(filter)
    local aurasChanged = false;
    local i = 1;
    local name, _, count, _, _, _, source, _, _, spellId = UnitAura("target", i, filter);

    while name do
        if aurasByName[name] == nil then SETargetAuraChanged(name) end
        aurasByName[name] = true;
        if source == "player" then 
            if aurasByNamePersonal[name] == nil then SETargetAuraChanged(name, true) end
            aurasByNamePersonal[name] = true;
        end

        if aurasTarget[spellId] then
            local auraEffects = aurasTarget[spellId];

            if activeAuraStacks[spellId] ~= count then
                -- Remove old effects if stacks changed.
                if activeAuraStacks[spellId] ~= nil then
                    _addon:PrintDebug("Remove target aura " .. name .. " (" .. spellId .. ") slot " .. i.." because stacks changed.");
                    for k, effect in ipairs(auraEffects) do
                        aurasChanged = RemoveTargetAuraEffect(spellId, effect, name, activeAuraStacks[spellId], k) or aurasChanged;
                    end
                end
                -- Add new effects.
                _addon:PrintDebug("Add target aura " .. name .. " (" .. spellId .. ") slot " .. i);
                for k, effect in ipairs(auraEffects) do
                    aurasChanged = ApplyTargetAuraEffect(spellId, effect, name, count, k) or aurasChanged;
                end

                activeAuraStacks[spellId] = count;
            end

            activeAuraIds[spellId] = true;
        end

        i = i + 1;
        name, _, count, _, _, _, _, _, _, spellId = UnitAura("target", i, filter);
    end

    return aurasChanged;
end

---Update target auras.
function _addon.Target:UpdateAuras()
    _addon:PrintDebug("Updating target auras");
    local aurasChanged = false;

    for spellId in pairs(activeAuraIds) do
        activeAuraIds[spellId] = false;
    end
    for auraName in pairs(aurasByName) do
        aurasByName[auraName] = false;
    end
    for auraName in pairs(aurasByNamePersonal) do
        aurasByNamePersonal[auraName] = false;
    end

    aurasChanged = UpdateAuratype("HELPFUL") or aurasChanged;
    aurasChanged = UpdateAuratype("HARMFUL") or aurasChanged;

    -- Remove effects from missing auras.
    for spellId, isActive in pairs(activeAuraIds) do
        if isActive == false then
            local auraEffects = aurasTarget[spellId];
            local name = GetSpellInfo(spellId);
            _addon:PrintDebug("Remove target aura " .. name .. " "..spellId);
            for k, effect in ipairs(auraEffects) do
                aurasChanged = RemoveTargetAuraEffect(spellId, effect, name, activeAuraStacks[spellId], k) or aurasChanged;
            end
            activeAuraIds[spellId] = nil;
            activeAuraStacks[spellId] = nil;
        end
    end

    for auraName, isActive in pairs(aurasByName) do
        if not isActive then
            aurasByName[auraName] = nil;
            SETargetAuraChanged(auraName);
        end
    end
    for auraName, isActive in pairs(aurasByNamePersonal) do
        if not isActive then
            aurasByNamePersonal[auraName] = nil;
            SETargetAuraChanged(auraName, true);
        end
    end

    if aurasChanged then _addon:TriggerUpdate() end
end

---Check if target has aura with name.
---@param auraName string The aura name.
---@param personalOnly boolean|nil Only return true if aura source is self.
---@return boolean
function _addon.Target.HasAuraName(auraName, personalOnly)
    if personalOnly then return aurasByNamePersonal[auraName] end
    return aurasByName[auraName];
end
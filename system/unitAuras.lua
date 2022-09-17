--[[
TODO
Add toggles in settings for foreign auras with conditional effects that can't be known?
    "Assume X does Y" e.g. "Assume Devotion Aura increases healing recieved."
    Possibly add whitelist as alternative?

Missing target auras
    Master Poisoner crit, somehow infer from poisons?
    Improved Faerie Fire hit (see above)
    Improved Devotion Aura
    Divinity?
    Blessing of Sanctuary?
]]

---@class AddonEnv
local _addon = select(2, ...);
local ScriptingAuraChanged = _addon.scripting.AuraChanged;
local ScriptingMechanicChanged = _addon.scripting.MechanicChanged;

---True => active, false => should be removed, nil => not active
---@type table<"target"|"player", table<integer, boolean>>
local activeAuraIds = {
    player = {},
    target = {}
};
---@type table<"target"|"player", table<integer, integer>>
local activeAuraStacks = {
    player = {},
    target = {}
};
---@type table<"target"|"player", table<string, boolean|nil>>
local aurasByName = {
    player = {},
    target = {}
};
---@type table<"target"|"player", table<string, boolean|nil>>
local aurasByNamePersonal = {
    player = {},
    target = {}
};
---@type table<"target"|"player", table<string, integer|nil>>
local aurasByNamePersonalStacks = {
    player = {},
    target = {}
};
---@type table<"target"|"player", table<SpellMechanic, boolean|nil>>
local mechanicsActive = {
    player = {},
    target = {}
};

-----------------------------------------------
-- General functions
-----------------------------------------------

---Apply unit aura effect.
---@param spellId integer
---@param auraEffect UnitAuraEffect
---@param name string
---@param stacks integer
---@param effectSlot integer
---@param personal boolean
local function ApplyUnitAuraEffect(spellId, auraEffect, name, stacks, effectSlot, personal)
    if effectSlot then
        name = name .. "-" .. effectSlot;
    end

    assert(auraEffect.value or auraEffect.scriptValue, "Aura effect " .. name .. " has no value or scriptValue defined!");
    local value = auraEffect.value or _addon.scripting.GetValue(auraEffect.scriptValue);

    if stacks > 1 and auraEffect.hasStacks then
        value = value * stacks;
    end

    return _addon:ApplyAuraEffect(name, auraEffect, value, spellId, personal);
end

--- Remove unit aura effect.
---@param spellId integer
---@param auraEffect UnitAuraEffect
---@param name string
---@param stacks integer
---@param effectSlot number|nil
---@param personal boolean
local function RemoveUnitAuraEffect(spellId, auraEffect, name, stacks, effectSlot, personal)
    if effectSlot then
        name = name .. "-" .. effectSlot;
    end

    assert(auraEffect.value or auraEffect.scriptValue,
        "Player aura effect " .. name .. " has no value or scriptValue defined!");
    local value = auraEffect.value or _addon.scripting.GetValue(auraEffect.scriptValue);

    if stacks > 1 and auraEffect.hasStacks then
        value = value * stacks;
    end

    return _addon:RemoveAuraEffect(name, auraEffect, value, spellId, personal);
end

---Update aura type for unit.
---@param unit "player"|"target"
---@param filter "HARMFUL"|"HELPFUL"
---@return boolean
local function UpdateAuratype(unit, filter)
    local aurasChanged = false;
    local auraTable = unit == "target" and _addon.aurasTarget or _addon.aurasPlayer;
    local auraNameList = aurasByName[unit];
    local auraNamePersonalList = aurasByNamePersonal[unit];
    local auraNamePersonalStackList = aurasByNamePersonalStacks[unit];
    local auraStacksList = activeAuraStacks[unit];
    local activeAuraList = activeAuraIds[unit];
    local unitMechanics = mechanicsActive[unit];
    local mechanicAuras = _addon.mechanicAuras;

    for i = 1, 255 do
        local name, _, count, _, _, _, source, _, _, spellId = UnitAura(unit, i, filter);
        if not name then break end
        local isPersonal = source == "player";

        if auraNameList[name] == nil then ScriptingAuraChanged(name, unit) end
        auraNameList[name] = true;
        if isPersonal then
            if auraNamePersonalList[name] == nil
                or auraNamePersonalStackList[name] ~= count then ScriptingAuraChanged(name, unit, true) end
            auraNamePersonalList[name] = true;
            auraNamePersonalStackList[name] = count;
        end

        if mechanicAuras[spellId] then
            local m = mechanicAuras[spellId];
            if unitMechanics[m] == nil then ScriptingMechanicChanged(m, unit) end
            unitMechanics[m] = true;
        end

        if auraTable[spellId] and (not auraTable[spellId][1].onlyPersonal or isPersonal) then
            local auraEffects = auraTable[spellId];

            if auraStacksList[spellId] ~= count then
                -- Remove old effects if stacks changed.
                if auraStacksList[spellId] ~= nil then
                    _addon.util.PrintDebug("Remove " .. unit .. " aura " ..
                        name .. " (" .. spellId .. ") slot " .. i .. " because stacks changed.");
                    for k, effect in ipairs(auraEffects) do
                        aurasChanged = RemoveUnitAuraEffect(spellId, effect, name, auraStacksList[spellId], k, isPersonal) or
                            aurasChanged;
                    end
                end
                -- Add new effects.
                _addon.util.PrintDebug("Add " .. unit .. " aura " .. name .. " (" .. spellId .. ") slot " .. i);
                for k, effect in ipairs(auraEffects) do
                    aurasChanged = ApplyUnitAuraEffect(spellId, effect, name, count, k, isPersonal) or aurasChanged;
                end

                auraStacksList[spellId] = count;
            end

            activeAuraList[spellId] = true;
        end
    end

    return aurasChanged;
end

---Update buffs and debuffs for unit.
---@param unit "player"|"target"
---@param clearOnly boolean|nil
function _addon:UpdateAurasForUnit(unit, clearOnly)
    local aurasChanged = false;
    local auraTable = unit == "target" and self.aurasTarget or self.aurasPlayer;
    local activeAuraList = activeAuraIds[unit];
    local auraNameList = aurasByName[unit];
    local auraNamePersonalList = aurasByNamePersonal[unit];
    local auraStacksList = activeAuraStacks[unit];
    local auraNamePersonalStackList = aurasByNamePersonalStacks[unit];
    local unitMechanics = mechanicsActive[unit];

    for spellId in pairs(activeAuraList) do
        activeAuraList[spellId] = false;
    end
    for auraName in pairs(auraNameList) do
        auraNameList[auraName] = false;
    end
    for auraName in pairs(auraNamePersonalList) do
        auraNamePersonalList[auraName] = false;
    end
    for m in pairs(unitMechanics) do
        unitMechanics[m] = false;
    end

    if not clearOnly then
        aurasChanged = UpdateAuratype(unit, "HELPFUL") or aurasChanged;
        aurasChanged = UpdateAuratype(unit, "HARMFUL") or aurasChanged;
    end

    -- Remove effects from missing auras.
    for spellId, isActive in pairs(activeAuraList) do
        if isActive == false then
            local auraEffects = auraTable[spellId];
            local name = GetSpellInfo(spellId);
            self.util.PrintDebug("Remove " .. unit .. " aura " .. name .. " " .. spellId);
            for k, effect in ipairs(auraEffects) do
                aurasChanged = RemoveUnitAuraEffect(spellId, effect, name, auraStacksList[spellId], k, auraNamePersonalList[name] ~= nil) or
                    aurasChanged;
            end
            activeAuraList[spellId] = nil;
            auraStacksList[spellId] = nil;
        end
    end

    for auraName, isActive in pairs(auraNameList) do
        if not isActive then
            auraNameList[auraName] = nil;
            ScriptingAuraChanged(auraName, unit);
        end
    end
    for auraName, isActive in pairs(auraNamePersonalList) do
        if not isActive then
            auraNamePersonalList[auraName] = nil;
            auraNamePersonalStackList[auraName] = nil;
            ScriptingAuraChanged(auraName, unit, true);
        end
    end
    for m, isActive in pairs(unitMechanics) do
        if not isActive then
            unitMechanics[m] = nil;
            ScriptingMechanicChanged(m, unit);
        end
    end

    if aurasChanged then self:TriggerUpdate() end
end

---Check if unit has an aura with given mechanic active.
---@param unit "player"|"target"
---@param mechanic SpellMechanic
local function UnitHasMechanicActive(unit, mechanic)
    return mechanicsActive[unit][mechanic] == true;
end

_addon.events.Register("UNIT_AURA", function (unit)
    if unit == "player" or unit == "target" then
        _addon:UpdateAurasForUnit(unit);
    end
end);

-----------------------------------------------
-- Player
-----------------------------------------------

--- Simulate having a buff.
---@param spellId integer
function _addon:DebugApplyBuff(spellId)
    local buffdata = self.aurasPlayer[spellId];
    local name = GetSpellInfo(spellId);

    if buffdata == nil then
        self.util.PrintError("No data for ID " .. spellId);
        return;
    end

    self.util.PrintWarn("Add buff " .. name .. " (" .. spellId .. ")");

    for k, effect in ipairs(buffdata) do
        ApplyUnitAuraEffect(spellId, effect, name, 1, k, true);
    end

    self:TriggerUpdate();
end

_addon.events.Register("PLAYER_ENTERING_WORLD", function() _addon:UpdateAurasForUnit("player") end);

-----------------------------------------------
-- Target
-----------------------------------------------

---@class Target
local Target = _addon.Target;

---Check if target has aura with name.
---@param auraName string The aura name.
---@param personalOnly boolean|nil Only return true if aura source is self.
---@return boolean
function Target.HasAuraName(auraName, personalOnly)
    if personalOnly then return aurasByNamePersonal["target"][auraName] end
    return aurasByName["target"][auraName];
end

---Get amount of aura applications on target, if any.
---@param auraName string The aura name.
---@param personalOnly boolean|nil Only return true if aura source is self.
---@param debuff boolean|nil Look for debuff instead of buff.
---@return integer|nil
function Target.GetAuraApplications(auraName, personalOnly, debuff)
    if personalOnly then
        return aurasByNamePersonalStacks["target"][auraName];
    end

    local filter = debuff and "HARMFUL" or "HELPFUL";
    local i = 1;
    local name, _, count = UnitAura("target", i, filter);
    while name do
        if name == auraName then
            return count > 0 and count or 1;
        end
        i = i + 1;
        name, _, count = UnitAura("target", i, filter);
    end
end

---Check if target has an aura with given mechanic active.
---@param mechanic SpellMechanic
function Target.HasMechanicActive(mechanic)
    return UnitHasMechanicActive("target", mechanic);
end

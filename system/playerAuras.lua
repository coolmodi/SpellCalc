---@type AddonEnv
local _addon = select(2, ...);

---@type table<number, boolean>
local activeRelevantBuffs = {};

--- Apply aura effect using tooltip or hardcoded values.
---@param auraEffect UnitAuraEffect
---@param usedKey string
---@param name string
---@param buffSlot number|nil
---@param effectSlot number|nil
local function ApplyPlayerAuraEffect(auraEffect, usedKey, name, buffSlot, effectSlot)
    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end
    if not auraEffect.value and not auraEffect.scriptValue then
        _addon:PrintError("Player aura effect "..name.." has no value or scriptValue defined!");
        return;
    end
    local value = auraEffect.value or _addon.ScriptEffects.GetValue(auraEffect.scriptValue);
    _addon:ApplyAuraEffect(name, auraEffect, value);
end

--- Remove aura effect using cached tooltip or hardcoded values.
---@param auraEffect UnitAuraEffect
---@param usedKey string
---@param name string
---@param effectSlot number|nil
local function RemovePlayerAuraEffect(auraEffect, usedKey, name, effectSlot)
    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end
    if not auraEffect.value and not auraEffect.scriptValue then
        _addon:PrintError("Player aura effect "..name.." has no value or scriptValue defined!");
        return;
    end
    local value = auraEffect.value or _addon.ScriptEffects.GetValue(auraEffect.scriptValue);
    _addon:RemoveAuraEffect(name, auraEffect, value);
end

--- Update player auras
---@param clearOnly boolean
function _addon:UpdatePlayerAuras(clearOnly)
    self:PrintDebug("Updating buffs");

    for k in pairs(activeRelevantBuffs) do
        activeRelevantBuffs[k] = false;
    end

    local aurasChanged = false;

    if not clearOnly then
        for i = 1, 40 do
            local name, _, _, _, _, _, _, _, _, spellId = UnitBuff("player", i);
            if name == nil then
                break;
            end

            if self.aurasPlayer[spellId] ~= nil then
                local pAuraData = self.aurasPlayer[spellId];

                if activeRelevantBuffs[spellId] == nil then
                    self:PrintDebug("Add aura " .. name .. " (" .. spellId .. ") slot " .. i);

                    for k, effect in ipairs(pAuraData) do
                        ApplyPlayerAuraEffect(effect, spellId, name, i, k);
                    end

                    aurasChanged = true;
                end
                activeRelevantBuffs[spellId] = true;
            end
        end
    end

    for spellId, isActive in pairs(activeRelevantBuffs) do
        if isActive == false then
            self:PrintDebug("Remove aura " .. spellId);
            local pAuraData = self.aurasPlayer[spellId];
            local name = GetSpellInfo(spellId);

            for k, effect in ipairs(pAuraData) do
                RemovePlayerAuraEffect(effect, spellId, name, k)
            end

            activeRelevantBuffs[spellId] = nil;
            aurasChanged = true;
        end
    end

    if aurasChanged then
        self:TriggerUpdate();
    end
end

--- Simulate having a buff.
---@param spellId number
function _addon:DebugApplyBuff(spellId)
    local buffdata = self.aurasPlayer[spellId];
    local name = GetSpellInfo(spellId);
    local usedSlot = 32;

    if buffdata == nil then
        self:PrintError("No data for ID "..spellId);
        return;
    end

    self:PrintWarn("Add buff " .. name .. " (" .. spellId .. ") in slot " .. usedSlot);

    for k, effect in ipairs(buffdata) do
        ApplyPlayerAuraEffect(effect, spellId, name, usedSlot, k);
    end

    self:TriggerUpdate();
end
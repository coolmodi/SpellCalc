---@class AddonEnv
local _addon = select(2, ...);

---@type table<integer, boolean>
local activeRelevantBuffs = {};

--- Apply aura effect using tooltip or hardcoded values.
---@param auraEffect UnitAuraEffect
---@param usedKey string
---@param name string
---@param effectSlot integer|nil
local function ApplyPlayerAuraEffect(auraEffect, usedKey, name, effectSlot)
    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end
    assert(auraEffect.value or auraEffect.scriptValue, "Player aura effect "..name.." has no value or scriptValue defined!");
    local value = auraEffect.value or _addon.scripting.GetValue(auraEffect.scriptValue);
    _addon:ApplyAuraEffect(name, auraEffect, value);
end

--- Remove aura effect using cached tooltip or hardcoded values.
---@param auraEffect UnitAuraEffect
---@param usedKey string
---@param name string
---@param effectSlot integer|nil
local function RemovePlayerAuraEffect(auraEffect, usedKey, name, effectSlot)
    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end
    assert(auraEffect.value or auraEffect.scriptValue, "Player aura effect "..name.." has no value or scriptValue defined!");
    local value = auraEffect.value or _addon.scripting.GetValue(auraEffect.scriptValue);
    _addon:RemoveAuraEffect(name, auraEffect, value);
end

--- Update player auras
---@param clearOnly boolean|nil
function _addon:UpdatePlayerAuras(clearOnly)
    self.util.PrintDebug("Updating buffs");

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
                    self.util.PrintDebug("Add aura " .. name .. " (" .. spellId .. ") slot " .. i);

                    for k, effect in ipairs(pAuraData) do
                        ApplyPlayerAuraEffect(effect, tostring(spellId), name, k);
                    end

                    aurasChanged = true;
                end
                activeRelevantBuffs[spellId] = true;
            end
        end
    end

    for spellId, isActive in pairs(activeRelevantBuffs) do
        if isActive == false then
            self.util.PrintDebug("Remove aura " .. spellId);
            local pAuraData = self.aurasPlayer[spellId];
            local name = GetSpellInfo(spellId);

            for k, effect in ipairs(pAuraData) do
                RemovePlayerAuraEffect(effect, tostring(spellId), name, k)
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
---@param spellId integer
function _addon:DebugApplyBuff(spellId)
    local buffdata = self.aurasPlayer[spellId];
    local name = GetSpellInfo(spellId);

    if buffdata == nil then
        self.util.PrintError("No data for ID "..spellId);
        return;
    end

    self.util.PrintWarn("Add buff " .. name .. " (" .. spellId .. ")");

    for k, effect in ipairs(buffdata) do
        ApplyPlayerAuraEffect(effect, tostring(spellId), name, k);
    end

    self:TriggerUpdate();
end
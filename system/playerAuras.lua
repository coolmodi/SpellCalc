---@type AddonEnv
local _addon = select(2, ...);

---@type table<number, boolean>
local activeRelevantBuffs = {};
---@type table<string, number>
local buffValueCache = {};

local scanTt = CreateFrame("GameTooltip", "SpellCalcScanTooltip", nil, "GameTooltipTemplate");
scanTt:SetOwner( WorldFrame, "ANCHOR_NONE" );
scanTt:AddFontStrings(
    scanTt:CreateFontString("$parentTextLeft1", nil, "GameTooltipText"),
    scanTt:CreateFontString("$parentTextRight1", nil, "GameTooltipText"));
local buffDesc = _G["SpellCalcScanTooltipTextLeft2"];

--- Get buff description if possible.
---@param slot number
---@return string|nil
local function GetBuffDescription(slot)
    scanTt:ClearLines();
    scanTt:SetUnitAura("player", slot, "HELPFUL");
    return buffDesc:GetText();
end

--- Apply aura effect using tooltip or hardcoded values.
---@param playerAuraEffect PlayerAuraEffect
---@param usedKey string
---@param name string
---@param buffSlot number|nil
---@param effectSlot number|nil
local function ApplyPlayerAuraEffect(playerAuraEffect, usedKey, name, buffSlot, effectSlot)
    local value;

    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end

    if playerAuraEffect.ttValue then
        local desc = GetBuffDescription(buffSlot);
        if desc then
            value = tonumber(string.match(desc, playerAuraEffect.ttValue));
            buffValueCache[usedKey] = value;
        else
            -- TODO: for some reason totem buffs just don't work here,
            -- they are found as buff with correct name but setting tooltip just does nothing
            -- only if you aren't the shaman yourself
            -- all other aura like buffs seem to work
            -- Update: GBOW is aparently also a POS (now?). Hardcode values...
            _addon:PrintError("Buff " .. name .. " in slot " .. buffSlot .. " has no description!");
        end
    end

    if value == nil then
        if playerAuraEffect.value then
            value = playerAuraEffect.value;
        else
            _addon:PrintError("Can't resolve value for buff " .. name .. " in slot " .. buffSlot .. "! Buff will be ignored!");
            value = 0;
        end
    end

    _addon:ApplyAuraEffect(name, playerAuraEffect, value);
end

--- Remove aura effect using cached tooltip or hardcoded values.
---@param playerAuraEffect PlayerAuraEffect
---@param usedKey string
---@param name string
---@param effectSlot number|nil
local function RemovePlayerAuraEffect(playerAuraEffect, usedKey, name, effectSlot)
    local value;

    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end

    if buffValueCache[usedKey] then
        value = buffValueCache[usedKey];
        buffValueCache[usedKey] = nil;
    else
        value = playerAuraEffect.value;
    end

    _addon:RemoveAuraEffect(name, playerAuraEffect, value);
end

--- Update player auras
---@param clearOnly boolean
function _addon:UpdatePlayerAuras(clearOnly)
    self:PrintDebug("Updating buffs");

    for k in pairs(activeRelevantBuffs) do
        activeRelevantBuffs[k] = false;
    end

    local aurasChanged = false;
    local auraConditions = self:GetAuraConditions();

    if not clearOnly then
        for i = 1, 40 do
            local name, _, _, _, _, _, _, _, _, spellId = UnitBuff("player", i);
            if name == nil then
                break;
            end

            if self.aurasPlayer[spellId] ~= nil then
                local pAuraData = self.aurasPlayer[spellId];

                if pAuraData.condition == nil or pAuraData.condition == 0
                or bit.band(pAuraData.condition, auraConditions) == pAuraData.condition then
                    if activeRelevantBuffs[spellId] == nil then
                        self:PrintDebug("Add aura " .. name .. " (" .. spellId .. ") slot " .. i);

                        if pAuraData.effects == nil then
                            ApplyPlayerAuraEffect(pAuraData, spellId, name, i);
                        else
                            for k, effect in ipairs(pAuraData.effects) do
                                ApplyPlayerAuraEffect(effect, spellId, name, i, k);
                            end
                        end

                        aurasChanged = true;
                    end
                    activeRelevantBuffs[spellId] = true;
                end
            end
        end
    end

    for spellId, isActive in pairs(activeRelevantBuffs) do
        if isActive == false then
            self:PrintDebug("Remove aura " .. spellId);
            local pAuraData = self.aurasPlayer[spellId];
            local name = GetSpellInfo(spellId);

            if pAuraData.effects == nil then
                RemovePlayerAuraEffect(pAuraData, spellId, name);
            else
                for k, effect in ipairs(pAuraData.effects) do
                    RemovePlayerAuraEffect(effect, spellId, name, k)
                end
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

    if buffdata.effects == nil then
        ApplyPlayerAuraEffect(buffdata, spellId, name, usedSlot);
    else
        for k, effect in ipairs(buffdata.effects) do
            ApplyPlayerAuraEffect(effect, spellId, name, usedSlot, k);
        end
    end

    self:TriggerUpdate();
end
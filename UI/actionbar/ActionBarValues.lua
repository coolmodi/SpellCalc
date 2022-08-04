---@class AddonEnv
local _addon = select(2, ...);

local SPELL_EFFECT_FLAGS = _addon.SPELL_EFFECT_FLAGS;
local SEAL_OF_RIGHTEOUSNESS = GetSpellInfo(20154);
local SEAL_OF_COMMAND = GetSpellInfo(20375);
local PRAYER_OF_MENDING = GetSpellInfo(33076);
local EARTH_SHIELD = GetSpellInfo(974);
local SEAL_OF_VENGEANCE = GetSpellInfo(31801);
local SEAL_OF_CORRUPTION = GetSpellInfo(348704);

local ActionBarValues = {};
local spellsInBar = {};
local needsUpdate = {};
local slotMap = {};
local actionbarSupport = "STOCK";
---@type ActionButtonText
local buttonText;

_addon.ActionBarValues = ActionBarValues;

for i = 1, 120 do
    slotMap[i] = {
        [i] = true
    }
end

----------------------------------------------------------------
-- Value Handlers
----------------------------------------------------------------

--- Get value to show for a dummy effect
---@param calcedEffect CalcedEffect
---@param spellName string
local function GetDummyValue(calcedEffect, spellName)
    if spellName == SEAL_OF_RIGHTEOUSNESS
        or spellName == SEAL_OF_COMMAND
        or spellName == SEAL_OF_VENGEANCE or spellName == SEAL_OF_CORRUPTION then
        local k = "avg" -- SpellCalc_settings.abSealValue;
        if calcedEffect[k] then
            return calcedEffect[k];
        end
    elseif spellName == PRAYER_OF_MENDING or spellName == EARTH_SHIELD then
        local k = SpellCalc_settings.abDirectValue;
        if calcedEffect[k] then
            return calcedEffect[k];
        end
    end

    return "DMY!";
end

--- Get value to show for a direct or duration effect.
---@param critChance number
---@param calcedSpell CalcedSpell
---@param valueKey string
local function GetBasicValue(calcedSpell, critChance, valueKey)
    local calcedEffect = calcedSpell[1];
    assert(calcedEffect, "Spell has no effect attached?");

    if valueKey == "allTicks" then
        if bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DMG_SHIELD) > 0 then
            if calcedSpell.charges > 1 then
                return calcedEffect.avgCombined * calcedSpell.charges;
            end
            return calcedEffect.avgCombined;
        else
            return calcedEffect.avgCombined * (calcedEffect.ticks or 1);
        end
    end

    if valueKey == "casts" then
        if calcedSpell.castingData.castsToOom <= -1 then
            return "∞";
        end
        return calcedSpell.castingData.castsToOom - 0.5;
    end

    if valueKey == "castsTime" then
        if calcedSpell.castingData.timeToOom <= -1 then
            return "∞";
        end
        return calcedSpell.castingData.timeToOom - 0.5;
    end

    if valueKey == "avgCrit" and critChance == 0 then
        valueKey = "avg";
    end

    if calcedEffect[valueKey] then
        return calcedEffect[valueKey];
    end

    return "ERR!";
end

----------------------------------------------------------------
-- Slot Update
----------------------------------------------------------------

local UpdateLoop;

do
    local lastSyncState = 0;

    --- Checks if buttons need an update, updates one button per frame.
    UpdateLoop = function()
        if not SpellCalc_settings.abShow then
            return;
        end

        if lastSyncState < _addon:GetCurrentState() then
            for slot in pairs(spellsInBar) do
                needsUpdate[slot] = true;
            end
            lastSyncState = _addon:GetCurrentState();
        end

        for slot, _ in pairs(needsUpdate) do
            _addon:PrintDebug("Update button slot " .. slot);
            local spellId = spellsInBar[slot];
            local calcedSpell = _addon:GetCalcedSpell(spellId);

            if calcedSpell ~= nil then
                ---@type CalcedEffect
                local calcedEffect = calcedSpell[1];
                assert(calcedEffect, "Spell has no effect attached?");

                if (bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.TRIGGERED_SPELL) > 0) then
                    calcedSpell = calcedEffect.spellData;
                    assert(calcedSpell and calcedSpell[1] ~= nil, "Triggere effect is missing spell or effect data!");
                    calcedEffect = calcedSpell[1];
                end

                local isHeal = bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.HEAL + SPELL_EFFECT_FLAGS.ABSORB) > 0;
                local isMana = bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.MANA_RESTORE) > 0;
                local showValue;

                if bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DUMMY_AURA) > 0 then
                    local spellName = GetSpellInfo(spellId);
                    showValue = GetDummyValue(calcedEffect, spellName);
                elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DMG_SHIELD) > 0 then
                    showValue = GetBasicValue(calcedSpell, calcedSpell.critChance, SpellCalc_settings.abDmgShieldValue);
                elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
                    showValue = GetBasicValue(calcedSpell, calcedSpell.critChance, SpellCalc_settings.abDurationValue);
                elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.MANA_RESTORE) > 0 then
                    showValue = GetBasicValue(calcedSpell, calcedSpell.critChance, SpellCalc_settings.abManaRestoreValue);
                else
                    showValue = GetBasicValue(calcedSpell, calcedSpell.critChance, SpellCalc_settings.abDirectValue);
                end

                if type(showValue) == "number" then
                    showValue = math.floor(showValue + 0.5);
                end

                buttonText.SetButtonText(slot, tostring(showValue), isHeal, isMana);
            else
                buttonText.SetButtonText(slot, "");
            end

            needsUpdate[slot] = nil;
            return;
        end
    end
end

--- Set spell ID for given action slot
---@param slot number
---@param spellId integer|nil
local function SetSlotSpell(slot, spellId)
    if spellsInBar[slot] == spellId or not buttonText.HasButtonText(slot) then
        return;
    end

    if spellId == nil or (not _addon.JUDGEMENT_IDS[spellId] and not _addon:GetHandledSpellID(spellId)) then
        _addon:PrintDebug("Set slot " .. slot .. " nil because spell " .. tostring(spellId) .. " is nil or not handled");
        spellsInBar[slot] = nil;
        needsUpdate[slot] = nil;
        buttonText.SetButtonText(slot, "");
        return;
    end

    _addon:PrintDebug("Set slot " .. slot .. " to spell " .. spellId);

    spellsInBar[slot] = spellId;
    needsUpdate[slot] = true;
end

--- Update action slot
---@param slot number
function ActionBarValues:SlotUpdate(slot)
    _addon:PrintDebug("Action slot update " .. slot);

    local aType, aId = GetActionInfo(slot);

    for mappedSlot, _ in pairs(slotMap[slot]) do
        _addon:PrintDebug("Slot is mapped to " .. mappedSlot);
        if aType == "spell" then
            SetSlotSpell(mappedSlot, aId);
        elseif aType == "macro" then
            SetSlotSpell(mappedSlot, GetMacroSpell(aId));
        else
            SetSlotSpell(mappedSlot, nil);
        end
    end
end

----------------------------------------------------------------
-- Actionbar Paging
----------------------------------------------------------------

local SetupPagingSupport;

do
    local barPageData = {};
    local pageAttribute;

    --- Remap action bar for paging.
    ---@param barPageData table
    ---@param updateOffset number
    local function PageActionbar(barPageData, updateOffset)
        if barPageData.updateOffset == updateOffset then
            return;
        end

        if barPageData.origOffset ~= updateOffset then
            for i = 1, 12, 1 do
                slotMap[updateOffset + i][barPageData.origOffset + i] = true;
                slotMap[barPageData.origOffset + i][barPageData.origOffset + i] = nil;
                ActionBarValues:SlotUpdate(updateOffset + i);
            end
        else
            for i = 1, 12, 1 do
                slotMap[barPageData.updateOffset + i][barPageData.origOffset + i] = nil;
                slotMap[barPageData.origOffset + i][barPageData.origOffset + i] = true;
                ActionBarValues:SlotUpdate(updateOffset + i);
            end
        end

        barPageData.updateOffset = updateOffset;
    end

    --- Add page data entry to enable paging support.
    ---@param barName string
    ---@param barNum number
    local function AddPagingBar(barName, barNum)
        local defaultOffset = (barNum - 1) * 12;
        local currentPage = _G[barName]:GetAttribute(pageAttribute);

        _G[barName]:HookScript("OnAttributeChanged", function(self, attr, value)
            if attr == pageAttribute then
                local barData = barPageData[self:GetName()];
                local paged = (value and value ~= 0) and value or barNum;
                local pagedOffset = (paged - 1) * 12;
                PageActionbar(barData, pagedOffset);
            end
        end);

        barPageData[barName] = {
            origOffset = defaultOffset,
            updateOffset = defaultOffset
        }

        if currentPage and currentPage ~= barNum and currentPage ~= 0 then
            PageActionbar(barPageData[barName], (currentPage - 1) * 12);
        end
    end

    --- Setup paging support for all bars.
    SetupPagingSupport = function()
        if actionbarSupport == "STOCK" then
            pageAttribute = "actionpage";
            AddPagingBar("MainMenuBarArtFrame", 1);
            return true;
        elseif actionbarSupport == "ELVUI" then
            pageAttribute = "state-page";
            for i = 1, 10 do
                AddPagingBar("ElvUI_Bar" .. i, i);
            end
            return true;
        elseif actionbarSupport == "DOMINOS" then
            pageAttribute = "state-page";
            for i = 1, 10 do
                AddPagingBar("DominosFrame" .. i, i);
            end
            return true;
        elseif actionbarSupport == "BT4" then
            pageAttribute = "state-page";
            -- BT4 creates bars on-demand only
            for i = 1, 10 do
                if _G["BT4Bar" .. i] then
                    AddPagingBar("BT4Bar" .. i, i);
                end
            end
            hooksecurefunc(Bartender4.Bar, "Create", function(_, id)
                local barNum = tonumber(id);
                if barNum then
                    AddPagingBar(("BT4Bar%s"):format(id), barNum);
                end
            end);
            return true;
        end

        return false;
    end
end

----------------------------------------------------------------
-- Functions and Setup
----------------------------------------------------------------

--- Clear every shown action button value.
function ActionBarValues:Clear()
    if buttonText then
        buttonText.ClearAll();
    end
end

--- Update style and position with current settings.
function ActionBarValues:UpdateStyle()
    if buttonText then
        buttonText.UpdateFonts();
        buttonText.UpdatePositions();
    end
end

--- Setup action button values.
function ActionBarValues:Setup()
    if buttonText then
        return;
    end

    buttonText = _addon:SetupActionButtonText();
    actionbarSupport = buttonText.detectedBars;

    if actionbarSupport == "NONE DETECTED" then
        _addon:PrintError("Actionbar addon is not supported!");
        return;
    end

    self:UpdateStyle();

    if not SetupPagingSupport() then
        _addon:PrintError("Paging support missing for used actionbar addon (" .. actionbarSupport .. ")!");
    end

    local delayedButtonUpdate = 3;
    local frame = CreateFrame("Frame", "SCABUpdateFrame");
    frame:SetScript("OnUpdate", function(self, diff)
        delayedButtonUpdate = delayedButtonUpdate - diff;
        if delayedButtonUpdate <= 0 then
            _addon:PrintDebug("Doing delayed full actionbar slot update")
            for i = 1, 120 do
                ActionBarValues:SlotUpdate(i);
            end
            frame:SetScript("OnUpdate", UpdateLoop);
        end
    end);

    _addon:PrintDebug("Action bar setup complete");
end

---@class AddonEnv
local _addon = select(2, ...);

local ADDON_EFFECT_FLAGS = _addon.CONST.ADDON_EFFECT_FLAGS;
local SEAL_OF_RIGHTEOUSNESS = GetSpellInfo(20154);
local SEAL_OF_COMMAND = GetSpellInfo(20375);
local PRAYER_OF_MENDING = GetSpellInfo(33076);
local EARTH_SHIELD = GetSpellInfo(974);
local SEAL_OF_VENGEANCE = GetSpellInfo(31801);
local SEAL_OF_CORRUPTION = GetSpellInfo(348704);

local ActionBarValues = {};
---@type table<integer, integer>
local spellsInBar = {};
---@type table<integer, boolean|nil>
local needsUpdate = {};
---@type table<integer, table<integer, boolean|nil>>
local slotMap = {};
local actionbarSupport = "STOCK";
---@type ActionButtonText
local buttonText;

_addon.ActionBarValues = ActionBarValues;

for i = 1, 144 do
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
    local calcedEffect = calcedSpell.effects[1];
    assert(calcedEffect, "Spell has no effect attached?");

    if valueKey == "allTicks" then
        if bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.DMG_SHIELD) > 0 then
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
            _addon.util.PrintDebug("Update button slot " .. slot);
            local spellId = spellsInBar[slot];
            local calcedSpell = _addon:GetCalcedSpell(spellId);

            if calcedSpell ~= nil then
                local calcedEffect = calcedSpell.effects[1];
                assert(calcedEffect, "Spell has no effect attached?");

                if (bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.TRIGGERED_SPELL) > 0 and not calcedSpell.dualWield) then
                    calcedSpell = calcedEffect.spellData;
                    assert(calcedSpell and calcedSpell.effects[1] ~= nil, "Triggere effect is missing spell or effect data!");
                    ---@type CalcedEffect
                    calcedEffect = calcedSpell.effects[1];
                end

                local isHeal = false;
                if bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.HEAL + ADDON_EFFECT_FLAGS.ABSORB) > 0
                or bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.TRIGGER_SPELL_AURA) > 0
                and bit.band(calcedEffect.spellData.effects[1].effectFlags, ADDON_EFFECT_FLAGS.HEAL + ADDON_EFFECT_FLAGS.ABSORB) > 0 then
                    isHeal = true;
                end
                local isMana = bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.MANA_RESTORE) > 0;
                local showValue;

                if bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.DUMMY_AURA) > 0 then
                    local spellName = GetSpellInfo(spellId);
                    showValue = GetDummyValue(calcedEffect, spellName);
                elseif calcedSpell.dualWield then
                    local key = SpellCalc_settings.abDirectValue;
                    if key == "avgCrit" then
                        showValue = calcedSpell.dualWield.avgCrit.mh + calcedSpell.dualWield.avgCrit.oh;
                    elseif key == "avgAfterMitigation" then
                        showValue = calcedSpell.dualWield.avgAfterMitigation;
                    else
                        showValue = calcedSpell.dualWield.avg.mh + calcedSpell.dualWield.avg.oh;
                    end
                elseif bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.DMG_SHIELD) > 0 then
                    showValue = GetBasicValue(calcedSpell, calcedSpell.critChance, SpellCalc_settings.abDmgShieldValue);
                elseif bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.DURATION) > 0 then
                    showValue = GetBasicValue(calcedSpell, calcedSpell.critChance, SpellCalc_settings.abDurationValue);
                elseif bit.band(calcedEffect.effectFlags, ADDON_EFFECT_FLAGS.MANA_RESTORE) > 0 then
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
---@param slot integer
---@param spellId integer|nil
local function SetSlotSpell(slot, spellId)
    if spellsInBar[slot] == spellId or not buttonText.HasButtonText(slot) then
        return;
    end

    if spellId == nil or (not _addon.CONST.JUDGEMENT_IDS[spellId] and not _addon:GetHandledSpellID(spellId)) then
        _addon.util.PrintDebug("Set slot " .. slot .. " nil because spell " .. tostring(spellId) .. " is nil or not handled");
        spellsInBar[slot] = nil;
        needsUpdate[slot] = nil;
        buttonText.SetButtonText(slot, "");
        return;
    end

    _addon.util.PrintDebug("Set slot " .. slot .. " to spell " .. spellId);

    spellsInBar[slot] = spellId;
    needsUpdate[slot] = true;
end

--- Update action slot
---@param slot integer
local function SlotUpdate(slot)
    _addon.util.PrintDebug("Action slot update " .. slot);

    local aType, aId = GetActionInfo(slot);

    for mappedSlot, _ in pairs(slotMap[slot]) do
        _addon.util.PrintDebug("Slot is mapped to " .. mappedSlot);
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
    ---@type table<string, {origOffset:integer, updateOffset:integer}>
    local barPageData = {};
    ---@type string
    local pageAttribute;

    --- Remap action bar for paging.
    ---@param barData table
    ---@param updateOffset integer
    local function PageActionbar(barData, updateOffset)
        if barData.updateOffset == updateOffset then
            return;
        end

        if barData.origOffset ~= updateOffset then
            for i = 1, 12, 1 do
                slotMap[updateOffset + i][barData.origOffset + i] = true;
                slotMap[barData.origOffset + i][barData.origOffset + i] = nil;
                SlotUpdate(updateOffset + i);
            end
        else
            for i = 1, 12, 1 do
                slotMap[barData.updateOffset + i][barData.origOffset + i] = nil;
                slotMap[barData.origOffset + i][barData.origOffset + i] = true;
                SlotUpdate(updateOffset + i);
            end
        end

        barData.updateOffset = updateOffset;
    end

    --- Add page data entry to enable paging support.
    ---@param barName string
    ---@param barNum integer
    local function AddPagingBar(barName, barNum)
        local defaultOffset = (barNum - 1) * 12;
        ---@type integer
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
                local barNum = tonumber(id)--[[@as integer]];
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
_addon.events.Register("PLAYER_LOGIN", function ()
    if buttonText then
        return;
    end

    buttonText = _addon:SetupActionButtonText();
    actionbarSupport = buttonText.detectedBars;

    if actionbarSupport == "NONE DETECTED" then
        _addon.util.PrintError("Actionbar addon is not supported!");
        return;
    end

    ActionBarValues:UpdateStyle();

    if not SetupPagingSupport() then
        _addon.util.PrintError("Paging support missing for used actionbar addon (" .. actionbarSupport .. ")!");
    end

    local delayedButtonUpdate = 3;
    local frame = CreateFrame("Frame", "SCABUpdateFrame");
    frame:SetScript("OnUpdate", function(self, diff)
        delayedButtonUpdate = delayedButtonUpdate - diff;
        if delayedButtonUpdate <= 0 then
            _addon.util.PrintDebug("Doing delayed full actionbar slot update")
            for i = 1, 120 do
                SlotUpdate(i);
            end
            frame:SetScript("OnUpdate", UpdateLoop);
        end
    end);

    _addon.util.PrintDebug("Action bar setup complete");
end)

_addon.events.Register("ACTIVE_TALENT_GROUP_CHANGED", function ()
    -- There's no slot update event and slots still have wrong value at this point.
    C_Timer.After(2, function ()
        for i=1, 120 do
            SlotUpdate(i);
        end
    end);
end);

_addon.events.Register("PLAYER_ENTERING_WORLD", function (isLogin, isReload)
    if isLogin or isReload then
        _addon.events.Register("ACTIONBAR_SLOT_CHANGED", function (slot)
            if slot >= 1 and slot <= 120 then
                SlotUpdate(slot);
            end
        end);
    end
end);
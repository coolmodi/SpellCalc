local _, _addon = ...;

local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;
local SPELL_TYPE = _addon.SPELL_TYPE;

local spellsInBar = {};
local actionButtons = {};
local needUpdate = {};
local lastSyncTime = 0;
local frame = CreateFrame("Frame", "SCABUpdateFrame");

--- Update buttons
-- Checks if buttons need an update, updates one button per frame
local function UpdateButtons(self, diff)
    if not SpellCalc_settings.abShow then
        return;
    end

    if lastSyncTime < _addon.lastChange then
        _addon:PrintDebug("All buttons need an update");
        for slot in pairs(spellsInBar) do
            needUpdate[slot] = true;
        end
    end
    lastSyncTime = _addon.lastChange;

    local directKey = SpellCalc_settings.abDirectValue;
    local durationKey = SpellCalc_settings.abDurationValue;

    for slot, _ in pairs(needUpdate) do
        _addon:PrintDebug("Update button slot " .. slot);
        local spellId = spellsInBar[slot];

        if spellId == nil then
            actionButtons[slot]:SetText("");
        else
            if _addon.calcedSpells[spellId] == nil or _addon.calcedSpells[spellId].updated < _addon.lastChange then
                _addon:CalcSpell(spellId);
            end

            local calcedSpell = _addon.calcedSpells[spellId];
            local effectData = calcedSpell[1];

            if calcedSpell.spellType == SPELL_TYPE.SPELL then
                if effectData.effectType == SPELL_EFFECT_TYPE.HOT or effectData.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
                    actionButtons[slot]:SetTextColor(0.3, 1, 0.3);
                else
                    actionButtons[slot]:SetTextColor(1, 1, 0.3);
                end

                if effectData.effectType == SPELL_EFFECT_TYPE.HOT or effectData.effectType == SPELL_EFFECT_TYPE.DOT then
                    actionButtons[slot]:SetText(math.floor(calcedSpell[1][durationKey] + 0.5));
                elseif effectData.effectType == SPELL_EFFECT_TYPE.DMG_SHIELD then
                    actionButtons[slot]:SetText(math.floor(calcedSpell[1].perCharge + 0.5));
                else
                    actionButtons[slot]:SetText(math.floor(calcedSpell[1][directKey] + 0.5));
                end
            else
                -- NYI
            end
        end

        needUpdate[slot] = nil;
        return;
    end
end

--- Add font string to the given button frame for button slot
-- @param buttonFrame The button frame object
-- @param slot The action slot number
local function AddStringToButton(buttonFrame, slot)
    if actionButtons[slot] ~= nil then 
        return;
    end

    local buttonText = buttonFrame:CreateFontString(nil, "ARTWORK");
    buttonText:SetFont("Fonts\\ARIALN.TTF", 12, "OUTLINE");
    buttonText:SetPoint("BOTTOMLEFT", buttonFrame, "BOTTOMLEFT", 0, 2);
    buttonText:SetPoint("BOTTOMRIGHT", buttonFrame, "BOTTOMRIGHT", 0, 2);
    buttonText:Show();

    actionButtons[slot] = buttonText;
end

--- Set spell ID for given action slot
-- @param slot The action slot number
-- @param spellId The ID of the spell currently in this slot, nil to unset
local function SetSlotSpell(slot, spellId)
    if spellsInBar[slot] == spellId or actionButtons[slot] == nil then
        return;
    end

    if spellId == nil then
        spellsInBar[slot] = nil;
        needUpdate[slot] = true;
        return;
    end

    if _addon.spellData[spellId] == nil and _addon.spellData[GetSpellInfo(spellId)] == nil then
        return;
    end

    _addon:PrintDebug("Set slot " .. slot .. " to spell " .. spellId);

    spellsInBar[slot] = spellId;
    needUpdate[slot] = true;
end

--- Setup action bars by adding strings for showing a value to all action buttons by slot id
function _addon:SetupActionbars()
    self:PrintDebug("Add action button strings");

    if _G["ActionButton1"] ~= nil then
        for i = 1, 12 do
            AddStringToButton(_G["ActionButton"..i], i);
            AddStringToButton(_G["MultiBarRightButton"..i], i+24);
            AddStringToButton(_G["MultiBarLeftButton"..i], i+36);
            AddStringToButton(_G["MultiBarBottomRightButton"..i], i+48);
            AddStringToButton(_G["MultiBarBottomLeftButton"..i], i+60);
        end
    end

    if _G["DominosActionButton1"] ~= nil then
        self:PrintDebug("Add Dominos support");
        local slotId = 0;
        for i = 1, 60 do
            if i <= 12 then
                slotId = i+12;
            else
                slotId = i+60;
            end
            AddStringToButton(_G["DominosActionButton"..i], slotId);
        end
    end

    frame:SetScript("OnUpdate", UpdateButtons);
    
    for i = 1, 120 do
        self:ActionbarSlotUpdate(i);
    end

    self:PrintDebug("Action bar setup complete");
end

--- Update action slot
-- @param slot The action slot number
function _addon:ActionbarSlotUpdate(slot)
    self:PrintDebug("Slot update " .. slot);
    local aType, aId = GetActionInfo(slot);

    if aType == "spell" then
        SetSlotSpell(slot, aId);
        return;
    end

    if aType == "macro" then
        local spellId = GetMacroSpell(aId);
        if spellId then
            SetSlotSpell(slot, spellId);
        end
        return;
    end

    SetSlotSpell(slot, nil);
end

--- Clear every shown value
function _addon:ClearActionBar()
    for slot = 1, 120 do
        actionButtons[slot]:SetText("");
    end
end
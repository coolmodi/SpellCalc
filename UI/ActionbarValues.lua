---@type AddonEnv
local _addon = select(2, ...);

local _, class = UnitClass("player");
local SPELL_EFFECT_FLAGS = _addon.SPELL_EFFECT_FLAGS;

local spellsInBar = {};
local actionButtons = {};
local needUpdate = {};
local lastSyncState = 0;
local frame = CreateFrame("Frame", "SCABUpdateFrame");
local actionbarSupport = "STOCK";
local slotRemap = {};
local slotDisable = {};
local delayedButtonUpdate = 0;

local ActionbarValues = {};
_addon.ActionbarValues = ActionbarValues;

-- For compatibility with old setting keys
-- TODO: Update settings? Change how it's done?
local settingsToKeyMap = {
    perSecond = "perSec",
    avgAfterMitigation = "avgAfterMitigation",
    avgTriggerHits = "avgAfterMitigation",
    perTick = "avgCombined",
    critAvg = "avgCrit",
    hitAvg = "avg", 
};

local SEAL_OF_RIGHTEOUSNESS = GetSpellInfo(20154);
local SEAL_OF_COMMAND = GetSpellInfo(20375);
local SEAL_OF_THE_CRUSADER = GetSpellInfo(20162);

--- Get value to show for a dummy effect
---@param calcedEffect CalcedEffect
---@param spellName string
local function GetDummyValue(calcedEffect, spellName)
    local k = SpellCalc_settings.abSealValue;

    if spellName == SEAL_OF_RIGHTEOUSNESS or spellName == SEAL_OF_COMMAND then
        if settingsToKeyMap[k] then
            return calcedEffect[settingsToKeyMap[k]];
        end
    elseif spellName == SEAL_OF_THE_CRUSADER then
        if k == "hitAvg" then
            return "";
        end
        return calcedEffect[settingsToKeyMap[k]];
    end

    return "ERR!";
end

--- Get value to show for a DoT/HoT or PTSA effect
---@param calcedEffect CalcedEffect
local function GetDurationValue(calcedEffect)
    local k = SpellCalc_settings.abDurationValue;

    if k == "allTicks" then
        return calcedEffect.avgCombined * calcedEffect.ticks;
    end

    if settingsToKeyMap[k] then
        return calcedEffect[settingsToKeyMap[k]];
    end

    return "ERR!";
end

--- Get value to show for a direct effect
---@param calcedEffect CalcedEffect
---@param critChance number
local function GetDirectValue(calcedEffect, critChance)
    local k = SpellCalc_settings.abDirectValue;
    if k == "critAvg" and critChance == 0 then
        k = "hitAvg";
    end

    if settingsToKeyMap[k] then
        return calcedEffect[settingsToKeyMap[k]];
    end

    return "ERR!";
end

--- Update buttons
-- Checks if buttons need an update, updates one button per frame
local function UpdateButtons(self, diff)
    if not SpellCalc_settings.abShow then
        return;
    end

    if delayedButtonUpdate > 0 then
        delayedButtonUpdate = delayedButtonUpdate - diff;
        if delayedButtonUpdate <= 0 then
            _addon:PrintDebug("Doing delayed full actionbar slot update")
            for i = 1, 120 do
                ActionbarValues:SlotUpdate(i);
            end
            delayedButtonUpdate = 0;
        end
    end

    if lastSyncState < _addon:GetCurrentState() then
        _addon:PrintDebug("All buttons need an update");
        for slot in pairs(spellsInBar) do
            needUpdate[slot] = true;
        end
        lastSyncState = _addon:GetCurrentState();
    end

    for slot, _ in pairs(needUpdate) do
        _addon:PrintDebug("Update button slot " .. slot);
        local spellId = spellsInBar[slot];
        local calcedSpell = _addon:GetCalcedSpell(spellId);

        if calcedSpell ~= nil then
            ---@type CalcedEffect
            local calcedEffect = calcedSpell[1];

            if bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.HEAL + SPELL_EFFECT_FLAGS.ABSORB) > 0 then
                actionButtons[slot]:SetTextColor(0.3, 1, 0.3);
            else
                actionButtons[slot]:SetTextColor(1, 1, 0.3);
            end

            local showValue;

            if bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DUMMY_AURA) > 0 then
                local spellName = GetSpellInfo(spellId);
                showValue = GetDummyValue(calcedEffect, spellName);
            elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
                showValue = GetDurationValue(calcedEffect);
            elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DMG_SHIELD) > 0 then
                showValue = calcedEffect.avgCombined;
            else
                showValue = GetDirectValue(calcedEffect, calcedSpell.critChance);
            end

            if type(showValue) == "number" then
                showValue = math.floor(showValue + 0.5);
            end

            actionButtons[slot]:SetText(showValue);
        end

        needUpdate[slot] = nil;
        return;
    end
end

--- Get offset based on button frame height
---@param buttonFrame table
---@param fontObject table
---@param offsetPct number
local function GetButtonPosOffset(buttonFrame, fontObject, offsetPct)
    local oldString = fontObject:GetText();
    fontObject:SetText("-");
    local hs = fontObject:GetStringHeight();
    fontObject:SetText(oldString);
    return buttonFrame:GetHeight() * offsetPct / 100 - hs / 2;
end

--- Add font string to the given button frame for button slot
---@param buttonFrame table
---@param slot number
local function AddStringToButton(buttonFrame, slot)
    if actionButtons[slot] ~= nil then 
        return;
    end

    if buttonFrame == nil then
        _addon:PrintDebug("buttonFrame is nil for slot "..slot);
        return;
    end

    local buttonText = buttonFrame:CreateFontString(nil, "ARTWORK");
    buttonText:SetFont("Fonts\\ARIALN.TTF", SpellCalc_settings.abSize, "OUTLINE");
    local offset = GetButtonPosOffset(buttonFrame, buttonText, SpellCalc_settings.abPosition);
    buttonText:SetPoint("BOTTOMLEFT", buttonFrame, "BOTTOMLEFT", 0, offset);
    buttonText:SetPoint("BOTTOMRIGHT", buttonFrame, "BOTTOMRIGHT", 0, offset);
    buttonText:Show();

    actionButtons[slot] = buttonText;
end

--- Set spell ID for given action slot
---@param slot number
---@param spellId number|nil
local function SetSlotSpell(slot, spellId)
    if spellsInBar[slot] == spellId or actionButtons[slot] == nil then
        return;
    end

    if spellId == nil or (spellId ~= _addon.JUDGEMENT_ID and not _addon:GetHandledSpellID(spellId)) then
        _addon:PrintDebug("Set slot "..slot.." nil because spell "..tostring(spellId).." is nil or not handled");
        spellsInBar[slot] = nil;
        needUpdate[slot] = nil;
        actionButtons[slot]:SetText("");
        return;
    end

    _addon:PrintDebug("Set slot " .. slot .. " to spell " .. spellId);

    spellsInBar[slot] = spellId;
    needUpdate[slot] = true;
end

--- Remap action slot to another for stance paging
---@param origStart number @Original first slot of the bar that paged
---@param newStart number @First slot of the bar that holds the buttons to use instead
local function RemapActionSlots(origStart, newStart)
    if origStart and newStart then
        for i=0, 11, 1 do
            slotRemap[newStart + i] = origStart + i;
            slotDisable[origStart + i] = true;
            ActionbarValues:SlotUpdate(newStart + i);
        end
        return;
    end

    for new, orig in pairs(slotRemap) do
        slotRemap[new] = nil;
        slotDisable[orig] = nil;
        ActionbarValues:SlotUpdate(orig);
    end
end

--- Update shapeshift or stance for Dominos bars
---@param form string
local function ShapeShiftRemapDominos(form)
    local profileName = DominosDB.profileKeys[UnitName("player") .. " - " .. GetRealmName()];
    local profileFrames = DominosDB.profiles[profileName].frames;
    _addon:PrintDebug("Remap bars for Dominos from " .. form .. " for profile " .. profileName);
    for barNum, data in ipairs(profileFrames) do
        if data.pages[class] and data.pages[class][form] then
            local tbar = (data.pages[class][form] + barNum) % 10;
            _addon:PrintDebug("Remap bar " .. barNum .. " to bar " .. tbar);
            RemapActionSlots(barNum*12-11, tbar*12-11)
        end
    end
end

--- Update shapeshift or stance for Bartender4 bars
---@param form string
local function ShapeShiftRemapBT4(form)
    local profileName = Bartender4DB.profileKeys[UnitName("player") .. " - " .. GetRealmName()];
    local profileFrames = Bartender4DB.namespaces.ActionBars.profiles[profileName].actionbars;
    _addon:PrintDebug("Remap bars for BT4 from " .. form .. " for profile " .. profileName);
    for barNum, data in ipairs(profileFrames) do
        if data.states and data.states.stance and data.states.stance[class] and data.states.stance[class][form] then
            local tbar = data.states.stance[class][form];
            _addon:PrintDebug("Remap bar " .. barNum .. " to bar " .. tbar);
            RemapActionSlots(barNum*12-11, tbar*12-11)
        end
    end
end

--- Update shapeshift or stance for ElvUI bars
-- TODO: Only supports bar 1 atm
---@param form string
local function ShapeShiftRemapElv(form)
    local formBar;
    if class == "DRUID" then
        if form == "bear" then
            formBar = 3;
        elseif form == "cat" then
            formBar = 1;
        elseif form == "moonkin" then
            formBar = 4;
        end
    elseif class == "WARRIOR" then
        if form == "battle" then
            formBar = 3;
        elseif form == "defensive" then
            formBar = 2;
        elseif form == "berserker" then
            formBar = 1;
        end
    else
        return;
    end

    if formBar == nil then
        return;
    end

    local profileName = ElvDB.profileKeys[UnitName("player") .. " - " .. GetRealmName()];
    local profileFrames = ElvDB.profiles[profileName].actionbar;
    local data = profileFrames.bar1;
    _addon:PrintDebug("Remap bar 1 for Elv for profile " .. profileName);
    local tbar = strmatch(data.paging[class], "bonusbar:"..formBar.."..?(%d+)");
    _addon:PrintDebug("Remap bar 1 to bar " .. tbar);
    RemapActionSlots(1, tbar*12-11)
end

--- Update bars after shapeshift or stance change
function ActionbarValues:ShapeShiftUpdate()
    if class == "DRUID" then
        local form = _addon:GetShapeshiftName();

        if not form then
            RemapActionSlots();
            return;
        end

        if actionbarSupport == "STOCK" then
            if form == "bear" then -- Bear
                RemapActionSlots(1, 97);
            elseif form == "cat" then -- Cat
                RemapActionSlots(1, 73);
            elseif form == "moonkin" then -- Moonkin
                RemapActionSlots(1, 109);
            end
        elseif actionbarSupport == "DOMINOS" then
            ShapeShiftRemapDominos(form);
        elseif actionbarSupport == "BT4" then
            ShapeShiftRemapBT4(form);
        elseif actionbarSupport == "ELV" then
            ShapeShiftRemapElv(form);
        end
    end
end

--- Add text object to all action buttons and trigger updates
function ActionbarValues:Setup()
    _addon:PrintDebug("Add action button strings");

    if _G["DominosActionButton1"] ~= nil then
        _addon:PrintDebug("Add Dominos support");
        local slotId = 0;
        for i = 1, 60 do
            if i <= 12 then
                slotId = i+12;
            else
                slotId = i+60;
            end
            AddStringToButton(_G["DominosActionButton"..i], slotId);
        end
        for i = 1, 12 do
            AddStringToButton(_G["ActionButton"..i], i);
            AddStringToButton(_G["MultiBarRightButton"..i], i+24);
            AddStringToButton(_G["MultiBarLeftButton"..i], i+36);
            AddStringToButton(_G["MultiBarBottomRightButton"..i], i+48);
            AddStringToButton(_G["MultiBarBottomLeftButton"..i], i+60);
        end
        actionbarSupport = "DOMINOS";

    elseif _G["ElvUI_Bar1Button1"] ~= nil then
        _addon:PrintDebug("Add ElvUI support");
        for i = 1, 12 do
            AddStringToButton(_G["ElvUI_Bar1Button"..i], i);
            AddStringToButton(_G["ElvUI_Bar2Button"..i], i+48);
            AddStringToButton(_G["ElvUI_Bar3Button"..i], i+60);
            AddStringToButton(_G["ElvUI_Bar4Button"..i], i+36);
            AddStringToButton(_G["ElvUI_Bar5Button"..i], i+24);
            AddStringToButton(_G["ElvUI_Bar6Button"..i], i+12);
            AddStringToButton(_G["ElvUI_Bar7Button"..i], i+72);
            AddStringToButton(_G["ElvUI_Bar8Button"..i], i+84);
            AddStringToButton(_G["ElvUI_Bar9Button"..i], i+96);
            AddStringToButton(_G["ElvUI_Bar10Button"..i], i+108);
        end
        actionbarSupport = "ELV";

    elseif _G["BT4Button1"] ~= nil then
        _addon:PrintDebug("Add bartender4 support");
        -- BT4 doesn't even create disabled bars and buttons, only add created ones now
        for i = 1, 120 do
            if _G["BT4Button"..i] then
                AddStringToButton(_G["BT4Button"..i], i);
            end
        end
        -- Try to hook LibActionButton create function to add buttons created later
        if LibStub then
            local LAB10 = LibStub("LibActionButton-1.0");
            if LAB10 then
                hooksecurefunc(LAB10, "CreateButton", function(_, slotId, name)
                    if name:find("BT4Button") then
                        _addon:PrintDebug("Add bartender4 button " .. name);
                        AddStringToButton(_G[name], slotId);
                    end
                end);
            end
        end
        actionbarSupport = "BT4";

    elseif _G["ActionButton1"] ~= nil then
        _addon:PrintDebug("Add default UI support");
        for i = 1, 12 do
            AddStringToButton(_G["ActionButton"..i], i);
            AddStringToButton(_G["MultiBarRightButton"..i], i+24);
            AddStringToButton(_G["MultiBarLeftButton"..i], i+36);
            AddStringToButton(_G["MultiBarBottomRightButton"..i], i+48);
            AddStringToButton(_G["MultiBarBottomLeftButton"..i], i+60);
        end
    end

    frame:SetScript("OnUpdate", UpdateButtons);

    delayedButtonUpdate = 3;

    self:ShapeShiftUpdate();

    _addon:PrintDebug("Action bar setup complete");
end

--- Update action slot
---@param slot number
function ActionbarValues:SlotUpdate(slot)
    _addon:PrintDebug("Action slot update " .. slot);

    if slotDisable[slot] then
        _addon:PrintDebug("Action slot is currently disabled");
        return;
    end

    local aType, aId = GetActionInfo(slot);
    local targetSlot = slot;

    if slotRemap[slot] then
        _addon:PrintDebug("Action slot is currently remapped to " .. slotRemap[slot]);
        targetSlot = slotRemap[slot];
    end

    if aType == "spell" then
        SetSlotSpell(targetSlot, aId);
        return;
    end

    if aType == "macro" then
        local spellId = GetMacroSpell(aId);
        if spellId then
            SetSlotSpell(targetSlot, spellId);
        end
        return;
    end

    SetSlotSpell(targetSlot, nil);
end

--- Clear every shown value
function ActionbarValues:Clear()
    for slot = 1, 120 do
        actionButtons[slot]:SetText("");
    end
end

--- Update position and color of actionbar text for all buttons
function ActionbarValues:UpdateStyle()
    local settingOffset = SpellCalc_settings.abPosition;
    local settingSize = SpellCalc_settings.abSize;
    for slot = 1, 120 do
        if actionButtons[slot] ~= nil then 
            local buttonText = actionButtons[slot];
            buttonText:ClearAllPoints();
            local offset = GetButtonPosOffset(buttonText:GetParent(), buttonText, settingOffset);
            buttonText:SetPoint("BOTTOMLEFT", 0, offset);
            buttonText:SetPoint("BOTTOMRIGHT", 0, offset);
            buttonText:SetFont("Fonts\\ARIALN.TTF", settingSize, "OUTLINE");
        end
    end
end
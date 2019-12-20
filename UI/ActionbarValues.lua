local _, _addon = ...;

local _, class = UnitClass("player");

local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;
local SPELL_TYPE = _addon.SPELL_TYPE;

local spellsInBar = {};
local actionButtons = {};
local needUpdate = {};
local lastSyncState = 0;
local frame = CreateFrame("Frame", "SCABUpdateFrame");
local actionbarSupport = "STOCK";
local slotRemap = {};
local slotDisable = {};

--- Update buttons
-- Checks if buttons need an update, updates one button per frame
local function UpdateButtons(self, diff)
    if not SpellCalc_settings.abShow then
        return;
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
            if calcedSpell.spellType == SPELL_TYPE.SPELL then
                local effectData = calcedSpell[1];

                if effectData.effectType == SPELL_EFFECT_TYPE.HOT or effectData.effectType == SPELL_EFFECT_TYPE.DOT then
                    local durationKey = SpellCalc_settings.abDurationValue;
                    actionButtons[slot]:SetText(math.floor(calcedSpell[1][durationKey] + 0.5));
                elseif effectData.effectType == SPELL_EFFECT_TYPE.DMG_SHIELD then
                    actionButtons[slot]:SetText(math.floor(calcedSpell[1].perCharge + 0.5));
                else
                    local directKey = SpellCalc_settings.abDirectValue;
                    if directKey == "critAvg" and calcedSpell.critChance == 0 then
                        directKey = "hitAvg";
                    end
                    actionButtons[slot]:SetText(math.floor(calcedSpell[1][directKey] + 0.5));
                end

            elseif calcedSpell.spellType == SPELL_TYPE.SEAL then
                local sealKey = SpellCalc_settings.abSealValue;
                actionButtons[slot]:SetText(math.floor(calcedSpell[1][sealKey] + 0.5));
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

    if spellId == nil or (spellId ~= _addon.JUDGEMENT_ID and not _addon:GetHandledSpellID(spellId)) then
        _addon:PrintDebug("Set slot "..slot.." nil because spell "..tostring(spellId).." is nil or not handled");
        spellsInBar[slot] = nil;
        needUpdate[slot] = nil;
        actionButtons[slot]:SetText("");
        return;
    end

    _addon:PrintDebug("Set slot " .. slot .. " to spell " .. spellId);

    if spellId ~= _addon.JUDGEMENT_ID and _addon.spellRankInfo[spellId].effects[1].isHeal then
        actionButtons[slot]:SetTextColor(0.3, 1, 0.3);
    else
        actionButtons[slot]:SetTextColor(1, 1, 0.3);
    end

    spellsInBar[slot] = spellId;
    needUpdate[slot] = true;
end

--- Remap action slot to another for stance paging
-- @param origStart Original first slot of the bar that paged
-- @param newStart First slot of the bar that holds the buttons to use instead
local function RemapActionSlots(origStart, newStart)
    if origStart and newStart then
        for i=0, 11, 1 do
            slotRemap[newStart + i] = origStart + i;
            slotDisable[origStart + i] = true;
            _addon:ActionbarSlotUpdate(newStart + i);
        end
        return;
    end

    for new, orig in pairs(slotRemap) do
        slotRemap[new] = nil;
        slotDisable[orig] = nil;
        _addon:ActionbarSlotUpdate(orig);
    end
end

--- Update shapeshift or stance for Dominos bars
-- @param form The form/stance number
local function ShapeShiftRemapDominos(form)
    local formName;
    if class == "DRUID" then
        if form == 1 then
            formName = "bear";
        elseif form == 2 then
            formName = "aquatic";
        elseif form == 3 then
            formName = "cat";
        elseif form == 4 then
            formName = "travel";
        elseif form == 5 then
            formName = "moonkin";
        end
    elseif class == "WARRIOR" then
        if form == 1 then
            formName = "battle";
        elseif form == 2 then
            formName = "defensive";
        elseif form == 3 then
            formName = "berserker";
        end
    else
        return;
    end

    local profileName = DominosDB.profileKeys[UnitName("player") .. " - " .. GetRealmName()];
    local profileFrames = DominosDB.profiles[profileName].frames;
    _addon:PrintDebug("Remap bars for Dominos from " .. formName .. " for profile " .. profileName);
    for barNum, data in ipairs(profileFrames) do
        if data.pages[class] and data.pages[class][formName] then
            local tbar = (data.pages[class][formName] + barNum) % 10;
            _addon:PrintDebug("Remap bar " .. barNum .. " to bar " .. tbar);
            RemapActionSlots(barNum*12-11, tbar*12-11)
        end
    end
end

--- Update shapeshift or stance for Bartender4 bars
-- @param form The form/stance number
local function ShapeShiftRemapBT4(form)
    local formName;
    if class == "DRUID" then
        if form == 1 then
            formName = "bear";
        elseif form == 3 then
            formName = "cat";
        elseif form == 5 then
            formName = "moonkin";
        end
    elseif class == "WARRIOR" then
        if form == 1 then
            formName = "battle";
        elseif form == 2 then
            formName = "defensive";
        elseif form == 3 then
            formName = "berserker";
        end
    else
        return;
    end

    if formName == nil then
        return;
    end

    local profileName = Bartender4DB.profileKeys[UnitName("player") .. " - " .. GetRealmName()];
    local profileFrames = Bartender4DB.namespaces.ActionBars.profiles[profileName].actionbars;
    _addon:PrintDebug("Remap bars for BT4 from " .. formName .. " for profile " .. profileName);
    for barNum, data in ipairs(profileFrames) do
        if data.states and data.states.stance and data.states.stance[class] and data.states.stance[class][formName] then
            local tbar = data.states.stance[class][formName];
            _addon:PrintDebug("Remap bar " .. barNum .. " to bar " .. tbar);
            RemapActionSlots(barNum*12-11, tbar*12-11)
        end
    end
end

--- Update shapeshift or stance for ElvUI bars
-- TODO: Only supports bar 1 atm
-- @param form The form/stance number
local function ShapeShiftRemapElv(form)
    local formBar;
    if class == "DRUID" then
        if form == 1 then
            formBar = 3;
        elseif form == 3 then
            formBar = 1;
        elseif form == 5 then
            formBar = 4;
        end
    elseif class == "WARRIOR" then
        if form == 1 then
            formBar = 3;
        elseif form == 2 then
            formBar = 2;
        elseif form == 3 then
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
function _addon:ActionbarShapeShiftUpdate()
    if class == "DRUID" then
        local form = GetShapeshiftForm();

        if form == 0 then
            RemapActionSlots();
            return;
        end

        if actionbarSupport == "STOCK" then
            if form == 1 then -- Bear
                RemapActionSlots(1, 97);
            elseif form == 3 then -- Cat
                RemapActionSlots(1, 73);
            elseif form == 5 then -- Moonkin
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

--- Setup action bars by adding strings for showing a value to all action buttons by slot id
function _addon:SetupActionbars()
    self:PrintDebug("Add action button strings");

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
        for i = 1, 12 do
            AddStringToButton(_G["ActionButton"..i], i);
            AddStringToButton(_G["MultiBarRightButton"..i], i+24);
            AddStringToButton(_G["MultiBarLeftButton"..i], i+36);
            AddStringToButton(_G["MultiBarBottomRightButton"..i], i+48);
            AddStringToButton(_G["MultiBarBottomLeftButton"..i], i+60);
        end
        actionbarSupport = "DOMINOS";

    elseif _G["ElvUI_Bar1Button1"] ~= nil then
        self:PrintDebug("Add ElvUI support");
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
        self:PrintDebug("Add bartender4 support");
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
                        self:PrintDebug("Add bartender4 button " .. name);
                        AddStringToButton(_G[name], slotId);
                    end
                end);
            end
        end
        actionbarSupport = "BT4";

    elseif _G["ActionButton1"] ~= nil then
        self:PrintDebug("Add default UI support");
        for i = 1, 12 do
            AddStringToButton(_G["ActionButton"..i], i);
            AddStringToButton(_G["MultiBarRightButton"..i], i+24);
            AddStringToButton(_G["MultiBarLeftButton"..i], i+36);
            AddStringToButton(_G["MultiBarBottomRightButton"..i], i+48);
            AddStringToButton(_G["MultiBarBottomLeftButton"..i], i+60);
        end
    end

    frame:SetScript("OnUpdate", UpdateButtons);

    for i = 1, 120 do
        self:ActionbarSlotUpdate(i);
    end

    self:ActionbarShapeShiftUpdate();

    self:PrintDebug("Action bar setup complete");
end

--- Update action slot
-- @param slot The action slot number
function _addon:ActionbarSlotUpdate(slot)
    self:PrintDebug("Action slot update " .. slot);

    if slotDisable[slot] then
        self:PrintDebug("Action slot is currently disabled");
        return;
    end

    local aType, aId = GetActionInfo(slot);
    local targetSlot = slot;

    if slotRemap[slot] then
        self:PrintDebug("Action slot is currently remapped to " .. slotRemap[slot]);
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
function _addon:ClearActionBar()
    for slot = 1, 120 do
        actionButtons[slot]:SetText("");
    end
end
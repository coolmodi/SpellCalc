--[[
    Simple settings menu builder I made for my addon(s).
    Author: https://github.com/coolmodi
    Version: 1.0
]]

local _addonName, _addon = ...;

local ROW_V_SPACE = 15;
local DEFAULT_ROW_HEIGHT = 30;

local rowOffset = 0;
local lastRow = nil;
local rowGroups = {};
local inputs = {};
local svTable = nil;
local defaults = nil;
local OnSetCallback = nil;
local AfterSetCallback = nil;
local tempSettings = {};

local settings = CreateFrame("FRAME");

local vinfo = settings:CreateFontString(nil, nil, 'GameFontDisableSmall');
vinfo:SetPoint('BOTTOMRIGHT', -10, 6);
vinfo:SetText("Version " .. GetAddOnMetadata(_addonName, "Version") .. " by " .. GetAddOnMetadata(_addonName, "Author"));


--------------------------------------------------------------------------------------------------------------------------------
-- Panel event handlers
--------------------------------------------------------------------------------------------------------------------------------

--- Used for panel refresh event
local function OnRefresh(self)
    for _, input in pairs(inputs) do
        input:RefreshState();
    end
end

--- Used for panel cancel event
local function OnCancel(self)
    wipe(tempSettings);
end

--- Used for panel reset event
local function OnDefault(self)
    wipe(tempSettings);
    for k, v in pairs(defaults) do
        svTable[k] = v;
    end
end

--- Used for panel save event
local function OnOkay(self)
    for k, v in pairs(inputs) do
        if v.isEditBox == true then
            if v:IsNumeric() then
                tempSettings[k] = v:GetNumber();
            else
                tempSettings[k] = v:GetText();
            end
        end
    end
    
    for k, v in pairs(svTable) do
        if tempSettings[k] == nil then
            tempSettings[k] = v;
        end
    end

    if OnSetCallback ~= nil then
        OnSetCallback(tempSettings);
    end
    
    for k, v in pairs(tempSettings) do
        svTable[k] = v;
    end

    wipe(tempSettings);

    if AfterSetCallback ~= nil then
        AfterSetCallback();
    end
end

settings.refresh = OnRefresh;
settings.okay = OnOkay;
settings.cancel = OnCancel;
settings.default = OnDefault;

--------------------------------------------------------------------------------------------------------------------------------
-- General functions
--------------------------------------------------------------------------------------------------------------------------------

--- Get the settings object
function _addon:GetSettingsBuilder()
    return settings;
end

--- Setup settings panel
-- @param savedVarTable The table in saved variables that stores settings
-- @param defaultSettings A table containing default setting values
-- @param customName If not nil use this as name instead of the addon name
-- @param logoPath Path for a texture to show as logo (optional)
-- @param lw The logo width, used with logoPath
-- @param lh The logo height, used with logoPath
function settings:Setup(savedVarTable, defaultSettings, customName, logoPath, lw, lh, la, lx, ly)
    if savedVarTable == nil or defaultSettings == nil then
        error("Usage: settings:Setup(savedVarTable, defaultSettings[, customName[, logoPath, logow, logoh]])");
    end
    
    self.name = customName or _addonName;
    InterfaceOptions_AddCategory(self);

    svTable = savedVarTable;
    defaults = defaultSettings;

    if logoPath ~= nil then
        local logo = settings:CreateTexture (nil, "OVERLAY");
        local la = la or "TOPLEFT";
        local lx = lx or 15;
        local ly = ly or -10;
        logo:SetPoint(la, settings, la, lx, ly);
        logo:SetTexture (logoPath);
        logo:SetSize(lw, lh);
        rowOffset = lh;
    end
end

--- Setup settings panel
-- @param onSetCb Function to call before settings change, gets table parameter (settingname->value) with the to be set new values
function settings:SetBeforeSaveCallback(onSetCb)
    OnSetCallback = onSetCb;
end

--- Setup settings panel
-- @param afterSetCb Function to call after settings changed
function settings:SetAfterSaveCallback(afterSetCb)
    AfterSetCallback = afterSetCb;
end

--- Get current panel values
-- @returns the table containing current changed values from panel
function settings:GetTempSettings()
    return tempSettings;
end

--- Update row group columns
-- @param groupNum The group number
function settings:UpdateRowGroup(groupNum)
    local maxWidths = {};

    for _, row in pairs(rowGroups[groupNum]) do
        for i = 1, row.elementCount, 1 do
            if maxWidths[i] == nil or row.elements[i].width > maxWidths[i] then
                maxWidths[i] = row.elements[i].width;
            end
        end
    end

    for i = 2, #maxWidths, 1 do
        local offset = 0;
        for j = 1, i-1, 1 do
            offset = offset + maxWidths[j];
        end

        for _, row in pairs(rowGroups[groupNum]) do
            if row.elements[i] ~= nil then
                row.elements[i].anchorFrame:ClearAllPoints();
                row.elements[i].anchorFrame:SetPoint("LEFT", offset, 0);
            end
        end
    end
end


--------------------------------------------------------------------------------------------------------------------------------
-- Builder functions
--------------------------------------------------------------------------------------------------------------------------------

--- Add element to row
-- @param element The frame element to anchor
-- @param width The complete width of the element and everything anchored to it
local function RowAddElement(self, element, width)
    self.elementCount = self.elementCount + 1;
    self.elements[self.elementCount] = {
        width = width + ROW_V_SPACE,
        anchorFrame = element
    };

    local offset = 0;
    for i = 1, self.elementCount - 1, 1 do
        offset = offset + self.elements[i].width;
    end

    element:SetPoint("LEFT", offset, 0);
end

--- Create a row
-- Used to put multiple things into the same row.
-- @param group A number, columns in the same group will be sized to match (optional)
-- @param height Custom height (optional)
-- @return The row object
function settings:MakeSettingsRow(group, height)
    local height = height or DEFAULT_ROW_HEIGHT;

	local row = CreateFrame("Frame", nil, self);
    row:SetHeight(height);
    row.elements = {};
    row.elementCount = 0;
    row.AddElement = RowAddElement;

    if lastRow == nil then
	    row:SetPoint("TOPLEFT", 10, -rowOffset);
        row:SetPoint("TOPRIGHT", -10, -rowOffset);
    else
        row:SetPoint("TOPLEFT", lastRow, "BOTTOMLEFT", 0, 0);
        row:SetPoint("TOPRIGHT", lastRow, "BOTTOMRIGHT", 0, 0);
    end
    
    lastRow = row;

    if group ~= nil then
        row.group = group;
        if rowGroups[group] == nil then
            rowGroups[group] = {};
        end
        table.insert(rowGroups[group], row);
    end

	return row;
end



--- Create a heading row
-- @param titleText The string to show
function settings:MakeHeading(titleText)
    local row = self:MakeSettingsRow(nil, 45);
    row.label = row:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2");
	row.label:SetPoint("LEFT", 0, -7);
	row.label:SetText(titleText);
end



--- Set tooltip for the frame element
-- @param element A frame object
-- @param tooltip The tooltip text
local function SetTooltip(element, tooltip)
    element:SetScript("OnEnter", function(self) 
        GameTooltip:SetOwner(self, "ANCHOR_TOPLEFT");
        GameTooltip:SetText(tooltip, 1, 0.9, 0.9, 1, true);
    end);

    element:SetScript("OnLeave", GameTooltip_Hide);
end



--- Checkbox OnClick handler
local function CheckBoxOnClick(self)	
    ChatConfigFrame_PlayCheckboxSound(self:GetChecked());
    tempSettings[self.settingName] = self:GetChecked();
end

--- Refresh checkbox to sv value
local function CheckBoxRefresh(self)	
    self:SetChecked(svTable[self.settingName]);
end

--- Create a checkbox option
-- @param settingName The key in the settings saved vars
-- @param labelText The label text
-- @param tooltipText The tooltip text (optional)
-- @param row The row to insert it into (optional)
-- @return the checkbox input object
function settings:MakeCheckboxOption(settingName, labelText, tooltipText, row)
    local row = row or self:MakeSettingsRow();

    local cb = CreateFrame("CheckButton", nil, row);
    cb:SetSize(24, 24);
    cb.settingName = settingName;
    cb.RefreshState = CheckBoxRefresh;
    cb:SetScript("OnClick", CheckBoxOnClick);
    cb:SetNormalTexture([[Interface\Buttons\UI-CheckBox-Up]]);
    cb:SetPushedTexture([[Interface\Buttons\UI-CheckBox-Down]]);
    cb:SetHighlightTexture([[Interface\Buttons\UI-CheckBox-Highlight]], "ADD");
    cb:SetCheckedTexture([[Interface\Buttons\UI-CheckBox-Check]]);
    cb:SetDisabledCheckedTexture([[Interface\Buttons\UI-CheckBox-Check-Disabled]]);

    local label = cb:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
	label:SetPoint("LEFT", cb, "RIGHT", 7, 0);
	label:SetText(labelText);

    cb:SetHitRectInsets(0, -(label:GetStringWidth() + 7), 0, 0);

    if tooltipText then
        SetTooltip(cb, tooltipText);
    end

    row:AddElement(cb, cb:GetWidth() + label:GetStringWidth() + 7);

    inputs[settingName] = cb;
	return cb;
end



--- Refresh editbox to sv value
local function EditBoxRefresh(self)	
    self:SetText(svTable[self.settingName]);
    self:SetCursorPosition(0);
end

--- Create editbox option
-- @param settingName The key in the settings saved vars
-- @param labelText The label text
-- @param max The max text length
-- @param numeric Is the editbox numeric only
-- @param tooltipText The tooltip text
-- @param row Row to insert it into, if nit row is created (optional)
-- @param forceWidth Force width to this value, if 0 take full width (optional)
-- @param labelWidth Set label to this width instead of string width (optional)
-- @return The editbox frame object
function settings:MakeEditBoxOption(settingName, labelText, max, numeric, tooltipText, row, forceWidth, labelWidth)
    local row = row or self:MakeSettingsRow();

    local label = row:CreateFontString(nil, "OVERLAY", "GameFontNormal");
	label:SetText(labelText);
    if labelWidth ~= nil then
        label:SetJustifyH("LEFT");
        label:SetWidth(labelWidth);
    end

	local edit = CreateFrame("EditBox", nil, row, "InputBoxTemplate");
    edit.settingName = settingName;
    edit.RefreshState = EditBoxRefresh;
    edit.isEditBox = true;
    edit:SetPoint("LEFT", label, "RIGHT", 12, 0);
	edit:SetMaxLetters(max);
    edit:SetAutoFocus(false);
	edit:SetHeight(20);
    if numeric then 
        edit:SetNumeric(true);
    end
    edit:SetHitRectInsets(-(label:GetWidth() + 12), 0, 0, 0);

    if forceWidth ~= nil then
        if forceWidth > 0 then
            edit:SetWidth(forceWidth);
        else
            edit:SetPoint("RIGHT", row, "RIGHT", 0, 0);
        end
    else
        edit:SetWidth(5 + 8*max);
    end

    edit:SetScript("OnEnterPressed", EditBox_ClearFocus);

    if tooltipText then
        SetTooltip(edit, tooltipText);
	end
    
    row:AddElement(label, edit:GetWidth() + label:GetWidth() + 12 + 2);

	inputs[settingName] = edit;
	return edit;
end


--- Handler func for slider change
local function OnSliderChange(self, value)
    tempSettings[self.settingName] = value;
    self.curVal:SetText(value);
end

--- Handler for slider refresh
local function OnSliderRefresh(self)
    self:SetValue(svTable[self.settingName]);
    self.curVal:SetText(svTable[self.settingName]);
end

--- Create editbox option
-- @param settingName The key in the settings saved vars
-- @param labelText The label text
-- @param tooltipText The tooltip text
-- @param min The minimum value
-- @param max The maximum value
-- @param step The step size the slider can be dragged for
-- @param row Row to insert it into, if nit row is created (optional)
-- @return The slider frame object
function settings:MakeSliderOption(settingName, labelText, tooltipText, min, max, step, row)
    local row = row or self:MakeSettingsRow(nil, 50);

    local sanchor = CreateFrame("Frame", nil, row);
    sanchor:SetSize(1, row:GetHeight());

    local slider = CreateFrame("Slider", nil, row, "HorizontalSliderTemplate");
    slider.settingName = settingName;
    slider.RefreshState = OnSliderRefresh;
    slider:SetWidth(175);
    slider:SetHeight(17);
    slider:SetMinMaxValues(min, max);
    slider:SetValueStep(step);
    slider:SetObeyStepOnDrag(true);
    slider:SetPoint ("LEFT", sanchor, "LEFT", 0, -3);

    local label = slider:CreateFontString(nil, "OVERLAY", "GameFontNormal");
    label:SetText(labelText);
    label:SetPoint("BOTTOM", slider, "TOP", 0, 1);

    local minLabel = slider:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall");
    minLabel:SetText(min);
    minLabel:SetPoint("TOPLEFT", slider, "BOTTOMLEFT", 0, 0);

    local maxLabel = slider:CreateFontString(nil, "OVERLAY", "GameFontHighlightSmall");
    maxLabel:SetText(max);
    maxLabel:SetPoint("TOPRIGHT", slider, "BOTTOMRIGHT", 0, 0);
    

    slider.curVal = slider:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
    slider.curVal:SetPoint("TOP", slider, "BOTTOM", 0, 0);

    slider:SetScript("OnValueChanged", OnSliderChange);
    
    if tooltipText then
        SetTooltip(slider, tooltipText);
	end

    row:AddElement(sanchor, slider:GetWidth() + slider.curVal:GetWidth() + 7);

	inputs[settingName] = slider;
	return slider;
end



--- Create button
-- @param text The button text
-- @param func The function to use on click
-- @param row Row to insert it into, if nit row is created (optional)
-- @return The button frame object
function settings:MakeButton(text, func, row)
    local row = row or self:MakeSettingsRow();

	local button = CreateFrame ("Button", nil, row, "OptionsButtonTemplate");
    button:SetText(text);
	button:SetWidth(button:GetTextWidth() + 15);
    button:SetScript("OnClick", func);

    row:AddElement(button, button:GetWidth());

	return button;
end



--- Create row with fontstring
-- @param initialText Initial text to set, height will be set to fit it
-- @param justify The justifyH value (optional)
-- @return the fontstring object
function settings:MakeStringRow(initialText, justify)
    local row = self:MakeSettingsRow(nil, 400);
    local fstring = row:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
    fstring:SetAllPoints();

    if justify ~= nil then
        fstring:SetJustifyH(justify);
    end

    fstring:SetSpacing(2);
    fstring:SetText(initialText);

    local height = fstring:GetStringHeight();
    if height < DEFAULT_ROW_HEIGHT then
        height = DEFAULT_ROW_HEIGHT;
    end
    row:SetHeight(height);
    
    return fstring;
end



-- Hanlde dropdown refresh
local function DropdownRefresh(self)
    local optionName = "NOT SET!";
    for k,v in pairs(self.GetListItems()) do
        if k == svTable[self.settingName] then
            optionName = v;
            break;
        end
    end
    UIDropDownMenu_SetText(self, optionName);
end;

local function DropdownOpen(self, level, menuList)
    local info = UIDropDownMenu_CreateInfo();
    info.func = function(selfb, arg1, arg2)
        tempSettings[self.settingName] = arg1;
        UIDropDownMenu_SetText(self, arg2);
    end;
    for k, v in pairs(self.GetListItems()) do
        info.text = v;
        info.arg1 = k;
        info.arg2 = v;
        if tempSettings[self.settingName] ~= nil then
            info.checked = (k == tempSettings[self.settingName]);
        else
            info.checked = (k == svTable[self.settingName]);
        end
        UIDropDownMenu_AddButton(info);
    end
end

--- Create dropdown
-- @param settingName The key in the settings saved vars
-- @param labelText The label text
-- @param tooltipText The tooltip text
-- @param width The width of the dropdown
-- @param func The function to get list items from (value is displayed name)
-- @param labelWidth Set label to static width, ignore string width (optional)
-- @param row Row to insert it into, if nit row is created (optional)
-- @return The button frame object
function settings:MakeDropdown(settingName, labelText, tooltipText, width, func, labelWidth, row)
    local row = row or self:MakeSettingsRow();

    local label = row:CreateFontString(nil, "OVERLAY", "GameFontNormal");
    label:SetText(labelText);
    if labelWidth then
        label:SetJustifyH("LEFT");
        label:SetWidth(labelWidth);
    end

    local dropDown = CreateFrame("Frame", nil, row, "UIDropDownMenuTemplate");
    dropDown.settingName = settingName;
    dropDown.RefreshState = DropdownRefresh;
    dropDown.GetListItems = func;
    dropDown.Text:SetJustifyH("LEFT");
    dropDown:SetPoint("LEFT", label, "RIGHT", -3, 0);
    UIDropDownMenu_SetWidth(dropDown, width);
    UIDropDownMenu_Initialize(dropDown, DropdownOpen);

    if tooltipText then
        SetTooltip(dropDown, tooltipText);
	end

    -- TODO: width is a bit strange on the dropdown template, fix when needed
    row:AddElement(label, label:GetWidth() + dropDown:GetWidth() - 15);

    inputs[settingName] = dropDown;
	return dropDown;
end
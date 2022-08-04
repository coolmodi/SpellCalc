---@class AddonEnv
local _addon = select(2, ...);

local LSM = LibStub("LibSharedMedia-3.0");

local buttonFontStrings = {};
local isSetup = nil;
local colorHarm = {1, 1, 0.3};
local colorHelp = {0.3, 1, 0.3};
local colorMana = {0.1, 0.7, 1};

------------------------------------------------------------------------
-- Button Fontstring
------------------------------------------------------------------------

--- Get vertical offset based on button frame height.
---@param self table
---@param offsetpct number
local function GetVOffset(self, offsetpct)
    local oldString = self:GetText();
    self:SetText("-");
    local hs = self:GetStringHeight();
    self:SetText(oldString);
    return self:GetParent():GetHeight() * offsetpct / 100 - hs / 2;
end

--- Update text positions.
---@param self table
---@param offsetpct number
local function UpdatePosition(self, offsetpct)
    self:ClearAllPoints();
    local offset = GetVOffset(self, offsetpct);
    self:SetPoint("BOTTOMLEFT", 0, offset);
    self:SetPoint("BOTTOMRIGHT", 0, offset);
end

--- Set text color to dmg or heal.
---@param self table
---@param isHeal boolean
---@param isMana boolean|nil
local function SetIsHeal(self, isHeal, isMana)
    if isHeal then
        self:SetTextColor(colorHelp[1], colorHelp[2], colorHelp[3]);
    elseif isMana then
        self:SetTextColor(colorMana[1], colorMana[2], colorMana[3]);
    else
        self:SetTextColor(colorHarm[1], colorHarm[2], colorHarm[3]);
    end
    self.isHeal = isHeal;
    self.isMana = isMana;
end

--- Add string to the given button frame.
---@param buttonFrame table
local function CreateActionButtonFS(buttonFrame)
    local fs = buttonFrame:CreateFontString(nil, "ARTWORK");
    fs.SetIsHeal = SetIsHeal;
    fs.UpdatePosition = UpdatePosition;
    fs:Show();
    return fs;
end

------------------------------------------------------------------------
-- Buttons Setup
------------------------------------------------------------------------

--- Add strings to stock action buttons.
local function CreateStockButtonFS()
    for i = 1, 12 do
        buttonFontStrings[i] = CreateActionButtonFS(_G["ActionButton"..i]);
        buttonFontStrings[i+24] = CreateActionButtonFS(_G["MultiBarRightButton"..i]);
        buttonFontStrings[i+36] = CreateActionButtonFS(_G["MultiBarLeftButton"..i]);
        buttonFontStrings[i+48] = CreateActionButtonFS(_G["MultiBarBottomRightButton"..i]);
        buttonFontStrings[i+60] = CreateActionButtonFS(_G["MultiBarBottomLeftButton"..i]);
    end
end

--- Add strings to Domino buttons.
local function CreateDominosButtonFS()
    local slotId = 0;
    for i = 1, 60 do
        if i <= 12 then
            slotId = i+12;
        else
                slotId = i+60;
        end
        -- TODO: Hook button creation like for BT4? Only relevant when increasing bar size again, not that important.
        if _G["DominosActionButton"..i] then
            buttonFontStrings[slotId] = CreateActionButtonFS(_G["DominosActionButton"..i]);
        end
    end
    CreateStockButtonFS();
end

--- Add strings to ElvUI buttons.
local function CreateElvUIButtonFS()
    for bar = 1, 10 do
        for button = 1, 12 do
            buttonFontStrings[(bar - 1) * 12 + button] = CreateActionButtonFS(_G["ElvUI_Bar"..bar.."Button"..button]);
        end
    end
end

--- Add strings to Bartender4 buttons.
local function CreateBT4ButtonFS()
    -- BT4 doesn't even create disabled bars and buttons, only add created ones now
    for i = 1, 120 do
        if _G["BT4Button"..i] then
            buttonFontStrings[i] = CreateActionButtonFS(_G["BT4Button"..i]);
        end
    end
    -- Try to hook LibActionButton create function to add buttons created later
    if LibStub then
        local LAB10 = LibStub("LibActionButton-1.0");
        if LAB10 then
            hooksecurefunc(LAB10, "CreateButton", function(_, slotId, name)
                if name:find("BT4Button") then
                    _addon.util.PrintDebug("Add bartender4 button " .. name);
                    buttonFontStrings[slotId] = CreateActionButtonFS(_G[name]);
                    buttonFontStrings[slotId]:SetFont(LSM:Fetch("font", SpellCalc_settings.abFont), SpellCalc_settings.abSize, SpellCalc_settings.abFontFlags);
                    buttonFontStrings[slotId]:UpdatePosition(SpellCalc_settings.abPosition);
                end
            end);
        end
    end
end

------------------------------------------------------------------------
-- Setup
------------------------------------------------------------------------

--- Setup strings for all action buttons.
function _addon:SetupActionButtonText()
    if isSetup then
        return isSetup;
    end

    ---@class ActionButtonText
    local buttonText = {};
    buttonText.detectedBars = "NONE DETECTED";

    --- Clear all buttons.
    buttonText.ClearAll = function()
        for _, v in pairs(buttonFontStrings) do
            v:SetText("");
        end
    end;

    --- Update font style based on current settings.
    buttonText.UpdateFonts = function()
        local font = LSM:Fetch("font", SpellCalc_settings.abFont);
        colorHarm = SpellCalc_settings.abColorHarm;
        colorHelp = SpellCalc_settings.abColorHelp;
        colorMana = SpellCalc_settings.abColorMana;
        for _, v in pairs(buttonFontStrings) do
            v:SetFont(font, SpellCalc_settings.abSize, SpellCalc_settings.abFontFlags);
            v:SetIsHeal(v.isHeal, v.isMana);
        end
    end;

    --- Update string positions.
    buttonText.UpdatePositions = function()
        for _, v in pairs(buttonFontStrings) do
            v:UpdatePosition(SpellCalc_settings.abPosition);
        end
    end;

    --- Check if text for button slot exists.
    ---@param slot number
    buttonText.HasButtonText = function(slot)
        return buttonFontStrings[slot] ~= nil;
    end

    --- Set button text and color.
    ---@param slot number
    ---@param text string
    ---@param isHeal boolean|nil
    ---@param isMana boolean|nil
    buttonText.SetButtonText = function(slot, text, isHeal, isMana)
        if buttonFontStrings[slot] == nil then
            return;
        end
        buttonFontStrings[slot]:SetText(text);
        buttonFontStrings[slot]:SetIsHeal(isHeal, isMana);
    end

    if _G["DominosActionButton1"] ~= nil then
        buttonText.detectedBars = "DOMINOS";
        CreateDominosButtonFS();
    elseif _G["ElvUI_Bar1Button1"] ~= nil then
        buttonText.detectedBars = "ELVUI";
        CreateElvUIButtonFS();
    elseif _G["BT4Button1"] ~= nil then
        buttonText.detectedBars = "BT4";
        CreateBT4ButtonFS();
    elseif _G["ActionButton1"] ~= nil then
        buttonText.detectedBars = "STOCK";
        CreateStockButtonFS();
    end

    buttonText.UpdateFonts();

    isSetup = buttonText;
    return buttonText;
end
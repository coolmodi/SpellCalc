local _, _addon = ...;
local L = _addon:GetLocalization();

-------------------------------------------------------
-- Setup UI

local frame = CreateFrame("Frame", "SpellCalcSimStuff", UIParent);
frame:SetPoint("CENTER", 0, 0);
frame:SetWidth(300);
frame:SetHeight(100);
frame:SetClampedToScreen(true);
frame:SetMovable(true);
frame:EnableMouse(true);
frame:RegisterForDrag("LeftButton");
frame:SetScript("OnDragStart", frame.StartMoving);
frame:SetScript("OnDragStop", frame.StopMovingOrSizing);
frame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", tile = true, tileSize = 16, edgeSize = 16});
frame:SetBackdropColor(0,0,0,1);
frame:Hide();

-- Innervate
local cb = CreateFrame("CheckButton", nil, frame);
cb:SetPoint("TOPLEFT", 5, -5);
cb:SetSize(24, 24);
cb:SetScript("OnClick", function(self)
    if self:GetChecked() then
        _addon.test_innervate = true;
    else
        _addon.test_innervate = false;
    end
    _addon.lastChange = time();
end);
cb:SetNormalTexture([[Interface\Buttons\UI-CheckBox-Up]]);
cb:SetPushedTexture([[Interface\Buttons\UI-CheckBox-Down]]);
cb:SetHighlightTexture([[Interface\Buttons\UI-CheckBox-Highlight]], "ADD");
cb:SetCheckedTexture([[Interface\Buttons\UI-CheckBox-Check]]);
cb:SetDisabledCheckedTexture([[Interface\Buttons\UI-CheckBox-Check-Disabled]]);
local label = cb:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
label:SetPoint("LEFT", cb, "RIGHT", 7, 0);
label:SetText("Get Innervate once");
cb:SetHitRectInsets(0, -(label:GetStringWidth() + 7), 0, 0);


local dropDown = CreateFrame("Frame", nil, frame, "UIDropDownMenuTemplate");
dropDown.Text:SetJustifyH("LEFT");
dropDown:SetPoint("TOPLEFT", cb, "BOTTOMLEFT", 0, -5);
UIDropDownMenu_SetWidth(dropDown, 150);
UIDropDownMenu_Initialize(dropDown, function(self, level, menuList)
    local info = UIDropDownMenu_CreateInfo();
    info.func = function(selfb, arg1, arg2)
        -- arg1 is pot name
        if arg1 == "none" then
            _addon.test_manapot = 0;
        elseif arg1 == "superior" then
            _addon.test_manapot = 1200;
        else
            _addon.test_manapot = 1800;
        end
        UIDropDownMenu_SetText(self, arg2);
        _addon.lastChange = time();
    end;
    for k, v in pairs({none = "No mana pot", superior = "Superior mana pot", major = "Major mana pot"}) do
        info.text = v;
        info.arg1 = k;
        info.arg2 = v;
        if (k == "none" and _addon.test_manapot == 0)
        or (k == "superior" and _addon.test_manapot == 1200)
        or (k == "major" and _addon.test_manapot == 1800) then
            info.checked = true;
        else
            info.checked = false;
        end
        UIDropDownMenu_AddButton(info);
    end
end);
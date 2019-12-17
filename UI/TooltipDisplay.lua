local _, _addon = ...;
local L = _addon:GetLocalization();

local TTC_LABEL = "|cFFAAAAFF";
local TTC_DEFAULT = "|cFFEEEEEE";

local function Round(f)
    return math.floor(f + 0.5);
end

--- Add single line to tooltip
-- @param label The line label (optional)
-- @param text The line text
local function SingleLine(label, text)
    local t1 = text and TTC_DEFAULT..text;
    if label then
        t1 = TTC_LABEL..label..": "..t1;
    end

    GameTooltip:AddLine(t1);
end

--- Add double line to tooltip
-- @param label The left label (optional)
-- @param text The left text (optional)
-- @param label2 The right label (optional)
-- @param text2 The right text
local function DoubleLine(label, text, label2, text2)
    local t1 = text and TTC_DEFAULT..text or "";
    if label then
        t1 = TTC_LABEL..label..": "..t1;
    end
    if t1 == "" then
        t1 = "-";
    end
    
    local t2 = TTC_DEFAULT..text2;
    if label2 then
        t2 = TTC_LABEL..label2..": "..t2;
    end

    GameTooltip:AddDoubleLine(t1, t2);
end

--- Add heading to tooltip
-- @param text The heading text
local function HeaderLine(text)
    GameTooltip:AddLine(text, 0.5, 1, 0.5);
end

--- Append buff list
-- @param buffs The base table from the base calculation table
local function AppendBuffList(buffs)
    if SpellCalc_settings.ttShowBuffs and #buffs > 0 then
        GameTooltip:AddLine(L["TT_BUFFS"], 0.5, 1, 0.5);
        GameTooltip:AddLine(TTC_DEFAULT..table.concat(buffs, ", "));
    end
end

_addon.ttDisp = {};
_addon.ttDisp.Round = Round;
_addon.ttDisp.SingleLine = SingleLine;
_addon.ttDisp.DoubleLine = DoubleLine;
_addon.ttDisp.HeaderLine = HeaderLine;
_addon.ttDisp.typeHandlders = {};

-- This happens for every spell tooltip using the stock tooltip object.
-- Appends data if spell is known to the addon.
GameTooltip:SetScript("OnTooltipSetSpell", function(self)
    local _, spellID = GameTooltip:GetSpell();
    local calcedSpell = _addon:GetCalcedSpell(spellID);

    if calcedSpell then
        if _addon.ttDisp.typeHandlders[calcedSpell.spellType] then
            _addon.ttDisp.typeHandlders[calcedSpell.spellType](calcedSpell, _addon.spellBaseInfo[GetSpellInfo(spellID)]);
        end

        AppendBuffList(calcedSpell.buffs);
    end
end);
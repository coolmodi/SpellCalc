---@type AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();

local TTC_LABEL = "|cFFAAAAFF";
local TTC_DEFAULT = "|cFFEEEEEE";

---@type SpellEffectFlags
local SPELL_EFFECT_FLAGS = _addon.SPELL_EFFECT_FLAGS;

---@class SCTooltip
local SCTooltip = {};
_addon.SCTooltip = SCTooltip;

local tooltipHandler = {};
local dummyHandler = {};

--- Add tooltip handler
---@param func fun:boolean
function SCTooltip:AddHandler(func)
    table.insert(tooltipHandler, func);
end

--- Add tooltip handler for dummy spell
---@param spellName string
---@param func fun:boolean
function SCTooltip:AddDummyHandler(spellName, func)
    dummyHandler[spellName] = func;
end

--- Round number to full.
---@param f number
function SCTooltip:Round(f)
    return math.floor(f + 0.5);
end

--- Add heading to tooltip
---@param text string @The heading text
function SCTooltip:HeaderLine(text)
    GameTooltip:AddLine(text, 0.5, 1, 0.5);
end

--- Add single line to tooltip
---@param label string|nil
---@param text string
function SCTooltip:SingleLine(label, text)
    local t1 = text and TTC_DEFAULT..text;
    if label then
        t1 = TTC_LABEL..label..": "..t1;
    end

    GameTooltip:AddLine(t1);
end

--- Add double line to tooltip
---@param label string|nil
---@param text string
---@param labelr string|nil
---@param textr string
function SCTooltip:DoubleLine(label, text, labelr, textr)
    local t1 = text and TTC_DEFAULT..text or "";
    if label then
        t1 = TTC_LABEL..label..": "..t1;
    end
    if t1 == "" then
        t1 = "-";
    end

    local t2 = TTC_DEFAULT..textr;
    if labelr then
        t2 = TTC_LABEL..labelr..": "..t2;
    end

    GameTooltip:AddDoubleLine(t1, t2);
end

--- Append "label: min[ - max [(avg)]] [lr: ][tr]",
---@param label string
---@param min string|number
---@param max number
---@param avg number
---@param lr string|nil
---@param tr string|nil
function SCTooltip:AppendMinMaxAvgLine(label, min, max, avg, lr, tr)
    local outstr = (type(min) == "number") and self:Round(min) or min;
    if max > 0 then
        outstr = outstr.." - "..self:Round(max);
        if SpellCalc_settings.ttAverages then
            outstr = outstr.." ("..self:Round(avg)..")";
        end
    end

    if tr then
        self:DoubleLine(label, outstr, lr, tr);
    else
        self:SingleLine(label, outstr);
    end
end

--- Return a title for effect flags
---@param flags number
local function GetEffectTitle(flags)
    if bit.band(flags, SPELL_EFFECT_FLAGS.HEAL) > 0 then
        if bit.band(flags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
            return L["TT_TITLE_HOT"];
        end

        return L["TT_TITLE_HEAL"];
    end

    if bit.band(flags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
        return L["TT_TITLE_DOT"];
    end

    if bit.band(flags, SPELL_EFFECT_FLAGS.ABSORB) > 0 then
        return L["TT_TITLE_ABSORB"];
    end

    return L["TT_TITLE_DAMAGE"];
end

-- This happens for every spell tooltip using the stock tooltip object.
-- Appends data if spell is known to the addon.
GameTooltip:SetScript("OnTooltipSetSpell", function(self)
    local _, spellID = GameTooltip:GetSpell();
    local calcedSpell = _addon:GetCalcedSpell(spellID);

    if calcedSpell == nil then
        return;
    end

    for i = 1, 2, 1 do
        ---@type CalcedEffect
        local calcedEffect = calcedSpell[i];
        if calcedEffect == nil then
            break;
        end

        if #calcedSpell > 1 and (i == 2 or calcedSpell.combined == nil) then
            SCTooltip:HeaderLine(GetEffectTitle(calcedEffect.effectFlags));
        end

        local isHeal = bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.HEAL) > 0;

        local isHandled = false;

        if bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DUMMY_AURA) > 0 then
            local sname = GetSpellInfo(spellID);
            if dummyHandler[sname] == nil then
                _addon:PrintError("No dummy tooltip handler for spell "..sname.."! Please report this to the addon author!");
            else
                dummyHandler[sname](calcedSpell, i);
            end
            isHandled = true;
        else
            for _, func in ipairs(tooltipHandler) do
                if func(calcedSpell, i, isHeal, spellID) then
                    isHandled = true;
                    break;
                end
            end
        end

        if not isHandled then
            _addon:PrintError("No tooltip handler for spell ("..spellID..")! Please report this to the addon author.");
        end
    end

    if SpellCalc_settings.ttShowBuffs and #calcedSpell.buffs > 0 then
        GameTooltip:AddLine(L["TT_BUFFS"], 0.5, 1, 0.5);
        GameTooltip:AddLine(TTC_DEFAULT..table.concat(calcedSpell.buffs, ", "));
    end
end);
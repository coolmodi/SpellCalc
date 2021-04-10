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

local tt = GameTooltip;
local tooltipHandler = {};
local dummyHandler = {};

--- Add tooltip handler
---@param func function:boolean
function SCTooltip:AddHandler(func)
    table.insert(tooltipHandler, func);
end

--- Add tooltip handler for dummy spell
---@param spellName string
---@param func function:boolean
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
    tt:AddLine(text, 0.5, 1, 0.5);
end

--- Add single line to tooltip
---@param label string|nil
---@param text string
function SCTooltip:SingleLine(label, text)
    local t1 = text and TTC_DEFAULT..text;
    if label then
        t1 = TTC_LABEL..label..": "..t1;
    end

    tt:AddLine(t1);
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

    tt:AddDoubleLine(t1, t2);
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

--- Append SP/heal scaling data
---@param calcedEffect CalcedEffect
---@param coefMult number|nil @Multiply coef and sp output with this number
---@param noTick boolean|nil @Ignore ticks and just output raw coef and used bonus
---@param noCharge boolean|nil @Ignore charges and just output raw coef and used bonus
function SCTooltip:AppendCoefData(calcedEffect, coefMult, noTick, noCharge)
    if not SpellCalc_settings.ttPower or not calcedEffect.effectiveSpCoef or calcedEffect.effectiveSpCoef == 0 then
        return;
    end

    local coefPct = calcedEffect.effectiveSpCoef * 100;
    local fullSP = calcedEffect.spellPower * calcedEffect.effectiveSpCoef;
    local coefPart;

    if coefMult then
        fullSP = fullSP * coefMult;
        coefPct = coefPct * coefMult;
    end

    if not noTick and calcedEffect.ticks then
        fullSP = fullSP * calcedEffect.ticks;
        coefPart = ("%.1f%% (%dx %.1f%%)"):format(coefPct * calcedEffect.ticks, calcedEffect.ticks, coefPct);
    elseif not noCharge and calcedEffect.charges and calcedEffect.charges > 0 then
        fullSP = fullSP * calcedEffect.charges;
        coefPart = ("%.1f%% (%dx %.1f%%)"):format(coefPct * calcedEffect.charges, calcedEffect.charges, coefPct)
    else
        coefPart = ("%.1f%%"):format(coefPct);
    end

    self:SingleLine(L.TT_POWER, ("%d | %s of %d"):format(self:Round(fullSP), coefPart, calcedEffect.spellPower));
end

--- Append efficiency stuff
---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
---@param showToOomTime boolean
---@param auraStack AuraStackData|nil
function SCTooltip:AppendEfficiency(calcedSpell, effectNum, isHeal, showToOomTime, auraStack)
    local calcedEffect = auraStack and auraStack or calcedSpell[effectNum];

    if not auraStack and effectNum == 1 and SpellCalc_settings.ttEffCost and calcedSpell.baseCost ~= 0 and calcedSpell.effectiveCost ~= calcedSpell.baseCost then
        self:SingleLine(L.EFFECTIVE_COST, ("%.1f"):format(calcedSpell.effectiveCost));
    end

    if SpellCalc_settings.ttPerMana and calcedEffect.perResource > 0 then
        self:SingleLine((isHeal and L.HEAL_PER_MANA_SHORT or L.DMG_PER_MANA_SHORT), ("%.2f"):format(calcedEffect.perResource));
    end

    if SpellCalc_settings.ttToOom and calcedEffect.doneToOom > 0 then
        local outstr = self:Round(calcedEffect.doneToOom);
        if showToOomTime then
            outstr = outstr..(" (%.1fs, %.1f casts)"):format(calcedSpell.castingData.timeToOom, calcedSpell.castingData.castsToOom)
        end
        self:SingleLine((isHeal and L.HEAL_UNTIL_OOM_SHORT or L.DMG_UNTIL_OOM_SHORT), outstr);
    end

    if calcedEffect.thpsData and calcedEffect.thpsData.secNoCast > 0 then
        local thpsData = calcedEffect.thpsData;
        self:HeaderLine(("%s (%s):"):format(L.TT_THPS, SpellCalc_settings.healTargetHps));
        self:SingleLine(nil, L.TT_THPS_TIMES:format(thpsData.secNoCast, thpsData.secNoFsr));
        self:SingleLine(L.EFFECTIVE_COST, ("%.1f"):format(thpsData.effectiveCost));
        if thpsData.perMana > 0 then
            self:SingleLine((isHeal and L.HEAL_PER_MANA_SHORT or L.DMG_PER_MANA_SHORT), ("%.2f"):format(thpsData.perMana));
            self:SingleLine((isHeal and L.HEAL_UNTIL_OOM_SHORT or L.DMG_UNTIL_OOM_SHORT), ("%d (%.1fs, %.1f casts)"):format(self:Round(thpsData.doneToOom), thpsData.timeToOom, thpsData.castsToOom));
        end
    end
end

--- Return a title for effect flags
---@param flags number
local function GetEffectTitle(flags)
    if bit.band(flags, SPELL_EFFECT_FLAGS.HEAL) > 0 then
        if bit.band(flags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
            return L.HEAL_OVER_TIME_SHORT;
        end

        return L.HEAL;
    end

    if bit.band(flags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
        return L.DMG_OVER_TIME_SHORT;
    end

    if bit.band(flags, SPELL_EFFECT_FLAGS.ABSORB) > 0 then
        return L.ABSORB;
    end

    return L.DAMAGE;
end

--- Append data to tooltip if spell is known to the addon.
local function TooltipHandler(toolTipFrame)
    local _, spellID = toolTipFrame:GetSpell();
    local calcedSpell = _addon:GetCalcedSpell(spellID);

    if calcedSpell == nil then
        return;
    end

    tt = toolTipFrame;

    for i = 1, 2, 1 do
        ---@type CalcedEffect
        local calcedEffect = calcedSpell[i];
        if calcedEffect == nil then
            break;
        end

        local isTriggerEffect = false;
        local effectFlags = calcedEffect.effectFlags;

        if bit.band(effectFlags, SPELL_EFFECT_FLAGS.TRIGGERED_SPELL) > 0 then
            isTriggerEffect = true;
            effectFlags = calcedEffect.spellData[1].effectFlags;
        end

        if #calcedSpell > 1 and (i == 2 or calcedSpell.combined == nil) then
            SCTooltip:HeaderLine(GetEffectTitle(effectFlags)..":");
        end

        local isHeal = bit.band(effectFlags, SPELL_EFFECT_FLAGS.HEAL) > 0;
        local isHandled = false;
        local sname = GetSpellInfo(spellID);

        if isTriggerEffect then
            if calcedEffect.spellData[2] ~= nil then
                _addon:PrintError("Triggered spell on "..sname.." has 2 effects, this is not supported for tooltips! Please report.");
                return;
            end
            calcedEffect.spellData[2] = calcedEffect.spellData[1];
            for _, func in ipairs(tooltipHandler) do
                if func(calcedEffect.spellData, 2, isHeal, spellID) then
                    isHandled = true;
                    break;
                end
            end
            calcedEffect.spellData[2] = nil;
        elseif dummyHandler[sname] ~= nil then
            dummyHandler[sname](calcedSpell, i);
            isHandled = true;
        elseif bit.band(effectFlags, SPELL_EFFECT_FLAGS.DUMMY_AURA) > 0 then
            _addon:PrintError("No dummy tooltip handler for spell "..sname.."! Please report this to the addon author!");
        else
            for _, func in ipairs(tooltipHandler) do
                if func(calcedSpell, i, isHeal, spellID) then
                    isHandled = true;
                    break;
                end
            end
        end

        if not isHandled then
            _addon:PrintError("No tooltip handler for spell "..sname.."! Please report this to the addon author!");
        end
    end

    if SpellCalc_settings.ttShowBuffs and #calcedSpell.buffs > 0 then
        toolTipFrame:AddLine(L.TT_BUFFS, 0.5, 1, 0.5);
        toolTipFrame:AddLine(TTC_DEFAULT..table.concat(calcedSpell.buffs, ", "));
    end
end

GameTooltip:HookScript("OnTooltipSetSpell", TooltipHandler);
if ElvUISpellBookTooltip then
    ElvUISpellBookTooltip:HookScript("OnTooltipSetSpell", TooltipHandler);
end
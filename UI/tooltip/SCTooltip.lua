---@class AddonEnv
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

---Format string and remove trailing zeros.
---@param str string
---@return string
function SCTooltip:FormatNoTrailing0(str, ...)
    -- oh no
    local r = str:format(...):gsub("%.0+$",""):gsub("(%.0*[1-9]+)0*$","%1"):gsub("%.0+(%D)","%1"):gsub("(%.0*[1-9]+)0*(%D)","%1%2");
    return r;
end

--- Add heading to tooltip
---@param text string @The heading text
function SCTooltip:HeaderLine(text)
    tt:AddLine(text, 0.5, 1, 0.5);
end

--- Add single line to tooltip
---@param label string|nil
---@param text string|integer
function SCTooltip:SingleLine(label, text)
    local t1 = text and TTC_DEFAULT..text;
    if label then
        t1 = TTC_LABEL..label..": "..t1;
    end

    tt:AddLine(t1);
end

--- Add double line to tooltip
---@param label string|nil
---@param text string|integer|nil
---@param labelr string|nil
---@param textr string|integer|nil
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
---@param min number
---@param max number
---@param avg number
---@param prefix string|nil
---@param lr string|nil
---@param tr string|nil
---@param showMinDecimal boolean|nil Show decimal if only min value exist.
function SCTooltip:AppendMinMaxAvgLine(label, min, max, avg, prefix, lr, tr, showMinDecimal)
    local outstr;

    if max > min then
        if SpellCalc_settings.ttAverages then
            outstr = ("%.0f - %.0f (%.0f)"):format(min, max, avg);
        else
            outstr = ("%.0f - %.0f"):format(min, max);
        end
    else
        if showMinDecimal then
            outstr = ("%.1f"):format(min);
        else
            outstr = ("%.0f"):format(min);
        end
    end

    if prefix then
        outstr = prefix..outstr;
    end

    if tr then
        self:DoubleLine(label, outstr, lr, tr);
    else
        self:SingleLine(label, outstr);
    end
end

--- Append SP/heal scaling data
---@param calcedSpell CalcedSpell
---@param calcedEffect CalcedEffect
---@param coefMult number|nil @Multiply coef and sp output with this number
---@param tickOverride number|nil @Use this amount of ticks, ignore default
---@param noCharge boolean|nil @Ignore charges and just output raw coef and used bonus
function SCTooltip:AppendCoefData(calcedSpell, calcedEffect, coefMult, tickOverride, noCharge)
    if not SpellCalc_settings.ttPower or not calcedEffect.effectiveSpCoef or calcedEffect.effectiveSpCoef == 0 then
        return;
    end

    local completeBonus = calcedEffect.effectivePower;
    local coefPct = calcedEffect.effectiveSpCoef * 100;
    local coefAPPct = calcedEffect.effectiveApCoef * 100;
    local ticks = tickOverride or calcedEffect.ticks or (not noCharge and calcedSpell.charges);

    if coefMult then
        completeBonus = completeBonus * coefMult;
        coefPct = coefPct * coefMult;
        coefAPPct = coefAPPct * coefMult;
    end

    local tickPart = "";
    if ticks and ticks > 0 then
        -- completeBonus = completeBonus * ticks;
        tickPart = ticks.."x ";
    end

    if completeBonus > 0 then
        if coefPct > 0 and coefAPPct > 0 then 
            -- SP and AP
            self:SingleLine(L.TT_POWER, self:FormatNoTrailing0("%s%.0f | %.1f%% * %d SP + %.1f%% * %d AP",
                tickPart,
                completeBonus,
                coefPct,
                calcedEffect.spellPower,
                coefAPPct,
                calcedEffect.attackPower));
        elseif coefPct > 0 then 
            -- SP only
            self:SingleLine(L.TT_POWER, self:FormatNoTrailing0("%s%.0f | %.1f%% * %d SP",
                tickPart,
                completeBonus,
                coefPct,
                calcedEffect.spellPower));
        else 
            -- AP only
            self:SingleLine(L.TT_POWER, self:FormatNoTrailing0("%s%.0f | %.1f%% * %d AP",
                tickPart,
                completeBonus,
                coefAPPct,
                calcedEffect.attackPower));
        end
    end
end

--- Append efficiency stuff
---@param calcedSpell CalcedSpell
---@param effectNum integer
---@param isHeal boolean|nil
---@param showToOomTime boolean|nil
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
        local outstr = tostring(self:Round(calcedEffect.doneToOom));
        if showToOomTime then
            outstr = outstr..(" (%.1fs, %.1f casts)"):format(calcedSpell.castingData.timeToOom, calcedSpell.castingData.castsToOom)
        end
        self:SingleLine((isHeal and L.HEAL_UNTIL_OOM_SHORT or L.DMG_UNTIL_OOM_SHORT), outstr);
    end
end

--- Return a title for effect flags
---@param flags integer
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

---Try to show a tooltip for an effect.
---@param calcedSpell CalcedSpell
---@param effNum number
---@param isHeal boolean
---@param spellID number
---@return boolean @True if effect could be handled.
function SCTooltip:ShowEffectTooltip(calcedSpell, effNum, isHeal, spellID)
    for _, func in ipairs(tooltipHandler) do
        if func(calcedSpell, effNum, isHeal, spellID) then
            return true;
        end
    end
    return false;
end

---x.xx% chance
---@param critChance number
---@return string
function SCTooltip:CritStr(critChance)
    return self:FormatNoTrailing0("%.2f%% %s", critChance, L.CHANCE);
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

        local isHeal = bit.band(effectFlags, SPELL_EFFECT_FLAGS.HEAL) > 0;
        local isHandled = false;
        local sname = GetSpellInfo(spellID);

        if not dummyHandler[sname] and #calcedSpell > 1 and (i == 2 or calcedSpell.combined == nil) then
            SCTooltip:HeaderLine(GetEffectTitle(effectFlags)..":");
        end

        if isTriggerEffect then
            if calcedEffect.spellData[2] ~= nil then
                _addon:PrintError("Triggered spell on "..sname.." has 2 effects, this is not supported for tooltips! Please report.");
                return;
            end
            calcedEffect.spellData[2] = calcedEffect.spellData[1];
            for _, func in ipairs(tooltipHandler) do
                if func(calcedEffect.spellData, i, isHeal, spellID) then
                    isHandled = true;
                    break;
                end
            end
            calcedEffect.spellData[2] = nil;
        elseif dummyHandler[sname] ~= nil then
            dummyHandler[sname](calcedSpell, i, spellID);
            isHandled = true;
        elseif bit.band(effectFlags, SPELL_EFFECT_FLAGS.DUMMY_AURA) > 0 then
            _addon:PrintError("No dummy tooltip handler for spell "..sname.."! Please report this to the addon author!");
        else
            isHandled = SCTooltip:ShowEffectTooltip(calcedSpell, i, isHeal, spellID);
        end

        if not isHandled then
            _addon:PrintError("No tooltip handler for spell "..sname.."! Please report this to the addon author!");
        end
    end

    if SpellCalc_settings.ttShowBuffs then
        toolTipFrame:AddLine(L.TT_BUFFS, 0.5, 1, 0.5);
        if #calcedSpell.buffs > 0 then
            toolTipFrame:AddLine(TTC_DEFAULT..table.concat(calcedSpell.buffs, ", "));
        end
        if calcedSpell[1].spellData and #calcedSpell[1].spellData.buffs then
            toolTipFrame:AddLine(TTC_DEFAULT..table.concat(calcedSpell[1].spellData.buffs, ", "));
        end
        if calcedSpell[2] and calcedSpell[2].spellData and #calcedSpell[2].spellData.buffs then
            toolTipFrame:AddLine(TTC_DEFAULT..table.concat(calcedSpell[2].spellData.buffs, ", "));
        end
    end
end

GameTooltip:HookScript("OnTooltipSetSpell", TooltipHandler);
if ElvUISpellBookTooltip then
    ElvUISpellBookTooltip:HookScript("OnTooltipSetSpell", TooltipHandler);
end
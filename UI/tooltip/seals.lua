---@class AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();
local SCT = _addon.SCTooltip;

---@param calcedSpell CalcedSpell
---@param effectNum number
local function SoR(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.DAMAGE, ("%.1f"):format(calcedEffect.avg));
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect, nil, 0);

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L.RES_TOOLTIP_LEVEL or L.RES_TOOLTIP;
        SCT:SingleLine(L.AVG_RESISTED, strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end
end

---@param calcedSpell CalcedSpell
---@param effectNum number
local function SoC(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L.DAMAGE, calcedEffect.min, calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil,
            nil, SCT:CritStr(calcedSpell.critChance));
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L.RES_TOOLTIP_LEVEL or L.RES_TOOLTIP;
        SCT:SingleLine(L.AVG_RESISTED, strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end
end

---Seal of Vengeance and Seal of Corruption
---@param calcedSpell CalcedSpell
---@param effectNum number
local function SoV_SoCor(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];
    local dotSpell = calcedEffect.spellData;
    local dotEffect = calcedEffect.spellData[1];

    SCT:HeaderLine(L["Hit at 5 stacks:"]);

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L.DAMAGE, calcedEffect.min, calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil,
            nil, SCT:CritStr(calcedSpell.critChance));
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L.RES_TOOLTIP_LEVEL or L.RES_TOOLTIP;
        SCT:SingleLine(L.AVG_RESISTED, strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end

    SCT:HeaderLine(L["DoT at 5 stacks:"]);

    local min = dotEffect.min * 5;
    local max = dotEffect.max * 5;
    local avg = dotEffect.avg * 5;
    local perSecDurOrCD = dotEffect.perSecDurOrCD * 5;

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L.DAMAGE, min, max, avg, nil,
            L.TICKS, SCT:FormatNoTrailing0(L.TICKS_TOOLTIP, dotEffect.ticks, dotEffect.tickPeriod, dotSpell.duration), true);
    end

    SCT:SingleLine(L.TT_TOTAL, SCT:Round(dotEffect.ticks * avg));
    SCT:AppendCoefData(dotSpell, dotEffect, 5);

    if SpellCalc_settings.ttResist and dotSpell.avgResist > 0 then
        local effRes = math.max(0, dotSpell.resistance - dotSpell.resistancePen) + dotSpell.resistanceFromLevel;
        local strUsed = dotSpell.resistanceFromLevel > 0 and L.RES_TOOLTIP_LEVEL or L.RES_TOOLTIP;
        SCT:SingleLine(L.AVG_RESISTED, strUsed:format(dotSpell.avgResist * 100, effRes, dotSpell.resistanceFromLevel));
    end

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.DMG_OVER_TIME_SHORT .. " " .. L.DMG_PER_SEC_SHORT, ("%.1f"):format(perSecDurOrCD));
    end
end

SCT:AddDummyHandler(GetSpellInfo(20375), SoC);
SCT:AddDummyHandler(GetSpellInfo(21084), SoR);
SCT:AddDummyHandler(GetSpellInfo(31801), SoV_SoCor);
SCT:AddDummyHandler(GetSpellInfo(348704), SoV_SoCor);
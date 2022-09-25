---@class AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();
local SCT = _addon.SCTooltip;

---@param calcedSpell CalcedSpell
---@param effectNum number
local function SoR(calcedSpell, effectNum)
    local calcedEffect = calcedSpell.effects[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L["Damage"], ("%.1f"):format(calcedEffect.avg));
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect, nil, 0);

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L["%.1f%% (Res: %d (%d from level))"] or L["%.1f%% (Res: %d)"];
        SCT:SingleLine(L["Avg. resisted"], strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end
end

---@param calcedSpell CalcedSpell
---@param effectNum number
local function SoC(calcedSpell, effectNum)
    local calcedEffect = calcedSpell.effects[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L["Damage"], calcedEffect.min, calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit then
        SCT:AppendMinMaxAvgLine(L["Critical"], calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil,
            nil, SCT:CritStr(calcedSpell.critChance));
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L["%.1f%% (Res: %d (%d from level))"] or L["%.1f%% (Res: %d)"];
        SCT:SingleLine(L["Avg. resisted"], strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end
end

---Seal of Vengeance and Seal of Corruption
---@param calcedSpell CalcedSpell
---@param effectNum number
local function SoV_SoCor(calcedSpell, effectNum)
    local calcedEffect = calcedSpell.effects[effectNum];
    local dotSpell = calcedEffect.spellData;
    assert(dotSpell, "SoV_SoCor tooltip handler calcedEffect.spellData is nil!");
    local dotEffect = dotSpell.effects[1];

    SCT:HeaderLine(L["Hit at 5 stacks:"]);

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L["Damage"], calcedEffect.min, calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit then
        SCT:AppendMinMaxAvgLine(L["Critical"], calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil,
            nil, SCT:CritStr(calcedSpell.critChance));
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L["%.1f%% (Res: %d (%d from level))"] or L["%.1f%% (Res: %d)"];
        SCT:SingleLine(L["Avg. resisted"], strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end

    SCT:HeaderLine(L["DoT at 5 stacks:"]);

    local min = dotEffect.min * 5;
    local max = dotEffect.max * 5;
    local avg = dotEffect.avg * 5;
    local perSecDurOrCD = dotEffect.perSecDurOrCD * 5;

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L["Damage"], min, max, avg, nil,
            L["Ticks"], SCT:FormatNoTrailing0(L["%dx every %.2fs (%.2fs)"], dotEffect.ticks, dotEffect.tickPeriod, dotSpell.duration), true);
    end

    SCT:SingleLine(L["Total"], SCT:Round(dotEffect.ticks * avg));
    SCT:AppendCoefData(dotSpell, dotEffect, 5);

    if SpellCalc_settings.ttResist and dotSpell.avgResist > 0 then
        local effRes = math.max(0, dotSpell.resistance - dotSpell.resistancePen) + dotSpell.resistanceFromLevel;
        local strUsed = dotSpell.resistanceFromLevel > 0 and L["%.1f%% (Res: %d (%d from level))"] or L["%.1f%% (Res: %d)"];
        SCT:SingleLine(L["Avg. resisted"], strUsed:format(dotSpell.avgResist * 100, effRes, dotSpell.resistanceFromLevel));
    end

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L["DoT"] .. " " .. L["DPS"], ("%.1f"):format(perSecDurOrCD));
    end
end

SCT:AddDummyHandler(GetSpellInfo(20375), SoC);
SCT:AddDummyHandler(GetSpellInfo(21084), SoR);
SCT:AddDummyHandler(GetSpellInfo(31801), SoV_SoCor);
SCT:AddDummyHandler(GetSpellInfo(348704), SoV_SoCor);
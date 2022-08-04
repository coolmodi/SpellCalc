---@class AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();
local SCT = _addon.SCTooltip;

---Prayer of Mending
---@param calcedSpell CalcedSpell
---@param effectNum integer
local function PoM(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.HEAL, ("%dx %d | %d total"):format(calcedSpell.charges, SCT:Round(calcedEffect.avg), SCT:Round(calcedEffect.avg * calcedSpell.charges)));
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, nil, SCT:CritStr(calcedSpell.critChance));
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.HEAL_PER_SEC_CAST_SHORT, ("%.1f"):format(calcedEffect.perSec));
    end

    SCT:AppendEfficiency(calcedSpell, effectNum, true, false);
end

SCT:AddDummyHandler(GetSpellInfo(33076), PoM); -- PoM
SCT:AddDummyHandler(GetSpellInfo(974), PoM); -- Earth Shield


---Display extended information if T5 2PC is used.
---@param calcedSpell CalcedSpell
---@param effectNum integer
---@param spellId integer
local function GreaterHeal(calcedSpell, effectNum, spellId)
    SCT:ShowEffectTooltip(calcedSpell, 1, true, spellId);

    if _addon:IsBooleanFlagActive(_addon.BOOLEAN_FLAGS.PRIEST_T5_2PC) then
        local calcedEffect = calcedSpell[1];
        assert(calcedEffect, "Priest T5 bonus set but triggered effect missing!");

        local origPerResource = calcedEffect.perResource;
        local origCastsToOom = calcedSpell.castingData.castsToOom;
        local origTimeToOom = calcedSpell.castingData.timeToOom;
        local origDoneToOom = calcedEffect.doneToOom;

        calcedSpell.effectiveCost = calcedSpell.effectiveCost - 100;
        calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
        calcedSpell.castingData.castsToOom = _addon:GetEffectiveManaPool() / calcedSpell.effectiveCost;
        if SpellCalc_settings.useRealToOom then
            calcedSpell.castingData.castsToOom = math.floor(calcedSpell.castingData.castsToOom);
        end
        local _, _, _, castTime = GetSpellInfo(2060);
        castTime = castTime / 1000;
        calcedSpell.castingData.timeToOom = calcedSpell.castingData.castsToOom * castTime;
        calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;

        SCT:HeaderLine(L.IF_HEALED_TO_FULL);
        SCT:AppendEfficiency(calcedSpell, 1, true, true);

        calcedSpell.effectiveCost = calcedSpell.effectiveCost + 100;
        calcedEffect.perResource = origPerResource;
        calcedSpell.castingData.castsToOom = origCastsToOom;
        calcedSpell.castingData.timeToOom = origTimeToOom;
        calcedEffect.doneToOom = origDoneToOom;
    end
end

SCT:AddDummyHandler(GetSpellInfo(2060), GreaterHeal);

---Starfall pew pew.
---@param calcedSpell CalcedSpell
---@param effNum number
local function StarFall(calcedSpell, effNum)
    if effNum > 1 then return end

    -- Main Stars
    local mainEff = calcedSpell[1];
    assert(mainEff, "Starfall triggered effect missing!");

    SCT:HeaderLine(L["Main Stars"]);
    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L.DAMAGE, mainEff.min, mainEff.max, mainEff.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, mainEff.minCrit, mainEff.maxCrit, mainEff.avgCrit,
            nil, nil, SCT:CritStr(calcedSpell.critChance));
    end

    SCT:SingleLine(L["Total Singel Target"], SCT:Round(10 * mainEff.avgCombined));
    SCT:SingleLine(L["Total 20 Stars"], SCT:Round(20 * mainEff.avgCombined));
    SCT:AppendCoefData(calcedSpell, mainEff, nil, 20);

    if SpellCalc_settings.ttHitChance then
        local outstr = ("%.1f%%"):format(calcedSpell.hitChance);
        if SpellCalc_settings.ttHitDetail then
            outstr = outstr..(" (%d%% + %.1f%%)"):format(calcedSpell.hitChanceBase, calcedSpell.hitChanceBonus)
        end
        SCT:SingleLine(L.HIT_CHANCE, outstr);
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 
    and calcedSpell.hitChanceBinaryLoss == nil or calcedSpell.hitChanceBinaryLoss == 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L.RES_TOOLTIP_LEVEL or L.RES_TOOLTIP;
        SCT:SingleLine(L.AVG_RESISTED, strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L["DPS Single Target"], ("%.1f"):format(mainEff.perSec / 2));
        SCT:SingleLine(L["DPS 20 Stars"], ("%.1f"):format(mainEff.perSec));
    end

    -- Splash Effect
    local splashEff = calcedSpell[2];
    assert(splashEff, "Starfall splash effect missing!");

    SCT:HeaderLine(L["Splash Effect"]);
    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L.DAMAGE, splashEff.min, splashEff.max, splashEff.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, splashEff.minCrit, splashEff.maxCrit, splashEff.avgCrit,
            nil, nil, SCT:CritStr(calcedSpell.critChance));
    end
    SCT:AppendCoefData(calcedSpell, splashEff);
end

SCT:AddDummyHandler(GetSpellInfo(48505), StarFall);
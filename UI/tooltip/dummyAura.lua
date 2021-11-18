---@type AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();
local SCT = _addon.SCTooltip;

---Prayer of Mending
---@param calcedSpell CalcedSpell
---@param effectNum number
local function PoM(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.HEAL, ("%dx %d | %d total"):format(calcedEffect.charges, SCT:Round(calcedEffect.avg), SCT:Round(calcedEffect.avg * calcedEffect.charges)));
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, nil, ("%.2f%% %s"):format(calcedSpell.critChance, L.CHANCE));
    end

    SCT:AppendCoefData(calcedEffect);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.HEAL_PER_SEC_CAST_SHORT, ("%.1f"):format(calcedEffect.perSec));
    end

    SCT:AppendEfficiency(calcedSpell, effectNum, true, false);
end

SCT:AddDummyHandler(GetSpellInfo(33076), PoM); -- PoM
SCT:AddDummyHandler(GetSpellInfo(974), PoM); -- Earth Shield


---Display extended information if T5 2PC is used.
---@param calcedSpell CalcedSpell
local function GreaterHeal(calcedSpell)
    SCT:ShowEffectTooltip(calcedSpell, 1, true);

    if _addon:IsBooleanFlagActive(_addon.BOOLEAN_FLAGS.PRIEST_T5_2PC) then
        local calcedEffect = calcedSpell[1];

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
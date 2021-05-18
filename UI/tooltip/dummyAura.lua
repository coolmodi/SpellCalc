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
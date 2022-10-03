---@class AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();
---@class SCTooltip
local SCT = _addon.SCTooltip;

local Righteous_Vengeance_Spells = {
    [GetSpellInfo(35395)] = true, -- CS
    [GetSpellInfo(53385)] = true, -- DS
    [GetSpellInfo(53408)] = true, -- Wisdom
    [GetSpellInfo(53407)] = true, -- Justice
    [GetSpellInfo(20271)] = true, -- Light
}

local Sheath_of_Light_Spells = {
    [GetSpellInfo(19940)] = true, -- FoL
    [GetSpellInfo(1042)] = true, -- HL
}

---Append line describing the extra value on crit.
---@param spellId number
---@param calcedEffect CalcedEffect
function SCT:AppendCritExtra(spellId, calcedEffect)
    if not calcedEffect.critExtraAvg then return end

    local text;
    local spellName = GetSpellInfo(spellId);
    local _, class = UnitClass("player");

    if class == "PALADIN" then
        if Righteous_Vengeance_Spells[spellName] then
            text = self:FormatNoTrailing0(L["~%.1f (4x %.f over 8s)"], calcedEffect.critExtraAvg, calcedEffect.critExtraAvg/4);
        elseif Sheath_of_Light_Spells[spellName] then
            text = self:FormatNoTrailing0(L["~%.1f (4x %.f over 12s)"], calcedEffect.critExtraAvg, calcedEffect.critExtraAvg/4);
        end
    elseif class == "PRIEST" then
        text = self:FormatNoTrailing0(L["~%.1f absorbed"], calcedEffect.critExtraAvg);
    elseif class == "WARLOCK" then
        if spellId == 17962 then
            self:SingleLine(L["Extra DoT"], self:FormatNoTrailing0(L["~%.1f over 6s"], calcedEffect.critExtraAvg));
            return;
        end
    elseif class == "MAGE" then
        text = self:FormatNoTrailing0(L["~%.1f (2x %.1f over 4s)"], calcedEffect.critExtraAvg, calcedEffect.critExtraAvg/2);
    end

    if not text then
        text = self:FormatNoTrailing0("~%.1f", calcedEffect.critExtraAvg);
    end

    self:SingleLine(L["On Crit"], text);
end

--- Apend dual wield effects.
-- TODO: Show DW spells in a more sensible way in tooltips
---@param calcedSpell CalcedSpell
---@param spellId integer
--[[ function SCT:AppendDWEffects(calcedSpell, spellId)
    local calcedEffectMH = calcedSpell.effects[1];
    local calcedEffectOH = calcedSpell.effects[2];

    if calcedEffectMH.spellData then calcedEffectMH = calcedEffectMH.spellData.effects[1] end
    if calcedEffectOH.spellData then calcedEffectOH = calcedEffectOH.spellData.effects[1] end

    if SpellCalc_settings.ttHit then
        local min = calcedEffectMH.min + calcedEffectOH.min;
        local max = calcedEffectMH.max + calcedEffectOH.max;
        local avg = calcedEffectMH.avg + calcedEffectOH.avg;
        SCT:AppendMinMaxAvgLine(L["Mainhand"], calcedEffectMH.min, calcedEffectMH.max, calcedEffectMH.avg, nil, nil, nil, true);
        SCT:AppendMinMaxAvgLine(L["Offhand"], calcedEffectOH.min, calcedEffectOH.max, calcedEffectOH.avg, nil, nil, nil, true);
        SCT:AppendMinMaxAvgLine(L["Combined"], min, max, avg, nil, nil, nil, true);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 and calcedEffectMH.minCrit > 0 then
        local minCrit = calcedEffectMH.minCrit + calcedEffectOH.minCrit;
        local maxCrit = calcedEffectMH.maxCrit + calcedEffectOH.maxCrit;
        local avgCrit = calcedEffectMH.avgCrit + calcedEffectOH.avgCrit;
        SCT:AppendMinMaxAvgLine(L["Critical (both)"], minCrit, maxCrit, avgCrit, nil, nil, SCT:CritStr(calcedSpell.critChance), true);
    end

    if calcedEffectMH.critExtraAvg then

        --SCT:AppendCritExtra(spellId, calcedEffect);
    end

    --AppendMitigation(calcedSpell);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L["DPS"], ("%.1f"):format(calcedEffectMH.perSec + calcedEffectOH.perSec));
    end

    --SCT:AppendEfficiency(calcedSpell, effectNum, isHeal, true);
end ]]
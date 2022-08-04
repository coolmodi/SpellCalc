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

    if Righteous_Vengeance_Spells[spellName] then
        text = self:FormatNoTrailing0(L["~%.1f (4x %.f over 8s)"], calcedEffect.critExtraAvg, calcedEffect.critExtraAvg/4);
    elseif Sheath_of_Light_Spells[spellName] then
        text = self:FormatNoTrailing0(L["~%.1f (4x %.f over 12s)"], calcedEffect.critExtraAvg, calcedEffect.critExtraAvg/4);
    else
        text = self:FormatNoTrailing0("~%.1f", calcedEffect.critExtraAvg);
    end

    self:SingleLine(L["On Crit"], text);
end

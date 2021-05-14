---@type AddonEnv
local _addon = select(2, ...);
local stats = _addon.stats;
local SCT = _addon.SCTooltip;
local L = _addon:GetLocalization();

GameTooltip:HookScript("OnTooltipSetSpell", function (toolTipFrame)
    local _, spellID = toolTipFrame:GetSpell();
    -- Innervate
    if spellID == 29166 then
        local spiritRegenOverDur = stats.manaRegBase * 20;
        local extraREgenCasting = 5 * spiritRegenOverDur - spiritRegenOverDur * stats.fsrRegenMult.val/100;
        SCT:SingleLine("Additional regen while casting", SCT:Round(extraREgenCasting));
    end

    -- Shadowfiend
    if spellID == 34433 then
        local hits = 10;
        local dmgToManaMult = 2.5;
        local coef = 0.065;
        local base = 115;
        local hitDmg  = base + coef * stats.spellPower[_addon.SCHOOL.SHADOW];
        SCT:SingleLine(L.DAMAGE, ("%dx %d"):format(hits, hitDmg));
        SCT:SingleLine("Regen", ("%dx %d"):format(hits, hitDmg * dmgToManaMult));
    end
end)
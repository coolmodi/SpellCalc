---@type AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();
local SEAL_OF_RIGHTEOUSNESS = GetSpellInfo(20288);
local SEAL_OF_COMMAND = GetSpellInfo(20375);
local SEAL_OF_THE_CRUSADER = GetSpellInfo(20162);
local SCT = _addon.SCTooltip;

---@param calcedSpell CalcedSpell
---@param effectNum number
local function SoR(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.DAMAGE, ("%.1f"):format(calcedEffect.avg));
    end

    if SpellCalc_settings.ttCoef then
        SCT:SingleLine(L.TT_COEF, ("%.1f%%"):format(calcedEffect.effectiveSpCoef*100));
    end

    if SpellCalc_settings.ttPower then
        local usedSP = SCT:Round(calcedEffect.spellPower * calcedEffect.effectiveSpCoef);
        SCT:SingleLine(L.TT_POWER, ("%d (of %d)"):format(usedSP, calcedEffect.spellPower));
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        SCT:SingleLine(L.TT_RESIST, ("%.1f%%"):format(calcedSpell.avgResist * 100));
    end

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.TT_HITS_OVER_DURATION, ("%.1f"):format(calcedEffect.ticks));
        SCT:SingleLine(L.TT_DMG_OVER_DURATION, ("%.1f"):format(calcedEffect.avgAfterMitigation));
    end

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.DMG_PER_SEC_SHORT, ("%.1f"):format(calcedEffect.perSec));
    end

    if SpellCalc_settings.ttPerMana and calcedEffect.perResource > 0 then
        SCT:SingleLine(L.DMG_PER_MANA_SHORT, ("%.2f"):format(calcedEffect.perResource));
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

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L.TT_CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, ("%.2f%% %s"):format(calcedSpell.critChance, L.TT_CHANCE));
    end

    if SpellCalc_settings.ttCoef then
        SCT:SingleLine(L.TT_COEF, ("%.1f%%"):format(calcedEffect.effectiveSpCoef*100));
    end

    if SpellCalc_settings.ttPower then
        local usedSP = SCT:Round(calcedEffect.spellPower * calcedEffect.effectiveSpCoef);
        SCT:SingleLine(L.TT_POWER, ("%d (of %d)"):format(usedSP, calcedEffect.spellPower));
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        SCT:SingleLine(L.TT_RESIST, ("%.1f%%"):format(calcedSpell.avgResist * 100));
    end

    if SpellCalc_settings.ttHitChance then
        if SpellCalc_settings.ttHitDetail then
            SCT:SingleLine(L.TT_HITCHANCE, ("%.1f%% (%.1f%% + %d%%)"):format(calcedSpell.hitChance, calcedSpell.hitChanceBase, calcedSpell.hitChanceBonus));
        else
            SCT:SingleLine(L.TT_HITCHANCE, ("%.1f%%"):format(calcedSpell.hitChance));
        end

        local mmit = calcedSpell.meleeMitigation;
        if mmit.dodge > 0 then
            SCT:SingleLine(L.TT_DODGECHANCE, ("%.1f%%"):format(mmit.dodge));
        end
        if mmit.parry > 0 then
            SCT:SingleLine(L.TT_PARRYCHANCE, ("%.1f%%"):format(mmit.parry));
        end
        if mmit.block > 0 then
            SCT:SingleLine(L.TT_BLOCKCHANCE, ("%.1f%%"):format(mmit.block));
        end
    end

    SCT:SingleLine(L.TT_PROCCHANCE, ("%.1f%%"):format(calcedEffect.charges * 100));

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.TT_HITS_OVER_DURATION, ("%.1f"):format(calcedEffect.ticks));
        SCT:SingleLine(L.TT_DMG_OVER_DURATION, ("%.1f"):format(calcedEffect.avgAfterMitigation));
    end

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.DMG_PER_SEC_SHORT, ("%.1f"):format(calcedEffect.perSec));
    end

    if SpellCalc_settings.ttPerMana and calcedEffect.perResource > 0 then
        SCT:SingleLine(L.DMG_PER_MANA_SHORT, ("%.2f"):format(calcedEffect.perResource));
    end
end

local function SotC(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        --SCT:SingleLine(L.TT_HITS_OVER_DURATION, ("%.1f"):format(calcedEffect.ticks));
        SCT:SingleLine(L.TT_DMG_OVER_DURATION, ("%.1f"):format(calcedEffect.avgAfterMitigation));
    end

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.DMG_PER_SEC_SHORT, ("%.1f"):format(calcedEffect.perSec));
    end

    if SpellCalc_settings.ttPerMana and calcedEffect.perResource > 0 then
        SCT:SingleLine(L.DMG_PER_MANA_SHORT, ("%.2f"):format(calcedEffect.perResource));
    end
end

SCT:AddDummyHandler(SEAL_OF_COMMAND, SoC);
SCT:AddDummyHandler(SEAL_OF_RIGHTEOUSNESS, SoR);
SCT:AddDummyHandler(SEAL_OF_THE_CRUSADER, SotC);
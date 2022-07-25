---@type AddonEnv
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

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.TT_HITS_OVER_DURATION, ("%.1f"):format(calcedEffect.ticks));
        SCT:SingleLine(L.DAMAGE_OVER_DURATION, ("%.1f"):format(calcedEffect.avgAfterMitigation));
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
        SCT:AppendMinMaxAvgLine(L.CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, nil, SCT:CritStr(calcedSpell.critChance));
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect, nil, 0, true);

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L.RES_TOOLTIP_LEVEL or L.RES_TOOLTIP;
        SCT:SingleLine(L.AVG_RESISTED, strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end

    if SpellCalc_settings.ttHitChance then
        if SpellCalc_settings.ttHitDetail then
            SCT:SingleLine(L.HIT_CHANCE, ("%.1f%% (%.1f%% + %.1f%%)"):format(calcedSpell.hitChance, calcedSpell.hitChanceBase, calcedSpell.hitChanceBonus));
        else
            SCT:SingleLine(L.HIT_CHANCE, ("%.1f%%"):format(calcedSpell.hitChance));
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

    SCT:SingleLine(L.TT_PROCCHANCE, ("%.1f%%"):format(calcedSpell.charges * 100));

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.TT_HITS_OVER_DURATION, ("%.1f"):format(calcedEffect.ticks));
        SCT:SingleLine(L.DAMAGE_OVER_DURATION, ("%.1f"):format(calcedEffect.avgAfterMitigation));
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
local function SoB_SoV(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L.DAMAGE, calcedEffect.min, calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, nil, SCT:CritStr(calcedSpell.critChance));
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect, nil, 0, true);

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed = calcedSpell.resistanceFromLevel > 0 and L.RES_TOOLTIP_LEVEL or L.RES_TOOLTIP;
        SCT:SingleLine(L.AVG_RESISTED, strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end

    if SpellCalc_settings.ttHitChance then
        if SpellCalc_settings.ttHitDetail then
            SCT:SingleLine(L.HIT_CHANCE, ("%.1f%% (%.1f%% + %.1f%%)"):format(calcedSpell.hitChance, calcedSpell.hitChanceBase, calcedSpell.hitChanceBonus));
        else
            SCT:SingleLine(L.HIT_CHANCE, ("%.1f%%"):format(calcedSpell.hitChance));
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

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.DAMAGE_OVER_DURATION, ("%.1f"):format(calcedEffect.avgAfterMitigation));
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
local function SoV(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.DAMAGE, ("%dx %.1f (%d)"):format(calcedEffect.ticks, calcedEffect.min, SCT:Round(calcedEffect.min * calcedEffect.ticks)));
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.DMG_OVER_TIME_SHORT .. " " .. L.DMG_PER_SEC_SHORT, ("%.1f"):format(calcedEffect.perSec));
    end

    SCT:HeaderLine(L.SUSTAINED_X_STACKS:format(5));
    local stackDmg = (calcedEffect.min - calcedEffect.effectivePower) * 5 + calcedEffect.effectivePower;
    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.DAMAGE, ("%dx %.1f (%d)"):format(calcedEffect.ticks, stackDmg, SCT:Round(stackDmg * calcedEffect.ticks)));
    end
    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.DMG_OVER_TIME_SHORT .. " " .. L.DMG_PER_SEC_SHORT, ("%.1f"):format(stackDmg * calcedEffect.ticks / 15));
    end
end

SCT:AddDummyHandler(GetSpellInfo(20375), SoC);
SCT:AddDummyHandler(GetSpellInfo(21084), SoR);
SCT:AddDummyHandler(GetSpellInfo(31892), SoB_SoV);
SCT:AddDummyHandler(GetSpellInfo(348700), SoB_SoV);
SCT:AddDummyHandler(GetSpellInfo(31801), SoV);
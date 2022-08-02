---@type AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();
local SCT = _addon.SCTooltip;
---@type SpellEffectFlags
local SPELL_EFFECT_FLAGS = _addon.SPELL_EFFECT_FLAGS;

--- Append mitigation data
---@param calcedSpell CalcedSpell
local function AppendMitigation(calcedSpell)
    if SpellCalc_settings.ttHitChance then
        local outstr = SCT:FormatNoTrailing0("%.2f%%", calcedSpell.hitChance);
        if SpellCalc_settings.ttHitDetail then
            outstr = outstr..SCT:FormatNoTrailing0(" (%.2f%% + %.2f%%)", calcedSpell.hitChanceBase, calcedSpell.hitChanceBonus);
            if calcedSpell.hitChanceBinaryLoss and calcedSpell.hitChanceBinaryLoss > 0 then
                outstr = outstr .. (" (-%.1f%% %s)"):format(calcedSpell.hitChanceBinaryLoss, L.TT_BINARYMISS);
            end
        end
        SCT:SingleLine(L.HIT_CHANCE, outstr);
    end

    if calcedSpell.meleeMitigation ~= nil then
        local mmit = calcedSpell.meleeMitigation;
        if mmit.dodge > 0 then
            SCT:SingleLine(L.TT_DODGECHANCE, ("%.1f%%"):format(mmit.dodge));
        end
        if mmit.parry > 0 then
            SCT:SingleLine(L.TT_PARRYCHANCE, ("%.1f%%"):format(mmit.parry));
        end
        if mmit.glancing > 0 then
            SCT:SingleLine(L.TT_GLANCECHANCE, L.TT_GLANCEDATA:format(mmit.glancing, mmit.glancingDmg * 100));
        end
        if mmit.block > 0 then
            SCT:SingleLine(L.TT_BLOCKCHANCE, ("%.1f%%"):format(mmit.block));
        end
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 
    and (calcedSpell.hitChanceBinaryLoss == nil or calcedSpell.hitChanceBinaryLoss == 0) then
        local effRes = math.max(0, calcedSpell.resistance - calcedSpell.resistancePen) + calcedSpell.resistanceFromLevel;
        local strUsed;
        if calcedSpell.school == _addon.SCHOOL.PHYSICAL then
            strUsed = L["%.1f%% (Armor: %d)"];
        else
            strUsed = calcedSpell.resistanceFromLevel > 0 and L.RES_TOOLTIP_LEVEL or L.RES_TOOLTIP;
        end
        SCT:SingleLine(L.AVG_RESISTED, strUsed:format(calcedSpell.avgResist * 100, effRes, calcedSpell.resistanceFromLevel));
    end
end

--- Append mitigation data for offhand part of an effect
---@param calcedSpell CalcedSpell
---@param effNum number
local function AppendOffhandMitigation(calcedSpell, effNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    local ohd = calcedEffect.offhandAttack;

    if SpellCalc_settings.ttHitChance and calcedSpell.hitChance ~= ohd.hitChance then
        local outstr = ("%.1f%%"):format(calcedSpell.hitChance);
        if SpellCalc_settings.ttHitDetail then
            outstr = outstr..(" (%d%% + %d%%)"):format(calcedSpell.hitChanceBase, calcedSpell.hitChanceBonus)
            if calcedSpell.hitChanceBinaryLoss and calcedSpell.hitChanceBinaryLoss > 0 then
                outstr = outstr .. (" (-%.1f%% %s)"):format(calcedSpell.hitChanceBinaryLoss, L.TT_BINARYMISS);
            end
        end
        SCT:SingleLine(L.HIT_CHANCE, outstr);
    end

    local mmit = calcedSpell.meleeMitigation;
    local ohmit = ohd.meleeMitigation;

    if ohmit.dodge > 0 and ohmit.dodge ~= mmit.dodge then
        SCT:SingleLine(L.TT_DODGECHANCE, ("%.1f%%"):format(ohmit.dodge));
    end
    if ohmit.parry > 0 and ohmit.parry ~= mmit.parry then
        SCT:SingleLine(L.TT_PARRYCHANCE, ("%.1f%%"):format(ohmit.parry));
    end
    if ohmit.glancing > 0 and ohmit.glancing ~= mmit.glancing then
        SCT:SingleLine(L.TT_GLANCECHANCE, L.TT_GLANCEDATA:format(ohmit.glancing, ohmit.glancingDmg * 100));
    end
    if ohmit.block > 0 and ohmit.block ~= mmit.block then
        SCT:SingleLine(L.TT_BLOCKCHANCE, ("%.1f%%"):format(ohmit.block));
    end
end

--- Append data for chaining spells (Chain Lightning, Chain Heal)
---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
local function AppendChainData(calcedSpell, effectNum, isHeal)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    local completeMult = 1;
    local chainHits = SCT:Round(calcedEffect.avg);
    local chainCrits = SCT:Round(calcedEffect.avgCrit);

    for i = 1, calcedEffect.chains - 1, 1 do
        local thisMult = calcedEffect.chainMult ^ i;
        completeMult = completeMult + thisMult;
        chainHits = chainHits.." - "..SCT:Round(calcedEffect.avg * thisMult);
        chainCrits = chainCrits.." - "..SCT:Round(calcedEffect.avgCrit * thisMult);
    end

    SCT:HeaderLine(L.TT_TITLE_CHAINS);

    if SpellCalc_settings.ttHit then
        SCT:SingleLine((isHeal and L.HEAL or L.DAMAGE), chainHits);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 and calcedEffect.minCrit > 0 then
        SCT:SingleLine(L.CRITICAL, chainCrits);
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect, completeMult);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine((isHeal and L.HEAL_PER_SEC_SHORT or L.DMG_PER_SEC_SHORT), ("%.1f"):format(calcedEffect.perSec * completeMult));
    end

    if SpellCalc_settings.ttPerMana and calcedEffect.perResource > 0 then
        SCT:SingleLine((isHeal and L.HEAL_PER_MANA_SHORT or L.DMG_PER_MANA_SHORT), ("%.2f"):format(calcedEffect.perResource * completeMult));
    end

    if SpellCalc_settings.ttToOom and calcedEffect.doneToOom > 0 then
        SCT:SingleLine((isHeal and L.HEAL_UNTIL_OOM_SHORT or L.DMG_UNTIL_OOM_SHORT), SCT:Round(calcedEffect.doneToOom * completeMult));
    end
end

--- Apend simple direct effect values.
---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
local function AppendDirectEffect(calcedSpell, effectNum, isHeal)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        if calcedSpell.charges and calcedSpell.charges > 1 then
            SCT:SingleLine((isHeal and L.HEAL or L.DAMAGE), ("%dx %d | %d total"):format(calcedSpell.charges, SCT:Round(calcedEffect.avg), SCT:Round(calcedEffect.avg * calcedSpell.charges)));
        else
            SCT:AppendMinMaxAvgLine((isHeal and L.HEAL or L.DAMAGE), calcedEffect.min, calcedEffect.max, calcedEffect.avg, nil, nil, nil, true);
        end
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 and calcedEffect.minCrit > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, nil, SCT:CritStr(calcedSpell.critChance), true);
        if calcedEffect.igniteData then
            SCT:AppendMinMaxAvgLine(L.TT_IGNITE, calcedEffect.igniteData.min/2, calcedEffect.igniteData.max/2, calcedEffect.igniteData.avg/2, "2x ");
        end
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect);

    if not isHeal then
        AppendMitigation(calcedSpell);
    end

    -- Some spells have 1 charge for no reason, only 1+ (Lightning Shield etc.) should show this tooltip.
    if calcedSpell.charges and calcedSpell.charges > 1 then
        if SpellCalc_settings.ttPerSecond then
            SCT:SingleLine((isHeal and L.HEAL_PER_SEC_CAST_SHORT or L.DMG_PER_SEC_CAST_SHORT), ("%.1f"):format(calcedEffect.perSec));
        end
        SCT:AppendEfficiency(calcedSpell, effectNum, isHeal, true);
    else
        if SpellCalc_settings.ttPerSecond then
            SCT:SingleLine((isHeal and L.HEAL_PER_SEC_SHORT or L.DMG_PER_SEC_SHORT), ("%.1f"):format(calcedEffect.perSec));
        end
        SCT:AppendEfficiency(calcedSpell, effectNum, isHeal, true);
    end

    if calcedEffect.chains and calcedEffect.chains > 1 then
        AppendChainData(calcedSpell, effectNum, isHeal);
    end
end

--- Apend effect data for duration damage or heal
---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
local function AppendDurationEffect(calcedSpell, effectNum, isHeal)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];
    local triggeredSpell = calcedEffect.spellData;
    local coefEffect = calcedEffect;
    local coefMitSpell = calcedSpell;
    local min, max, avg, minCrit, maxCrit, avgCrit, critChance, avgCombined;

    if triggeredSpell then
        local triggeredEffect = triggeredSpell[1];
        isHeal = isHeal or bit.band(triggeredEffect.effectFlags, SPELL_EFFECT_FLAGS.HEAL) > 0;
        min = triggeredEffect.min;
        max = triggeredEffect.max;
        avg = triggeredEffect.avg;
        minCrit = triggeredEffect.minCrit;
        maxCrit = triggeredEffect.maxCrit;
        avgCrit = triggeredEffect.avgCrit;
        critChance = triggeredSpell.critChance;
        avgCombined = triggeredEffect.avgCombined;
        coefEffect = triggeredEffect;
        coefMitSpell = triggeredSpell;
    else
        min = calcedEffect.min;
        max = calcedEffect.max;
        avg = calcedEffect.avg;
        minCrit = calcedEffect.minCrit;
        maxCrit = calcedEffect.maxCrit;
        avgCrit = calcedEffect.avgCrit;
        critChance = calcedSpell.critChance;
        avgCombined = calcedEffect.avgCombined;
    end

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine((isHeal and L.HEAL or L.DAMAGE), min, max, avg, nil,
            L.TICKS, SCT:FormatNoTrailing0(L.TICKS_TOOLTIP, calcedEffect.ticks, calcedEffect.tickPeriod, calcedSpell.duration), true);
    end

    if SpellCalc_settings.ttCrit and critChance > 0 and minCrit > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, minCrit, maxCrit, avgCrit, nil, nil, SCT:CritStr(critChance), true);
    end

    SCT:SingleLine(L.TT_TOTAL, SCT:Round(calcedEffect.ticks * avgCombined));
    SCT:AppendCoefData(coefMitSpell, coefEffect, nil, calcedEffect.ticks);

    if not isHeal and effectNum == 1 then
        AppendMitigation(coefMitSpell);
    end

    local isChannel = bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.CHANNEL) > 0;

    if SpellCalc_settings.ttPerSecond then
        local spersec = isHeal and L.HEAL_PER_SEC_SHORT or L.DMG_PER_SEC_SHORT;
        if not isChannel then
            local sperseccast = isHeal and L.HEAL_PER_SEC_CAST_SHORT or L.DMG_PER_SEC_CAST_SHORT;
            local spersecdur = (isHeal and L.HEAL_OVER_TIME_SHORT or L.DMG_OVER_TIME_SHORT) .. " " .. spersec;
            SCT:DoubleLine(sperseccast, ("%.1f"):format(calcedEffect.perSec),  spersecdur, ("%.1f"):format(calcedEffect.perSecDurOrCD));
        else
            SCT:SingleLine(spersec, ("%.1f"):format(calcedEffect.perSec));
        end
    end

    SCT:AppendEfficiency(calcedSpell, effectNum, isHeal, isChannel);
end

--- Apend effect data for duration damage or heal
---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
---@param auraStackData AuraStackData
local function AppendAuraStackEffect(calcedSpell, effectNum, isHeal, auraStackData)
    if SpellCalc_settings.ttHit then
        SCT:SingleLine((isHeal and L.HEAL or L.DAMAGE), ("%dx %.1f (%d)"):format(auraStackData.ticks, auraStackData.min, SCT:Round(auraStackData.min * auraStackData.ticks)));
    end

    if SpellCalc_settings.ttPerSecond then
        local spersec = isHeal and L.HEAL_PER_SEC_SHORT or L.DMG_PER_SEC_SHORT;
        local sperseccast = isHeal and L.HEAL_PER_SEC_CAST_SHORT or L.DMG_PER_SEC_CAST_SHORT;
        local spersecdur = (isHeal and L.HEAL_OVER_TIME_SHORT or L.DMG_OVER_TIME_SHORT) .. " " .. spersec;
        SCT:DoubleLine(sperseccast, ("%.1f"):format(auraStackData.perSec),  spersecdur, ("%.1f"):format(auraStackData.perSecDurOrCD));
    end

    SCT:AppendEfficiency(calcedSpell, effectNum, isHeal, false, auraStackData);
end

--- Append data for split spells like Holy Fire
---@param calcedSpellss CalcedSpell
local function AppendCombinedEffect(calcedSpellss)
    local combSpam = calcedSpellss.combined.spam;
    local combDur = calcedSpellss.combined.fullDuration;
    local isHeal = bit.band(calcedSpellss[1].effectFlags, SPELL_EFFECT_FLAGS.HEAL) > 0;

    if SpellCalc_settings.ttHit then
        local stype = (isHeal and L.HEAL or L.DAMAGE);
        if combSpam.ticksUsed > 0 then
            SCT:DoubleLine(stype, SCT:Round(combDur.hitAvg), stype..L.SPAM_SUFFIX, SCT:Round(combSpam.hitAvg));
        else
            SCT:SingleLine(stype, SCT:Round(combDur.hitAvg));
        end
    end

    if SpellCalc_settings.ttCrit then
        if combSpam.ticksUsed > 0 then
            SCT:DoubleLine(L.CRITICAL, SCT:Round(combDur.critAvg), L.CRITICAL..L.SPAM_SUFFIX, SCT:Round(combSpam.critAvg));
        else
            SCT:SingleLine(L.CRITICAL, SCT:Round(combDur.critAvg));
        end
    end

    if SpellCalc_settings.ttPerSecond then
        local sperseccast = isHeal and L.HEAL_PER_SEC_CAST_SHORT or L.DMG_PER_SEC_CAST_SHORT;
        if combSpam.ticksUsed > 0 then
            local spersec = isHeal and L.HEAL_PER_SEC_SHORT or L.DMG_PER_SEC_SHORT;
            SCT:DoubleLine(sperseccast, ("%.1f"):format(combDur.perSecond), spersec..L.SPAM_SUFFIX, ("%.1f"):format(combSpam.perSecond));
        else
            SCT:SingleLine(sperseccast, ("%.1f"):format(combDur.perSecond));
        end
    end

    if SpellCalc_settings.ttPerMana then
        local spermanacast = isHeal and L.HEAL_PER_MANA_CAST_SHORT or L.DMG_PER_MANA_CAST_SHORT;
        if combSpam.ticksUsed > 0 then
            local spermana = isHeal and L.HEAL_PER_MANA_SHORT or L.DMG_PER_MANA_SHORT;
            SCT:DoubleLine(spermanacast, ("%.2f"):format(combDur.perResource), spermana..L.SPAM_SUFFIX, ("%.2f"):format(combSpam.perResource));
        else
            SCT:SingleLine(spermanacast, ("%.2f"):format(combDur.perResource));
        end
    end

    if combSpam.ticksUsed > 0 and SpellCalc_settings.ttPerMana then
        SCT:DoubleLine(nil, nil, (isHeal and L.HEAL_UNTIL_OOM_SHORT or L.DMG_UNTIL_OOM_SHORT)..L.SPAM_SUFFIX, SCT:Round(combSpam.doneToOom));
    end
end

--- Apend effect data for dmg shields
---@param calcedSpell CalcedSpell
---@param effectNum number
local function AppendDmgShieldEffect(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];
    local charges = calcedSpell.charges and calcedSpell.charges or -1;

    if SpellCalc_settings.ttHit then
        if charges > 0 then
            SCT:SingleLine(L.DAMAGE, ("%dx %d | %d total"):format(charges, SCT:Round(calcedEffect.avg), SCT:Round(calcedEffect.avg * charges)));
        else
            SCT:SingleLine(L.DAMAGE, ("%.1f"):format(calcedEffect.avg));
        end
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect);
    AppendMitigation(calcedSpell);

    if charges > 0 then
        if SpellCalc_settings.ttPerSecond then
            SCT:SingleLine(L.DMG_PER_SEC_CAST_SHORT, ("%.1f"):format(calcedEffect.perSec));
        end
        SCT:AppendEfficiency(calcedSpell, effectNum, false);
    end
end

--- Apend absorb effect values.
---@param calcedSpell CalcedSpell
---@param effectNum number
local function AppendAbsorbEffect(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L.ABSORB, SCT:Round(calcedEffect.avg));
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.HEAL_PER_SEC_SHORT, ("%.1f"):format(calcedEffect.perSec));
    end

    SCT:AppendEfficiency(calcedSpell, effectNum, true, false);
end

--- Apend auto attack effect.
---@param calcedSpell CalcedSpell
---@param effectNum number
local function AppendAutoAttack(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    -- MH

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L.TT_MAINHAND, calcedEffect.min, calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, nil, SCT:CritStr(calcedSpell.critChance));
    end

    AppendMitigation(calcedSpell);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.DMG_PER_SEC_SHORT, ("%.1f"):format(calcedEffect.perSec));
    end

    -- OH

    if calcedEffect.offhandAttack == nil or calcedEffect.offhandAttack.min == 0 then
        return;
    end

    local ohd = calcedEffect.offhandAttack;

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L.TT_MAINHAND, ohd.min, ohd.max, ohd.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L.CRITICAL, ohd.minCrit, ohd.maxCrit, ohd.avgCrit, nil, nil, ("%.2f%% %s"):format(ohd.critChance, L.CHANCE));
    end

    AppendOffhandMitigation(calcedSpell, effectNum);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L.DMG_PER_SEC_SHORT, ("%.1f"):format(ohd.perSec));
        SCT:SingleLine(L.TT_PERSEC_COMBINED_DAMAGE, ("%.1f"):format(calcedEffect.perSec + ohd.perSec));
    end
end

--- Apend effect data for duration damage or heal
---@param calcedSpell CalcedSpell
---@param effectNum number
local function ManaRestoreEffect(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];
    local triggeredSpell = calcedEffect.spellData;
    local min, max, avg, avgCombined;

    if triggeredSpell then
        local triggeredEffect = triggeredSpell[1];
        min = triggeredEffect.min;
        max = triggeredEffect.max;
        avg = triggeredEffect.avg;
        avgCombined = triggeredEffect.avgCombined;
    else
        min = calcedEffect.min;
        max = calcedEffect.max;
        avg = calcedEffect.avg;
        avgCombined = calcedEffect.avgCombined;
    end

    if SpellCalc_settings.ttHit then
        if calcedSpell.duration and calcedSpell.duration > 0 then
            SCT:AppendMinMaxAvgLine(L["Mana"], min, max, avg, nil,
                L.TICKS, SCT:FormatNoTrailing0(L.TICKS_TOOLTIP, calcedEffect.ticks, calcedEffect.tickPeriod, calcedSpell.duration), true);
        else
            SCT:AppendMinMaxAvgLine(L["Mana"], min, max, avg);
        end
    end

    if calcedSpell.duration and calcedSpell.duration > 0 then
        SCT:SingleLine(L.TT_TOTAL, SCT:Round(calcedEffect.ticks * avgCombined));
    end

    if calcedEffect.perSec and calcedEffect.perSec > 0 then
        SCT:SingleLine(L.TT_PROCCHANCE, SCT:FormatNoTrailing0("%.2f%%", calcedEffect.perSec * 100));
    end
end

---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
local function BaseTooltips(calcedSpell, effectNum, isHeal)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DMG_SHIELD) > 0 then
        AppendDmgShieldEffect(calcedSpell, effectNum);
    elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
        AppendDurationEffect(calcedSpell, effectNum, isHeal);
    elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.ABSORB) > 0 then
        AppendAbsorbEffect(calcedSpell, effectNum);
    elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.AUTO_ATTACK) > 0 then
        AppendAutoAttack(calcedSpell, effectNum);
    elseif calcedEffect.effectFlags == 0 or calcedEffect.effectFlags == SPELL_EFFECT_FLAGS.HEAL then
        AppendDirectEffect(calcedSpell, effectNum, isHeal);
    elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.MANA_RESTORE) > 0 then
        ManaRestoreEffect(calcedSpell, effectNum);
    else
        return false;
    end

    if calcedEffect.auraStack then
        local as = calcedEffect.auraStack;
        SCT:HeaderLine(L.SUSTAINED_X_STACKS:format(as.stacks));
        AppendAuraStackEffect(calcedSpell, effectNum, isHeal, as);
    end

    if SpellCalc_settings.ttCombined and effectNum == 2 and calcedSpell.combined ~= nil then
        SCT:HeaderLine(L.TT_TITLE_COMB);
        AppendCombinedEffect(calcedSpell);
    end

    return true;
end

SCT:AddHandler(BaseTooltips);

--- Special tooltip for Curse of Agony
---@param calcedSpell CalcedSpell
---@param effectNum number
local function CoA(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        local avgTickNoSP = calcedEffect.min - calcedEffect.effectivePower;
        local tickStart = avgTickNoSP * 0.5 + calcedEffect.effectivePower;
        local tickEnd = avgTickNoSP * 1.5 + calcedEffect.effectivePower;
        local total = calcedEffect.min * calcedEffect.ticks;
        SCT:SingleLine(L.DAMAGE, ("4x %.1f, 4x %.1f, 4x %.1f | %d total"):format(tickStart, calcedEffect.min, tickEnd, total));
    end

    SCT:AppendCoefData(calcedSpell, calcedEffect);
    AppendMitigation(calcedSpell);

    if SpellCalc_settings.ttPerSecond then
        SCT:DoubleLine(L.DMG_PER_SEC_SHORT, ("%.1f"):format(calcedEffect.perSec), L.DMG_OVER_TIME_SHORT.." "..L.DMG_PER_SEC_SHORT, ("%.1f"):format(calcedEffect.perSecDurOrCD));
    end

    SCT:AppendEfficiency(calcedSpell, effectNum);
end
local CURSE_OF_AGONY = GetSpellInfo(1014);
SCT:AddDummyHandler(CURSE_OF_AGONY, CoA);
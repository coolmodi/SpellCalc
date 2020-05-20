---@type AddonEnv
local _addon = select(2, ...);
local L = _addon:GetLocalization();
local SCT = _addon.SCTooltip;
---@type SpellEffectFlags
local SPELL_EFFECT_FLAGS = _addon.SPELL_EFFECT_FLAGS;

--- Append coefficient data
---@param calcedEffect CalcedEffect
local function AppendCoefData(calcedEffect)
    if not calcedEffect.effectiveSpCoef or calcedEffect.effectiveSpCoef == 0 then
        return;
    end

    if SpellCalc_settings.ttCoef then
        local coefPct = calcedEffect.effectiveSpCoef * 100;
        if calcedEffect.ticks then
            SCT:SingleLine(L["TT_COEF"], ("%.1f%% (%dx %.1f%%)"):format(coefPct * calcedEffect.ticks, calcedEffect.ticks, coefPct));
        elseif calcedEffect.charges and calcedEffect.charges > 0 then
            SCT:SingleLine(L["TT_COEF"], ("%.1f%% (%dx %.1f%%)"):format(coefPct * calcedEffect.charges, calcedEffect.charges, coefPct));
        else
            SCT:SingleLine(L["TT_COEF"], ("%.1f%%"):format(coefPct));
        end
    end

    if SpellCalc_settings.ttPower then
        local fullSP = calcedEffect.spellPower * calcedEffect.effectiveSpCoef;
        if calcedEffect.ticks then
            fullSP = fullSP * calcedEffect.ticks;
        elseif calcedEffect.charges and calcedEffect.charges > 0 then
            fullSP = fullSP * calcedEffect.charges;
        end
        SCT:SingleLine(L["TT_POWER"], ("%d (of %d)"):format(SCT:Round(fullSP), calcedEffect.spellPower));
    end
end

--- Append mitigation data
---@param calcedSpell CalcedSpell
local function AppendMitigation(calcedSpell)
    if SpellCalc_settings.ttHitChance then
        local outstr = ("%.1f%%"):format(calcedSpell.hitChance);
        if SpellCalc_settings.ttHitDetail then
            outstr = outstr..(" (%d%% + %d%%)"):format(calcedSpell.hitChanceBase, calcedSpell.hitChanceBonus)
            if calcedSpell.hitChanceBinaryLoss and calcedSpell.hitChanceBinaryLoss > 0 then
                outstr = outstr .. (" (-%.1f%% %s)"):format(calcedSpell.hitChanceBinaryLoss, L["TT_BINARYMISS"]);
            end
        end
        SCT:SingleLine(L["TT_HITCHANCE"], outstr);
    end

    if calcedSpell.meleeMitigation ~= nil then
        local mmit = calcedSpell.meleeMitigation;
        if mmit.dodge > 0 then
            SCT:SingleLine(L["TT_DODGECHANCE"], ("%.1f%%"):format(mmit.dodge));
        end
        if mmit.parry > 0 then
            SCT:SingleLine(L["TT_PARRYCHANCE"], ("%.1f%%"):format(mmit.parry));
        end
        if mmit.glancing > 0 then
            SCT:SingleLine(L["TT_GLANCECHANCE"], L["TT_GLANCEDATA"]:format(mmit.glancing, mmit.glancingDmg * 100));
        end
        if mmit.block > 0 then
            SCT:SingleLine(L["TT_BLOCKCHANCE"], ("%.1f%%"):format(mmit.block));
        end
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResist > 0 
    and calcedSpell.hitChanceBinaryLoss == nil or calcedSpell.hitChanceBinaryLoss == 0 then
        SCT:SingleLine(L["TT_RESIST"], ("%.1f%%"):format(calcedSpell.avgResist * 100));
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
                outstr = outstr .. (" (-%.1f%% %s)"):format(calcedSpell.hitChanceBinaryLoss, L["TT_BINARYMISS"]);
            end
        end
        SCT:SingleLine(L["TT_HITCHANCE"], outstr);
    end

    local mmit = calcedSpell.meleeMitigation;
    local ohmit = ohd.meleeMitigation;

    if ohmit.dodge > 0 and ohmit.dodge ~= mmit.dodge then
        SCT:SingleLine(L["TT_DODGECHANCE"], ("%.1f%%"):format(ohmit.dodge));
    end
    if ohmit.parry > 0 and ohmit.parry ~= mmit.parry then
        SCT:SingleLine(L["TT_PARRYCHANCE"], ("%.1f%%"):format(ohmit.parry));
    end
    if ohmit.glancing > 0 and ohmit.glancing ~= mmit.glancing then
        SCT:SingleLine(L["TT_GLANCECHANCE"], L["TT_GLANCEDATA"]:format(ohmit.glancing, ohmit.glancingDmg * 100));
    end
    if ohmit.block > 0 and ohmit.block ~= mmit.block then
        SCT:SingleLine(L["TT_BLOCKCHANCE"], ("%.1f%%"):format(ohmit.block));
    end
end

--- Append efficiency stuff
---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
---@param showToOomTime boolean
local function AppendEfficiency(calcedSpell, effectNum, isHeal, showToOomTime)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if effectNum == 1 and SpellCalc_settings.ttEffCost and calcedSpell.baseCost ~= 0 and calcedSpell.effectiveCost ~= calcedSpell.baseCost then
        SCT:SingleLine(L["TT_EFFCOST"], ("%.1f"):format(calcedSpell.effectiveCost));
    end

    if SpellCalc_settings.ttPerMana and calcedEffect.perResource > 0 then
        SCT:SingleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(calcedEffect.perResource));
    end

    if SpellCalc_settings.ttToOom and calcedEffect.doneToOom > 0 then
        local outstr = SCT:Round(calcedEffect.doneToOom);
        if showToOomTime then
            outstr = outstr..(" (%.1fs, %.1f casts)"):format(calcedSpell.castingData.timeToOom, calcedSpell.castingData.castsToOom)
        end
        SCT:SingleLine(L["TT_UNTILOOM_"..unitPart], outstr);
    end

    if calcedEffect.thpsData and calcedEffect.thpsData.secNoCast > 0 then
        local thpsData = calcedEffect.thpsData;
        SCT:HeaderLine(("%s (%s):"):format(L["TT_THPS"], SpellCalc_settings.healTargetHps));
        SCT:SingleLine(nil, L["TT_THPS_TIMES"]:format(thpsData.secNoCast, thpsData.secNoFsr));
        SCT:SingleLine(L["TT_EFFCOST"], ("%.1f"):format(thpsData.effectiveCost));
        if thpsData.perMana > 0 then
            SCT:SingleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(thpsData.perMana));
            SCT:SingleLine(L["TT_UNTILOOM_"..unitPart], ("%d (%.1fs, %.1f casts)"):format(SCT:Round(thpsData.doneToOom), thpsData.timeToOom, thpsData.castsToOom));
        end
    end
end

--- Append data for chaining spells (Chain Lightning, Chain Heal)
---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
local function AppendChainData(calcedSpell, effectNum, isHeal)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];
    local unitString = isHeal and L["TT_HEAL"] or L["TT_DAMAGE"];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    local completeMult = 1;
    local chainHits = SCT:Round(calcedEffect.avg);
    local chainCrits = SCT:Round(calcedEffect.avgCrit);

    for i = 1, calcedEffect.chains - 1, 1 do
        local thisMult = calcedEffect.chainMult ^ i;
        local avg = calcedEffect.avg * thisMult;
        local avgCrit = calcedEffect.avgCrit * thisMult;
        completeMult = completeMult + thisMult;
        chainHits = chainHits.." - "..SCT:Round(avg);
        chainCrits = chainCrits.." - "..SCT:Round(avgCrit);
    end

    local perSec = calcedEffect.perSec * completeMult;
    local perMana = calcedEffect.perResource * completeMult;
    local toOom = calcedEffect.doneToOom * completeMult;

    SCT:HeaderLine(L["TT_TITLE_CHAINS"]);

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(unitString, chainHits);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 and calcedEffect.minCrit > 0 then
        SCT:SingleLine(L["TT_CRITICAL"], chainCrits);
    end

    if SpellCalc_settings.ttCoef then
        local fullCoef = calcedEffect.effectiveSpCoef * completeMult;
        SCT:SingleLine(L["TT_COEF"], ("%.2f%%"):format(fullCoef*100));
    end

    if SpellCalc_settings.ttPower then
        local fullSP = calcedEffect.spellPower * calcedEffect.effectiveSpCoef * completeMult;
        SCT:SingleLine(L["TT_POWER"], ("%d (of %d)"):format(SCT:Round(fullSP), calcedEffect.spellPower));
    end

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(perSec));
    end

    if SpellCalc_settings.ttPerMana and calcedEffect.perResource > 0 then
        SCT:SingleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(perMana));
    end

    if SpellCalc_settings.ttToOom and calcedEffect.doneToOom > 0 then
        SCT:SingleLine(L["TT_UNTILOOM_"..unitPart], SCT:Round(toOom));
    end
end

--- Apend simple direct effect values.
---@param calcedSpell CalcedSpell
---@param effectNum number
---@param isHeal boolean
local function AppendDirectEffect(calcedSpell, effectNum, isHeal)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];
    local unitString = isHeal and L["TT_HEAL"] or L["TT_DAMAGE"];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(unitString, calcedEffect.min, calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 and calcedEffect.minCrit > 0 then
        SCT:AppendMinMaxAvgLine(L["TT_CRITICAL"], calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, ("%.2f%% %s"):format(calcedSpell.critChance, L["TT_CHANCE"]));
        if calcedEffect.igniteData then
            SCT:AppendMinMaxAvgLine(L["TT_IGNITE"], "2x "..SCT:Round(calcedEffect.igniteData.min/2), calcedEffect.igniteData.max/2, calcedEffect.igniteData.avg/2);
        end
    end

    AppendCoefData(calcedEffect);

    if not isHeal then
        AppendMitigation(calcedSpell);
    end

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(calcedEffect.perSec));
    end

    AppendEfficiency(calcedSpell, effectNum, isHeal, true);

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
    local unitString = isHeal and L["TT_HEAL"] or L["TT_DAMAGE"];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(unitString, ("%dx %.1f | %d total"):format(calcedEffect.ticks, calcedEffect.min, SCT:Round(calcedEffect.min * calcedEffect.ticks)));
    end

    AppendCoefData(calcedEffect);

    if not isHeal and effectNum == 1 then
        AppendMitigation(calcedSpell);
    end

    local isChannel = bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.CHANNEL) > 0;

    if SpellCalc_settings.ttPerSecond then
        if not isChannel then
            SCT:DoubleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(calcedEffect.perSec), L["TT_PERSECDUR_"..unitPart], ("%.1f"):format(calcedEffect.perSecDurOrCD));
        else
            SCT:SingleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(calcedEffect.perSec));
        end
    end

    AppendEfficiency(calcedSpell, effectNum, isHeal, isChannel);
end

--- Append data for split spells like Holy Fire
---@param calcedSpellss CalcedSpell
local function AppendCombinedEffect(calcedSpellss)
    local combSpam = calcedSpellss.combined.spam;
    local combDur = calcedSpellss.combined.fullDuration;
    local unitPart = (bit.band(calcedSpellss[1].effectFlags, SPELL_EFFECT_FLAGS.HEAL) > 0) and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttHit then
        if combSpam.ticksUsed > 0 then
            SCT:DoubleLine(L["TT_COMB_AVG_HIT"], SCT:Round(combDur.hitAvg), L["TT_COMB_AVG_HIT_SPAM"], SCT:Round(combSpam.hitAvg));
        else
            SCT:SingleLine(L["TT_COMB_AVG_HIT"], SCT:Round(combDur.hitAvg));
        end
    end

    if SpellCalc_settings.ttCrit then
        if combSpam.ticksUsed > 0 then
            SCT:DoubleLine(L["TT_COMB_AVG_CRIT"], SCT:Round(combDur.critAvg), L["TT_COMB_AVG_CRIT_SPAM"], SCT:Round(combSpam.critAvg));
        else
            SCT:SingleLine(L["TT_COMB_AVG_CRIT"], SCT:Round(combDur.critAvg));
        end
    end

    if SpellCalc_settings.ttPerSecond then
        if combSpam.ticksUsed > 0 then
            SCT:DoubleLine(L["TT_PERSECC_"..unitPart], ("%.1f"):format(combDur.perSecond), L["TT_COMB_PERSEC_"..unitPart], ("%.1f"):format(combSpam.perSecond));
        else
            SCT:SingleLine(L["TT_PERSECC_"..unitPart], ("%.1f"):format(combDur.perSecond));
        end
    end

    if SpellCalc_settings.ttPerMana then
        if combSpam.ticksUsed > 0 then
            SCT:DoubleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(combDur.perResource), L["TT_COMB_PER_MANA_"..unitPart], ("%.2f"):format(combSpam.perResource));
        else
            SCT:SingleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(combDur.perResource));
        end
    end

    if combSpam.ticksUsed > 0 and SpellCalc_settings.ttPerMana then
        SCT:DoubleLine(nil, nil, L["TT_COMB_UNTILOOM_"..unitPart], SCT:Round(combSpam.doneToOom));
    end
end

--- Apend effect data for periodic trigger spells
---@param calcedSpell CalcedSpell
---@param effectNum number
local function AppendPTSA(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];
    local unitString = L["TT_DAMAGE"];
    local unitPart = "DAMAGE";

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(unitString, ("%dx %d"):format(calcedEffect.ticks, SCT:Round(calcedEffect.min)), calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 and calcedEffect.minCrit > 0 then
        SCT:AppendMinMaxAvgLine(L["TT_CRITICAL"], ("%dx %d"):format(calcedEffect.ticks, SCT:Round(calcedEffect.minCrit)), 
            calcedEffect.maxCrit, calcedEffect.avgCrit, nil, ("%.2f%% %s"):format(calcedSpell.critChance, L["TT_CHANCE"]));
    end

    SCT:SingleLine(L["TT_TOTAL"], SCT:Round(calcedEffect.ticks * calcedEffect.avgCombined));

    AppendCoefData(calcedEffect);

    if effectNum == 1 then
        AppendMitigation(calcedSpell);
    end

    local isChannel = bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.CHANNEL) > 0;

    if SpellCalc_settings.ttPerSecond then
        if not isChannel then
            SCT:DoubleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(calcedEffect.perSec), L["TT_PERSECDUR_"..unitPart], ("%.1f"):format(calcedEffect.perSecDurOrCD));
        else
            SCT:SingleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(calcedEffect.perSec));
        end
    end

    AppendEfficiency(calcedSpell, effectNum, false, isChannel);
end

--- Apend effect data for dmg shields
---@param calcedSpell CalcedSpell
---@param effectNum number
local function AppendDmgShieldEffect(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        if calcedEffect.charges > 0 then
            SCT:SingleLine(L["TT_DAMAGE"], ("%dx %d | %d total"):format(calcedEffect.charges, SCT:Round(calcedEffect.avg), SCT:Round(calcedEffect.avg * calcedEffect.charges)));
        else
            SCT:SingleLine(L["TT_DAMAGE"], ("%.1f"):format(calcedEffect.avg));
        end
    end

    AppendCoefData(calcedEffect);
    AppendMitigation(calcedSpell);

    if calcedEffect.charges > 0 then
        if SpellCalc_settings.ttPerSecond then
            SCT:SingleLine(L["TT_PERSECC_DAMAGE"], ("%.1f"):format(calcedEffect.perSec));
        end
        AppendEfficiency(calcedSpell, effectNum, false);
    end
end

--- Apend absorb effect values.
---@param calcedSpell CalcedSpell
---@param effectNum number
local function AppendAbsorbEffect(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    if SpellCalc_settings.ttHit then
        SCT:SingleLine(L["TT_ABSORB"], SCT:Round(calcedEffect.avg));
    end

    AppendCoefData(calcedEffect);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L["TT_PERSEC_HEAL"], ("%.1f"):format(calcedEffect.perSec));
    end

    AppendEfficiency(calcedSpell, effectNum, true, false);
end

--- Apend auto attack effect.
---@param calcedSpell CalcedSpell
---@param effectNum number
local function AppendAutoAttack(calcedSpell, effectNum)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effectNum];

    -- MH

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L["TT_MAINHAND"], calcedEffect.min, calcedEffect.max, calcedEffect.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L["TT_CRITICAL"], calcedEffect.minCrit, calcedEffect.maxCrit, calcedEffect.avgCrit, nil, ("%.2f%% %s"):format(calcedSpell.critChance, L["TT_CHANCE"]));
    end

    AppendMitigation(calcedSpell);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L["TT_PERSEC_DAMAGE"], ("%.1f"):format(calcedEffect.perSec));
    end

    -- OH

    if calcedEffect.offhandAttack == nil or calcedEffect.offhandAttack.min == 0 then
        return;
    end

    local ohd = calcedEffect.offhandAttack;

    if SpellCalc_settings.ttHit then
        SCT:AppendMinMaxAvgLine(L["TT_MAINHAND"], ohd.min, ohd.max, ohd.avg);
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        SCT:AppendMinMaxAvgLine(L["TT_CRITICAL"], ohd.minCrit, ohd.maxCrit, ohd.avgCrit, nil, ("%.2f%% %s"):format(ohd.critChance, L["TT_CHANCE"]));
    end

    AppendOffhandMitigation(calcedSpell, effectNum);

    if SpellCalc_settings.ttPerSecond then
        SCT:SingleLine(L["TT_PERSEC_DAMAGE"], ("%.1f"):format(ohd.perSec));
        SCT:SingleLine(L["TT_PERSEC_COMBINED_DAMAGE"], ("%.1f"):format(calcedEffect.perSec + ohd.perSec));
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
        if bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.TRIGGER_SPELL_AURA) > 0 then
            AppendPTSA(calcedSpell, effectNum);
        else
            AppendDurationEffect(calcedSpell, effectNum, isHeal);
        end
    elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.ABSORB) > 0 then
        AppendAbsorbEffect(calcedSpell, effectNum);
    elseif bit.band(calcedEffect.effectFlags, SPELL_EFFECT_FLAGS.AUTO_ATTACK) > 0 then
        AppendAutoAttack(calcedSpell, effectNum);
    elseif calcedEffect.effectFlags == 0 or calcedEffect.effectFlags == SPELL_EFFECT_FLAGS.HEAL then
        AppendDirectEffect(calcedSpell, effectNum, isHeal);
    else
        return false;
    end

    if SpellCalc_settings.ttCombined and effectNum == 2 and calcedSpell.combined ~= nil then
        SCT:HeaderLine(L["TT_TITLE_COMB"]);
        AppendCombinedEffect(calcedSpell);
    end

    return true;
end

SCT:AddHandler(BaseTooltips);
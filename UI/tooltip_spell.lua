local _, _addon = ...;
local L = _addon:GetLocalization();

local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;

local Round = _addon.ttDisp.Round;
local SingleLine = _addon.ttDisp.SingleLine;
local DoubleLine = _addon.ttDisp.DoubleLine;
local HeaderLine = _addon.ttDisp.HeaderLine;

--- Append coefficient data
-- @param effectData The effect table from base calculation table
local function AppendCoefData(effectData)
    if not effectData.effectiveSpCoef or effectData.effectiveSpCoef == 0 then
        return;
    end

    if SpellCalc_settings.ttCoef then
        local fullCoef = effectData.effectiveSpCoef;
        if effectData.ticks then
            fullCoef = fullCoef * effectData.ticks;
        elseif effectData.charges and effectData.charges > 0 then
            fullCoef = fullCoef * effectData.charges;
        end
        SingleLine(L["TT_COEF"], ("%.2f%%"):format(fullCoef*100));
    end

    if SpellCalc_settings.ttPower then
        local fullPower = effectData.effectivePower;
        if effectData.ticks then
            fullPower = fullPower * effectData.ticks;
        elseif effectData.charges and effectData.charges > 0 then
            fullPower = fullPower * effectData.charges;
        end
        SingleLine(L["TT_POWER"], ("%d (of %d)"):format(Round(fullPower), effectData.spellPower));
    end
end

--- Append hit and resist
-- @param calcData The base calculation table for the spell
local function AppendMitigation(calcData)
    if SpellCalc_settings.ttHitChance then
        if SpellCalc_settings.ttHitDetail then
            local hitStr = ("%.1f%% (%d%% + %d%%)"):format(calcData.hitChance*100, calcData.baseHitChance, calcData.hitChanceBonus);
            if calcData.binaryHitLoss > 0 then
                hitStr = hitStr .. (" (-%.1f%% %s)"):format(calcData.binaryHitLoss, L["TT_BINARYMISS"]);
            end
            SingleLine(L["TT_HITCHANCE"], hitStr);
        else
            SingleLine(L["TT_HITCHANCE"], ("%.1f%%"):format(calcData.hitChance*100));
        end
    end

    if SpellCalc_settings.ttResist and calcData.avgResistMod > 0 and calcData.binaryHitLoss == 0 then
        SingleLine(L["TT_RESIST"], ("%.1f%%"):format(calcData.avgResistMod*100));
    end
end

--- Append efficiency stuff
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
-- @param isHeal
-- @param showTime Show time taken
local function AppendEfficiency(calcData, effectNum, isHeal, showTime)
    local effectData = calcData[effectNum];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if effectNum == 1 and SpellCalc_settings.ttEffCost and calcData.effectiveCost ~= calcData.baseCost and calcData.effectiveCost > -99999 then
        SingleLine(L["TT_EFFCOST"], ("%.1f"):format(calcData.effectiveCost));
    end

    if SpellCalc_settings.ttPerMana and effectData.perMana > 0 then
        SingleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(effectData.perMana));
    end

    if SpellCalc_settings.ttToOom and effectData.doneToOom > 0 then
        if showTime then
            SingleLine(L["TT_UNTILOOM_"..unitPart], ("%d (%.1fs, %.1f casts)"):format(Round(effectData.doneToOom), calcData.timeToOom, calcData.castsToOom));
        else
            SingleLine(L["TT_UNTILOOM_"..unitPart], Round(effectData.doneToOom));
        end
    end

    if effectData.secNoCastTHPS and effectData.secNoCastTHPS > 0 then
        HeaderLine(("%s (%s):"):format(L["TT_THPS"], SpellCalc_settings.healTargetHps));
        SingleLine(nil, L["TT_THPS_TIMES"]:format(effectData.secNoCastTHPS, effectData.secNoFsrTHPS));
        SingleLine(L["TT_EFFCOST"], ("%.1f"):format(effectData.effCostTHPS));
        if effectData.perManaTHPS > 0 then
            SingleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(effectData.perManaTHPS));
            SingleLine(L["TT_UNTILOOM_"..unitPart], ("%d (%ds)"):format(Round(effectData.doneToOomTHPS), effectData.timeToOomTHPS));
        end
    end
end

--- Apend effect data for direct damage or heal
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
-- @param isHeal
local function AppendDirectEffect(calcData, effectNum, isHeal)
    local eff = calcData[effectNum];
    local unitString = isHeal and L["TT_HEAL"] or L["TT_DAMAGE"];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttHit then
        if eff.hitMax > 0 then
            if SpellCalc_settings.ttAverages then
                SingleLine(unitString, ("%d - %d (%d)"):format(Round(eff.hitMin), Round(eff.hitMax), Round(eff.hitAvg)));
            else
                SingleLine(unitString, ("%d - %d"):format(Round(eff.hitMin), Round(eff.hitMax)));
            end
        else
            SingleLine(unitString, Round(eff.hitAvg));
        end
    end

    if SpellCalc_settings.ttCrit and calcData.critChance > 0 then
        if eff.critMax > 0 then
            if SpellCalc_settings.ttAverages then
                DoubleLine(L["TT_CRITICAL"], ("%d - %d (%d)"):format(Round(eff.critMin), Round(eff.critMax), Round(eff.critAvg)), nil, ("%.2f%% %s"):format(calcData.critChance, L["TT_CHANCE"]));

                if eff.igniteMin then
                    SingleLine(L["TT_IGNITE"], ("2x %d - %d (%d)"):format(Round(eff.igniteMin/2), Round(eff.igniteMax/2), Round(eff.igniteAvg/2)));
                end
            else
                DoubleLine(L["TT_CRITICAL"], ("%d - %d"):format(Round(eff.critMin), Round(eff.critMax)), nil, ("%.2f%% %s"):format(calcData.critChance, L["TT_CHANCE"]));

                if eff.igniteMin then
                    SingleLine(L["TT_IGNITE"], ("2x %d - %d"):format(Round(eff.igniteMin/2), Round(eff.igniteMax/2)));
                end
            end
        else
            DoubleLine(L["TT_CRITICAL"], Round(eff.critAvg), nil, ("%.2f%% %s"):format(calcData.critChance, L["TT_CHANCE"]));

            if eff.igniteMin then
                SingleLine(L["TT_IGNITE"], ("2x %d"):format(Round(eff.igniteAvg/2)));
            end
        end
    end

    AppendCoefData(eff);
    if not isHeal then
        AppendMitigation(calcData);
    end

    if SpellCalc_settings.ttPerSecond then
        SingleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(eff.perSecond));
    end

    AppendEfficiency(calcData, effectNum, isHeal, true);
end

--- Apend effect data for duration damage or heal
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
-- @param isHeal
-- @param spellBaseInfo Spell base info entry
local function AppendDurationEffect(calcData, effectNum, isHeal, spellBaseInfo)
    local effectData = calcData[effectNum];
    local unitString = isHeal and L["TT_HEAL"] or L["TT_DAMAGE"];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttHit then
        SingleLine(unitString, ("%dx %.1f | %d total"):format(effectData.ticks, effectData.perTick, Round(effectData.allTicks)));
    end

    if SpellCalc_settings.ttCrit and calcData.critChance > 0 and effectData.perTickCrit > 0 then
        SingleLine(unitString, ("%.1f"):format(effectData.perTickNormal));
        DoubleLine(L["TT_CRITICAL"], ("%.1f"):format(effectData.perTickCrit), nil, ("%.2f%% %s"):format(calcData.critChance, L["TT_CHANCE"]));
    end

    AppendCoefData(effectData);
    if not isHeal and effectNum == 1 then
        AppendMitigation(calcData);
    end

    if SpellCalc_settings.ttPerSecond then
        if not spellBaseInfo.isChannel then
            DoubleLine(L["TT_PERSEC_"..unitPart], Round(effectData.perSecond), L["TT_PERSECDUR_"..unitPart], ("%.1f"):format(effectData.perSecondDuration));
        else
            SingleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(effectData.perSecond));
        end
    end

    AppendEfficiency(calcData, effectNum, isHeal, spellBaseInfo.isChannel);
end

--- Apend effect data for dmg shields
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
local function AppendDmgShieldEffect(calcData, effectNum)
    local effectData = calcData[effectNum];

    if SpellCalc_settings.ttHit then
        if effectData.charges > 0 then
            SingleLine(L["TT_DAMAGE"], ("%dx %d | %d total"):format(effectData.charges, Round(effectData.perCharge), Round(effectData.hitAvg)));
        else
            SingleLine(L["TT_DAMAGE"], ("%.1f"):format(effectData.perCharge));
        end
    end

    AppendCoefData(effectData);
    AppendMitigation(calcData);

    if SpellCalc_settings.ttPerSecond and effectData.perSecond > 0 then
        SingleLine(L["TT_PERSECC_DAMAGE"], ("%.1f"):format(effectData.perSecond));
    end

    AppendEfficiency(calcData, effectNum, false);
end

--- Append data for split spells like Holy Fire
-- @param calcedSpell The base calculation table for the spell
local function AppendCombinedEffect(calcedSpell)
    local combData = calcedSpell.perCastData;
    local unitPart = calcedSpell[1].effectType == _addon.SPELL_EFFECT_TYPE.DIRECT_HEAL and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttAverages then
        if combData.ticksWhileCasting > 0 then
            DoubleLine(L["TT_COMB_AVG_HIT"], Round(combData.hitAvg), L["TT_COMB_AVG_HIT_SPAM"], Round(combData.hitAvgSpam));
        else
            SingleLine(L["TT_COMB_AVG_HIT"], Round(combData.hitAvg));
        end

        if SpellCalc_settings.ttCrit then
            if combData.ticksWhileCasting > 0 then
                DoubleLine(L["TT_COMB_AVG_CRIT"], Round(combData.critAvg), L["TT_COMB_AVG_CRIT_SPAM"], Round(combData.critAvgSpam));
            else
                SingleLine(L["TT_COMB_AVG_CRIT"], Round(combData.critAvg));
            end
        end
    end

    if SpellCalc_settings.ttPerSecond then
        if combData.ticksWhileCasting > 0 then
            DoubleLine(L["TT_PERSECC_"..unitPart], ("%.1f"):format(combData.perSecond), L["TT_COMB_PERSEC_"..unitPart], ("%.1f"):format(combData.perSecondSpam));
        else
            SingleLine(L["TT_PERSECC_"..unitPart], ("%.1f"):format(combData.perSecond));
        end
    end

    if SpellCalc_settings.ttPerMana then
        if combData.ticksWhileCasting > 0 then
            DoubleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(combData.perMana), L["TT_COMB_PER_MANA_"..unitPart], ("%.2f"):format(combData.perManaSpam));
        else
            SingleLine(L["TT_PER_MANA_"..unitPart], ("%.2f"):format(combData.perMana));
        end
    end

    if combData.ticksWhileCasting > 0 and SpellCalc_settings.ttPerMana then
        DoubleLine(nil, nil, L["TT_COMB_UNTILOOM_"..unitPart], Round(combData.doneToOomSpam));
    end
end

--- Return a title for the effect type
-- @param etype The type
local function GetEffectTitle(etype)
    if etype == _addon.SPELL_EFFECT_TYPE.DIRECT_DMG then
        return L["TT_TITLE_DAMAGE"];
    end

    if etype == _addon.SPELL_EFFECT_TYPE.DIRECT_HEAL then
        return L["TT_TITLE_HEAL"];
    end

    if etype == _addon.SPELL_EFFECT_TYPE.DOT then
        return L["TT_TITLE_DOT"];
    end

    if etype == _addon.SPELL_EFFECT_TYPE.HOT then
        return L["TT_TITLE_HOT"];
    end
end

--- Add tooltip for spell type spells
-- @param calcedSpell The base calculation table for the spell
-- @param spellBaseInfo The spell base info entry
local function AddSpellTooltip(calcedSpell, spellBaseInfo)
    for i = 1, #calcedSpell, 1 do
        local effectData = calcedSpell[i];
        local isHeal = false;

        if effectData.effectType == SPELL_EFFECT_TYPE.HOT or effectData.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
            isHeal = true;
        end

        if #calcedSpell > 1 and (i == 2 or calcedSpell.perCastData == nil) then
            HeaderLine(GetEffectTitle(effectData.effectType));
        end

        if effectData.effectType == SPELL_EFFECT_TYPE.DIRECT_DMG or effectData.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
            AppendDirectEffect(calcedSpell, i, isHeal);
        elseif effectData.effectType == SPELL_EFFECT_TYPE.DMG_SHIELD then
            AppendDmgShieldEffect(calcedSpell, i);
        else -- HoT or DoT
            AppendDurationEffect(calcedSpell, i, isHeal, spellBaseInfo);
        end
    end

    if calcedSpell.perCastData ~= nil then
        HeaderLine(L["TT_TITLE_COMB"]);
        AppendCombinedEffect(calcedSpell);
    end
end

_addon.ttDisp.typeHandlders[_addon.SPELL_TYPE.SPELL] = AddSpellTooltip;
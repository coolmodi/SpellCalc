local _, _addon = ...;
local L = _addon:GetLocalization();

local Round = _addon.ttDisp.Round;
local SingleLine = _addon.ttDisp.SingleLine;
local DoubleLine = _addon.ttDisp.DoubleLine;

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

--- Add tooltip for SoR and SoC
-- @param calcedSpell The base calculation table for the spell
-- @param spellBaseInfo The spell base info entry
local function AddSealTooltip(calcedSpell, spellBaseInfo)
    local eff = calcedSpell[1];

    local unitString = L["TT_DAMAGE"];
    local unitPart = "DAMAGE";

    if SpellCalc_settings.ttHit then
        if eff.hitMax > 0 then
            if SpellCalc_settings.ttAverages then
                SingleLine(unitString, ("%d - %d (%d)"):format(Round(eff.hitMin), Round(eff.hitMax), Round(eff.hitAvg)));
            else
                SingleLine(unitString, ("%d - %d"):format(Round(eff.hitMin), Round(eff.hitMax)));
            end
        else
            SingleLine(unitString, ("%.1f"):format(eff.hitAvg));
        end
    end

    if spellBaseInfo.isSeal == "SOC" and SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        if SpellCalc_settings.ttAverages then
            DoubleLine(L["TT_CRITICAL"], ("%d - %d (%d)"):format(Round(eff.critMin), Round(eff.critMax), Round(eff.critAvg)), nil, ("%.2f%% %s"):format(calcedSpell.critChance, L["TT_CHANCE"]));
        else
            DoubleLine(L["TT_CRITICAL"], ("%d - %d"):format(Round(eff.critMin), Round(eff.critMax)), nil, ("%.2f%% %s"):format(calcedSpell.critChance, L["TT_CHANCE"]));
        end
    end

    AppendCoefData(eff);
    if SpellCalc_settings.ttResist and calcedSpell.avgResistMod > 0 then
        SingleLine(L["TT_RESIST"], ("%.1f%%"):format(calcedSpell.avgResistMod*100));
    end

    if SpellCalc_settings.ttHitChance then
        if SpellCalc_settings.ttHitDetail then
            SingleLine(L["TT_HITCHANCE"], ("%.1f%% (%.1f%% + %d%%)"):format(calcedSpell.hitChance, calcedSpell.baseHitChance, calcedSpell.hitChanceBonus));
        else
            SingleLine(L["TT_HITCHANCE"], ("%.1f%%"):format(calcedSpell.hitChance));
        end
        if calcedSpell.dodge > 0 then
            SingleLine(L["TT_DODGECHANCE"], ("%.1f%%"):format(calcedSpell.dodge));
        end
        if calcedSpell.parry > 0 then
            SingleLine(L["TT_PARRYCHANCE"], ("%.1f%%"):format(calcedSpell.parry));
        end
        if calcedSpell.block > 0 then
            SingleLine(L["TT_BLOCKCHANCE"], ("%.1f%%"):format(calcedSpell.block));
        end
    end

    if SpellCalc_settings.ttResist and calcedSpell.avgResistMod > 0 then
        SingleLine(L["TT_RESIST"], ("%.1f%%"):format(calcedSpell.avgResistMod*100));
    end

    if eff.procChance > 0 then
        SingleLine(L["TT_PROCCHANCE"], ("%.1f%%"):format(eff.procChance*100));
    end

    if SpellCalc_settings.ttHit then
        SingleLine(L["TT_HITS_OVER_DURATION"], ("%.1f"):format(eff.triggerHits));
        SingleLine(L["TT_DMG_OVER_DURATION"], ("%.1f"):format(eff.avgTriggerHits));
    end

    if SpellCalc_settings.ttPerSecond then
        SingleLine(L["TT_PERSEC_"..unitPart], ("%.1f"):format(eff.perSecond));
    end
end

_addon.ttDisp.typeHandlders[_addon.SPELL_TYPE.SEAL] = AddSealTooltip;
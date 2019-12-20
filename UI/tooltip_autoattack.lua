local _, _addon = ...;
local L = _addon:GetLocalization();

local Round = _addon.ttDisp.Round;
local SingleLine = _addon.ttDisp.SingleLine;
local DoubleLine = _addon.ttDisp.DoubleLine;

--- Add tooltip for auto attack
-- @param calcedSpell The base calculation table for the spell
local function AddAATooltip(calcedSpell)
    local eff = calcedSpell[1];

    -- MH
    if SpellCalc_settings.ttHit then
        if SpellCalc_settings.ttAverages then
            SingleLine(L["TT_MAINHAND"], ("%d - %d (%d)"):format(Round(eff.hitMin), Round(eff.hitMax), Round(eff.hitAvg)));
        else
            SingleLine(L["TT_MAINHAND"], ("%d - %d"):format(Round(eff.hitMin), Round(eff.hitMax)));
        end
    end

    if SpellCalc_settings.ttCrit and calcedSpell.critChance > 0 then
        if SpellCalc_settings.ttAverages then
            DoubleLine(L["TT_CRITICAL"], ("%d - %d (%d)"):format(Round(eff.critMin), Round(eff.critMax), Round(eff.critAvg)), nil, ("%.2f%% %s"):format(calcedSpell.critChance, L["TT_CHANCE"]));
        else
            DoubleLine(L["TT_CRITICAL"], ("%d - %d"):format(Round(eff.critMin), Round(eff.critMax)), nil, ("%.2f%% %s"):format(calcedSpell.critChance, L["TT_CHANCE"]));
        end
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
        if calcedSpell.glanceChance > 0 then
            SingleLine(L["TT_GLANCECHANCE"], L["TT_GLANCEDATA"]:format(calcedSpell.glanceChance, calcedSpell.glanceDmg*100));
        end
        if calcedSpell.block > 0 then
            SingleLine(L["TT_BLOCKCHANCE"], ("%.1f%%"):format(calcedSpell.block));
        end
    end

    if SpellCalc_settings.ttPerSecond then
        SingleLine(L["TT_PERSEC_DAMAGE"], ("%.1f"):format(eff.perSecond));
    end

    -- OH
    if eff.hitAvgOh > 0 then
        if SpellCalc_settings.ttHit then
            if SpellCalc_settings.ttAverages then
                SingleLine(L["TT_OFFHAND"], ("%d - %d (%d)"):format(Round(eff.hitMinOh), Round(eff.hitMaxOh), Round(eff.hitAvgOh)));
            else
                SingleLine(L["TT_OFFHAND"], ("%d - %d"):format(Round(eff.hitMinOh), Round(eff.hitMaxOh)));
            end
        end

        if SpellCalc_settings.ttCrit and calcedSpell.critChanceOh > 0 then
            if SpellCalc_settings.ttAverages then
                DoubleLine(L["TT_CRITICAL"], ("%d - %d (%d)"):format(Round(eff.critMinOh), Round(eff.critMaxOh), Round(eff.critAvgOh)), nil, ("%.2f%% %s"):format(calcedSpell.critChanceOh, L["TT_CHANCE"]));
            else
                DoubleLine(L["TT_CRITICAL"], ("%d - %d"):format(Round(eff.critMinOh), Round(eff.critMaxOh)), nil, ("%.2f%% %s"):format(calcedSpell.critChanceOh, L["TT_CHANCE"]));
            end
        end

        if SpellCalc_settings.ttHitChance then
            if SpellCalc_settings.ttHitDetail then
                SingleLine(L["TT_HITCHANCE"], ("%.1f%% (%.1f%% + %d%%)"):format(calcedSpell.hitChanceOh, calcedSpell.baseHitChanceOh, calcedSpell.hitChanceBonusOh));
            else
                SingleLine(L["TT_HITCHANCE"], ("%.1f%%"):format(calcedSpell.hitChanceOh));
            end
            if calcedSpell.dodgeOh > 0 then
                SingleLine(L["TT_DODGECHANCE"], ("%.1f%%"):format(calcedSpell.dodgeOh));
            end
            if calcedSpell.parryOh > 0 then
                SingleLine(L["TT_PARRYCHANCE"], ("%.1f%%"):format(calcedSpell.parryOh));
            end
            if calcedSpell.glanceChanceOh > 0 then
                SingleLine(L["TT_GLANCECHANCE"], L["TT_GLANCEDATA"]:format(calcedSpell.glanceChanceOh, calcedSpell.glanceDmgOh*100));
            end
            if calcedSpell.blockOh > 0 then
                SingleLine(L["TT_BLOCKCHANCE"], ("%.1f%%"):format(calcedSpell.blockOh));
            end
        end

        if SpellCalc_settings.ttPerSecond then
            SingleLine(L["TT_PERSEC_DAMAGE"], ("%.1f"):format(eff.perSecondOh));
            SingleLine(L["TT_PERSEC_COMBINED_DAMAGE"], ("%.1f"):format(eff.perSecondOh));
        end
    end
end

_addon.ttDisp.typeHandlders[_addon.SPELL_TYPE.AUTO_ATTACK] = AddAATooltip;
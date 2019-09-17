local _, _addon = ...;
local L = _addon:GetLocalization();

local TTCOLOR = 0.9;

--- Append buff list
-- @param buffs The base table from the base calculation table
local function AppendBuffList(buffs)
    if #buffs > 0 then
        GameTooltip:AddLine("Considered buffs:", 0.5, 1, 0.5);
        GameTooltip:AddLine(table.concat(buffs, ", "), TTCOLOR, TTCOLOR, TTCOLOR);
    end
end

--- Append coefficient data
-- @param calcData The base calculation table for the spell
-- @param effectData The effect table from base calculation table
local function AppendCoefData(calcData, effectData)
    if SpellCalc_settings.ttLevelPenalty and calcData.levelPenalty < 1 then
        GameTooltip:AddLine(("Level <20 efficency mod: %.2f%%"):format(calcData.levelPenalty*100), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttCoef then
        local fullCoef = effectData.effectiveSpCoef;
        local fullPower = effectData.effectivePower;
        if effectData.ticks then
            fullCoef = fullCoef * effectData.ticks;
            fullPower = fullPower * effectData.ticks;
        elseif effectData.charges and effectData.charges > 0 then
            fullCoef = fullCoef * effectData.charges;
            fullPower = fullPower * effectData.charges;
        end
        GameTooltip:AddDoubleLine(("Coefficient: %.2f%%"):format(fullCoef*100),
        ("Bonus: %d (of %d)"):format(fullPower, effectData.spellPower), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end
end

--- Apend effect data for direct damage or heal
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
-- @param isHeal
local function AppendDirectEffect(calcData, effectNum, isHeal)
    local effectData = calcData[effectNum];
    local unitString = isHeal and "Heal" or "Damage";
    local unitChar = isHeal and "H" or "D";

    if SpellCalc_settings.ttHit then
        if effectData.hitMax > 0 then
            GameTooltip:AddDoubleLine(("%s: %d - %d"):format(unitString, effectData.hitMin, effectData.hitMax),
            ("Avg: %.1f"):format(effectData.hitAvg), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
        else
            GameTooltip:AddLine(("%s: %d"):format(unitString, effectData.hitAvg), TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end

    if SpellCalc_settings.ttCrit and calcData.critChance > 0 then
        GameTooltip:AddDoubleLine(("Crit: %d - %d"):format(effectData.critMin, effectData.critMax),
        ("%.2f%%"):format(calcData.critChance), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttHitChance and calcData.hitChance then
        GameTooltip:AddLine(("Hit: %.1f%% (%.1f%% + %.1f%%)"):format(calcData.hitChance*100, 
            (calcData.hitChance - calcData.hitChanceBonus/100)*100, calcData.hitChanceBonus)
            , TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttPs then
        GameTooltip:AddLine(("%sPS: %.1f"):format(unitChar, effectData.perSecond), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttMana then
        GameTooltip:AddDoubleLine(("%sPM: %.2f"):format(unitChar, effectData.perMana),
        ("%sOOM: %d (%.1f casts, %.1fs)"):format(unitChar, effectData.doneToOom, calcData.castsToOom, calcData.timeToOom), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end

    AppendCoefData(calcData, effectData);
end

--- Apend effect data for duration damage or heal
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
-- @param isHeal
local function AppendDurationEffect(calcData, effectNum, isHeal)
    local effectData = calcData[effectNum];
    local unitString = isHeal and "Heal" or "Damage";
    local unitChar = isHeal and "H" or "D";
    local hotdot = isHeal and "HoT" or "DoT";

    if SpellCalc_settings.ttHit then
        GameTooltip:AddLine(("%s: %dx %.1f | %d total"):format(unitString, effectData.ticks, effectData.perTick, effectData.allTicks), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttHitChance and calcData.hitChance then
        GameTooltip:AddLine(("Hit: %.1f%% (%.1f%% + %.1f%%)"):format(calcData.hitChance*100, 
            (calcData.hitChance - calcData.hitChanceBonus/100)*100, calcData.hitChanceBonus)
            , TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttPs then
        GameTooltip:AddDoubleLine(("%sPS: %.1f"):format(unitChar, effectData.perSecond),
        ("%s %sPS: %.1f"):format(hotdot, unitChar, effectData.perSecondDuration), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttMana then
        GameTooltip:AddDoubleLine(("%sPM: %.2f"):format(unitChar, effectData.perMana),
        ("%sOOM: %d"):format(unitChar, effectData.doneToOom), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end

    AppendCoefData(calcData, effectData);
end

--- Apend effect data for dmg shields
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
local function AppendDmgShieldEffect(calcData, effectNum)
    local effectData = calcData[effectNum];
    local unitString = "Damage";
    local unitChar = "D";

    if SpellCalc_settings.ttHit then
        if effectData.charges > 0 then
            GameTooltip:AddLine(("%s: %dx %d | %d total"):format(unitString, effectData.charges, effectData.perCharge, effectData.hitAvg), TTCOLOR, TTCOLOR, TTCOLOR);
        else
            GameTooltip:AddLine(("%s: %d"):format(unitString, effectData.ticks, effectData.perTick, effectData.hitAvg), TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end

    if SpellCalc_settings.ttHitChance and calcData.hitChance then
        GameTooltip:AddLine(("Hit: %.1f%% (%.1f%% + %.1f%%)"):format(calcData.hitChance*100, 
            (calcData.hitChance - calcData.hitChanceBonus/100)*100, calcData.hitChanceBonus)
            , TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttPs then
        GameTooltip:AddLine(("%sPSC: %.1f"):format(unitChar, effectData.perSecond), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttMana then
        GameTooltip:AddLine(("%sPM: %.2f"):format(unitChar, effectData.perMana), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    AppendCoefData(calcData, effectData);
end

--- Append data for split spells like Holy Fire
-- @param calcedSpell The base calculation table for the spell
local function AppendCombinedEffect(calcedSpell)
    local combData = calcedSpell.perCastData;
    local unitString = calcedSpell[1].effectType == _addon.SPELL_EFFECT_TYPE.DIRECT_HEAL and "Heal" or "Damage";
    local unitChar = calcedSpell[1].effectType == _addon.SPELL_EFFECT_TYPE.DIRECT_HEAL and "H" or "D";

    if SpellCalc_settings.ttHit then
        GameTooltip:AddDoubleLine(("Avg hit: %d"):format(combData.hitAvg),
        ("Avg hit spam: %d"):format(combData.hitAvgSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);

        GameTooltip:AddDoubleLine(("Avg crit: %d"):format(combData.critAvg),
        ("Avg crit spam: %d"):format(combData.critAvgSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttPs then
        _addon:PrintDebug(combData);
        GameTooltip:AddDoubleLine(("%sPSC: %.2f"):format(unitChar, combData.perSecond),
        ("%sPS spam: %.1f"):format(unitChar, combData.perSecondSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttMana then
        GameTooltip:AddDoubleLine(("%sPM: %.2f"):format(unitChar, combData.perMana),
        ("%sPM spam: %.2f"):format(unitChar, combData.perManaSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
        GameTooltip:AddDoubleLine("",
        ("%sOOM spam: %d (%.1f casts, %.1fs)"):format(unitChar, combData.doneToOom, calcedSpell.castsToOom, calcedSpell.timeToOom), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end
end

--- Return a title for the effect type
-- @param etype The type
local function GetEffectTitle(etype)
    if etype == _addon.SPELL_EFFECT_TYPE.DIRECT_DMG then
        return "Damage:";
    end

    if etype == _addon.SPELL_EFFECT_TYPE.DIRECT_HEAL then
        return "Heal:";
    end

    if etype == _addon.SPELL_EFFECT_TYPE.DOT then
        return "DoT:";
    end

    if etype == _addon.SPELL_EFFECT_TYPE.HOT then
        return "HoT:";
    end
end

-- This happens for every spell tooltip using the stock tooltip object.
-- Appends data if spell is known to the addon.
GameTooltip:SetScript("OnTooltipSetSpell", function(self)
    local _, spellID = GameTooltip:GetSpell();
    local data = _addon.spellData[spellID];
    if data == nil then
        data = _addon.spellData[GetSpellInfo(spellID)];
        if data == nil then
            return;
        end
    end

    if _addon.calcedSpells[spellID] == nil or _addon.calcedSpells[spellID].updated < _addon.lastChange then
        _addon:CalcSpell(spellID);
    end

    local calcedSpell = _addon.calcedSpells[spellID];

    for i = 1, #calcedSpell, 1 do
        local calcData = calcedSpell[i];
        local isHeal = false;

        if calcData.effectType == _addon.SPELL_EFFECT_TYPE.HOT or calcData.effectType == _addon.SPELL_EFFECT_TYPE.DIRECT_HEAL then
            isHeal = true;
        end

        if #calcedSpell > 1 then
            GameTooltip:AddLine(GetEffectTitle(calcData.effectType), 0.5, 1, 0.5);
        end

        if calcData.effectType == _addon.SPELL_EFFECT_TYPE.DIRECT_DMG or calcData.effectType == _addon.SPELL_EFFECT_TYPE.DIRECT_HEAL then
            AppendDirectEffect(calcedSpell, i, isHeal);
        elseif calcData.effectType == _addon.SPELL_EFFECT_TYPE.DMG_SHIELD then
            AppendDmgShieldEffect(calcedSpell, i);
        else -- HoT or DoT
            AppendDurationEffect(calcedSpell, i, isHeal);
        end
    end

    if calcedSpell.perCastData ~= nil then
        GameTooltip:AddLine("Combined:", 0.5, 1, 0.5);
        AppendCombinedEffect(calcedSpell);
    end

    if SpellCalc_settings.ttShowBuffs then
        AppendBuffList(calcedSpell.buffs);
    end
end);
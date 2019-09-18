local _, _addon = ...;
local L = _addon:GetLocalization();

local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;
local SPELL_TYPE = _addon.SPELL_TYPE;
local TTCOLOR = 0.9;

--- Append buff list
-- @param buffs The base table from the base calculation table
local function AppendBuffList(buffs)
    if SpellCalc_settings.ttShowBuffs and #buffs > 0 then
        GameTooltip:AddLine(L["TT_BUFFS"], 0.5, 1, 0.5);
        GameTooltip:AddLine(table.concat(buffs, ", "), TTCOLOR, TTCOLOR, TTCOLOR);
    end
end

--- Append coefficient data
-- @param calcData The base calculation table for the spell
-- @param effectData The effect table from base calculation table
local function AppendCoefData(calcData, effectData)
    if SpellCalc_settings.ttLevelPenalty and calcData.levelPenalty < 1 then
        GameTooltip:AddLine(("%s: %.2f%%"):format(L["TT_LOWLVLPENAL"], (1-calcData.levelPenalty)*100), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttCoef then
        local fullCoef = effectData.effectiveSpCoef;
        if effectData.ticks then
            fullCoef = fullCoef * effectData.ticks;
        elseif effectData.charges and effectData.charges > 0 then
            fullCoef = fullCoef * effectData.charges;
        end
        GameTooltip:AddLine(("%s: %.2f%%"):format(L["TT_COEF"], fullCoef*100), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttPower then
        local fullPower = effectData.effectivePower;
        if effectData.ticks then
            fullPower = fullPower * effectData.ticks;
        elseif effectData.charges and effectData.charges > 0 then
            fullPower = fullPower * effectData.charges;
        end
        GameTooltip:AddLine(("%s: %d (of %d)"):format(L["TT_POWER"], fullPower, effectData.spellPower), TTCOLOR, TTCOLOR, TTCOLOR);
    end
end

--- Append hit and resist
-- @param calcData The base calculation table for the spell
local function AppendMitigation(calcData)
    if SpellCalc_settings.ttHitChance then
        if SpellCalc_settings.ttHitDetail then
            local baseStr = ("%s: %.1f%% (%d%% + %d%%"):format(L["TT_HITCHANCE"], calcData.hitChance*100, calcData.baseHitChance, calcData.hitChanceBonus);
            local binaryStr = ")";
            if calcData.binaryHitLoss > 0 then
                binaryStr = (" - %.1f%%) (%s)"):format(calcData.binaryHitLoss, L["TT_BINARYMISS"]);
            end
            baseStr = baseStr..binaryStr;
            GameTooltip:AddLine(baseStr, TTCOLOR, TTCOLOR, TTCOLOR);
        else
            GameTooltip:AddLine(("%s: %.1f%%"):format(L["TT_HITCHANCE"], calcData.hitChance*100), TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end

    if SpellCalc_settings.ttResist and calcData.avgResistMod > 0 then
        GameTooltip:AddLine(("%s: %.1f%%"):format(L["TT_RESIST"], calcData.avgResistMod*100), TTCOLOR, TTCOLOR, TTCOLOR);
    end
end

--- Append efficiency stuff
-- @param calcData The base calculation table for the spell
-- @param effectData The effect table from base calculation table
-- @param isHeal
-- @param showTime Show time taken
local function AppendEfficiency(calcData, effectData, isHeal, showTime)
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttEffCost then
        GameTooltip:AddLine(("%s: %.1f"):format(L["TT_EFFCOST"], calcData.effectiveCost), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttPerMana then
        GameTooltip:AddLine(("%s: %.2f"):format(L["TT_PER_MANA_"..unitPart], effectData.perMana), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttToOom then
        if showTime then
            GameTooltip:AddLine(("%s: %d (%ds)"):format(L["TT_UNTILOOM_"..unitPart], effectData.doneToOom, calcData.timeToOom), TTCOLOR, TTCOLOR, TTCOLOR);
        else
            GameTooltip:AddLine(("%s: %d"):format(L["TT_UNTILOOM_"..unitPart], effectData.doneToOom), TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end
end

--- Apend effect data for direct damage or heal
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
-- @param isHeal
local function AppendDirectEffect(calcData, effectNum, isHeal)
    local effectData = calcData[effectNum];
    local unitString = isHeal and L["TT_HEAL"] or L["TT_DAMAGE"];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttHit then
        if effectData.hitMax > 0 then
            if SpellCalc_settings.ttAverages then
                GameTooltip:AddLine(("%s: %d - %d (%.1f)"):format(unitString, effectData.hitMin, effectData.hitMax, effectData.hitAvg), TTCOLOR, TTCOLOR, TTCOLOR);
            else
                GameTooltip:AddLine(("%s: %d - %d"):format(unitString, effectData.hitMin, effectData.hitMax), TTCOLOR, TTCOLOR, TTCOLOR);
            end
        else
            GameTooltip:AddLine(("%s: %d"):format(unitString, effectData.hitAvg), TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end

    if SpellCalc_settings.ttCrit then
        if effectData.critMax > 0 then
            if SpellCalc_settings.ttAverages then
                GameTooltip:AddDoubleLine(("%s: %d - %d (%.1f)"):format(L["TT_CRITICAL"], effectData.critMin, effectData.critMax, effectData.critAvg),
                ("%.2f%% %s"):format(calcData.critChance, L["TT_CHANCE"]), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
            else
                GameTooltip:AddDoubleLine(("%s: %d - %d"):format(L["TT_CRITICAL"], effectData.critMin, effectData.critMax),
                ("%.2f%% %s"):format(calcData.critChance, L["TT_CHANCE"]), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
            end
        else
            GameTooltip:AddDoubleLine(("%s: %d"):format(L["TT_CRITICAL"], effectData.critAvg),
            ("%.2f%% %s"):format(calcData.critChance, L["TT_CHANCE"]), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end

    AppendCoefData(calcData, effectData);
    if not isHeal then
        AppendMitigation(calcData);
    end

    if SpellCalc_settings.ttPerSecond then
        GameTooltip:AddLine(("%s: %d"):format(L["TT_PERSEC_"..unitPart], effectData.perSecond), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    AppendEfficiency(calcData, effectData, isHeal, true);
end

--- Apend effect data for duration damage or heal
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
-- @param isHeal
-- @param spellData Spell data entry
local function AppendDurationEffect(calcData, effectNum, isHeal, spellData)
    local effectData = calcData[effectNum];
    local unitString = isHeal and L["TT_HEAL"] or L["TT_DAMAGE"];
    local unitPart = isHeal and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttHit then
        GameTooltip:AddLine(("%s: %dx %.1f | %d total"):format(unitString, effectData.ticks, effectData.perTick, effectData.allTicks), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    AppendCoefData(calcData, effectData);
    if not isHeal and effectNum == 1 then
        AppendMitigation(calcData);
    end

    if SpellCalc_settings.ttPerSecond then
        if not spellData.isChannel then
            GameTooltip:AddDoubleLine(("%s: %d"):format(L["TT_PERSEC_"..unitPart], effectData.perSecond),
            ("%s: %d"):format(L["TT_PERSECDUR_"..unitPart], effectData.perSecondDuration), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
        else
            GameTooltip:AddLine(("%s: %d"):format(L["TT_PERSEC_"..unitPart], effectData.perSecond), TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end

    AppendEfficiency(calcData, effectData, isHeal);
end

--- Apend effect data for dmg shields
-- @param calcData The base calculation table for the spell
-- @param effectNum The effect slot to show
local function AppendDmgShieldEffect(calcData, effectNum)
    local effectData = calcData[effectNum];

    if SpellCalc_settings.ttHit then
        if effectData.charges > 0 then
            GameTooltip:AddLine(("%s: %dx %d | %d total"):format(L["TT_DAMAGE"], effectData.charges, effectData.perCharge, effectData.hitAvg), TTCOLOR, TTCOLOR, TTCOLOR);
        else
            GameTooltip:AddLine(("%s: %d"):format(L["TT_DAMAGE"], effectData.ticks, effectData.perTick, effectData.hitAvg), TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end

    AppendCoefData(calcData, effectData);
    AppendMitigation(calcData);

    if SpellCalc_settings.ttPerSecond then
        GameTooltip:AddLine(("%s: %d"):format(L["TT_PERSECC_DAMAGE"], effectData.perSecond), TTCOLOR, TTCOLOR, TTCOLOR);
    end

    AppendEfficiency(calcData, effectData, false);
end

--- Append data for split spells like Holy Fire
-- @param calcedSpell The base calculation table for the spell
local function AppendCombinedEffect(calcedSpell)
    local combData = calcedSpell.perCastData;
    local unitPart = calcedSpell[1].effectType == _addon.SPELL_EFFECT_TYPE.DIRECT_HEAL and "HEAL" or "DAMAGE";

    if SpellCalc_settings.ttAverages then
        GameTooltip:AddDoubleLine(("%s: %d"):format(L["TT_COMB_AVG_HIT"], combData.hitAvg),
        ("%s: %d"):format(L["TT_COMB_AVG_HIT_SPAM"], combData.hitAvgSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);

        if SpellCalc_settings.ttCrit then
            GameTooltip:AddDoubleLine(("%s: %d"):format(L["TT_COMB_AVG_CRIT"], combData.critAvg),
            ("%s: %d"):format(L["TT_COMB_AVG_CRIT_SPAM"], combData.critAvgSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
        end
    end

    if SpellCalc_settings.ttPerSecond then
        _addon:PrintDebug(combData);
        GameTooltip:AddDoubleLine(("%s: %.1f"):format(L["TT_PERSECC_"..unitPart], combData.perSecond),
        ("%s: %.1f"):format(L["TT_COMB_PERSEC_"..unitPart], combData.perSecondSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttPerMana then
        GameTooltip:AddDoubleLine(("%s: %.2f"):format(L["TT_PER_MANA_"..unitPart], combData.perMana),
        ("%s: %.2f"):format(L["TT_COMB_PER_MANA_"..unitPart], combData.perManaSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
    end

    if SpellCalc_settings.ttPerMana then
        GameTooltip:AddDoubleLine("-", ("%s: %d"):format(L["TT_COMB_UNTILOOM_"..unitPart], combData.doneToOomSpam), TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR, TTCOLOR);
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
-- @param spellData The spell data entry
local function AddSpellTooltip(calcedSpell, spellData)
    for i = 1, #calcedSpell, 1 do
        local effectData = calcedSpell[i];
        local isHeal = false;

        if effectData.effectType == SPELL_EFFECT_TYPE.HOT or effectData.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
            isHeal = true;
        end

        if #calcedSpell > 1 and (i == 2 or calcedSpell.perCastData == nil) then
            GameTooltip:AddLine(GetEffectTitle(effectData.effectType), 0.5, 1, 0.5);
        end

        if effectData.effectType == SPELL_EFFECT_TYPE.DIRECT_DMG or effectData.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
            AppendDirectEffect(calcedSpell, i, isHeal);
        elseif effectData.effectType == SPELL_EFFECT_TYPE.DMG_SHIELD then
            AppendDmgShieldEffect(calcedSpell, i);
        else -- HoT or DoT
            AppendDurationEffect(calcedSpell, i, isHeal, spellData);
        end
    end

    if calcedSpell.perCastData ~= nil then
        GameTooltip:AddLine(L["TT_TITLE_COMB"], 0.5, 1, 0.5);
        AppendCombinedEffect(calcedSpell);
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

    if calcedSpell.spellType == SPELL_TYPE.SPELL then
        AddSpellTooltip(calcedSpell, data);
    end

    AppendBuffList(calcedSpell.buffs);
end);
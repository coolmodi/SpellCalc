local _, _addon = ...;

local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;
local SHADOW_BOLT = GetSpellInfo(686);

--- Get the average dmg resisted by target due to resistance after penetration
-- @param school The spell school (API enumeration)
function _addon:GetSpellAvgResist(school)
    local tData = self.target;
    local pLevel = UnitLevel("player");
    local baseRes = tData.resistance[school];
    local effectiveRes = baseRes + math.max((tData.level - pLevel)*5, 0) - math.min(baseRes, self.stats.spellPen[school].val);
    return math.min(0.75 * (effectiveRes / math.max(pLevel * 5, 100)), 0.75);
end

--- Get level based spell hit chance against the current target
-- @return The hit chance in percent
function _addon:GetSpellHitChance()
    local tData = self.target;

    if tData.levelDiff < -2 then
        return 99;
    elseif tData.levelDiff < 3 then
        return 96 - tData.levelDiff;
    end

    if not tData.isPlayer then
        if tData.levelDiff < 11 then
            return 83 - (tData.levelDiff - 3) * 11;
        end
        return 3;
    end

    if tData.levelDiff < 13 then
        return 87 - (tData.levelDiff - 3) * 7;
    end
    return 20;
end

--- Get base spell crit chance for spell school
-- @param spellBaseInfo The spell base info table
-- @param buffTable The calculation table's buff table
function _addon:GetSpellSchoolCritChance(spellBaseInfo, buffTable)
    if spellBaseInfo.isAbsorbShield or spellBaseInfo.isDmgShield then
        return 0;
    end

    local stats = self.stats;
    local chance = stats.spellCrit[spellBaseInfo.school];

    chance = chance + stats.critMods.school[spellBaseInfo.school].val;
    for _, buffName in pairs(stats.critMods.school[spellBaseInfo.school].buffs) do
        table.insert(buffTable, buffName);
    end

    return chance;
end

--- Get spell hit bonus from gear and talents
-- @param school The spell school (API enumeration)
-- @param buffTable The calculation table's buff table
function _addon:GetSpellHitBonus(school, buffTable)
    local stats = self.stats;
    local hitChanceBonus = 0;

    hitChanceBonus = hitChanceBonus + stats.hitMods.school[school].val;
    for _, buffName in pairs(stats.hitMods.school[school].buffs) do
        table.insert(buffTable, buffName);
    end

    hitChanceBonus = hitChanceBonus + stats.hitBonusSpell.val;
    for _, buffName in pairs(stats.hitBonusSpell.buffs) do
        table.insert(buffTable, buffName);
    end

    return hitChanceBonus;
end

--- Adds table members for spell calculation to the calculation table
-- @param et The subtable for the effect
-- @param effectType The SPELL_EFFECT_TYPE
function _addon:AddSpellCalculationMembers(et, effectType)
    if effectType == SPELL_EFFECT_TYPE.DIRECT_DMG or effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
        et.hitMin = 0; -- Minimum hit
        et.hitMax = 0; -- Maximum hit
        et.hitAvg = 0; -- Average normal hit (as in it did hit)
        et.critMin = 0; -- Same just with crit
        et.critMax = 0;
        et.critAvg = 0;
        et.avgCombined = 0; -- Both hit and crit

    elseif effectType == SPELL_EFFECT_TYPE.DOT or effectType == SPELL_EFFECT_TYPE.HOT then
        et.perTick = 0; -- Done per tick
        et.duration = 0;
        et.ticks = 0;
        et.allTicks = 0; -- Done over all ticks (assuming hit)
        et.perSecondDuration = 0; -- Per second done over full duration (assuming hit)

    elseif effectType == SPELL_EFFECT_TYPE.DMG_SHIELD then
        et.perCharge = 0; -- Done per charge
        et.charges = 0;
        et.hitAvg = 0; -- Average normal hit, all charges, if charges exist (assuming hit)

    else
        error("non-existing effect type " .. effectType .. " for spell");
    end

    et.avgAfterMitigation = 0; -- Average after miss and resist taken into account
    et.doneToOom = 0; -- Dmg/healing done until oom, assumes (theoretical) spam for non direct spells!
    et.perSecond = 0; -- Done per second PER AVERAGE CAST
    et.perMana = 0; -- Mana per unit done PER AVERAGE CAST
end

--- Is the spell something like Holy Fire
-- @param primaryType The primary effect type, required
-- @param secondaryType The secondary effect type, optional
local function IsCombinedSpell(primaryType, secondaryType)
    if (primaryType == SPELL_EFFECT_TYPE.DIRECT_DMG or primaryType == SPELL_EFFECT_TYPE.DIRECT_HEAL)
    and (secondaryType == SPELL_EFFECT_TYPE.DOT or secondaryType == SPELL_EFFECT_TYPE.HOT) then
        return true;
    end
    return false;
end

--- Adds table members for combined spell calculation to the calculation table if needed
-- @param st The base spell calculation table
-- @param primaryType The primary effect type, required
-- @param secondaryType The secondary effect type, optional
function _addon:ConditionalAddSpellMembers(st, primaryType, secondaryType)
    if not IsCombinedSpell(primaryType, secondaryType) then
        return;
    end
    st.perCastData = {
        hitAvg = 0, -- The total done per hit full duration
        critAvg = 0, -- The total done if primary crits full duration
        perSecond = 0, -- Per second for done per cast time when full duration is used (DPSC)
        perMana = 0, -- Unit per mana when full duration used

        -- Those values really only are useful for
        -- holy fire (without cast time talent?)
        -- fireball and pyroblast I guess
        hitAvgSpam = 0, -- Avg if spammed
        critAvgSpam = 0,
        perSecondSpam = 0, -- Per second done when spammed
        perManaSpam = 0, -- Per mana when spammed
        doneToOomSpam = 0, -- Done until oom if spammed
    };
end

--- Calculate direct spell effect (e.g. Frostbolt or Healing Touch)
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param castTime Spell cast time
-- @param spellName The spell's name
function _addon:CalculateSpellDirectEffect(calcData, et, spellRankInfo, effectData, effectMod, castTime, spellName)
    local levelBonus = 0;
    if effectData.perLevel then
        levelBonus = (math.min(UnitLevel("player"), spellRankInfo.maxLevel) - spellRankInfo.spellLevel) * effectData.perLevel;
    end

    local effPowerUse = effectData.isHeal and et.effectivePower or et.effectivePower * effectMod;

    et.hitMin = math.floor((effectData.min + levelBonus) * effectMod + effPowerUse + 0.5);
    et.hitAvg = et.hitMin;
    et.critMin = math.floor(et.hitMin * calcData.critMult + 0.5);
    et.critAvg = et.critMin;

    if effectData.max then
        et.hitMax = math.floor((effectData.max + levelBonus) * effectMod + effPowerUse + 0.5);
        et.hitAvg = (et.hitMin + et.hitMax) / 2;
        et.critMax = math.ceil(et.hitMax * calcData.critMult);
        et.critAvg = (et.critMin + et.critMax) / 2;
    end

    if et.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL and SpellCalc_settings.healDisregardCrit then
        et.avgCombined = et.hitAvg;
    else
        et.avgCombined = et.hitAvg + (et.critAvg - et.hitAvg) * calcData.critChance/100;
    end

    if calcData.hitChance ~= nil then
        et.avgAfterMitigation = et.avgCombined * calcData.hitChance;
        if et.binaryHitLoss == 0 then
            et.avgAfterMitigation = et.avgAfterMitigation * (1 - calcData.avgResistMod);
        end
    else
        et.avgAfterMitigation = et.avgCombined;
    end

    if self.stats.impShadowBolt.val ~= 0 and spellName == SHADOW_BOLT and SpellCalc_settings.useImpSB then
        local mod = self.stats.impShadowBolt.val/100;
        local uptime = math.min(1, calcData.critChance/25); -- TODO: check this when not nearly falling asleep
        local effectiveMod = mod * uptime;
        et.avgAfterMitigation = et.avgAfterMitigation * (1 + effectiveMod);

        for _, buffName in pairs(self.stats.impShadowBolt.buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    et.perSecond = et.avgAfterMitigation / castTime;
    et.doneToOom = calcData.castsToOom * et.avgAfterMitigation;
    et.perMana = et.avgAfterMitigation / calcData.effectiveCost;

    if et.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL and SpellCalc_settings.healTargetHps > 0 then
        local secondsNoCast = (et.perSecond / SpellCalc_settings.healTargetHps - 1) * castTime;
        if secondsNoCast > 0 then
            local manaGained = secondsNoCast * (self.stats.mp5.val/5 + self.stats.manaReg);
            local secOutOfFSR = secondsNoCast - 5 + castTime;
            if secOutOfFSR > 0 then
                et.secNoFsrTHPS = secOutOfFSR;
                -- Also need to remove previously added normal mana regen during secOutOfFSR 
                -- effectiveCost calculation deducted it for the castTime, so secOutOfFSR is fine to use
                manaGained = manaGained - secOutOfFSR * self.stats.manaReg + self.stats.baseManaReg * secOutOfFSR;
            else
                et.secNoFsrTHPS = 0;
            end
            et.secNoCastTHPS = secondsNoCast;
            et.effCostTHPS = calcData.effectiveCost - manaGained;
            et.perManaTHPS = et.avgAfterMitigation / et.effCostTHPS;
            local ctoTHPS = calcData.effMana / et.effCostTHPS;
            if SpellCalc_settings.useRealToOom then
                calcData.castsToOom = math.floor(ctoTHPS);
            end
            et.timeToOomTHPS = ctoTHPS * (castTime + secondsNoCast);
            et.doneToOomTHPS = ctoTHPS * et.avgAfterMitigation;
        end
    end
end

--- Calculate damage shield effect (e.g. Lightning Shield, not Thorns lel)
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param castTime Spell cast time
function _addon:CalculateSpellDmgShieldEffect(calcData, et, spellRankInfo, effectData, effectMod, castTime)
    local levelBonus = 0;
    if effectData.perLevel then
        levelBonus = (math.min(UnitLevel("player"), spellRankInfo.maxLevel) - spellRankInfo.spellLevel) * effectData.perLevel;
    end

    local effPowerUse = effectData.isHeal and et.effectivePower or et.effectivePower * effectMod;

    et.perCharge = math.floor((effectData.min + levelBonus) * effectMod + effPowerUse + 0.5);
    et.charges = effectData.charges;
    et.hitAvg = et.perCharge * et.charges;
    et.avgAfterMitigation = et.hitAvg * calcData.hitChance * (1 - calcData.avgResistMod);
    et.perSecond = et.avgAfterMitigation / castTime;
    et.doneToOom = calcData.castsToOom * et.avgAfterMitigation;
    et.perMana = et.avgAfterMitigation / calcData.effectiveCost;
end

--- Calculate duration effect (e.g. Corruption or Renew)
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param castTime Spell cast time (or channel duration)
-- @param isChannel Is the spell a channeled spell
-- @param spellName The spell's name
function _addon:CalculateSpellDurationEffect(calcData, et, spellRankInfo, effectData, effectMod, castTime, isChannel, spellName)
    local levelBonus = 0;
    if effectData.perLevel then
        levelBonus = (math.min(UnitLevel("player"), spellRankInfo.maxLevel) - spellRankInfo.spellLevel) * effectData.perLevel;
    end

    et.duration = spellRankInfo.duration;

    if self.stats.durationMods[spellName] ~= nil then
        et.duration = et.duration + self.stats.durationMods[spellName].val;
        for _, buffName in pairs(self.stats.durationMods[spellName]) do
            table.insert(calcData.buffs, buffName);
        end
    end

    local effPowerUse = effectData.isHeal and et.effectivePower or et.effectivePower * effectMod;

    et.ticks = et.duration / effectData.tickPeriod;
    et.perTick = (effectData.min + levelBonus) * effectMod + effPowerUse;
    et.allTicks = math.floor(et.perTick * et.ticks + 0.5);

    if calcData.hitChance ~= nil then
        if isChannel then
            et.avgAfterMitigation = et.allTicks * (1 - (1 - calcData.hitChance) ^ (castTime/1.5));
        else
            et.avgAfterMitigation = et.allTicks * calcData.hitChance;
        end
        if et.binaryHitLoss == 0 then
            et.avgAfterMitigation = et.avgAfterMitigation * (1 - calcData.avgResistMod);
        end
    else
        et.avgAfterMitigation = et.allTicks;
    end

    et.perSecondDuration = et.allTicks / et.duration;
    et.perSecond = et.avgAfterMitigation / castTime;
    et.doneToOom = calcData.castsToOom * et.avgAfterMitigation;
    et.perMana = et.avgAfterMitigation / calcData.effectiveCost;
end

--- Calculate combined values for split spells (e.g. Holy Fire)
-- @param calcData The calculation table
-- @param effectData The effect data for the duration effect (2)
-- @param castTime Spell cast time (or channel duration)
function _addon:CalculateSpellCombinedEffect(calcData, effectData, castTime)
    calcData.perCastData.hitAvg = calcData[1].hitAvg + calcData[2].allTicks;
    calcData.perCastData.critAvg = calcData[1].critAvg + calcData[2].allTicks;

    calcData.perCastData.perSecond = calcData[1].perSecond + calcData[2].avgAfterMitigation / castTime;
    calcData.perCastData.perMana = calcData[1].perMana + calcData[2].perMana;
        
    local ticksPerCast = math.floor(castTime / effectData.tickPeriod);
    local tickDonePerCast = ticksPerCast * calcData[2].perTick;
    calcData.perCastData.hitAvgSpam = tickDonePerCast + calcData[1].hitAvg;
    calcData.perCastData.critAvgSpam = tickDonePerCast + calcData[1].critAvg;
    calcData.perCastData.perSecondSpam = calcData[1].perSecond + tickDonePerCast / castTime;
    calcData.perCastData.perManaSpam = calcData[1].perMana + (calcData[2].perMana * (ticksPerCast / calcData[2].ticks));

    local hitCastsToOom = calcData.castsToOom;
    if calcData.hitChance ~= nil then
        hitCastsToOom = hitCastsToOom * calcData.hitChance;
    end
    local ticksPerCastToOom = hitCastsToOom * ticksPerCast;
    calcData.perCastData.doneToOomSpam = calcData[1].doneToOom + ticksPerCastToOom * calcData[2].perTick;
end
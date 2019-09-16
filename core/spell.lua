local _, _addon = ...;

--- Get the average dmg resisted by target due to resistance after penetration
-- @param school The spell school (API enumeration)
function _addon:GetSpellAvgResist(school)
    local tData = self.target;
    local pLevel = UnitLevel("player");
    local baseRes = tData.resistance[school];
    local effectiveRes = baseRes + math.max((tData.level - pLevel)*5, 0) - math.min(baseRes, self.stats.spellPen[school].val);
    return 0.75 * (effectiveRes / math.max(pLevel * 5, 100));
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
-- @param spellData The spell data table
-- @param buffTable The calculation table's buff table
function _addon:GetSpellSchoolCritChance(spellData, buffTable)
    if spellData.isAbsorbShield or spellData.isDmgShield then
        return 0;
    end

    local stats = self.stats;
    local chance = stats.spellCrit[spellData.school];

    chance = chance + stats.critMods.school[spellData.school].val;
    for _, buffName in pairs(stats.critMods.school[spellData.school].buffs) do
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

--- Calculate direct spell effect (e.g. Frostbolt or Healing Touch)
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellDesc The spell description
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param castTime Spell cast time
function _addon:CalculateSpellDirectEffect(calcData, et, spellDesc, effectData, effectMod, castTime)
    local minTt, maxTt = string.match(spellDesc, effectData.ttMinMax);

    et.hitMin = math.floor(minTt * effectMod + et.effectivePower);
    et.hitAvg = et.hitMin;
    et.critMin = math.floor(et.hitMin * calcData.critMult);
    et.critAvg = et.critMin;

    if maxTt then
        et.hitMax = math.ceil(maxTt * effectMod + et.effectivePower);
        et.hitAvg = (et.hitMin + et.hitMax) / 2;
        et.critMax = math.ceil(et.hitMax * calcData.critMult);
        et.critAvg = (et.critMin + et.critMax) / 2;
    end

    et.avgCombined = et.hitAvg + (et.critAvg - et.hitAvg) * calcData.critChance/100;

    if calcData.hitChance ~= nil then
        et.avgAfterMitigation = et.avgCombined * calcData.hitChance * (1 - calcData.avgResistMod);
    else
        et.avgAfterMitigation = et.avgCombined;
    end

    et.perSecond = et.avgAfterMitigation / castTime;
    et.doneToOom = calcData.castsToOom * et.avgAfterMitigation;
    et.perMana = et.avgAfterMitigation / calcData.effectiveCost;
end

--- Calculate damage shield effect (e.g. Lightning Shield, not Thorns lel)
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellDesc The spell description
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param castTime Spell cast time
function _addon:CalculateSpellDmgShieldEffect(calcData, et, spellDesc, effectData, effectMod, castTime)
    local dmgTt = string.match(spellDesc, effectData.ttMinMax);
    et.perCharge = math.floor(dmgTt * effectMod + et.effectivePower + 0.5);
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
-- @param spellDesc The spell description
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param castTime Spell cast time (or channel duration)
-- @param isChannel Is the spell a channeled spell
function _addon:CalculateSpellDurationEffect(calcData, et, spellDesc, effectData, effectMod, castTime, isChannel)
    et.duration = effectData.duration;
    if not isChannel then
        et.duration = effectData.duration;
        if et.duration == nil then
            et.duration = string.match(spellDesc, effectData.ttDuration);
            _addon:PrintDebug("Have duration: " .. et.duration);
        end
    end

    et.ticks = et.duration / effectData.tickPeriod;
    local dmgTt = string.match(spellDesc, effectData.ttMinMax);
    et.hitAvg = math.floor(dmgTt * effectMod + (et.ticks * et.effectivePower) + 0.5);
    et.perTick = et.hitAvg / et.ticks;

    if calcData.hitChance ~= nil then
        if isChannel then
            et.avgAfterMitigation = et.hitAvg * (1 - (1 - calcData.hitChance) ^ (castTime/1.5));
        else
            et.avgAfterMitigation = et.hitAvg * calcData.hitChance;
        end
    else
        et.avgAfterMitigation = et.hitAvg;
    end

    et.perSecondDuration = et.hitAvg / et.duration;
    et.perSecond = et.avgAfterMitigation / castTime;
    et.doneToOom = calcData.castsToOom * et.avgAfterMitigation;
    et.perMana = et.avgAfterMitigation / calcData.effectiveCost;
end

--- Calculate combined values for split spells (e.g. Holy Fire)
-- @param calcData The calculation table
-- @param effectData The effect data from spell data
-- @param castTime Spell cast time (or channel duration)
function _addon:CalculateSpellCombinedEffect(calcData, effectData, castTime)
    calcData.perCastData.hitAvg = calcData[1].hitAvg + calcData[2].hitAvg;
    calcData.perCastData.critAvg = calcData[1].critAvg + calcData[2].hitAvg;

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
local _, _addon = ...;

local TYPE = _addon.SPELL_TYPE.SPELL;
local _, class = UnitClass("player");
local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;

local SHADOW_BOLT = GetSpellInfo(686);
local HEALING_TOUCH = GetSpellInfo(5186);
local HEALING_WAVE = GetSpellInfo(332);
local LESSER_HEALING_WAVE = GetSpellInfo(8004);

local stats = _addon.stats;

--- Get base spell crit chance for spell school
-- @param spellBaseInfo The spell base info table
-- @param buffTable The calculation table's buff table
function GetSpellSchoolCritChance(spellBaseInfo, buffTable)
    if spellBaseInfo.isAbsorbShield or spellBaseInfo.isDmgShield then
        return 0;
    end

    local chance = stats.spellCrit[spellBaseInfo.school];

    chance = chance + stats.critMods.school[spellBaseInfo.school].val;
    for _, buffName in pairs(stats.critMods.school[spellBaseInfo.school].buffs) do
        table.insert(buffTable, buffName);
    end

    return chance;
end

--- Set crit chance and mult
-- @param ct the calculation table
-- @param spellBaseInfo The spell base info table
local function SetCrit(ct, spellBaseInfo)
    ct.critMult = 1.5;
    ct.critChance = GetSpellSchoolCritChance(spellBaseInfo, ct.buffs);
end

--- Get the average dmg resisted by target due to resistance after penetration
-- @param school The spell school (API enumeration)
function _addon:GetSpellAvgResist(school)
    local tData = _addon.target;
    local pLevel = UnitLevel("player");
    local baseRes = tData.resistance[school];
    local effectiveRes = baseRes + math.max((tData.level - pLevel)*5, 0) - math.min(baseRes, stats.spellPen[school].val);
    return math.min(0.75 * (effectiveRes / math.max(pLevel * 5, 100)), 0.75);
end

--- Get level based spell hit chance against the current target
-- @return The hit chance in percent
function GetSpellHitChance()
    local tData = _addon.target;

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

--- Get spell hit bonus from gear and talents
-- @param school The spell school (API enumeration)
-- @param buffTable The calculation table's buff table
function GetSpellHitBonus(school, buffTable)
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

--- Calculate mitigation variables
-- @param calcData the calculation table
-- @param spellBaseInfo The spell base info table
-- @param spellName The spell's name
local function Mitigate(calcData, spellBaseInfo, spellName)
    calcData.avgResistMod = _addon:GetSpellAvgResist(spellBaseInfo.school);

    if calcData.hitChance ~= nil then
        calcData.baseHitChance = GetSpellHitChance();
        calcData.hitChanceBonus = GetSpellHitBonus(spellBaseInfo.school, calcData.buffs);

        if stats.hitMods.spell[spellName] ~= nil then
            calcData.hitChanceBonus = calcData.hitChanceBonus + stats.hitMods.spell[spellName].val;
            for _, buffName in pairs(stats.hitMods.spell[spellName].buffs) do
                table.insert(calcData.buffs, buffName);
            end
        end

        calcData.hitChance = calcData.baseHitChance + calcData.hitChanceBonus;

        if spellBaseInfo.isBinary then
            calcData.binaryHitLoss = calcData.hitChance - (calcData.hitChance * (1 - calcData.avgResistMod));
            calcData.hitChance = calcData.hitChance - calcData.binaryHitLoss;
        end

        if calcData.hitChance > 99 then
            calcData.hitChance = 99;
        elseif calcData.hitChance < 1 then
            calcData.hitChance = 1;
        end

        calcData.hitChance = calcData.hitChance/100;
    end
end

--- Is the spell something like Holy Fire
-- @param primaryType The primary effect type
-- @param secondaryType The secondary effect type
local function IsCombinedSpell(primaryType, secondaryType)
    if (primaryType == SPELL_EFFECT_TYPE.DIRECT_DMG or primaryType == SPELL_EFFECT_TYPE.DIRECT_HEAL)
    and (secondaryType == SPELL_EFFECT_TYPE.DOT or secondaryType == SPELL_EFFECT_TYPE.HOT) then
        return true;
    end
    return false;
end

--- Add vars for mitigation to calc table if needed
-- @param ct the calculation table
-- @param primaryType The primary effect type
-- @param primaryType The secondary effect type
function AddBaseMembers(ct, primaryType, secondaryType)
    ct.castsToOom = 0;
    ct.timeToOom = 0;

    if primaryType == SPELL_EFFECT_TYPE.DIRECT_DMG or primaryType == SPELL_EFFECT_TYPE.DOT or primaryType == SPELL_EFFECT_TYPE.DMG_SHIELD then
        ct.baseHitChance = 0; -- The base hit chance dpending on level difference
        ct.hitChance = 0; -- Hit chance after modifiers (mult)
        ct.hitChanceBonus = 0; -- Bonus hitchance from buffs (and gear)
        ct.avgResistMod = 0; -- The average dmg resisted modifier (mult)
        ct.binaryHitLoss = 0; -- Hit chance lost due to binary spells and resistance
    end

    if IsCombinedSpell(primaryType, secondaryType) then
        ct.perCastData = {
            hitAvg = 0, -- The total done per hit full duration
            critAvg = 0, -- The total done if primary crits full duration
            perSecond = 0, -- Per second for done per cast time when full duration is used (DPSC)
            perMana = 0, -- Unit per mana when full duration used
    
            -- Those values really only are useful for holy fire, fireball and pyroblast I guess
            ticksWhileCasting = 0, -- Ticks that happen while casting next spell
            hitAvgSpam = 0, -- Avg if spammed
            critAvgSpam = 0,
            perSecondSpam = 0, -- Per second done when spammed
            perManaSpam = 0, -- Per mana when spammed
            doneToOomSpam = 0, -- Done until oom if spammed
        };
    end
end

--- Adds table members for spell calculation to the calculation table
-- @param et The subtable for the effect
-- @param effectType The SPELL_EFFECT_TYPE
function AddSpellCalculationMembers(et, effectType)
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
        et.perTickNormal = 0; -- For PTSA triggered spells
        et.perTickCrit = 0; -- For PTSA triggered spells
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

--- Set vars for zero spell cost spells
-- @param calcData The calculation table
local function SetNoSpellCost(calcData)
    calcData.castsToOom = -1;
    calcData.timeToOom = -1;
end

--- Calculate spell cost related things
-- @param calcData The calculation table
-- @param spellCost The base spell cost
-- @param effCastTime The effective casting time
-- @param spellBaseInfo The spell base info table
-- @param spellRankInfo The rank info table
-- @param spellName The spell's name
local function HandleSpellCost(calcData, spellCost, effCastTime, spellBaseInfo, spellRankInfo, spellName)
    calcData.effectiveCost = spellCost - effCastTime * (stats.manaReg + stats.mp5.val/5);

    if stats.clearCastChance.val > 0 or (stats.clearCastChanceDmg.val > 0 and not spellRankInfo.effects[1].isHeal) then
        local ccc = (stats.clearCastChance.val > 0 ) and stats.clearCastChance or stats.clearCastChanceDmg;
        -- TODO: Don't think this needs a successful hit, but not sure still, people never really know :D
        calcData.effectiveCost = calcData.effectiveCost - spellCost * (ccc.val/100);
        for _, buffName in pairs(ccc.buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    if stats.illumination.val > 0 then
        if (class == "PALADIN" and spellRankInfo.effects[1].isHeal)
        or (class == "MAGE" and (spellBaseInfo.school == _addon.SCHOOL.FIRE or spellBaseInfo.school == _addon.SCHOOL.FROST))
        or (class == "DRUID" and spellName == HEALING_TOUCH) then
            calcData.effectiveCost = calcData.effectiveCost - spellCost * (stats.illumination.val/100) * (calcData.critChance/100);
            for _, buffName in pairs(stats.illumination.buffs) do
                table.insert(calcData.buffs, buffName);
            end
        end
    end

    if stats.earthfuryReturn.val > 0 and (spellName == HEALING_WAVE or spellName == LESSER_HEALING_WAVE) then
        calcData.effectiveCost = calcData.effectiveCost - spellCost * 0.0875;
        for _, buffName in pairs(stats.earthfuryReturn.buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    -- TODO: remove this?
    calcData.effMana = stats.mana;
    if _addon.test_innervate then
        -- Need to remove 20 sec of manaReg because we added it with the effective cost
        calcData.effMana = calcData.effMana + (stats.baseManaReg * 80) - (20 * stats.manaReg);
    end
    if _addon.test_manapot then
        calcData.effMana = calcData.effMana + _addon.test_manapot;
    end

    calcData.castsToOom = calcData.effMana / calcData.effectiveCost;
    if SpellCalc_settings.useRealToOom then
        calcData.castsToOom = math.floor(calcData.castsToOom);
    end
    calcData.timeToOom = calcData.castsToOom * effCastTime;
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

    et.hitMin = (effectData.min + levelBonus) * effectMod + effPowerUse;
    et.hitAvg = et.hitMin;
    et.critMin = et.hitMin * calcData.critMult;
    et.critAvg = et.critMin;

    if effectData.max then
        et.hitMax = (effectData.max + levelBonus) * effectMod + effPowerUse;
        et.hitAvg = (et.hitMin + et.hitMax) / 2;
        et.critMax = et.hitMax * calcData.critMult;
        et.critAvg = (et.critMin + et.critMax) / 2;
    end

    if et.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL and SpellCalc_settings.healDisregardCrit then
        et.avgCombined = et.hitAvg;
    else
        et.avgCombined = et.hitAvg + (et.critAvg - et.hitAvg) * calcData.critChance/100;
    end

    if calcData.hitChance ~= nil then
        et.avgAfterMitigation = et.avgCombined * calcData.hitChance;
        if calcData.binaryHitLoss == 0 then
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
        et.secNoCastTHPS = secondsNoCast;
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
            et.effCostTHPS = calcData.effectiveCost - manaGained;
            et.perManaTHPS = et.avgAfterMitigation / et.effCostTHPS;
            local ctoTHPS = calcData.effMana / et.effCostTHPS;
            if SpellCalc_settings.useRealToOom then
                calcData.castsToOom = math.floor(ctoTHPS);
            end
            et.timeToOomTHPS = ctoTHPS * (castTime + secondsNoCast);
            et.doneToOomTHPS = ctoTHPS * et.avgAfterMitigation;
        end
    else
        et.secNoCastTHPS = 0;
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

    et.perCharge = (effectData.min + levelBonus) * effectMod + effPowerUse;
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
-- @param spellBaseInfo The spell base info table
-- @param spellName The spell's name
function _addon:CalculateSpellDurationEffect(calcData, et, spellRankInfo, effectData, effectMod, castTime, spellBaseInfo, spellName)
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

    -- Searing totem, this is so ugly...
    if effectData.max then
        et.perTick = ((effectData.min + effectData.max)/2 + levelBonus) * effectMod + effPowerUse;
    else
        et.perTick = (effectData.min + levelBonus) * effectMod + effPowerUse;
    end

    -- PTSA hackfixes :/
    if spellBaseInfo.forceCanCrit and calcData.critChance > 0 then
        et.perTickNormal = et.perTick;
        et.perTickCrit = et.perTick * calcData.critMult;
        et.perTick = et.perTick + (et.perTickCrit - et.perTick) * calcData.critChance/100;
    end

    et.allTicks = et.perTick * et.ticks;

    if calcData.hitChance ~= nil then
        if spellBaseInfo.isChannel then
            et.avgAfterMitigation = et.allTicks * (1 - (1 - calcData.hitChance) ^ (castTime/1.5));
        else
            et.avgAfterMitigation = et.allTicks * calcData.hitChance;
        end
        if calcData.binaryHitLoss == 0 then
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
    calcData.perCastData.ticksWhileCasting = ticksPerCast;
    if ticksPerCast > 0 then
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
end

--- Calculate effect values
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param effCastTime Spell cast time (or channel duration)
-- @param spellBaseInfo The spell base info table
-- @param spellName The spell's name
local function CalculateEffect(calcData, et, spellRankInfo, effectData, effectMod, effCastTime, spellBaseInfo, name)
    if et.effectType == SPELL_EFFECT_TYPE.DIRECT_DMG or et.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
        _addon:CalculateSpellDirectEffect(calcData, et, spellRankInfo, effectData, effectMod, effCastTime, name);
    elseif et.effectType == SPELL_EFFECT_TYPE.DMG_SHIELD then
        _addon:CalculateSpellDmgShieldEffect(calcData, et, spellRankInfo, effectData, effectMod, effCastTime)
    else -- HoT or DoT (also channeled)
        _addon:CalculateSpellDurationEffect(calcData, et, spellRankInfo, effectData, effectMod, effCastTime, spellBaseInfo, name)
    end
end

_addon.typeFuncs.setCrit[TYPE] = SetCrit;
_addon.typeFuncs.mitigate[TYPE] = Mitigate;
_addon.typeFuncs.baseMembers[TYPE] = AddBaseMembers;
_addon.typeFuncs.effMembers[TYPE] = AddSpellCalculationMembers;
_addon.typeFuncs.spellcostZero[TYPE] = SetNoSpellCost;
_addon.typeFuncs.spellcost[TYPE] = HandleSpellCost;
_addon.typeFuncs.effCalc[TYPE] = CalculateEffect;
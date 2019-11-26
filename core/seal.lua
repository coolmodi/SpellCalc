local _, _addon = ...;

local TYPE = _addon.SPELL_TYPE.SEAL;
local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;

local stats = _addon.stats;

--- Set crit chance and mult
-- @param ct the calculation table
-- @param spellBaseInfo The spell base info table
local function SetCrit(ct, spellBaseInfo)
    ct.critMult = 2;
    ct.critChance = 0; -- TODO: SOC melee crit
end

--- Calculate mitigation variables
-- @param calcData the calculation table
-- @param spellBaseInfo The spell base info table
-- @param spellName The spell's name
local function Mitigate(calcData, spellBaseInfo, spellName)
    calcData.avgResistMod = _addon:GetSpellAvgResist(spellBaseInfo.school);

    -- SOR can't miss itself, this is only SOC
    -- TODO: SOC: behaves like a melee hit, can dodge, parry and miss
    if calcData.hitChance ~= nil then
        calcData.baseHitChance = GetSpellHitChance(); -- TODO: get effective melee hit chance (no parry, dodge or miss)
        calcData.hitChanceBonus = GetSpellHitBonus(spellBaseInfo.school, calcData.buffs); -- TODO: ??

        calcData.hitChance = calcData.baseHitChance + calcData.hitChanceBonus;

        -- TODO melee stuff here
        if calcData.hitChance > 99 then
            calcData.hitChance = 99;
        elseif calcData.hitChance < 1 then
            calcData.hitChance = 1;
        end

        calcData.hitChance = calcData.hitChance/100;
    end
end

--- Add vars for mitigation to calc table if needed
-- @param ct the calculation table
-- @param primaryType The primary effect type
-- @param primaryType The secondary effect type
function AddBaseMembers(ct, primaryType, secondaryType)
    ct.avgResistMod = 0; -- The average dmg resisted modifier (mult)

    -- TODO: melee stuff
    if primaryType == SPELL_EFFECT_TYPE.SEAL_OF_COMMAND then
        ct.baseHitChance = 0; -- The base hit chance dpending on level difference
        ct.hitChance = 0; -- Hit chance after modifiers (mult)
        ct.hitChanceBonus = 0; -- Bonus hitchance from buffs (and gear)
    end
end

--- Adds table members for spell calculation to the calculation table
-- @param et The subtable for the effect
-- @param effectType The SPELL_EFFECT_TYPE
function AddEffectMembers(et, effectType)
    et.hitMin = 0; -- Minimum hit
    et.hitMax = 0; -- Maximum hit
    et.hitAvg = 0; -- Average normal hit (as in it did hit)
    et.critMin = 0; -- Same just with crit
    et.critMax = 0;
    et.critAvg = 0;
    et.avgCombined = 0; -- Both hit and crit

    et.duration = 0;
    et.procChance = 1; -- For SOC, SOR is 1
    et.triggers = 0; -- how often it will trigger based on weapon speed and proc chance

    et.avgAfterResist = 0; -- Average after (level based) resist taken into account
    et.triggerHits = 0; -- Minus weapon miss, parry, dodge and block
    et.avgTriggerHits = 0; -- Avg done over all successful triggers

    et.perSecond = 0; -- DPS added from seal
end

--- Calculate SoR
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param castTime Spell cast time (or channel duration)
function CalculateSoR(calcData, et, spellRankInfo, effectData, effectMod, castTime)
    local dmgbase = effectData.min + (math.min(UnitLevel("player"), spellRankInfo.maxLevel) - spellRankInfo.spellLevel) * effectData.perLevel;
    local as = stats.attackSpeed.mh;

    if _addon:IsTwoHandEquipped() then
        et.hitMin = 1.2 * dmgbase * as/100;
    else
        et.hitMin = 0.85 * dmgbase * as/100;
    end

    et.hitAvg = et.hitMin;

    et.duration = spellRankInfo.duration;
    et.triggers = et.duration / as;

    et.avgAfterResist = et.hitMin * (1 - calcData.avgResistMod);
    et.triggerHits = et.triggers; -- TODO: melee miss stuff
    et.avgTriggerHits = et.triggerHits * et.avgAfterResist;

    et.perSecond = et.avgTriggerHits / et.duration;
end

--- Calculate SoC
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
-- @param castTime Spell cast time (or channel duration)
function CalculateSoC(calcData, et, spellRankInfo, effectData, effectMod, castTime)

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
local function CalculateEffect(calcData, et, spellRankInfo, effectData, effectMod, effCastTime)
    if et.effectType == SPELL_EFFECT_TYPE.SEAL_OF_RIGHTEOUSNES then
        CalculateSoR(calcData, et, spellRankInfo, effectData, effectMod, effCastTime);
    elseif et.effectType == SPELL_EFFECT_TYPE.SEAL_OF_COMMAND then
        CalculateSoC(calcData, et, spellRankInfo, effectData, effectMod, effCastTime);
    end
end

local function EmptyFunc() end

_addon.typeFuncs.setCrit[TYPE] = SetCrit;
_addon.typeFuncs.mitigate[TYPE] = Mitigate;
_addon.typeFuncs.baseMembers[TYPE] = AddBaseMembers;
_addon.typeFuncs.effMembers[TYPE] = AddEffectMembers;
_addon.typeFuncs.spellcostZero[TYPE] = EmptyFunc;
_addon.typeFuncs.spellcost[TYPE] = EmptyFunc;
_addon.typeFuncs.effCalc[TYPE] = CalculateEffect;
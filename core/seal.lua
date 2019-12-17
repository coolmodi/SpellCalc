local _, _addon = ...;

local TYPE = _addon.SPELL_TYPE.SEAL;
local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;

local SOC_PPS = 7/60; -- procs per second

local stats = _addon.stats;

--- Add vars for mitigation to calc table if needed
-- @param ct the calculation table
-- @param primaryType The primary effect type
-- @param primaryType The secondary effect type
function AddBaseMembers(ct, primaryType, secondaryType)
    ct.avgResistMod = 0; -- The average dmg resisted modifier (mult)

    ct.baseHitChance = 0; -- The base hit chance dpending on level difference
    ct.dodge = 0;
    ct.block = 0;
    ct.parry = 0;
    ct.hitChance = 0; -- Hit chance after modifiers
    ct.hitChanceBonus = 0; -- Bonus hitchance from buffs (and gear)
    ct.effHitChance = 0; -- The effective chance to score a successful hit (mult)
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

    et.duration = 0;
    et.procChance = 0; -- For SOC
    et.triggers = 0; -- how often it will trigger based on weapon speed and proc chance

    et.triggerHits = 0; -- Minus weapon miss, parry, dodge and block
    et.avgTriggerHits = 0; -- Avg done over all successful triggers

    et.perSecond = 0; -- DPS added from seal
end

--- Set crit chance and mult
-- @param ct the calculation table
-- @param spellBaseInfo The spell base info table
local function SetCrit(ct, spellBaseInfo)
    ct.critMult = 2;
    -- we set more than just crit here now...
    local miss, dodge, parry, _, block, crit, hitBonus = _addon:GetMeleeTable(ct);
    ct.critChance = crit;
    ct.baseHitChance = 100 - miss;
    ct.dodge = dodge;
    ct.block = block;
    ct.parry = parry;
    ct.hitChanceBonus = hitBonus;
    ct.hitChance = math.min(100, ct.baseHitChance + hitBonus);
end

--- Calculate mitigation variables
-- @param calcData the calculation table
-- @param spellBaseInfo The spell base info table
-- @param spellName The spell's name
local function Mitigate(calcData, spellBaseInfo, spellName)
    calcData.avgResistMod = _addon:GetSpellAvgResist(spellBaseInfo.school);
    -- effective hit is anything that does dmg, both for seal procs and for hitting SoC
    calcData.effHitChance = (calcData.hitChance - calcData.dodge - calcData.block - calcData.parry) / 100;
end

--- Calculate SoR
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
function CalculateSoR(calcData, et, spellRankInfo, effectData, effectMod)
    local dmgbase = effectData.min + (math.min(UnitLevel("player"), spellRankInfo.maxLevel) - spellRankInfo.spellLevel) * effectData.perLevel;
    local as = stats.attackSpeed.mh;

    if _addon:IsTwoHandEquipped() then
        et.hitMin = 1.2 * dmgbase * as/100;
    else
        et.hitMin = 0.85 * dmgbase * as/100;
    end
    et.hitAvg = (et.hitMin + et.effectivePower) * effectMod;

    et.duration = spellRankInfo.duration;
    et.triggers = et.duration / as;
    et.triggerHits = et.triggers * calcData.effHitChance;

    local avgAfterResist = et.hitMin * (1 - calcData.avgResistMod);
    et.avgTriggerHits = et.triggerHits * avgAfterResist;

    et.perSecond = et.avgTriggerHits / et.duration;
end

--- Calculate SoC
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
function CalculateSoC(calcData, et, spellRankInfo, effectData, effectMod)
    local as = stats.attackSpeed.mh;
    local wdcoef = effectData.min/100;

    et.hitMin = (wdcoef * stats.attackDmg.mh.min + et.effectivePower) * effectMod;
    et.hitMax = (wdcoef * stats.attackDmg.mh.max + et.effectivePower) * effectMod;
    et.hitAvg = (et.hitMin + et.hitMax) / 2;

    et.critMin = et.hitMin * calcData.critMult;
    et.critMax = et.hitMax * calcData.critMult;
    et.critAvg = (et.critMin + et.critMax) / 2;

    local avgCombined = et.hitAvg + (et.critAvg - et.hitAvg) * calcData.critChance/100;

    et.duration = spellRankInfo.duration;
    et.triggers = SOC_PPS * et.duration;
    et.procChance = SOC_PPS * as;
    et.triggerHits = et.triggers * calcData.effHitChance; -- TODO: does this also only proc on successful hits

    local avgAfterResist = avgCombined * (1 - calcData.avgResistMod);
    et.avgTriggerHits = et.triggerHits * avgAfterResist * calcData.effHitChance; -- SOC hits can again be melee mitigated like a special attack

    et.perSecond = et.avgTriggerHits / et.duration;
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
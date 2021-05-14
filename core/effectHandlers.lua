---@type AddonEnv
local _addon = select(2, ...);
local effHandler = _addon.effectHandler;
local stats = _addon.stats;
local EFFECT_TYPES = _addon.SPELL_EFFECT_TYPES;
local AURA_TYPES = _addon.SPELL_AURA_TYPES;
local SHADOW_BOLT = GetSpellInfo(686);

--- Get level bonus if spell has one.
---@param spellRankInfo SpellRankInfo
---@param effectData SpellRankEffectData
local function GetLevelBonus(spellRankInfo, effectData)
    if effectData.valuePerLevel and effectData.valuePerLevel > 0 then
        return (math.min(UnitLevel("player"), spellRankInfo.maxLevel) - spellRankInfo.spellLevel) * effectData.valuePerLevel;
    end
    return 0;
end

---Sum of probability weighted remaining damage done in channel duration? Or something like that at least.
-- No clue if this is even remotely right, but looks better than just doing *hitchance like other similar addons did in the past.
---@param hitChance number @In percent
---@param gcd number
---@param duration number
---@return integer
local function channelEffDmgNotMissed(hitChance, gcd, duration)
    local hitc = hitChance / 100;
    local missc = 1 - hitc;
    local attemptsInDuration = math.floor(duration/gcd);
    local avgDone = 0;
    for i = 0, attemptsInDuration do
        avgDone = avgDone + hitc * missc^i * (1 - (gcd * i) / duration);
    end
    return avgDone;
end

local HealEffect;

----------------------------------------------------------------------------------------------------------------------------------------
-- Templates
----------------------------------------------------------------------------------------------------------------------------------------

--- BASE TEMPLATE
---@param auraType number|nil
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
---@param gcd number
local function EFFECT_TEMPLATE(auraType, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    -- Example function definition
end

--- BASE AURA TEMPLATE
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
---@param gcd number
local function AURA_TEMPLATE(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    -- Example function definition
end

----------------------------------------------------------------------------------------------------------------------------------------
-- Dummy Aura Handler
----------------------------------------------------------------------------------------------------------------------------------------

local dummyAuraHandlers = {};

-- TBC: bonus damage dependent on weapon speed?
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfRighteousness(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local as = stats.attackSpeed.mainhand;
    local rankBase = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData)) * 1.2 * 1.03 * as / 100;
    local weaponBase = 0.03 * (stats.attackDmg.mainhand.max + stats.attackDmg.mainhand.min) / 2;
    local dmgbase;

    local wmspctdmg = stats.weaponModSchoolPctDamage[_addon:GetWeaponType("mainHand")];
    if wmspctdmg and wmspctdmg[_addon.SCHOOL.HOLY] then
        effectMod = effectMod * (1 + wmspctdmg[_addon.SCHOOL.HOLY].val / 100);
        calcedSpell:AddToBuffList(wmspctdmg[_addon.SCHOOL.HOLY].buffs);
    end

    if _addon:IsTwoHandEquipped() then
        dmgbase = 1.2 * rankBase + weaponBase + 1;
        calcedEffect.effectiveSpCoef = 0.108 * as * effectMod;
    else
        dmgbase = 0.85 * rankBase + weaponBase - 1;
        calcedEffect.effectiveSpCoef = 0.092 * as * effectMod;
    end

    calcedEffect.effectivePower = calcedEffect.spellPower * calcedEffect.effectiveSpCoef;
    calcedEffect.min = (dmgbase + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min
    calcedEffect.avgCombined = calcedEffect.avg;

    local mmit = calcedSpell.meleeMitigation;
    local duration = spellRankInfo.duration;
    local triggers = math.floor(duration / as);
    local effectiveHitChance = (calcedSpell.hitChance - mmit.dodge - mmit.parry) / 100;
    local triggerHits = triggers * effectiveHitChance;

    local avgAfterResist = calcedEffect.avg * (1 - calcedSpell.avgResist);
    local avgTriggerHits = triggerHits * avgAfterResist;

    calcedEffect.avgAfterMitigation = avgTriggerHits;
    calcedEffect.ticks = triggerHits;
    calcedEffect.perSec = avgTriggerHits / duration;
    calcedEffect.perResource = avgTriggerHits / calcedSpell.effectiveCost;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfCommand(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local as = stats.attackSpeed.mainhand;
    local coef = effectData.weaponCoef;

    calcedEffect.effectiveSpCoef = 0.2;

    local wmspctdmg = stats.weaponModSchoolPctDamage[_addon:GetWeaponType("mainHand")];
    if wmspctdmg and wmspctdmg[_addon.SCHOOL.HOLY] then
        calcedEffect.effectiveSpCoef = calcedEffect.effectiveSpCoef * (1 + wmspctdmg[_addon.SCHOOL.HOLY].val / 100);
        calcedSpell:AddToBuffList(wmspctdmg[_addon.SCHOOL.HOLY].buffs);
    end

    calcedEffect.effectivePower = calcedEffect.spellPower * calcedEffect.effectiveSpCoef;

    calcedEffect.min = (coef * stats.attackDmg.mainhand.min + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.max = (coef * stats.attackDmg.mainhand.max + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = (calcedEffect.min + calcedEffect.max) / 2;

    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
    calcedEffect.avgCrit = (calcedEffect.minCrit + calcedEffect.maxCrit) / 2;

    calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;

    local mmit = calcedSpell.meleeMitigation;
    local SOC_PPS = 7/60; -- procs per second
    local duration = spellRankInfo.duration;
    local triggers = SOC_PPS * duration;
    local effectiveHitChance = (calcedSpell.hitChance - mmit.dodge - mmit.parry) / 100;
    local triggerHits = triggers * effectiveHitChance;

    local avgAfterResist = calcedEffect.avgCombined * (1 - calcedSpell.avgResist);
    local avgTriggerHits = triggerHits * avgAfterResist * effectiveHitChance; -- SOC hits can again be melee mitigated like a special attack

    calcedEffect.charges = SOC_PPS * as; -- lel
    calcedEffect.avgAfterMitigation = avgTriggerHits;
    calcedEffect.ticks = triggerHits;
    calcedEffect.perSec = avgTriggerHits / duration;
    calcedEffect.perResource = avgTriggerHits / calcedSpell.effectiveCost;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfTheCrusader(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local dpsFromAP = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData)) / 14;
    local mmit = calcedSpell.meleeMitigation;
    local effectiveHitChance = (calcedSpell.hitChance - mmit.dodge - mmit.parry) / 100;
    local as = stats.attackSpeed.mainhand;
    local hits = math.floor(spellRankInfo.duration / as);
    local dpsAfterMitigation = dpsFromAP * effectiveHitChance * (1 - calcedSpell.avgResist);

    calcedEffect.avgAfterMitigation = hits * as * dpsAfterMitigation;
    calcedEffect.ticks = hits;
    calcedEffect.perSec = dpsAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

---Dummy handler for Prayer of Mending and Earth Shield
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function PoM_ES(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId)
    -- Do normal heal effect
    HealEffect(nil, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId);
    -- Multiply by charge count
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * calcedEffect.charges;
    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfBloodMartyr(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local as = stats.attackSpeed.mainhand;
    local coef = effectData.weaponCoef;

    local wmspctdmg = stats.weaponModSchoolPctDamage[_addon:GetWeaponType("mainHand")];
    if wmspctdmg and wmspctdmg[_addon.SCHOOL.HOLY] then
        effectMod = effectMod * (1 + wmspctdmg[_addon.SCHOOL.HOLY].val / 100);
        calcedSpell:AddToBuffList(wmspctdmg[_addon.SCHOOL.HOLY].buffs);
    end

    calcedEffect.min = (coef * stats.attackDmg.mainhand.min + calcedEffect.flatMod) * effectMod;
    calcedEffect.max = (coef * stats.attackDmg.mainhand.max + calcedEffect.flatMod) * effectMod;
    calcedEffect.avg = (calcedEffect.min + calcedEffect.max) / 2;

    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
    calcedEffect.avgCrit = (calcedEffect.minCrit + calcedEffect.maxCrit) / 2;

    calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;

    local mmit = calcedSpell.meleeMitigation;
    local duration = spellRankInfo.duration;
    local triggers = duration / as;
    local effectiveHitChance = (calcedSpell.hitChance - mmit.dodge - mmit.parry) / 100;
    local triggerHits = triggers * effectiveHitChance;

    local avgAfterResist = calcedEffect.avgCombined * (1 - calcedSpell.avgResist);
    local avgTriggerHits = triggerHits * avgAfterResist * effectiveHitChance; -- SOC hits can again be melee mitigated like a special attack

    calcedEffect.avgAfterMitigation = avgTriggerHits;
    calcedEffect.ticks = triggerHits;
    calcedEffect.perSec = avgTriggerHits / duration;
    calcedEffect.perResource = avgTriggerHits / calcedSpell.effectiveCost;
end

-- TODO: test this
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfVengeance(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    calcedEffect.effectiveSpCoef = 0.034 * effectMod; -- Per application
    calcedEffect.effectivePower = calcedEffect.spellPower * calcedEffect.effectiveSpCoef;

    calcedEffect.min = effectData.valueBase * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;
    calcedEffect.ticks = 5;

    local total = calcedEffect.avgCombined * calcedEffect.ticks;
    calcedEffect.avgAfterMitigation = total;

    calcedEffect.perSec = total / 15;
end

dummyAuraHandlers[GetSpellInfo(20154)] = SealOfRighteousness;
dummyAuraHandlers[GetSpellInfo(20375)] = SealOfCommand;
dummyAuraHandlers[GetSpellInfo(20162)] = SealOfTheCrusader;
dummyAuraHandlers[GetSpellInfo(33076)] = PoM_ES; -- Prayer of Mending
dummyAuraHandlers[GetSpellInfo(974)] = PoM_ES; -- Earth Shield
dummyAuraHandlers[GetSpellInfo(31892)] = SealOfBloodMartyr; -- Seal of Blood
dummyAuraHandlers[GetSpellInfo(348700)] = SealOfBloodMartyr; -- Seal of the Martyr
dummyAuraHandlers[GetSpellInfo(31801)] = SealOfVengeance;

----------------------------------------------------------------------------------------------------------------------------------------
-- Aura Handler
----------------------------------------------------------------------------------------------------------------------------------------

local auraHandler = {}

--- Handler for periodic damage auras.
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
---@param gcd number
local function PeriodicDamage(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;
    local duration = spellRankInfo.duration;

    if stats.spellModFlatDuration[spellId] ~= nil then
        duration = duration + stats.spellModFlatDuration[spellId].val;
        calcedSpell:AddToBuffList(stats.spellModFlatDuration[spellId].buffs);
    end

    calcedEffect.min = (effectData.valueBase + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;
    calcedEffect.ticks = math.floor(duration / effectData.tickPeriod);

    local total = calcedEffect.avgCombined * calcedEffect.ticks;

    if spellBaseInfo.isChannel then
        duration = effCastTime;
        calcedEffect.avgAfterMitigation = total * channelEffDmgNotMissed(calcedSpell.hitChance, gcd, effCastTime);
    else
        calcedEffect.avgAfterMitigation = total * calcedSpell.hitChance / 100;
    end

    if calcedSpell.hitChanceBinaryLoss == nil then
        calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * (1 - calcedSpell.avgResist);
    end

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.perSecDurOrCD = total / duration;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function PeriodicHeal(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local duration = spellRankInfo.duration;

    if stats.spellModFlatDuration[spellId] ~= nil then
        duration = duration + stats.spellModFlatDuration[spellId].val;
        calcedSpell:AddToBuffList(stats.spellModFlatDuration[spellId].buffs);
    end

    calcedEffect.min = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;
    calcedEffect.ticks = math.floor(duration / effectData.tickPeriod);

    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined * calcedEffect.ticks;

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.perSecDurOrCD = calcedEffect.avgAfterMitigation / duration;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

--- Handler for damage shield like effects
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function DamageShield(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    calcedEffect.min = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;

    local total = (calcedEffect.charges > 0) and calcedEffect.charges * calcedEffect.avgCombined or calcedEffect.avgCombined;

    calcedEffect.avgAfterMitigation = total * (calcedSpell.hitChance / 100) * (1 - calcedSpell.avgResist);

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

--- Handler for absorbs
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function AbsorbAura(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    calcedEffect.min = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;

    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined;

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

--- Handler for Mana Shield
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function ManaShield(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    calcedEffect.min = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;

    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined;

    -- TODO: change?
    local drain = 2;
    local name, _, _, _, curRank = GetTalentInfo(1, 10);
    if curRank > 0 then
        drain = drain * (1 - 0.1 * curRank);
        calcedSpell:AddToBuffList({name..curRank});
    end
    calcedSpell.effectiveCost = calcedSpell.effectiveCost + drain * calcedEffect.avgAfterMitigation;
    calcedSpell.castingData.castsToOom = _addon:GetEffectiveManaPool() / calcedSpell.effectiveCost;

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

--- Handler for things like Arcane Missiles or Searing Totem.
--- That is, periodic spells with ticks that behave much like a direct damage effect.
--- Can also be used for healing spells (e.g. Tranquility)
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
---@param gcd number
local function PeriodicTriggerSpell(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;
    local duration = spellRankInfo.duration;

    if stats.spellModFlatDuration[spellId] ~= nil then
        duration = duration + stats.spellModFlatDuration[spellId].val;
        calcedSpell:AddToBuffList(stats.spellModFlatDuration[spellId].buffs);
    end

    calcedEffect.min = (effectData.valueBase + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.max = calcedEffect.min + effectData.valueRange;
    calcedEffect.avg = calcedEffect.min + effectData.valueRange * 0.5;
    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
    calcedEffect.avgCrit = calcedEffect.avg * calcedSpell.critMult;
    calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;

    calcedEffect.ticks = math.floor(duration / effectData.tickPeriod);
    local total = calcedEffect.avgCombined * calcedEffect.ticks;

    if spellBaseInfo.forceHeal then
        calcedEffect.avgAfterMitigation = total;
    else
        if spellBaseInfo.isChannel then
            calcedEffect.avgAfterMitigation = total * channelEffDmgNotMissed(calcedSpell.hitChance, gcd, effCastTime);
        else
            calcedEffect.avgAfterMitigation = total * calcedSpell.hitChance / 100;
        end

        if calcedSpell.hitChanceBinaryLoss == nil then
            calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * (1 - calcedSpell.avgResist);
        end
    end

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.perSecDurOrCD = total / duration;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

--- Handler for dummy auras
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function DummyAura(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId)
    if dummyAuraHandlers[spellName] == nil then
        _addon:PrintError("No dummy aura handler for effect "..effNum.." on spell "..spellName.."! Please report this to the addon author!");
        return;
    end
    dummyAuraHandlers[spellName](calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId);
end

auraHandler[AURA_TYPES.SPELL_AURA_PERIODIC_DAMAGE] = PeriodicDamage;
auraHandler[AURA_TYPES.SPELL_AURA_PERIODIC_LEECH] = PeriodicDamage;
auraHandler[AURA_TYPES.SPELL_AURA_PERIODIC_HEAL] = PeriodicHeal;
auraHandler[AURA_TYPES.SPELL_AURA_DAMAGE_SHIELD] = DamageShield;
auraHandler[AURA_TYPES.SPELL_AURA_PROC_TRIGGER_DAMAGE] = DamageShield;
auraHandler[AURA_TYPES.SPELL_AURA_PROC_TRIGGER_SPELL] = DamageShield;
auraHandler[AURA_TYPES.SPELL_AURA_MANA_SHIELD] = ManaShield;
auraHandler[AURA_TYPES.SPELL_AURA_SCHOOL_ABSORB] = AbsorbAura;
auraHandler[AURA_TYPES.SPELL_AURA_PERIODIC_TRIGGER_SPELL] = PeriodicTriggerSpell;
auraHandler[AURA_TYPES.SPELL_AURA_DUMMY] = DummyAura;


----------------------------------------------------------------------------------------------------------------------------------------
-- Effect Hanlder
----------------------------------------------------------------------------------------------------------------------------------------

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function SchoolDamage(_, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;

    calcedEffect.min = (effectData.valueBase + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.max = calcedEffect.min + effectData.valueRange;
    calcedEffect.avg = calcedEffect.min + effectData.valueRange * 0.5;
    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
    calcedEffect.avgCrit = calcedEffect.avg * calcedSpell.critMult;

    if stats.ignite.val > 0 and spellBaseInfo.school == _addon.SCHOOL.FIRE then
        local igniteMult = stats.ignite.val/100;

        if calcedEffect.igniteData == nil then
            ---@type IgniteDataDef
            calcedEffect.igniteData = {
                min = 0,
                max = 0,
                avg = 0
            };
        end

        calcedEffect.igniteData.min = calcedEffect.minCrit * igniteMult;
        calcedEffect.igniteData.max = calcedEffect.maxCrit * igniteMult;
        calcedEffect.igniteData.avg = calcedEffect.avgCrit * igniteMult;

        calcedSpell:AddToBuffList(stats.ignite.buffs);
        calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit + calcedEffect.igniteData.avg - calcedEffect.avg) * calcedSpell.critChance/100;
    else
        calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;
    end

    -- TODO: Melee mitigation is also needed here (e.g. Swipe), will probably be needed for other effects too!
    -- Ranged works fine as is, can't dodge or parry. If block is ever implemented it will be needed too though.
    -- Move mitigation to a common function or handle before so it applies to all effects as applicable.
    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined * calcedSpell.hitChance/100;

    if calcedSpell.hitChanceBinaryLoss == nil then
        calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * (1 - calcedSpell.avgResist);
    end

    if stats.impShadowBolt.val ~= 0 and spellName == SHADOW_BOLT and SpellCalc_settings.useImpSB then
        local mod = stats.impShadowBolt.val/100;
        local pCritIn4 = (1 - math.pow(1 - calcedSpell.critChance/100, 4));
        calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * (1 + mod * pCritIn4);
        calcedSpell:AddToBuffList(stats.impShadowBolt.buffs);
    end

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;

    if effectData.chains and effectData.chains > 1 then
        calcedEffect.chains = effectData.chains;
        local mult = effectData.chainMult;
        if stats.spellModChainMult[spellId] then
            mult = mult * (1 + stats.spellModChainMult[spellId].val / 100);
            calcedSpell:AddToBuffList(stats.spellModChainMult[spellId].buffs);
        end
        calcedEffect.chainMult = mult;
    end
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
function HealEffect(_, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;

    calcedEffect.min = (effectData.valueBase + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.max = calcedEffect.min + effectData.valueRange;
    calcedEffect.avg = calcedEffect.min + effectData.valueRange * 0.5;
    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
    calcedEffect.avgCrit = calcedEffect.avg * calcedSpell.critMult;

    if SpellCalc_settings.healDisregardCrit then
        calcedEffect.avgCombined = calcedEffect.avg;
    else
        calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;
    end

    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined;

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;

    if effectData.chains and effectData.chains > 1 then
        calcedEffect.chains = effectData.chains;
        local mult = effectData.chainMult;
        if stats.spellModChainMult[spellId] then
            mult = mult * (1 + stats.spellModChainMult[spellId].val / 100);
            calcedSpell:AddToBuffList(stats.spellModChainMult[spellId].buffs);
        end
        calcedEffect.chainMult = mult;
    end
end

--- Handle SPELL_EFFECT_APPLY_AURA or SPELL_EFFECT_PERSISTENT_AREA_AURA,
--- they are basically the same from the PoV of this addon.
---@param auraType number|nil
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function AuraOrAreaAura(auraType, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    if auraType == nil then
        _addon:PrintError("SPELL_EFFECT_APPLY_AURA handler called without auraType for spell "..spellName.." for effect #"..effNum);
        return;
    end

    if auraHandler[auraType] == nil then
        _addon:PrintError("Auratype "..auraType.." not implemented! Used by spell "..spellName.." for effect #"..effNum);
        _addon:PrintError("Please report this to the addon author.");
        return;
    end

    auraHandler[auraType](calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd);
end

--- Handle Attack spell that triggers auto attack
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function AutoAttack(_, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];

    -- MAIN HAND

    calcedEffect.min = stats.attackDmg.mainhand.min * effectMod;
    calcedEffect.max = stats.attackDmg.mainhand.max * effectMod;
    calcedEffect.avg = (calcedEffect.min + calcedEffect.max) / 2;

    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
    calcedEffect.avgCrit = (calcedEffect.minCrit + calcedEffect.maxCrit) / 2;

    local meleeMit = calcedSpell.meleeMitigation;

    local glancePart = meleeMit.glancing / 100;
    local critChanceRemainder = math.min(calcedSpell.critChance, calcedSpell.hitChance - meleeMit.dodge - meleeMit.parry - meleeMit.glancing - meleeMit.block);
    local critPart = critChanceRemainder / 100;
    local hitPart = (calcedSpell.hitChance - meleeMit.dodge - meleeMit.parry) / 100 - glancePart - critPart;

    local glancePartialAvg = calcedEffect.avg * meleeMit.glancingDmg * glancePart;
    local critPartialAvg = calcedEffect.avgCrit * critPart;
    local normalPartialAvg = calcedEffect.avg * hitPart;
    local avgResultDmg = normalPartialAvg + critPartialAvg + glancePartialAvg;

    calcedEffect.avgAfterMitigation = avgResultDmg * (1 - calcedSpell.avgResist);
    calcedEffect.perSec = calcedEffect.avgAfterMitigation / stats.attackSpeed.mainhand;

    if not _addon:IsDualWieldEquipped() then
        if calcedEffect.offhandAttack then
            calcedEffect.offhandAttack.min = 0;
        end
        return;
    end

    -- OFF HAND

    local ohd = calcedEffect.offhandAttack;
    local ohdMit = ohd.meleeMitigation;

    ohd.min = stats.attackDmg.offhand.min * effectMod;
    ohd.max = stats.attackDmg.offhand.max * effectMod;
    ohd.avg = (ohd.min + ohd.max) / 2;

    ohd.minCrit = ohd.min * calcedSpell.critMult;
    ohd.maxCrit = ohd.max * calcedSpell.critMult;
    ohd.avgCrit = (ohd.minCrit + ohd.maxCrit) / 2;

    glancePart = ohdMit.glancing / 100;
    critChanceRemainder = math.min(ohd.critChance, ohd.hitChance - ohdMit.dodge - ohdMit.parry - ohdMit.glancing - ohdMit.block);
    critPart = critChanceRemainder / 100;
    hitPart = (ohd.hitChance - ohdMit.dodge - ohdMit.parry) / 100 - glancePart- critPart;

    glancePartialAvg = ohd.avg * ohdMit.glancingDmg * glancePart;
    critPartialAvg = ohd.avgCrit * critPart;
    normalPartialAvg = ohd.avg * hitPart;
    avgResultDmg = normalPartialAvg + critPartialAvg + glancePartialAvg;

    ohd.avgAfterMitigation = avgResultDmg * (1 - calcedSpell.avgResist);
    ohd.perSec = ohd.avgAfterMitigation / stats.attackSpeed.offhand;
end


effHandler[EFFECT_TYPES.SPELL_EFFECT_SCHOOL_DAMAGE] = SchoolDamage;
effHandler[EFFECT_TYPES.SPELL_EFFECT_HEALTH_LEECH] = SchoolDamage;
effHandler[EFFECT_TYPES.SPELL_EFFECT_HEAL] = HealEffect;
effHandler[EFFECT_TYPES.SPELL_EFFECT_APPLY_AURA] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_PERSISTENT_AREA_AURA] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_APPLY_AREA_AURA_PARTY] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_ATTACK] = AutoAttack;
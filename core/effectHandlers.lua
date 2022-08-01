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
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
---@param gcd number
local function EFFECT_TEMPLATE(auraType, calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    -- Example function definition
end

--- BASE AURA TEMPLATE
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
---@param gcd number
local function AURA_TEMPLATE(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    -- Example function definition
end

----------------------------------------------------------------------------------------------------------------------------------------
-- Dummy Aura Handler
----------------------------------------------------------------------------------------------------------------------------------------

local dummyAuraHandlers = {};

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfRighteousness(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];

    -- Formula is: Base_MH_Atk_Speed * (coef * SP + coefAP * AP)

    local atkSpeed = stats.attackSpeed.mainhand;
    local baseAtkSpeed = atkSpeed / (1 - GetHaste()/100);

    calcedEffect.effectiveSpCoef = calcedEffect.effectiveSpCoef * baseAtkSpeed;
    calcedEffect.effectiveApCoef = calcedEffect.effectiveApCoef * baseAtkSpeed;
    local damageDone = calcedEffect.spellPower * calcedEffect.effectiveSpCoef + calcedEffect.attackPower * calcedEffect.effectiveApCoef;
    calcedEffect.effectivePower = damageDone;

    calcedEffect.min = damageDone;
    calcedEffect.avg = damageDone;
    calcedEffect.avgCombined = damageDone;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfCommand(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local as = stats.attackSpeed.mainhand;
    local coef = effectData.weaponCoef;

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
    local triggers = SOC_PPS * calcedSpell.duration;
    local effectiveHitChance = (calcedSpell.hitChance - mmit.dodge - mmit.parry) / 100;
    local triggerHits = triggers * effectiveHitChance;

    local avgAfterResist = calcedEffect.avgCombined * (1 - calcedSpell.avgResist);
    local avgTriggerHits = triggerHits * avgAfterResist * effectiveHitChance; -- SOC hits can again be melee mitigated like a special attack

    calcedSpell.charges = SOC_PPS * as; -- lel
    calcedEffect.avgAfterMitigation = avgTriggerHits;
    calcedEffect.ticks = triggerHits;
    calcedEffect.perSec = avgTriggerHits / calcedSpell.duration;
    calcedEffect.perResource = avgTriggerHits / calcedSpell.effectiveCost;
end

---Dummy handler for Prayer of Mending and Earth Shield
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function PoM_ES(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId)
    -- Do normal heal effect
    HealEffect(nil, calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId);
    -- Multiply by charge count
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * calcedSpell.charges;
    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

-- TODO: test this
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfVengeance(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    local effectData = spellRankInfo.effects[effNum];

    local dotSpell = _addon:GetCalcedSpell(53742);
    if not dotSpell then
        error("SoV: Blood Corruption spell not handled?");
        return;
    end
    local dotEffect = dotSpell[1];
    local dotTicks = dotEffect.ticks;
    local dotPeriod = dotEffect.tickPeriod;
    local dotDur = dotSpell.duration;
    local dotAt5Stack = dotEffect.avg * dotTicks;
    calcedEffect.spellData = dotSpell;

    local weaponCoef = effectData.weaponCoef * effectMod;

    calcedEffect.min = stats.attackDmg.mainhand.min * weaponCoef;
    calcedEffect.max = stats.attackDmg.mainhand.max * weaponCoef;
    calcedEffect.avg = 0.5 * (calcedEffect.min + calcedEffect.max);
    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
    calcedEffect.avgCrit = calcedEffect.avg * calcedSpell.critMult;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function Starfall(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    local stars = 20;
    local effectData = spellRankInfo.effects[effNum];
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];

    calcedEffect.min = effectData.valueBase * effectMod + calcedEffect.effectivePower;
    calcedEffect.max = calcedEffect.min + effectData.valueRange;
    calcedEffect.avg = calcedEffect.min + effectData.valueRange * 0.5;
    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
    calcedEffect.avgCrit = calcedEffect.avg * calcedSpell.critMult;

    calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;
    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined * calcedSpell.hitChance/100 * (1 - calcedSpell.avgResist);
    calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * stars;

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function DivinePlea(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    calcedEffect.min = stats.manaMax * 0.05;
    calcedEffect.max = calcedEffect.min;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.min;
    calcedEffect.ticks = 5;
    calcedEffect.tickPeriod = 3;
    calcedSpell.duration = 15;
    calcedEffect.avgAfterMitigation = calcedEffect.avg * calcedEffect.ticks;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function Innervate(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    --TODO: Glyph of Innervate.
    calcedEffect.min = stats.baseMana * 2.25 / 10;
    calcedEffect.max = calcedEffect.min;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.min;
    calcedEffect.ticks = 10;
    calcedEffect.tickPeriod = 1;
    calcedSpell.duration = 10;
    calcedEffect.avgAfterMitigation = calcedEffect.avg * calcedEffect.ticks;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function ArcaneTorrent(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    calcedEffect.min = stats.manaMax * spellRankInfo.effects[effNum].valueBase/100;
    calcedEffect.max = calcedEffect.min;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.min;
    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function SealOfWisdomMelee(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ArcaneTorrent(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName);
    local baseAtkSpeed = stats.attackSpeed.mainhand / (1 - GetHaste()/100);
    calcedSpell[effNum].perSec = 15/60 * baseAtkSpeed; -- 15 PPM, this should be the proc chance
end

dummyAuraHandlers[GetSpellInfo(20154)] = SealOfRighteousness;
dummyAuraHandlers[GetSpellInfo(20375)] = SealOfCommand;
dummyAuraHandlers[GetSpellInfo(33076)] = PoM_ES; -- Prayer of Mending
dummyAuraHandlers[GetSpellInfo(974)] = PoM_ES; -- Earth Shield
dummyAuraHandlers[GetSpellInfo(31801)] = SealOfVengeance;
dummyAuraHandlers[GetSpellInfo(348704)] = SealOfVengeance; -- Seal of Corruption
dummyAuraHandlers[GetSpellInfo(48505)] = Starfall;
dummyAuraHandlers[GetSpellInfo(54428)] = DivinePlea;
dummyAuraHandlers[GetSpellInfo(29166)] = Innervate;
dummyAuraHandlers[GetSpellInfo(20166)] = SealOfWisdomMelee;
dummyAuraHandlers[GetSpellInfo(28730)] = ArcaneTorrent;

----------------------------------------------------------------------------------------------------------------------------------------
-- Aura Handler
----------------------------------------------------------------------------------------------------------------------------------------

local auraHandler = {}

--- Handler for periodic damage auras.
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
---@param gcd number
local function PeriodicDamage(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;

    calcedEffect.min = (effectData.valueBase + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;

    if stats.spellModAllowDotCrit[spellId] and stats.spellModAllowDotCrit[spellId].val > 0 then
        calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
        calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
        calcedEffect.avgCrit = calcedEffect.avg * calcedSpell.critMult;
        calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;
    else
        calcedEffect.avgCombined = calcedEffect.avg;
    end

    local total = calcedEffect.avgCombined * calcedEffect.ticks;

    if spellRankInfo.isChannel then
        calcedEffect.avgAfterMitigation = total * channelEffDmgNotMissed(calcedSpell.hitChance, gcd, effCastTime);
    else
        calcedEffect.avgAfterMitigation = total * calcedSpell.hitChance / 100;
    end

    if calcedSpell.hitChanceBinaryLoss == nil then
        calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * (1 - calcedSpell.avgResist);
    end

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.perSecDurOrCD = total / calcedSpell.duration;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function PeriodicHeal(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    calcedEffect.min = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;

    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined * calcedEffect.ticks;

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.perSecDurOrCD = calcedEffect.avgAfterMitigation / calcedSpell.duration;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

--- Handler for damage shield like effects
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function DamageShield(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    calcedEffect.min = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;

    local total = (calcedSpell.charges and calcedSpell.charges > 0) and calcedSpell.charges * calcedEffect.avgCombined or calcedEffect.avgCombined;

    calcedEffect.avgAfterMitigation = total * (calcedSpell.hitChance / 100) * (1 - calcedSpell.avgResist);

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

--- Handler for absorbs
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function AbsorbAura(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
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
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function ManaShield(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    calcedEffect.min = (effectData.valueBase + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;

    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined;

    local drain = 1.5;
    local name, _, _, _, curRank = GetTalentInfo(1, 11); -- TODO: This will currently fail
    if curRank > 0 then
        drain = drain * (1 - 0.165 * curRank);
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
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
---@param gcd number
local function PeriodicTriggerSpell(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    local triggeredSpellData = calcedEffect.spellData;
    calcedEffect.min = triggeredSpellData[1].min;
    calcedEffect.max = triggeredSpellData[1].max;
    calcedEffect.avg = triggeredSpellData[1].avg;
    calcedEffect.minCrit = triggeredSpellData[1].minCrit;
    calcedEffect.maxCrit = triggeredSpellData[1].maxCrit;
    calcedEffect.avgCrit = triggeredSpellData[1].avgCrit;
    calcedEffect.avgCombined = triggeredSpellData[1].avgCombined;
    calcedEffect.avgAfterMitigation = triggeredSpellData[1].avgAfterMitigation * calcedEffect.ticks;
    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.perSecDurOrCD = (calcedEffect.avgCombined * calcedEffect.ticks) / calcedSpell.duration;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

--- Handler for dummy auras
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function DummyAura(calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId)
    if dummyAuraHandlers[spellName] == nil then
        _addon:PrintError("No dummy aura handler for effect "..effNum.." on spell "..spellName.."! Please report this to the addon author!");
        return;
    end
    dummyAuraHandlers[spellName](calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId);
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
auraHandler[AURA_TYPES.SPELL_AURA_PERIODIC_ENERGIZE] = DummyAura;
auraHandler[AURA_TYPES.SPELL_AURA_OBS_MOD_MANA] = DummyAura;

----------------------------------------------------------------------------------------------------------------------------------------
-- Effect Hanlder
----------------------------------------------------------------------------------------------------------------------------------------

---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function SchoolDamage(_, calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId)
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

    if stats.ignite.val > 0 and spellRankInfo.school == _addon.SCHOOL.FIRE then
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

    if stats.shamanLightningOverload[spellId] and stats.shamanLightningOverload[spellId].val > 0 then
        local procChance = stats.shamanLightningOverload[spellId].val / 100;
        -- Procs do 50% of normal spell damage and they can miss.
        -- avgAfterMitigation already includes misses from the main spell and resistances.
        local effectiveProcDmg = 0.5 * calcedEffect.avgAfterMitigation * procChance * calcedSpell.hitChance / 100;
        calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation + effectiveProcDmg;
        calcedSpell:AddToBuffList(stats.shamanLightningOverload[spellId].buffs);
    end

    if calcedSpell.charges and calcedSpell.charges > 1 then
        calcedEffect.avgAfterMitigation = calcedEffect.avgAfterMitigation * calcedSpell.charges;
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
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
function HealEffect(_, calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId)
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
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function AuraOrAreaAura(auraType, calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    if auraType == nil then
        _addon:PrintError("SPELL_EFFECT_APPLY_AURA handler called without auraType for spell "..spellName.." for effect #"..effNum);
        return;
    end

    if auraHandler[auraType] == nil then
        _addon:PrintError("Auratype "..auraType.." not implemented! Used by spell "..spellName.." for effect #"..effNum);
        _addon:PrintError("Please report this to the addon author.");
        return;
    end

    auraHandler[auraType](calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd);
end

--- Handle Attack spell that triggers auto attack
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function AutoAttack(_, calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName)
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

--- Handle SPELL_EFFECT_ENERGIZE_PCT
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
---@param spellId number
local function EnergizePct(_, calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd)
    auraHandler[AURA_TYPES.SPELL_AURA_DUMMY](calcedSpell, effNum, spellRankInfo, effCastTime, effectMod, spellName, spellId, gcd);
end

effHandler[EFFECT_TYPES.SPELL_EFFECT_SCHOOL_DAMAGE] = SchoolDamage;
effHandler[EFFECT_TYPES.SPELL_EFFECT_HEALTH_LEECH] = SchoolDamage;
effHandler[EFFECT_TYPES.SPELL_EFFECT_HEAL] = HealEffect;
effHandler[EFFECT_TYPES.SPELL_EFFECT_APPLY_AURA] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_PERSISTENT_AREA_AURA] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_APPLY_AREA_AURA_PARTY] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_ATTACK] = AutoAttack;
effHandler[EFFECT_TYPES.SPELL_EFFECT_ENERGIZE_PCT] = EnergizePct;
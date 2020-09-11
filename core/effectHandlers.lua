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
    if effectData.perLevel and effectData.perLevel > 0 then
        return (math.min(UnitLevel("player"), spellRankInfo.maxLevel) - spellRankInfo.spellLevel) * effectData.perLevel;
    end
    return 0;
end


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
local function EFFECT_TEMPLATE(auraType, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
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
local function AURA_TEMPLATE(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    -- Example function definition
end

----------------------------------------------------------------------------------------------------------------------------------------
-- Dummy Aura Handler
----------------------------------------------------------------------------------------------------------------------------------------

local dummyAuraHandlers = {};

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

    local as = stats.attackSpeed.mh;
    local multiplier = _addon:IsTwoHandEquipped() and 1.2 or 0.85;
    local dmgbase = (effectData.min + GetLevelBonus(spellRankInfo, effectData)) * multiplier * as/100;

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

    local as = stats.attackSpeed.mh;
    local coef = effectData.weaponCoef;

    calcedEffect.min = (coef * stats.attackDmg.mh.min + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.max = (coef * stats.attackDmg.mh.max + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
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

    local dpsFromAP = (effectData.min + GetLevelBonus(spellRankInfo, effectData)) / 14;
    local mmit = calcedSpell.meleeMitigation;
    local effectiveHitChance = (calcedSpell.hitChance - mmit.dodge - mmit.parry) / 100;
    local as = stats.attackSpeed.mh;
    local hits = math.floor(spellRankInfo.duration / as);
    local dpsAfterMitigation = dpsFromAP * effectiveHitChance * (1 - calcedSpell.avgResist);

    calcedEffect.avgAfterMitigation = hits * as * dpsAfterMitigation;
    calcedEffect.ticks = hits;
    calcedEffect.perSec = dpsAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;
end

dummyAuraHandlers[GetSpellInfo(20154)] = SealOfRighteousness;
dummyAuraHandlers[GetSpellInfo(20375)] = SealOfCommand;
dummyAuraHandlers[GetSpellInfo(20162)] = SealOfTheCrusader;

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
local function PeriodicDamage(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;
    local duration = spellRankInfo.duration;

    if stats.durationMods[spellName] ~= nil then
        duration = duration + stats.durationMods[spellName].val;
        calcedSpell:AddToBuffList(stats.durationMods[spellName].buffs);
    end

    calcedEffect.min = (effectData.min + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.avgCombined = calcedEffect.avg;
    calcedEffect.ticks = math.floor(duration / effectData.tickPeriod);

    local total = calcedEffect.avgCombined * calcedEffect.ticks;

    if spellBaseInfo.isChannel then
        -- TODO: Fix hardcoded GCD!
        calcedEffect.avgAfterMitigation = total * (1 - (1 - calcedSpell.hitChance / 100) ^ (effCastTime / 1.5));
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
local function PeriodicHeal(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local duration = spellRankInfo.duration;

    if stats.durationMods[spellName] ~= nil then
        duration = duration + stats.durationMods[spellName].val;
        calcedSpell:AddToBuffList(stats.durationMods[spellName].buffs);
    end

    calcedEffect.min = (effectData.min + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
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

    calcedEffect.min = (effectData.min + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
    calcedEffect.charges = effectData.charges;
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

    calcedEffect.min = (effectData.min + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
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

    calcedEffect.min = (effectData.min + GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod) * effectMod + calcedEffect.effectivePower;
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

-- TODO: test with searing totem (2 levels to go!)
--- Handler for things like Arcane Missiles or Searing Totem.
--- That is, periodic spells with ticks that behave much like a direct damage effect.
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function PeriodicTriggerSpell(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;
    local duration = spellRankInfo.duration;

    if stats.durationMods[spellName] ~= nil then
        duration = duration + stats.durationMods[spellName].val;
        calcedSpell:AddToBuffList(stats.durationMods[spellName].buffs);
    end

    calcedEffect.min = (effectData.min + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.avgCrit = calcedEffect.minCrit;
    calcedEffect.ticks = math.floor(duration / effectData.tickPeriod);

    if effectData.max then
        calcedEffect.max = (effectData.max + baseIncrease) * effectMod + calcedEffect.effectivePower;
        calcedEffect.avg = (calcedEffect.min + calcedEffect.max) / 2;
        calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
        calcedEffect.avgCrit = (calcedEffect.minCrit + calcedEffect.maxCrit) / 2;
    end

    calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;

    local total = calcedEffect.avgCombined * calcedEffect.ticks;

    if spellBaseInfo.isChannel then
        -- TODO: Fix hardcoded GCD!
        calcedEffect.avgAfterMitigation = total * (1 - (1 - calcedSpell.hitChance / 100) ^ (effCastTime / 1.5));
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

--- Handler for dummy auras
---@param calcedSpell CalcedSpell
---@param effNum number
---@param spellBaseInfo SpellBaseInfo
---@param spellRankInfo SpellRankInfo
---@param effCastTime number
---@param effectMod number
---@param spellName string
local function DummyAura(calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    if dummyAuraHandlers[spellName] == nil then
        _addon:PrintError("No dummy aura handler for effect "..effNum.." on spell "..spellName.."! Please report this to the addon author!");
        return;
    end
    dummyAuraHandlers[spellName](calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName);
end

auraHandler[AURA_TYPES.SPELL_AURA_PERIODIC_DAMAGE] = PeriodicDamage;
auraHandler[AURA_TYPES.SPELL_AURA_PERIODIC_LEECH] = PeriodicDamage;
auraHandler[AURA_TYPES.SPELL_AURA_PERIODIC_HEAL] = PeriodicHeal;
auraHandler[AURA_TYPES.SPELL_AURA_DAMAGE_SHIELD] = DamageShield;
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
local function SchoolDamage(_, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;

    calcedEffect.min = (effectData.min + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.avgCrit = calcedEffect.minCrit;

    if effectData.max then
        calcedEffect.max = (effectData.max + baseIncrease) * effectMod + calcedEffect.effectivePower;
        calcedEffect.avg = (calcedEffect.min + calcedEffect.max) / 2;
        calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
        calcedEffect.avgCrit = (calcedEffect.minCrit + calcedEffect.maxCrit) / 2;
    end


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

        if effectData.max then
            calcedEffect.igniteData.max =  calcedEffect.maxCrit * igniteMult;
            calcedEffect.igniteData.avg = (calcedEffect.igniteData.min + calcedEffect.igniteData.max) / 2;
        else
            calcedEffect.igniteData.avg = calcedEffect.igniteData.min;
        end

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
        if stats.chainMultMods[spellName] then
            mult = mult * (1 + stats.chainMultMods[spellName].val / 100);
            calcedSpell:AddToBuffList(stats.chainMultMods[spellName].buffs);
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
local function HealEffect(_, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    ---@type CalcedEffect
    local calcedEffect = calcedSpell[effNum];
    ---@type SpellRankEffectData
    local effectData = spellRankInfo.effects[effNum];

    local baseIncrease = GetLevelBonus(spellRankInfo, effectData) + calcedEffect.flatMod;

    calcedEffect.min = (effectData.min + baseIncrease) * effectMod + calcedEffect.effectivePower;
    calcedEffect.avg = calcedEffect.min;
    calcedEffect.minCrit = calcedEffect.min * calcedSpell.critMult;
    calcedEffect.avgCrit = calcedEffect.minCrit;

    if effectData.max then
        calcedEffect.max = (effectData.max + baseIncrease) * effectMod + calcedEffect.effectivePower;
        calcedEffect.avg = (calcedEffect.min + calcedEffect.max) / 2;
        calcedEffect.maxCrit = calcedEffect.max * calcedSpell.critMult;
        calcedEffect.avgCrit = (calcedEffect.minCrit + calcedEffect.maxCrit) / 2;
    end

    if SpellCalc_settings.healDisregardCrit then
        calcedEffect.avgCombined = calcedEffect.avg;
    else
        calcedEffect.avgCombined = calcedEffect.avg + (calcedEffect.avgCrit - calcedEffect.avg) * calcedSpell.critChance/100;
    end

    calcedEffect.avgAfterMitigation = calcedEffect.avgCombined;

    calcedEffect.perSec = calcedEffect.avgAfterMitigation / effCastTime;
    calcedEffect.doneToOom = calcedSpell.castingData.castsToOom * calcedEffect.avgAfterMitigation;
    calcedEffect.perResource = calcedEffect.avgAfterMitigation / calcedSpell.effectiveCost;

    if SpellCalc_settings.healTargetHps > 0 then
        if calcedEffect.thpsData == nil then
            ---@type TargetHPSDef
            calcedEffect.thpsData = {
                secNoCast = 0,
                secNoFsr = 0,
                effectiveCost = 0,
                perMana = 0,
                castsToOom = 0,
                timeToOom = 0,
                doneToOom = 0
            };
        end

        local secondsNoCast = (calcedEffect.perSec / SpellCalc_settings.healTargetHps - 1) * effCastTime;
        calcedEffect.thpsData.secNoCast = secondsNoCast;

        if secondsNoCast > 0 then
            local manaGained = secondsNoCast * (stats.mp5.val/5 + stats.manaReg);
            local secOutOfFSR = secondsNoCast - 5 + effCastTime;

            if secOutOfFSR > 0 then
                calcedEffect.thpsData.secNoFsr = secOutOfFSR;
                -- Also need to remove previously added normal mana regen during secOutOfFSR 
                -- effectiveCost calculation deducted it for the castTime, so secOutOfFSR is fine to use
                manaGained = manaGained - secOutOfFSR * stats.manaReg + stats.baseManaReg * secOutOfFSR;
            else
                calcedEffect.thpsData.secNoFsr = 0;
            end

            calcedEffect.thpsData.effectiveCost = calcedSpell.effectiveCost - manaGained;
            calcedEffect.thpsData.perMana = calcedEffect.avgAfterMitigation / calcedEffect.thpsData.effectiveCost;
            calcedEffect.thpsData.castsToOom = _addon:GetEffectiveManaPool() / calcedEffect.thpsData.effectiveCost;
            if SpellCalc_settings.useRealToOom then
                calcedEffect.thpsData.castsToOom = math.floor(calcedEffect.thpsData.castsToOom);
            end
            calcedEffect.thpsData.timeToOom = calcedEffect.thpsData.castsToOom * (effCastTime + secondsNoCast);
            calcedEffect.thpsData.doneToOom = calcedEffect.thpsData.castsToOom * calcedEffect.avgAfterMitigation;
        end
    else
        calcedEffect.thpsData = nil;
    end

    if effectData.chains and effectData.chains > 1 then
        calcedEffect.chains = effectData.chains;
        local mult = effectData.chainMult;
        if stats.chainMultMods[spellName] then
            mult = mult * (1 + stats.chainMultMods[spellName].val / 100);
            calcedSpell:AddToBuffList(stats.chainMultMods[spellName].buffs);
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
local function AuraOrAreaAura(auraType, calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName)
    if auraType == nil then
        _addon:PrintError("SPELL_EFFECT_APPLY_AURA handler called without auraType for spell "..spellName.." for effect #"..effNum);
        return;
    end

    if auraHandler[auraType] == nil then
        _addon:PrintError("Auratype "..auraType.." not implemented! Used by spell "..spellName.." for effect #"..effNum);
        _addon:PrintError("Please report this to the addon author.");
        return;
    end

    auraHandler[auraType](calcedSpell, effNum, spellBaseInfo, spellRankInfo, effCastTime, effectMod, spellName);
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

    calcedEffect.min = stats.attackDmg.mh.min * effectMod;
    calcedEffect.max = stats.attackDmg.mh.max * effectMod;
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

    calcedEffect.perSec = avgResultDmg / stats.attackSpeed.mh;

    if not _addon:IsDualWieldEquipped() then
        if calcedEffect.offhandAttack then
            calcedEffect.offhandAttack.min = 0;
        end
        return;
    end

    -- OFF HAND

    local ohd = calcedEffect.offhandAttack;
    local ohdMit = ohd.meleeMitigation;

    ohd.min = stats.attackDmg.oh.min * effectMod;
    ohd.max = stats.attackDmg.oh.max * effectMod;
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

    ohd.perSec = avgResultDmg / stats.attackSpeed.oh;
end


effHandler[EFFECT_TYPES.SPELL_EFFECT_SCHOOL_DAMAGE] = SchoolDamage;
effHandler[EFFECT_TYPES.SPELL_EFFECT_HEALTH_LEECH] = SchoolDamage;
effHandler[EFFECT_TYPES.SPELL_EFFECT_HEAL] = HealEffect;
effHandler[EFFECT_TYPES.SPELL_EFFECT_APPLY_AURA] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_PERSISTENT_AREA_AURA] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_APPLY_AREA_AURA_PARTY] = AuraOrAreaAura;
effHandler[EFFECT_TYPES.SPELL_EFFECT_ATTACK] = AutoAttack;
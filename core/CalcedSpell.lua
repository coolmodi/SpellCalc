---@class AddonEnv
local _addon = select(2, ...);

local ADDON_EFFECT_FLAGS = _addon.CONST.ADDON_EFFECT_FLAGS;

---@class MeleeMitigationDef
---@field dodge number
---@field parry number
---@field block number
---@field glancing number
---@field glancingDmg number

---@class CastinDataDef
---@field castsToOom number
---@field timeToOom number

---@class EffectOffhandData
---@field critChance number
---@field hitChance number
---@field hitChanceBase number
---@field timeToOom number
---@field hitChanceBonus number
---@field min number
---@field meleeMitigation MeleeMitigationDef
---@field max number
---@field avg number
---@field minCrit number
---@field maxCrit number
---@field avgCrit number
---@field avgCombined number
---@field avgAfterMitigation number
---@field perSec number

---Values for stackable auras when kept at max stacks, only heal compatible for now (Lifebloom)
---@class AuraStackData
---@field doneToOom number|nil
---@field stacks integer
---@field min number
---@field max number
---@field avg number
---@field avgCombined number
---@field avgAfterMitigation number
---@field perSec number
---@field perSecDurOrCD number
---@field perResource number
---@field ticks integer
local AuraStackData = {
    stacks = 0,
    min = 0,
    max = 0,
    avg = 0,
    avgCombined = 0,
    avgAfterMitigation = 0,
    perSec = 0,
    perSecDurOrCD = 0,
    perResource = 0,
    ticks = 0,
}

---@class HitExtraData
---@field avgHit number
---@field avgCrit number|nil
---@field avg number The average done with crits.

---@class CalcedEffect
---@field effectFlags AddonEffectFlags|0
---@field modBase number Modifier affecting the base value of the spell.
---@field modBonus number Modifier affecting the bonus scaling values of the spell.
---@field spellPower number Spell power this effect scales with.
---@field attackPower number Attack power this effect scales with.
---@field effectiveSpCoef number The effective SP coef after modifiers.
---@field effectiveApCoef number The effective AP coef after modifiers.
---@field effectivePower number The combined power bonus used.
---@field flatMod number Flat value bonus for this effect.
---@field min number Minimum value. Is also tick value for duration effects.
---@field max number Maximum value.
---@field avg number Average value.
---@field minCrit number Minimum critical value. 0 if effect doesn't crit.
---@field maxCrit number Maximum critical value. 0 if effect doesn't crit.
---@field avgCrit number Average critical value. 0 if effect doesn't crit.
---@field critExtraAvg number|nil If effect has added extra value on crit then this is the avg. done extra.
---@field hitExtra HitExtraData|nil If effect has added extra value on hit this holds the data.
---@field avgCombined number Average combined value.
---@field avgAfterMitigation number Combined average done after all mitigation sources.
---@field perSec number Done per second. DPSC for non-channel duration spells.
---@field perSecDurOrCD number|nil Done per sec over duration or DPS(CD).
---@field perResource number Done per resource spent using the effective cost.
---@field doneToOom number|nil Done until OOM for mana spells.
---@field ticks integer|nil Ticks for duration spells.
---@field tickPeriod number|nil Tickperiod for duration spells.
---@field auraStack AuraStackData|nil If aura is stackable this will hold data for sustained max stacks.
---@field offhandAttack EffectOffhandData|nil Data for offhand attack (auto attack with dual wield, maybe more with TBC?).
---@field chains integer|nil How often the effect chains, if any.
---@field chainMult number|nil Multiplier for each chain, if any.
---@field triggeredSpell integer|nil Id of triggered spell if this effect triggers one.
---@field spellData CalcedSpell|nil Data for triggered spell if this effect triggers one.
local CalcedEffect = {
    effectFlags = 0,
    modBase = 0,
    modBonus = 0,
    spellPower = 0,
    attackPower = 0,
    effectiveSpCoef = 0,
    effectiveApCoef = 0,
    effectivePower = 0,
    flatMod = 0,
    min = 0,
    max = 0,
    avg = 0,
    minCrit = 0,
    maxCrit = 0,
    avgCrit = 0,
    avgCombined = 0,
    avgAfterMitigation = 0,
    perSec = 0,
    perResource = 0,
};

CalcedEffect.__index = CalcedEffect;

---@class CalcedSpell Represents a calculated spell.
---@field school SpellSchool The spell school.
---@field duration number|nil Duration after duration modifiers with haste if used for spell. Seconds.
---@field durationNoHaste integer|nil Duration after duration modifiers without haste. Milliseconds.
---@field effects CalcedEffect[] The effects of the spell
---@field costType PowerType
---@field castingData CastinDataDef
---@field meleeMitigation MeleeMitigationDef|nil
---@field gcd number The global cooldown this spell uses.
---@field effCastTime number The effective cast time of the spell. Duration for channeled spells.
---@field dualWield DualWieldData|nil
---@field charges number|nil
---@field combined CombinedData|nil Exists if spell has a direct and duration component, e.g. Immolate or Regrowth
---@field hitChance number
---@field hitChanceBase number
---@field hitChanceBonus number
---@field hitChanceBinaryLoss number|nil
---@field critChance number
---@field critMult number
---@field avgResist number Damage (mult) resisted from resistance for magic (avg), armor for physical (static)
---@field resistance number Resistance used for school. Armor for physical effects
---@field resistanceFromLevel number Resistance caused by level difference for magic spells
---@field resistancePen number Spell/armor penetration
---@field baseCost integer Base cost of the spell, before any talents
---@field effectiveCost integer Cost after regeneration while casting and other returns
---@field updated integer Update counter value last updated at
---@field buffs string[] Buffs (internaly) used in the calculation process
local CalcedSpell = {
    school = 1,
    costType = 0,
    critChance = 0,
    critMult = 0,
    updated = 0,
    baseCost = 0,
    effectiveCost = 0,

    avgResist = -1,
    resistance = 0,
    resistanceFromLevel = 0,
    resistancePen = 0,
    hitChance = -1,
    hitChanceBase = -1,
    hitChanceBonus = 0,
    gcd = 1.5,
    effCastTime = 0
};

CalcedSpell.__index = CalcedSpell;


--- Add buff names to buff list
---@param buffs string[] The table of buff names to add
function CalcedSpell:AddToBuffList(buffs)
    for _, buffName in ipairs(buffs) do
        table.insert(self.buffs, buffName);
    end
end

--- Clear buff list
function CalcedSpell:ResetBuffList()
    wipe(self.buffs);
end

--- Set effect to be a triggered spell.
---@param triggeredSpell integer
---@param effIndex integer
function CalcedSpell:SetTriggeredSpell(triggeredSpell, effIndex)
    if self.effects[effIndex] ~= nil and self.effects[effIndex].effectFlags ~= ADDON_EFFECT_FLAGS.TRIGGERED_SPELL then
        _addon.util.PrintError("Tried to add triggered spell when 2nd effect is already in use!");
        return;
    end

    if self.effects[effIndex] == nil then
        self.effects[effIndex] = setmetatable({
            effectFlags = ADDON_EFFECT_FLAGS.TRIGGERED_SPELL,
            triggeredSpell = triggeredSpell,
            spellData = nil
        }, CalcedEffect);
    end
end

--- Remove effect if it is a triggered spell.
---@param effIndex integer
function CalcedSpell:UnsetTriggeredSpell(effIndex)
    if self.effects[effIndex] ~= nil and self[effIndex].effectFlags == ADDON_EFFECT_FLAGS.TRIGGERED_SPELL then
        self.effects[effIndex] = nil;
    end
end

--- Add table for combined spells.
---@param so CalcedSpell
local function AddCombinedData(so)
    ---@class CombinedData
    so.combined = {
        fullDuration = {        -- Values if full duration is used
            hitAvg = 0,         -- The total done per hit
            critAvg = 0,        -- The total done if primary crits
            perSecond = 0,      -- DPSC
            perResource = 0,    -- Done per resource when full duration used
            doneToOom = 0,
        },
        spam = {
            ticksUsed = 0,      -- Ticks that happen while casting next spell
            hitAvg = 0,
            critAvg = 0,
            perSecond = 0,
            perResource = 0,
            doneToOom = 0
        }
    };
end

--- Add table for dual wield spells.
---@param so CalcedSpell
local function AddDWData(so)
    ---@class DualWieldData
    ---@field perSec number
    ---@field perResource number
    ---@field avgAfterMitigation number
    so.dualWield = {
        min = { mh = 0, oh = 0 },
        max = { mh = 0, oh = 0 },
        avg = { mh = 0, oh = 0 },
        minCrit = { mh = 0, oh = 0 },
        maxCrit = { mh = 0, oh = 0 },
        avgCrit = { mh = 0, oh = 0 },
        critChance = { mh = 0, oh = 0 },
        perSec = 0,
        perResource = 0,
        avgAfterMitigation = 0,
    };
end

--- Make a new table to store calculated spell data
---@param effectFlags integer[]
---@param spellRankEffects SpellEffectData[]
---@return CalcedSpell
function _addon.NewCalcedSpell(effectFlags, spellRankEffects)
    assert(#effectFlags > 0, "Tried to create new spell with no effect!");

    local newInstance = setmetatable({}, CalcedSpell);

    newInstance.buffs = {};
    newInstance.castingData = {
        castsToOom = 0,
        timeToOom = 0
    };
    newInstance.effects = {};

    for i = 1, 2, 1 do
        if effectFlags[i] == nil then
            break;
        end

        if bit.band(effectFlags[i], ADDON_EFFECT_FLAGS.TRIGGERED_SPELL) > 0 then
            newInstance:SetTriggeredSpell(spellRankEffects[i].triggeredSpell, i);
        else
            local effTable = {};
            setmetatable(effTable, CalcedEffect);
            effTable.effectFlags = effectFlags[i];

            if bit.band(effTable.effectFlags, ADDON_EFFECT_FLAGS.DURATION) > 0 then
                effTable.ticks = 0;
                effTable.tickPeriod = 0;
            end

            if bit.band(effTable.effectFlags, ADDON_EFFECT_FLAGS.STACKABLE_AURA) > 0 then
                effTable.auraStack = setmetatable({}, AuraStackData);
            end

            if bit.band(effTable.effectFlags, ADDON_EFFECT_FLAGS.TRIGGER_SPELL_AURA) > 0 then
                effTable.triggeredSpell = spellRankEffects[i].triggeredSpell;
            end

            newInstance.effects[i] = effTable;
        end
    end

    -- Is combined spell, e.g. Immolate or Regrowth
    if effectFlags[2] ~= nil 
    and bit.band(effectFlags[1], ADDON_EFFECT_FLAGS.DURATION) == 0
    and bit.band(effectFlags[2], ADDON_EFFECT_FLAGS.DURATION) > 0 then
        AddCombinedData(newInstance);
    end

    -- Is DW spell
    if newInstance.effects[2] and newInstance.effects[2].triggeredSpell then
        local tid = newInstance.effects[2].triggeredSpell--[[@as integer]];
        if _addon.spellInfo[tid].isOffhandAttack then
            AddDWData(newInstance);
        end
    end

    return newInstance;
end
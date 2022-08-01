---@type AddonEnv
local _addon = select(2, ...);

---@type SpellEffectFlags
local SPELL_EFFECT_FLAGS = _addon.SPELL_EFFECT_FLAGS;


---@class IgniteDataDef
local IgniteDataDef = {
    min = 0,                -- All values for full duration!
    max = 0,
    avg = 0
};

---@class MeleeMitigationDef
local MeleeMitigationDef = {
    dodge = 0,
    parry = 0,
    block = 0,
    glancing = 0,
    glancingDmg = 0,
};

---@class CastinDataDef
local CastinDataDef = {
    castsToOom = 0,
    timeToOom = 0
};

---@class EffectOffhandData
local EffectOffhandData = {
    critChance = 0,
    hitChance = -1,
    hitChanceBase = -1,
    hitChanceBonus = 0,
    ---@type MeleeMitigationDef
    meleeMitigation = {
        dodge = 0,
        parry = 0,
        block = 0,
        glancing = 0,
        glancingDmg = 0,
    },

    min = 0,
    max = 0,
    avg = 0,
    minCrit = 0,
    maxCrit = 0,
    avgCrit = 0,
    avgCombined = 0,
    avgAfterMitigation = 0,
    perSec = 0,
};

---@class AuraStackData
---Values for stackable auras when kept at max stacks, only heal compatible for now (Lifebloom)
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
    ---@type number|nil
    doneToOom = nil,
    ticks = 0,
}

---@class CalcedEffect
---@field effectFlags number
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
---@field avgCombined number Average combined value.
---@field avgAfterMitigation number Combined average done after all mitigation sources.
---@field perSec number Done per second. DPSC for non-channel duration spells.
---@field perSecDurOrCD number|nil Done per sec over duration or DPS(CD).
---@field perResource number Done per resource spent using the effective cost.
---@field doneToOom number|nil Done until OOM for mana spells.
---@field ticks number|nil Ticks for duration spells.
---@field tickPeriod number|nil Tickperiod for duration spells.
---@field auraStack AuraStackData|nil If aura is stackable this will hold data for sustained max stacks.
---@field igniteData IgniteDataDef|nil
---@field offhandAttack EffectOffhandData|nil Data for offhand attack (auto attack with dual wield, maybe more with TBC?).
---@field chains number|nil How often the effect chains, if any.
---@field chainMult number|nil Multiplier for each chain, if any.
---@field triggeredSpell number|nil Id of triggered spell if this effect triggers one.
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

---@class CalcedSpell @Represents a calculated spell.
---@field duration number|nil Duration after duration modifiers with haste if used for spell.
---@field durationNoHaste number|nil Duration after duration modifiers without haste.
---@field [1] CalcedEffect|nil Effect 1
---@field [2] CalcedEffect|nil Effect 2
local CalcedSpell = {
    critChance = 0,
    critMult = 0,
    ---@type string[]
    buffs = nil,            -- Buffs used in the calculation process, not buffs that affect spell indirectly
    updated = 0,            -- Last update time
    baseCost = 0,           -- Base cost of the spell, before any talents
    effectiveCost = 0,      -- Cost after regeneration while casting and other returns

    avgResist = -1,         -- By res for magic (avg), armor for physical (static)
    resistance = 0,         -- Resistance used for school. Armor for physical effects
    resistanceFromLevel = 0,    -- Resistance caused by level difference for magic spells
    resistancePen = 0,      -- Spell/armor penetration
    hitChance = -1,
    hitChanceBase = -1,
    hitChanceBonus = 0,

    ---@type number|nil
    hitChanceBinaryLoss = nil,

    ---@type MeleeMitigationDef|nil
    meleeMitigation = nil,

    -- For mana spells
    ---@type CastinDataDef
    castingData = nil,

    ---@type number|nil
    charges = nil,

    ---@type CombinedData|nil
    combined = nil,         -- Exists if spell has a direct and duration component, e.g. Immolate or Regrowth
};

CalcedSpell.__index = CalcedSpell;


--- Add buff names to buff list
---@param buffs table The table of buff names to add
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
---@param triggeredSpell number
---@param effIndex number
function CalcedSpell:SetTriggeredSpell(triggeredSpell, effIndex)
    if self[effIndex] ~= nil and self[effIndex].effectFlags ~= SPELL_EFFECT_FLAGS.TRIGGERED_SPELL then
        _addon:PrintError("Tried to add triggered spell when 2nd effect is already in use!");
        return;
    end

    if self[effIndex] == nil then
        self[effIndex] = {
            effectFlags = SPELL_EFFECT_FLAGS.TRIGGERED_SPELL,
            triggeredSpell = triggeredSpell,
            spellData = nil
        }
    end
end

--- Remove effect if it is a triggered spell.
---@param effIndex number
function CalcedSpell:UnsetTriggeredSpell(effIndex)
    if self[effIndex] ~= nil and self[effIndex].effectFlags == SPELL_EFFECT_FLAGS.TRIGGERED_SPELL then
        self[effIndex] = nil;
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

--- Make a new table to store calculated spell data
---@param effectFlags number[]
---@param spellRankEffects table<number, SpellRankEffectData|nil>
---@return CalcedSpell
function _addon.NewCalcedSpell(effectFlags, spellRankEffects)
    local newInstance = {};
    setmetatable(newInstance, CalcedSpell);

    newInstance.buffs = {};
    newInstance.castingData = {
        castsToOom = 0,
        timeToOom = 0
    };

    for i = 1, 2, 1 do
        if effectFlags[i] == nil then
            break;
        end

        if bit.band(effectFlags[i], SPELL_EFFECT_FLAGS.TRIGGERED_SPELL) > 0 then
            newInstance:SetTriggeredSpell(spellRankEffects[i].valueBase, i);
        else
            local effTable = {};
            setmetatable(effTable, CalcedEffect);
            effTable.effectFlags = effectFlags[i];

            if bit.band(effTable.effectFlags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
                effTable.ticks = 0;
                effTable.tickPeriod = 0;
            end

            if bit.band(effTable.effectFlags, SPELL_EFFECT_FLAGS.STACKABLE_AURA) > 0 then
                effTable.auraStack = setmetatable({}, AuraStackData);
            end

            if bit.band(effTable.effectFlags, SPELL_EFFECT_FLAGS.TRIGGER_SPELL_AURA) > 0 then
                effTable.triggeredSpell = spellRankEffects[i].valueBase;
            end

            newInstance[i] = effTable;
        end
    end

    -- Is combined spell, e.g. Immolate or Regrowth
    if effectFlags[2] ~= nil 
    and bit.band(effectFlags[1], SPELL_EFFECT_FLAGS.DURATION) == 0
    and bit.band(effectFlags[2], SPELL_EFFECT_FLAGS.DURATION) > 0 then
        AddCombinedData(newInstance);
    end

    return newInstance;
end
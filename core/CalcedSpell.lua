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

---@class TargetHPSDef
local TargetHPSDef = {
    secNoCast = 0,
    secNoFsr = 0,
    effectiveCost = 0,
    perMana = 0,
    castsToOom = 0,
    timeToOom = 0,
    doneToOom = 0
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

---@class CalcedEffect
local CalcedEffect = {
    effectFlags = 0,

    spellPower = 0,         -- Spell power this effect uses
    attackPower = 0,        -- Atack power used, don't think this and spellPower is ever used together until after TBC
    effectiveSpCoef = 0,    -- After low level penalty. Taken from client DB files
    effectiveApCoef = 0,
    effectivePower = 0,     -- The combined power bonus used
    flatMod = 0,            -- Flat increase, e.g. Cenarion Raiment Thorn damage

    -- Base vars for all effects
    min = 0,                -- Is also tick damage for duration spells
    max = 0,                -- All these other values may also exists for special spells like Searing Totem or Arcane Missiles
    avg = 0,
    minCrit = 0,
    maxCrit = 0,
    avgCrit = 0,
    avgCombined = 0,

    avgAfterMitigation = 0, -- Combined average done after all mitigation sources
    perSec = 0,             -- DPSC for non-channel duration spells
    ---@type number|nil
    perSecDurOrCD = nil,    -- DPS over duration or DPS(CD)
    perResource = 0,        -- Done per resource spent using the effective cost
    ---@type number|nil
    doneToOom = nil,        -- Done until OOM for mana spells

    ---@type number|nil
    ticks = nil,     -- Ticks for duration spells

    ---@type number|nil
    charges = nil,

    ---@type IgniteDataDef|nil
    igniteData = nil,

    ---@type TargetHPSDef|nil
    thpsData = nil,

    ---@type EffectOffhandData|nil
    offhandAttack = nil,    -- Data for offhand attack (auto attack with dual wield, maybe more with TBC?)

    ---@type number|nil
    chains = nil,
    ---@type number|nil
    chainMult = nil,
};

CalcedEffect.__index = CalcedEffect;

---@class CalcedSpell @Represents a calculated spell.
local CalcedSpell = {
    critChance = 0,
    critMult = 0,
    ---@type string[]
    buffs = nil,            -- Buffs used in the calculation process, not buffs that affect spell indirectly
    updated = 0,            -- Last update time
    baseCost = 0,           -- Base cost of the spell, before any talents
    effectiveCost = 0,      -- Cost after regeneration while casting and other returns

    avgResist = -1,         -- By res for magic (avg), armor for physical (static)
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

    ---@type CalcedEffect|nil @effect 1
    [1] = nil,
    ---@type CalcedEffect|nil @effect 2
    [2] = nil,

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

--- Set 2nd effect to be a triggered spell.
---@param calcedSpell CalcedSpell
function CalcedSpell:SetTriggeredSpell(calcedSpell)
    if self[2] ~= nil and self[2].effectFlags ~= SPELL_EFFECT_FLAGS.TRIGGERED_SPELL then
        _addon:PrintError("Tried to add triggered spell when 2nd effect is already in use!");
        return;
    end

    if self[2] == nil then
        self[2] = {
            effectFlags = SPELL_EFFECT_FLAGS.TRIGGERED_SPELL,
            spellData = calcedSpell
        }
    end
end

--- Remove 2nd effect if it is a triggered spell.
function CalcedSpell:UnsetTriggeredSpell()
    if self[2] ~= nil and self[2].effectFlags == SPELL_EFFECT_FLAGS.TRIGGERED_SPELL then
        self[2] = nil;
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
---@return CalcedSpell
function _addon.NewCalcedSpell(effectFlags)
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

        local effTable = {};
        setmetatable(effTable, CalcedEffect);

        effTable.effectFlags = effectFlags[i];

        if bit.band(effTable.effectFlags, SPELL_EFFECT_FLAGS.DURATION) > 0 then
            effTable.ticks = 0;
        end

        if bit.band(effTable.effectFlags, SPELL_EFFECT_FLAGS.DMG_SHIELD) > 0 then
            effTable.charges = 0;
        end

        newInstance[i] = effTable;
    end

    -- Is combined spell, e.g. Immolate or Regrowth
    if effectFlags[2] ~= nil 
    and bit.band(effectFlags[1], SPELL_EFFECT_FLAGS.DURATION) == 0
    and bit.band(effectFlags[2], SPELL_EFFECT_FLAGS.DURATION) > 0 then
        AddCombinedData(newInstance);
    end

    return newInstance;
end
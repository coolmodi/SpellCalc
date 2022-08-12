---@class AddonEnv
local _addon = select(2, ...);

local stats = _addon.stats;

---@class MagicCalc
local MagicCalc = {};
MagicCalc.__index = MagicCalc;

--- Get an object used to calculate magic stuff
---@return MagicCalc
function MagicCalc:New()
    local mc = {};
    setmetatable(mc, MagicCalc);
    return mc;
end

--- Initialize for new spell
---@param calcedSpell CalcedSpell
---@param spellInfo SpellInfo
---@param spellId integer
function MagicCalc:Init(calcedSpell, spellInfo, spellId)
    _addon.util.PrintDebug("Init MagicCalc");
    self.spellInfo = spellInfo;
    self.calcedSpell = calcedSpell;
    self.spellId = spellId;
end

--- Get base spell crit chance for spell school
function MagicCalc:GetSchoolCritChance()
    local school = self.spellInfo.school;
    local chance = stats.spellCrit[school];

    chance = chance + stats.schoolModFlatCritChance[school].val;
    self.calcedSpell:AddToBuffList(stats.schoolModFlatCritChance[school].buffs);

    if stats.targetSchoolModCritTaken[school].val ~= 0 then
        chance = chance + stats.targetSchoolModCritTaken[school].val;
        self.calcedSpell:AddToBuffList(stats.targetSchoolModCritTaken[school].buffs);
    end

    return chance;
end

--- Get the average dmg resisted by target due to resistance
---@return number avgResisted
---@return number baseRes
---@return number penetration
---@return number resistanceFromLevel
function MagicCalc:GetAvgResist()
    local tData = _addon.Target;
    local pLevel = UnitLevel("player");
    local baseRes = tData:GetEffectiveResistance(self.spellInfo.school);
    local resistanceFromLevel = math.max(tData.levelDiff * 8, 0);
    local penetration = stats.schoolModSpellPen[self.spellInfo.school].val;
    local effectiveRes = baseRes + resistanceFromLevel - math.min(baseRes, penetration);
    local avgResisted = math.min(0.75 * (effectiveRes / math.max(pLevel * 5, 100)), 0.75);
    return avgResisted, baseRes, penetration, resistanceFromLevel;
end

--- Get level based spell hit chance against the current target
---@return number @The hit chance in percent
local function GetSpellHitChance()
    local tData = _addon.Target;

    if tData.levelDiff < -3 then
        return 100;
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
---@param school SpellSchool
---@param calcedSpell CalcedSpell
---@param spellId integer
---@return number
local function GetSpellHitBonus(school, calcedSpell, spellId)
    local hitChanceBonus = 0;

    hitChanceBonus = hitChanceBonus + stats.hitBonusSpell.val;
    calcedSpell:AddToBuffList(stats.hitBonusSpell.buffs);

    if stats.spellModFlatHitChance[spellId] ~= nil then
        hitChanceBonus = hitChanceBonus + stats.spellModFlatHitChance[spellId].val;
        calcedSpell:AddToBuffList(stats.spellModFlatHitChance[spellId].buffs);
    end

    if stats.targetSchoolModHit[school].val ~= 0 then
        hitChanceBonus = hitChanceBonus + stats.targetSchoolModHit[school].val;
        calcedSpell:AddToBuffList(stats.targetSchoolModHit[school].buffs);
    end

    return hitChanceBonus;
end

--- Calculate mitigation variables for current target
---@param avgResist number
---@return number fullHit full hit chance (base + bonus)
---@return number baseHit base hit chance
---@return number bonusHit bonus hit chance
---@return number|nil binaryLoss binary loss if binary spell
function MagicCalc:GetHitChances(avgResist)
    local base = GetSpellHitChance();
    local bonus = GetSpellHitBonus(self.spellInfo.school, self.calcedSpell, self.spellId);
    local binaryLoss;

    local full = base + bonus;

    if self.spellInfo.isBinary then
        binaryLoss = full - (full * (1 - avgResist));
        full = full - binaryLoss;
    end

    if full > 100 then
        full = 100;
    elseif full < 1 then
        full = 1;
    end

    return full, base, bonus, binaryLoss;
end

_addon.MagicCalc = MagicCalc;
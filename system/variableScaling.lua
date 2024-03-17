---@class AddonEnv
local _addon = select(2, ...);

---@type table<integer, table<string, fun(playerLevel:integer|nil):number>>
local spellScalingVariables;

-- This is used to cache the last used var set id for ValueOfVariable().
---@type integer|nil
local currentId = nil;

---Apply scaling variable to values.
---@param formulaIdent { id: integer, label: string }
---@param baseLow number
---@param baseHigh number
---@return number min
---@return number number
function _addon.ApplyScalingFormula(formulaIdent, baseLow, baseHigh)
    currentId = formulaIdent.id;
    local label = formulaIdent.label;

    assert(spellScalingVariables[formulaIdent.id] and spellScalingVariables[formulaIdent.id][formulaIdent.label],
        "Scaling formula doesn't exist!");

    local varFunction = spellScalingVariables[currentId][label];
    local varFactor = varFunction(UnitLevel("player"));

    -- TODO: not all behave like this!

    return varFactor * (baseLow / 100), varFactor * (baseHigh / 100);
end

---Check if talent is learned.
-- Note: don't need this because those functions are not used
---@param spellId integer
---@return boolean
local function HaveTalent(spellId)
    error("NYI");
end

---Get value of other var function.
---@param varLabel string
local function ValueOfVariable(varLabel)
    assert(currentId, "currentId isn't set on ValueOfVariable call!");
    local varFunc = spellScalingVariables[currentId][varLabel];
    assert(varFunc, "Unknown var label " + varLabel + " on ValueOfVariable call!");
    return varFunc();
end

-- recurring TODO: Remove unused broken code line after sdc...
-- Note: do not edit below the next line!
-- MAGIC LINE WEEEEEEEEEEEEEEEEEEEE

---@type table<number, table<string, fun(playerLevel:number):number>>
spellScalingVariables = {
    [807] = {
        power = function(PL) return 6.568597 + 0.672028 * PL + 0.031721 * PL * PL end,
    },
    [808] = {
        base = function(PL) return 5.74153 - 0.255683 * PL + 0.032656 * PL * PL end,
        percombo = function(PL) return 8.740728 - 0.415787 * PL + 0.051973 * PL * PL end,
    },
    [809] = {
        power = function(PL) return 13.828124 + 0.018012 * PL + 0.044141 * PL * PL end,
        healpower = function(PL) return 38.258376 + 0.904195 * PL + 0.161311 * PL * PL end,
    },
    [810] = {
        damagepower = function(PL) return 9.456667 + 0.635108 * PL + 0.039063 * PL * PL end,
        healpower = function(PL) return 38.258376 + 0.904195 * PL + 0.161311 * PL * PL end,
    },
    [815] = {
        damagepower = function(PL) return 9.046514 + 0.676562 * PL + 0.019349 * PL * PL end,
        healpower = function(PL) return 38.258376 + 0.904195 * PL + 0.161311 * PL * PL end,
    },
    [823] = {
        damagepower = function(PL) return 9.183105 + 0.616405 * PL + 0.028608 * PL * PL end,
        healpower = function(PL) return 38.94983 + 0.606705 * PL + 0.16778 * PL * PL end,
    },
    [824] = {
        damagepower = function(PL) return 7.583798 + 0.471881 * PL + 0.036599 * PL * PL end,
        healpower = function(PL) return 29.8882 + 0.690312 * PL + 0.136267 * PL * PL end,
    },
    [826] = {
        damagepower = function(PL) return 2.976264 + 0.641066 * PL + 0.022519 * PL * PL end,
    },
    [840] = {
        buff = function(PL) return PL >= 60 and 89 or PL >= 56 and 74 or PL > 52 and 60 or PL > 42 and 45 or PL > 32 and 26 or PL >= 22 and 17 or PL > 12 and 11 or 6 end,
    },
    [859] = {
        mult1 = function() if HaveTalent(17815) then return 1.05 else return 1 end end,
        mult2 = function() if HaveTalent(17833) then return 1.1 else return ValueOfVariable("mult1") end end,
        mult3 = function() if HaveTalent(17834) then return 1.15 else return ValueOfVariable("mult2") end end,
        mult4 = function() if HaveTalent(17835) then return 1.2 else return ValueOfVariable("mult3") end end,
        mult = function() if HaveTalent(17836) then return 1.25 else return ValueOfVariable("mult4") end end,
    },
    [860] = {
        mult1 = function() if HaveTalent(29192) then return 1.06 else return 1 end end,
        mult = function() if HaveTalent(29193) then return 1.12 else return ValueOfVariable("mult1") end end,
    },
    [861] = {
        mult1 = function() if HaveTalent(29192) then return 1.15 else return 1 end end,
        mult = function() if HaveTalent(29193) then return 1.3 else return ValueOfVariable("mult1") end end,
    },
    [865] = {
        ticks = function() if HaveTalent(436895) then return 8 else return 6 end end,
    },
}

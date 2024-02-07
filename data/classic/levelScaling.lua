-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);

---@type table<string, fun(playerLevel:number):number>
_addon.spellScalingVariables = {
    ["807power"] = function(PL) return 6.568597 + 0.672028 * PL + 0.031721 * PL * PL end,
    ["808base"] = function(PL) return 5.74153 - 0.255683 * PL + 0.032656 * PL * PL end,
    ["808percombo"] = function(PL) return 8.740728 - 0.415787 * PL + 0.051973 * PL * PL end,
    ["809power"] = function(PL) return 13.828124 + 0.018012 * PL + 0.044141 * PL * PL end,
    ["809healpower"] = function(PL) return 38.258376 + 0.904195 * PL + 0.161311 * PL * PL end,
    ["810damagepower"] = function(PL) return 9.456667 + 0.635108 * PL + 0.039063 * PL * PL end,
    ["810healpower"] = function(PL) return 38.258376 + 0.904195 * PL + 0.161311 * PL * PL end,
    ["815damagepower"] = function(PL) return 9.046514 + 0.676562 * PL + 0.019349 * PL * PL end,
    ["815healpower"] = function(PL) return 38.258376 + 0.904195 * PL + 0.161311 * PL * PL end,
    ["823damagepower"] = function(PL) return 9.183105 + 0.616405 * PL + 0.028608 * PL * PL end,
    ["823healpower"] = function(PL) return 38.94983 + 0.606705 * PL + 0.16778 * PL * PL end,
    ["824damagepower"] = function(PL) return 7.583798 + 0.471881 * PL + 0.036599 * PL * PL end,
    ["824healpower"] = function(PL) return 29.8882 + 0.690312 * PL + 0.136267 * PL * PL end,
    ["826damagepower"] = function(PL) return 2.976264 + 0.641066 * PL + 0.022519 * PL * PL end,
    ["840buff"] = function(PL) return PL >= 60 and 89 or PL >= 56 and 74 or PL > 52 and 60 or PL > 42 and 45 or PL > 32 and 26 or PL >= 22 and 17 or PL > 12 and 11 or 6 end,
    ["842threat"] = function(m3, 63326m1) if HaveTalent("63326") then return m3 * - 1 + 63326m1 else return m3 end end,
    ["859mult1"] = function() if HaveTalent("17815") then return 1.05 else return 1 end end,
    ["859mult2"] = function() if HaveTalent("17833") then return 1.1 else return ValueOfVariable("mult1") end end,
    ["859mult3"] = function() if HaveTalent("17834") then return 1.15 else return ValueOfVariable("mult2") end end,
    ["859mult4"] = function() if HaveTalent("17835") then return 1.2 else return ValueOfVariable("mult3") end end,
    ["859mult"] = function() if HaveTalent("17836") then return 1.25 else return ValueOfVariable("mult4") end end,
    ["860mult1"] = function() if HaveTalent("29192") then return 1.06 else return 1 end end,
    ["860mult"] = function() if HaveTalent("29193") then return 1.12 else return ValueOfVariable("mult1") end end,
    ["861mult1"] = function() if HaveTalent("29192") then return 1.15 else return 1 end end,
    ["861mult"] = function() if HaveTalent("29193") then return 1.3 else return ValueOfVariable("mult1") end end,
}

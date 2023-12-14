-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);

---@type table<string, fun(playerLevel:number):number>
_addon.spellScalingVariables = {
    ["807power"] = function(playerLevel) return 6.568597+0.672028*playerLevel+0.031721*playerLevel*playerLevel end,
    ["808base"] = function(playerLevel) return 5.741530-0.255683*playerLevel+0.032656*playerLevel*playerLevel end,
    ["808percombo"] = function(playerLevel) return 8.740728-0.415787*playerLevel+0.051973*playerLevel*playerLevel end,
    ["809power"] = function(playerLevel) return 13.828124+0.018012*playerLevel+0.044141*playerLevel*playerLevel end,
    ["809healpower"] = function(playerLevel) return 38.258376+0.904195*playerLevel+0.161311*playerLevel*playerLevel end,
    ["810damagepower"] = function(playerLevel) return 9.456667+0.635108*playerLevel+0.039063*playerLevel*playerLevel end,
    ["810healpower"] = function(playerLevel) return 38.258376+0.904195*playerLevel+0.161311*playerLevel*playerLevel end,
    ["815damagepower"] = function(playerLevel) return 9.046514+0.676562*playerLevel+0.019349*playerLevel*playerLevel end,
    ["815healpower"] = function(playerLevel) return 38.258376+0.904195*playerLevel+0.161311*playerLevel*playerLevel end,
    ["823damagepower"] = function(playerLevel) return 9.183105+0.616405*playerLevel+0.028608*playerLevel*playerLevel end,
    ["823healpower"] = function(playerLevel) return 38.949830+0.606705*playerLevel+0.167780*playerLevel*playerLevel end,
    ["824damagepower"] = function(playerLevel) return 7.583798+0.471881*playerLevel+0.036599*playerLevel*playerLevel end,
    ["824healpower"] = function(playerLevel) return 29.888200+0.690312*playerLevel+0.136267*playerLevel*playerLevel end,
    ["826damagepower"] = function(playerLevel) return 2.976264+0.641066*playerLevel+0.022519*playerLevel*playerLevel end,
    ["840buff"] = function(playerLevel) error("Spell variable formula not implemented!") end,
}

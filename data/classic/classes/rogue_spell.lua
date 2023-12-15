-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "ROGUE" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {};

---@type SpellClassSet
_addon.spellClassSet = {
    [1] = {
    },
    [2] = {
    },
    [3] = {
    },
    [4] = {
    },
};

---@type ClassGlyphs
_addon.classGlyphs = {};

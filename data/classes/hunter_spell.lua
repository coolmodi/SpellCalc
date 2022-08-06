-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "HUNTER" then
    return;
end

_addon.spellBaseInfo = {};

_addon.spellInfo = {};

_addon.spellClassSet = {};

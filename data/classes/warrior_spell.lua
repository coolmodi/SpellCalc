-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARRIOR" then
    return;
end

_addon.spellBaseInfo = {
};

---@type SpellInfoTable
_addon.spellInfo = {
};


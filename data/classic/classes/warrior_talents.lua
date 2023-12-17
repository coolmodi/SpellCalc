-- GENERATED, DO NOT EDIT DIRECTLY!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARRIOR" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {}
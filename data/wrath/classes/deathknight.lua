---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DEATHKNIGHT" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {}

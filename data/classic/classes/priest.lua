---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

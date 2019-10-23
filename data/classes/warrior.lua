local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "WARRIOR" then
    return;
end
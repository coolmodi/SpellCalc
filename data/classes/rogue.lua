local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "ROGUE" then
    return;
end
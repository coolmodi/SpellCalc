local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "HUNTER" then
    return;
end


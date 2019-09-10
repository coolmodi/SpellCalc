local _addonName, _addon = ...;
local L = _addon:GetLocalization();

SLASH_SPELLCALC1 = "/sc";
SLASH_SPELLCALC2 = "/spellcalc";

SlashCmdList["SPELLCALC"] = function(arg)
    if arg == "debug" then
        SpellCalc_settings.debug = not SpellCalc_settings.debug;
        _addon:PrintWarn("Debug "..(SpellCalc_settings.debug and "active" or "disabled"));
        return;
    end

    _addon:PrintDebug(_addon.stats);
end;
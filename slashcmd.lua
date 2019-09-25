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

    if arg == "ub" then
        _addon:UpdateBuffs(true);
        _addon:UpdateBuffs();
        return;
    end

    if arg == "sim" then
        if SpellCalcSimStuff:IsShown() then
            SpellCalcSimStuff: Hide();
        else
            SpellCalcSimStuff:Show();
        end
        return;
    end

    if SpellCalcStatScreen:IsShown() then
        SpellCalcStatScreen:Hide();
    else
        SpellCalcStatScreen:Show();
    end
end;
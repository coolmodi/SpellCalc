local _addonName, _addon = ...;
local L = _addon:GetLocalization();
local playerName = GetUnitName("player");
local realmName = GetRealmName();

local DEFAULTSETTINGS = {
	["firstStart"] = true,
	["targetLevel"] = 0,
	["debug"] = false,
	["ttHit"] = true,
	["ttCrit"] = true,
	["ttHitChance"] = true,
	["ttPs"] = true,
	["ttLevelPenalty"] = true,
	["ttCoef"] = true,
	["ttMana"] = true,
	["ttShowBuffs"] = true,
	["version"] = GetAddOnMetadata(_addonName, "Version")
};

--- Setup SV tables, check settings and setup settings menu
function _addon:SetupSettings()
    if SpellCalc_settings == nil then
		SpellCalc_settings = DEFAULTSETTINGS;
	end
    
	for k, v in pairs(DEFAULTSETTINGS) do
		if SpellCalc_settings[k] == nil then
			_addon:PrintDebug("Creating missing setting " .. k);
			SpellCalc_settings[k] = v;
		end
	end

    local settings = _addon:GetSettingsBuilder();
	settings:Setup(SpellCalc_settings, DEFAULTSETTINGS);
	
	settings:MakeHeading("Tooltip");
	local row = settings:MakeSettingsRow(1);
	settings:MakeCheckboxOption("ttHit", "Hit values", nil, row);
	settings:MakeCheckboxOption("ttCrit", "Crit values", nil, row);
	row = settings:MakeSettingsRow(1);
	settings:MakeCheckboxOption("ttHitChance", "Hit chance");
	settings:MakeCheckboxOption("ttPs", "Per second");
	settings:MakeCheckboxOption("ttMana", "Mana efficiency");
	row = settings:MakeSettingsRow(1);
	settings:MakeCheckboxOption("ttCoef", "Coefficient", nil, row);
	settings:MakeCheckboxOption("ttLevelPenalty", "Level penalty", nil, row);
	settings:UpdateRowGroup(1);

	settings:MakeHeading("Target level");
	settings:MakeDropdown("targetLevel", "Level used", "PLACEHOLDER", 150, function()
		return {
			[0] = "Same level",
			[3] = "+3 levels"
		};
	end);
end
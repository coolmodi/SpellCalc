local _addonName, _addon = ...;
local L = _addon:GetLocalization();
local playerName = GetUnitName("player");
local realmName = GetRealmName();

local DEFAULTSETTINGS = {
	["firstStart"] = true,
	["debug"] = false,

	["ttHit"] = true,
	["ttCrit"] = true,
	["ttAverages"] = true,
	["ttCoef"] = true,
	["ttLevelPenalty"] = true,
	["ttPower"] = true,
	["ttHitChance"] = true,
	["ttHitDetail"] = true,
	["ttResist"] = true,
	["ttPerSecond"] = true,
	["ttEffCost"] = true,
	["ttPerMana"] = true,
	["ttToOom"] = true,
	["ttShowBuffs"] = false,

	["useCurrentTarget"] = true,
	["defaultTargetLvlOffset"] = 0,

	["resOverrideFire"] = 0,
	["resOverrideFrost"] = 0,
	["resOverrideShadow"] = 0,
	["resOverrideNature"] = 0,
	["resOverrideArcane"] = 0,

	["version"] = GetAddOnMetadata(_addonName, "Version")
};

--- Called before settings change, gets table parameter (settingname->value) with the to be set new values
local function BeforeSave(newSettings)
	if newSettings["resOverrideFire"] < 0 then
		newSettings["resOverrideFire"] = 0;
	end
	if newSettings["resOverrideFrost"] < 0 then
		newSettings["resOverrideFrost"] = 0;
	end
	if newSettings["resOverrideShadow"] < 0 then
		newSettings["resOverrideShadow"] = 0;
	end
	if newSettings["resOverrideNature"] < 0 then
		newSettings["resOverrideNature"] = 0;
	end
	if newSettings["resOverrideArcane"] < 0 then
		newSettings["resOverrideArcane"] = 0;
	end
end

--- Called after settings changed
local function AfterSave()
	_addon:UpdateTarget();
	_addon.lastChange = time();
end

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

	settings:SetBeforeSaveCallback(BeforeSave);
	settings:SetAfterSaveCallback(AfterSave);

	settings:MakeHeading(L["SETTINGS_HEAD_TOOLTIP"]);

	local row = settings:MakeSettingsRow(1);
	settings:MakeCheckboxOption("ttHit", L["SETTINGS_TT_HITVAL_LABEL"], nil, row);
	settings:MakeCheckboxOption("ttCrit", L["SETTINGS_TT_CRIT_LABEL"], nil, row);
	settings:MakeCheckboxOption("ttAverages", L["SETTINGS_TT_AVG_LABEL"], nil, row);
	row = settings:MakeSettingsRow(1);
	settings:MakeCheckboxOption("ttPower", L["SETTINGS_TT_POWER_LABEL"], L["SETTINGS_TT_POWER_TT"], row);
	settings:MakeCheckboxOption("ttCoef", L["SETTINGS_TT_COEF_LABEL"], nil, row);
	settings:MakeCheckboxOption("ttLevelPenalty", L["SETTINGS_TT_PENAL_LABEL"], L["SETTINGS_TT_PENAL_TT"], row);
	row = settings:MakeSettingsRow(1);
	settings:MakeCheckboxOption("ttHitChance", L["SETTINGS_TT_HITCHANCE_LABEL"], nil, row);
	settings:MakeCheckboxOption("ttHitDetail", L["SETTINGS_TT_HITCHANCE_DETAIL_LABEL"], L["SETTINGS_TT_HITCHANCE_DETAIL_TT"], row);
	settings:MakeCheckboxOption("ttResist", L["SETTINGS_TT_RESISTANCE_LABEL"], L["SETTINGS_TT_RESISTANCE_TT"], row);
	row = settings:MakeSettingsRow();
	settings:MakeCheckboxOption("ttPerSecond", L["SETTINGS_TT_PERSEC_LABEL"], nil, row);
	row = settings:MakeSettingsRow(1);
	settings:MakeCheckboxOption("ttEffCost", L["SETTINGS_TT_EFFCOST_LABEL"], L["SETTINGS_TT_EFFCOST_TT"], row);
	settings:MakeCheckboxOption("ttPerMana", L["SETTINGS_TT_PERMANA_LABEL"], nil, row);
	settings:MakeCheckboxOption("ttToOom", L["SETTINGS_TT_OOM_LABEL"], nil, row);
	row = settings:MakeSettingsRow(1);
	settings:MakeCheckboxOption("ttShowBuffs", L["SETTINGS_TT_BUFFS_LABEL"], L["SETTINGS_TT_BUFFS_TT"], row);

	settings:UpdateRowGroup(1);

	settings:MakeHeading(L["SETTINGS_HEAD_TARGET"]);

	settings:MakeSliderOption("defaultTargetLvlOffset", L["SETTINGS_TAR_DEFLEVEL_LABEL"], nil, -3, 13, 1);
	settings:MakeCheckboxOption("ttShowBuffs", L["SETTINGS_TT_USECURRENT_LABEL"], L["SETTINGS_TT_USECURRENT_TT"]);

	settings:MakeHeading(L["SETTINGS_HEAD_RESISTANCE"]);

	settings:MakeEditBoxOption("resOverrideFrost", L["SETTINGS_TT_FROST_LABEL"], 3, true, nil, nil, nil, 66);
	settings:MakeEditBoxOption("resOverrideFire", L["SETTINGS_TT_FIRE_LABEL"], 3, true, nil, nil, nil, 66);
	settings:MakeEditBoxOption("resOverrideShadow", L["SETTINGS_TT_SHADOW_LABEL"], 3, true, nil, nil, nil, 66);
	settings:MakeEditBoxOption("resOverrideNature", L["SETTINGS_TT_NATURE_LABEL"], 3, true, nil, nil, nil, 66);
	settings:MakeEditBoxOption("resOverrideArcane", L["SETTINGS_TT_ARCANE_LABEL"], 3, true, nil, nil, nil, 66);
end
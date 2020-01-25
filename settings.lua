local _addonName, _addon = ...;
local L = _addon:GetLocalization();
local classLoc, class = UnitClass("player");

local DEFAULTSETTINGS = {
	["firstStart"] = true,
	["debug"] = false,

	["useRealToOom"] = false,

	["ttHit"] = true,
	["ttCrit"] = true,
	["ttAverages"] = true,
	["ttCoef"] = true,
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

	["abShow"] = true,
	["abDirectValue"] = "hitAvg",
	["abDurationValue"] = "allTicks",
	["abSealValue"] = "hitAvg",
	["abPosition"] = 25,
	["abSize"] = 12,

	["healTargetHps"] = 0,
	["healDisregardCrit"] = false,

	["meleeFromFront"] = false,

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

	if not SpellCalc_settings.abShow then
		_addon:ClearActionBar();
	end

	_addon:ActionbarUpdateStyle();

	_addon:TriggerUpdate();
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

	settings:MakeHeading(L["SETTINGS_HEAD_CALC"]);
	settings:MakeCheckboxOption("useRealToOom", L["SETTINGS_CALC_REAL_OOM"], L["SETTINGS_CALC_REAL_OOM_TT"]);

	settings:MakeHeading(L["SETTINGS_HEAD_TARGET"]);

	settings:MakeSliderOption("defaultTargetLvlOffset", L["SETTINGS_TAR_DEFLEVEL_LABEL"], nil, -3, 13, 1);
	settings:MakeCheckboxOption("useCurrentTarget", L["SETTINGS_TT_USECURRENT_LABEL"], L["SETTINGS_TT_USECURRENT_TT"]);

	settings:MakeHeading(L["SETTINGS_HEAD_RESISTANCE"]);

	settings:MakeEditBoxOption("resOverrideFrost", L["SETTINGS_TT_FROST_LABEL"], 3, true, nil, nil, nil, 66);
	settings:MakeEditBoxOption("resOverrideFire", L["SETTINGS_TT_FIRE_LABEL"], 3, true, nil, nil, nil, 66);
	settings:MakeEditBoxOption("resOverrideShadow", L["SETTINGS_TT_SHADOW_LABEL"], 3, true, nil, nil, nil, 66);
	settings:MakeEditBoxOption("resOverrideNature", L["SETTINGS_TT_NATURE_LABEL"], 3, true, nil, nil, nil, 66);
	settings:MakeEditBoxOption("resOverrideArcane", L["SETTINGS_TT_ARCANE_LABEL"], 3, true, nil, nil, nil, 66);

	-- Tooltip settings
	local settingsTt = _addon:GetSettingsBuilder();
	settingsTt:Setup(SpellCalc_settings, DEFAULTSETTINGS, L["SETTINGS_TOOLTIP_TITLE"], nil, nil, nil, nil, nil, nil, _addonName);
	settingsTt:SetAfterSaveCallback(AfterSave);
	settingsTt:MakeHeading(L["SETTINGS_HEAD_TOOLTIP"]);
	local row = settingsTt:MakeSettingsRow(1);
	settingsTt:MakeCheckboxOption("ttHit", L["SETTINGS_TT_HITVAL_LABEL"], nil, row);
	settingsTt:MakeCheckboxOption("ttCrit", L["SETTINGS_TT_CRIT_LABEL"], nil, row);
	settingsTt:MakeCheckboxOption("ttAverages", L["SETTINGS_TT_AVG_LABEL"], nil, row);
	row = settingsTt:MakeSettingsRow(1);
	settingsTt:MakeCheckboxOption("ttPower", L["SETTINGS_TT_POWER_LABEL"], L["SETTINGS_TT_POWER_TT"], row);
	settingsTt:MakeCheckboxOption("ttCoef", L["SETTINGS_TT_COEF_LABEL"], nil, row);
	row = settingsTt:MakeSettingsRow(1);
	settingsTt:MakeCheckboxOption("ttHitChance", L["SETTINGS_TT_HITCHANCE_LABEL"], nil, row);
	settingsTt:MakeCheckboxOption("ttHitDetail", L["SETTINGS_TT_HITCHANCE_DETAIL_LABEL"], L["SETTINGS_TT_HITCHANCE_DETAIL_TT"], row);
	settingsTt:MakeCheckboxOption("ttResist", L["SETTINGS_TT_RESISTANCE_LABEL"], L["SETTINGS_TT_RESISTANCE_TT"], row);
	row = settingsTt:MakeSettingsRow();
	settingsTt:MakeCheckboxOption("ttPerSecond", L["SETTINGS_TT_PERSEC_LABEL"], nil, row);
	row = settingsTt:MakeSettingsRow(1);
	settingsTt:MakeCheckboxOption("ttEffCost", L["SETTINGS_TT_EFFCOST_LABEL"], L["SETTINGS_TT_EFFCOST_TT"], row);
	settingsTt:MakeCheckboxOption("ttPerMana", L["SETTINGS_TT_PERMANA_LABEL"], nil, row);
	settingsTt:MakeCheckboxOption("ttToOom", L["SETTINGS_TT_OOM_LABEL"], nil, row);
	row = settingsTt:MakeSettingsRow(1);
	settingsTt:MakeCheckboxOption("ttShowBuffs", L["SETTINGS_TT_BUFFS_LABEL"], L["SETTINGS_TT_BUFFS_TT"], row);
	settingsTt:UpdateRowGroup(1);

	-- Action bar settings
	local settingsAb = _addon:GetSettingsBuilder();
	settingsAb:Setup(SpellCalc_settings, DEFAULTSETTINGS, L["SETTINGS_AB_TITLE"], nil, nil, nil, nil, nil, nil, _addonName);
	settingsAb:SetAfterSaveCallback(AfterSave);
	settingsAb:MakeHeading(L["SETTINGS_AB_TITLE"]);
	settingsAb:MakeCheckboxOption("abShow", L["SETTINGS_AB_SHOW"]);
	settingsAb:MakeSliderOption("abPosition", L["SETTINGS_AB_POS"], L["SETTINGS_AB_POS_TT"], 0, 100, 1);
	settingsAb:MakeSliderOption("abSize", L["SETTINGS_AB_SIZE"], nil, 8, 20, 1);
	settingsAb:MakeHeading(L["SETTINGS_AB_HEAD"]);
	settingsAb:MakeDropdown("abDirectValue", L["SETTINGS_AB_DIRECT_VALUE"], nil, 150, function()
		return {
			hitAvg = L["SETTINGS_AB_DIRECT_VALUE_AVG"],
			critAvg = L["SETTINGS_AB_DIRECT_VALUE_CRITAVG"],
			avgAfterMitigation = L["SETTINGS_AB_DIRECT_VALUE_REALAVG"]
		}
	end, 100);
	settingsAb:MakeDropdown("abDurationValue", L["SETTINGS_AB_DURATION_VALUE"], nil, 150, function()
		return {
			perTick = L["SETTINGS_AB_DURATION_VALUE_TICK"],
			allTicks = L["SETTINGS_AB_DURATION_VALUE_ALL"],
			avgAfterMitigation = L["SETTINGS_AB_DURATION_VALUE_REALAVG"]
		}
	end, 100);
	settingsAb:MakeDropdown("abSealValue", L["SETTINGS_AB_SEAL_VALUE"], nil, 150, function()
		return {
			hitAvg = L["SETTINGS_AB_SEAL_VALUE_HIT"],
			avgTriggerHits = L["SETTINGS_AB_SEAL_VALUE_OVERDUR"],
			perSecond = L["SETTINGS_AB_SEAL_VALUE_PERSEC"]
		}
	end, 100);


	if self.ClassSettings ~= nil then
		local settingsClass = _addon:GetSettingsBuilder();
		settingsClass:Setup(SpellCalc_settings, DEFAULTSETTINGS, classLoc, nil, nil, nil, nil, nil, nil, _addonName);
		settingsClass:SetAfterSaveCallback(AfterSave);
		settingsClass:MakeHeading(classLoc);
		for k, v in pairs(self:ClassSettings(settingsClass)) do
			if SpellCalc_settings[k] == nil then
				_addon:PrintDebug("Creating missing class setting " .. k);
				SpellCalc_settings[k] = v;
			end
		end
	end

	if self.HEALING_CLASSES[class] then
		local settingsHeal = _addon:GetSettingsBuilder();
		settingsHeal:Setup(SpellCalc_settings, DEFAULTSETTINGS, L["SETTINGS_HEAL_HEAD"], nil, nil, nil, nil, nil, nil, _addonName);
		settingsHeal:SetAfterSaveCallback(AfterSave);
		settingsHeal:MakeHeading(L["SETTINGS_HEAL_HEAD"]);
		settingsHeal:MakeEditBoxOption("healTargetHps", L["SETTINGS_HEAL_TARGET_HPS"], 3, true, L["SETTINGS_HEAL_TARGET_HPS_TT"]);
		settingsHeal:MakeCheckboxOption("healDisregardCrit", L["SETTINGS_HEAL_NO_CRIT"], L["SETTINGS_HEAL_NO_CRIT_TT"]);
	end

	if self.MELEE_CLASSES[class] then
		local settingsMelee = _addon:GetSettingsBuilder();
		settingsMelee:Setup(SpellCalc_settings, DEFAULTSETTINGS, L["SETTINGS_MELEE_HEAD"], nil, nil, nil, nil, nil, nil, _addonName);
		settingsMelee:SetAfterSaveCallback(AfterSave);
		settingsMelee:MakeHeading(L["SETTINGS_MELEE_HEAD"]);
		settingsMelee:MakeCheckboxOption("meleeFromFront", L["SETTINGS_MELEE_FROM_FRONT"], L["SETTINGS_MELEE_FROM_FRONT_TT"]);
	end
end
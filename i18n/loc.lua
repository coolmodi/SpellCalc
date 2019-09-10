local _addonName, _addon = ...;
local clientlocale = GetLocale();
local localStrings = nil;

--- Add localization
-- @param locale The local ID
-- @param default If true will be used as the default localization
-- @return Table to add localization strings to
function _addon:AddLocalization(locale, default)
	if locale ~= clientlocale and (localStrings ~= nil or not default) then
		return;
	end
	
	localStrings = setmetatable({}, {__index=function(self, key)
		rawset(self, key, key);
		print(_addonName .. ": Missing translation for: " .. key);
		return key;
	end});
	
	return localStrings;
end

--- Get localization table
-- @return Table containing localizations
function _addon:GetLocalization()
	return localStrings;
end
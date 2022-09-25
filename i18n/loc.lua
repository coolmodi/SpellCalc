---@class AddonEnv
local _addon = select(2, ...);
local clientlocale = GetLocale();
---@type table<string, string>
local localStrings = setmetatable({}, {__index=function(self, key)
    rawset(self, key, key);
    return key;
end});

--- Add localization
---@param locale string
function _addon:AddLocalization(locale)
	if locale ~= clientlocale then
		return;
	end
	return localStrings;
end

--- Get localization table
function _addon:GetLocalization()
	return localStrings;
end
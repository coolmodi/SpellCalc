---@type AddonEnv
local _addon = select(2, ...);
local clientlocale = GetLocale();
---@type table<string, string>|nil
local localStrings = nil;

--- Add localization
---@param locale string
---@param default boolean
---@return table<string, string>
function _addon:AddLocalization(locale, default)
	if locale ~= clientlocale and (localStrings ~= nil or not default) then
		return;
	end

	localStrings = setmetatable({}, {__index=function(self, key)
		rawset(self, key, key);
		return key;
	end});

	return localStrings;
end

--- Get localization table
---@return LocaleTable
function _addon:GetLocalization()
	return localStrings;
end
---@class AddonEnv
local _addon = select(2, ...);
local clientlocale = GetLocale();
---@type LocaleTable
local localStrings = setmetatable({}, {__index=function(self, key)
    rawset(self, key, key);
    return key;
end});

--- Add localization
---@param locale string
---@param default boolean
---@return LocaleTable|nil
function _addon:AddLocalization(locale, default)
	if locale ~= clientlocale and (localStrings ~= nil or not default) then
		return;
	end
	return localStrings;
end

--- Get localization table
---@return LocaleTable
function _addon:GetLocalization()
	return localStrings;
end
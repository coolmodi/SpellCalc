---@type string
local _addonName = select(1, ...);
---@class AddonEnv
local _A = select(2, ...);

local frame = CreateFrame("Frame");

---@type table<string, (fun(...:any):boolean|nil)[]>
local handlers = {};
---@type nil|(fun(...:any):nil)[]
local loadedCallbacks = {};

frame:SetScript("OnEvent", function(_, event, ...)
    if handlers[event] then
        local h = handlers[event];
        for i = #h, 1, -1 do
            if h[i](...) then
                table.remove(h, i);
                if #h == 0 then
                    frame:UnregisterEvent(event);
                end
            end
        end
    end
end);

---Register event callback.
---@param event string
---@param callback fun(...:any):boolean|nil
local function Register(event, callback)
    -- dirty fix to "disable" the addon preventing errors on unsupported classes
    -- TODO: Remove when classes are supported
    local _, class = UnitClass("player");
    if class == "WARRIOR" or class == "ROGUE" or class == "HUNTER" or class == "DEATHKNIGHT" then
        return;
    end

    handlers[event] = handlers[event] or {};
    table.insert(handlers[event], callback);
    if #handlers[event] == 1 then frame:RegisterEvent(event) end
end

---Remove event callback.
---@param event string
---@param callback fun(...:any):boolean|nil
local function Unregister(event, callback)
    if not handlers[event] then return end;
    for i, f in ipairs(handlers[event]) do
        if f == callback then
            table.remove(handlers[event], i);
            if #handlers[event] == 0 then
                frame:UnregisterEvent(event);
            end
            return;
        end
    end
end

---Add callback for when addon is loaded.
---@param callback fun(...:any):nil
local function OnAddonLoaded(callback)
    if not loadedCallbacks then return end
    table.insert(loadedCallbacks, callback);
end

Register("ADDON_LOADED", function (addonName)
    if addonName ~= _addonName then return end
    if loadedCallbacks then
        for _, f in ipairs(loadedCallbacks) do
            f();
        end
        loadedCallbacks = nil;
    end
    return true;
end);

_A.events = {
    Register = Register,
    Unregister = Unregister,
    OnAddonLoaded = OnAddonLoaded
};

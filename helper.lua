---@type string
local _addonName = select(1, ...);
---@class AddonEnv
local _A = select(2, ...);

_A.IS_CLASSIC = WOW_PROJECT_ID == WOW_PROJECT_CLASSIC;
_A.IS_WRATH = WOW_PROJECT_ID == WOW_PROJECT_WRATH_CLASSIC;

local util = {};

---Remove a single table entry.
---@param t any[] The table to remove from.
---@param entry any The entry (value) to remove.
function util.RemoveTableEntry(t, entry)
    for k, v in ipairs(t) do
        if v == entry then
            table.remove(t, k);
            return;
        end
    end
end

---Print msg to chat, replacing default color.
---@param msg string The message to print.
---@param defColor string The color to use as default given as color esc sequence.
local function PrintToChat(msg, defColor)
    msg = msg:gsub("|r", defColor);
    print(defColor .. _addonName .. ": " .. msg);
end

---Print success message (green)
---@param msg string
function util.PrintSuccess(msg)
    PrintToChat(msg, "|cFF33FF33");
end

---Print error message (red)
---@param msg string
function util.PrintError(msg)
    PrintToChat(msg, "|cFFFF3333");
end

---Print warning message (orange)
---@param msg string
function util.PrintWarn(msg)
    PrintToChat(msg, "|cFFFFAA22");
end

---Helper for printing tables.
---@param t table<any,any>
---@param d integer
---@param maxDepth integer|nil
local function PrintTable(t, d, maxDepth)
    for k, v in pairs(t) do
        if maxDepth and d > maxDepth then return end
        print(string.rep("--", d) .. " " .. k .. ": " .. tostring(v));
        if type(v) == "table" then
            PrintTable(v, d + 1);
        end
    end
end

---Print tables.
---@param t table
---@param maxDepth integer|nil
function util.PrintTable(t, maxDepth)
    PrintTable(t, 0, maxDepth);
end

---Print message or table if debug output is on
---@param o string|table<any,any>|number
function util.PrintDebug(o)
    if not SpellCalc_settings.debug then
        return;
    end
    if type(o) == "table" then
        local count = 0;
        for _ in pairs(o) do
            count = count + 1;
        end
        print(tostring(o) .. " size: " .. count);
        PrintTable(o, 1);
        return;
    end

    print(o);
end

---Calculate spell values for SoD level scaling formulas.
---@param functionKey string
---@param minValue number
---@param maxValue number|nil
function util.GetScalingForValue(functionKey, minValue, maxValue)
    if not _A.spellScalingVariables[functionKey] then error("Scaling function "..functionKey.." doesn't exist!") end
    local scalerFunction = _A.spellScalingVariables[functionKey];
    local scalingFactor = scalerFunction(UnitLevel("player"));
    return scalingFactor * (minValue / 100), scalingFactor * (maxValue / 100);
end

_A.util = util;

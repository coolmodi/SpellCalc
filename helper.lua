local _addonName, _addon = ...;

--- "Merge" tables for spell data.
-- Creates a new table. Table type entries will only be referenced!!
-- @param tableA
-- @param tableB
function _addon:SpellDataMerge(tableA, tableB)
	local table = {};
	for k,v in pairs(tableA) do
		table[k] = v;
	end
	for k,v in pairs(tableB) do
		table[k] = v;
	end
	return table;
end

--- Helper to remove a single table entry
-- @param ttable The table to remove from
-- @param entry The entry (value) to remove
function _addon:RemoveTableEntry(ttable, entry)
    for k,v in ipairs(ttable) do
        if v == entry then
            table.remove(ttable, k);
            return;
        end
    end
end

--- Print msg to chat, replacing default color
-- @param msg The message to print
-- @param defColor The color to use as default given as color esc sequence
local function PrintToChat(msg, defColor)
  msg = msg:gsub("|r", defColor);
  print(defColor .. _addonName .. ": " .. msg);
end

--- Print success message (green)
-- @param msg The message to print
function _addon:PrintSuccess(msg)
	PrintToChat(msg, "|cFF33FF33");
end

--- Print error message (red)
-- @param msg The message to print
function _addon:PrintError(msg)
	PrintToChat(msg, "|cFFFF3333");
end

--- Print warning message (orange)
-- @param msg The message to print
function _addon:PrintWarn(msg)
	PrintToChat(msg, "|cFFFFAA22");
end

--- Helper for printing tables
local function PrintDebugTable(t, depth)
	for k,v in pairs(t) do
		print(string.rep("-", depth) .. " " .. k .. ": " .. tostring(v));
		if type(v) == "table" then 
			PrintDebugTable(v, depth+1);
		end
	end
end

--- Print message or table if debug output is on
-- @param o The string or table to print
function _addon:PrintDebug(o)
	if not SpellCalc_settings.debug then
		return;
	end
	if type(o) == "table" then 
		local count = 0;
        for _ in pairs(o) do 
            count = count + 1; 
        end
		print(tostring(o) .. " size: " .. count);
		PrintDebugTable(o,1);
		return;
	end
		
	print(o);
end

local dtimers = {};
function _addon:StartDebugTimer(name)
    if not SpellCalc_settings.debug then 
        return; 
    end
    dtimers[name] = debugprofilestop();
end

function _addon:TakeDebugTime(name)
    if not SpellCalc_settings.debug or dtimers[name] == nil then 
        return; 
    end
    print(name .. " took " .. (debugprofilestop() - dtimers[name]) .. "ms");
end
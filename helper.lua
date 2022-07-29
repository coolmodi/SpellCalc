---@type string
local _addonName = select(1, ...);
---@type AddonEnv
local _addon = select(2, ...);

--- Helper to remove a single table entry
---@param ttable table @The table to remove from
---@param entry any @The entry (value) to remove
function _addon:RemoveTableEntry(ttable, entry)
    for k,v in ipairs(ttable) do
        if v == entry then
            table.remove(ttable, k);
            return;
        end
    end
end

--- Print msg to chat, replacing default color
---@param msg string @The message to print
---@param defColor string @The color to use as default given as color esc sequence
local function PrintToChat(msg, defColor)
  msg = msg:gsub("|r", defColor);
  print(defColor .. _addonName .. ": " .. msg);
end

local SHAPESHIFTS = {
	[768] = "cat",
	[5487] = "bear",
	[9634] = "bear",
	[1066] = "aquatic",
	[783] = "travel",
	[24858] = "moonkin",
    [33891] = "tree",
	[2457] = "battle",
	[71] = "defensive",
	[2458] = "berserker"
}

--- Return a string naming the shapeshift currently in, nil if no shapeshift
---@return string
function _addon:GetShapeshiftName()
	local index = GetShapeshiftForm();
	if index > 0 then
		local _, _, _, spellId = GetShapeshiftFormInfo(index);
		if SHAPESHIFTS[spellId] then
			return SHAPESHIFTS[spellId];
		end
	end
end

--- Print success message (green)
---@param msg string
function _addon:PrintSuccess(msg)
	PrintToChat(msg, "|cFF33FF33");
end

--- Print error message (red)
---@param msg string
function _addon:PrintError(msg)
	PrintToChat(msg, "|cFFFF3333");
end

--- Print warning message (orange)
---@param msg string
function _addon:PrintWarn(msg)
	PrintToChat(msg, "|cFFFFAA22");
end

--- Helper for printing tables
---@param t table
---@param depth number
function _addon:PrintTable(t, depth)
	if not depth then
		depth = 1;
	end
	for k,v in pairs(t) do
		print(string.rep("--", depth) .. " " .. k .. ": " .. tostring(v));
		if type(v) == "table" then 
			self:PrintTable(v, depth+1);
		end
	end
end

--- Print message or table if debug output is on
---@param o any
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
		self:PrintTable(o, 1);
		return;
	end
		
	print(o);
end

--[[ local HT4ID = 5188;
local NSID = 17116;
local currentCastTime = 0;
local hasNS = false;

local frame = CreateFrame("Frame");
local dstart = debugprofilestop();
local function getts()
	return debugprofilestop() - dstart;
end


frame:SetScript("OnUpdate", function(self, d)
    local spellName, _, _, castTime = GetSpellInfo(HT4ID);
    if castTime ~= currentCastTime then
        print(getts() .. ": CT change -> "..castTime);
        currentCastTime = castTime;
    end
end);

frame:SetScript("OnEvent", function(self, ev, arg)
    if ev == "UNIT_AURA" and arg == "player" then
        local nspresent = false;
        for i = 1, 40 do
            local name, _, _, _, _, _, _, _, _, spellId = UnitBuff("player", i);
            if name == nil then
                break;
            end
            if spellId == NSID then
                nspresent = true;
				break;
            end
        end
        if nspresent and not hasNS then
            hasNS = true;
            print(getts() .. ": NS applied");
        elseif not nspresent and hasNS then
            hasNS = false;
            print(getts() .. ": NS removed");
        end
    end
end);

frame:RegisterEvent("UNIT_AURA"); ]]
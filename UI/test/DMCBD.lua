---@class AddonEnv
local _addon = select(2, ...);
local stats = _addon.stats;

local TTC_LABEL = "|cFFAAAAFF";
local TTC_DEFAULT = "|cFFEEEEEE";
local CPMValues = {10, 20, 30, 40};

local function TooltipHandler(toolTipFrame)
    ---@type string
    local link = select(2, toolTipFrame:GetItem());
    if not link then return end

    local id = tonumber(string.match(link, "item:(%d+)"));
    if id and id == 19288 then
        for _, cpm in pairs(CPMValues) do
            local ppm = cpm * 0.02;
            local mp5 = (1 - math.pow(0.98, 15 / (60 / cpm))) * stats.manaRegBase * (1 - stats.fsrRegenMult.val / 100) * 5;
            toolTipFrame:AddLine(string.format("%s%d CPM: %s%.2f ppm, %.1f MP5", TTC_LABEL, cpm, TTC_DEFAULT, ppm, mp5));
        end
    end
end
GameTooltip:HookScript("OnTooltipSetItem", TooltipHandler);
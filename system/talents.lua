---@class AddonEnv
local _addon = select(2, ...);

---@type table<string, integer|nil>
local activeRelevantTalents = {};
-- ---@type TalentDataEntry[]|nil
--[[ local talentData; ]]

---@class InternalTalentData
---@field index integer
---@field name string
---@field currentRank integer
---@field addonData TalentDataRawEntry|nil

---@type table<integer, table<integer, table<integer, InternalTalentData>>>
local talentAPIData = {};
local talentDataCreated = false;

---Setup talent data.
---With wrath GetTalentInfo() changed and talents are no longer in order.
---This function gets and stores the "correct" talent index for tracked talents.
local function SetupTalentData()
    _addon.util.PrintDebug("Creating talent data.");

    talentAPIData = {};
    talentDataCreated = false;

    for tree = 1, 3 do
        local talentIndex = 1;
        local name, _, tier, column = GetTalentInfo(tree, talentIndex);

        -- Check if talent data is not yet available.
        if tree == 1 and talentIndex == 1 and name == nil then
            return;
        end

        while name do
            talentAPIData[tree] = talentAPIData[tree] or {};
            talentAPIData[tree][tier] = talentAPIData[tree][tier] or {};
            talentAPIData[tree][tier][column] = { index = talentIndex, currentRank = 0, name = name, addonData = nil };
            talentIndex = talentIndex + 1;
            name, _, tier, column = GetTalentInfo(tree, talentIndex);
        end
    end

    _addon.util.PrintDebug("Setting up " .. #_addon.talentDataRaw .. " talents");

    for _, v in ipairs(_addon.talentDataRaw) do
        assert(talentAPIData[v.tree] and talentAPIData[v.tree][v.tier] and talentAPIData[v.tree][v.tier][v.column],
            "No talent data for " .. v.tree .. " " .. v.tier .. " " .. v.column);
        talentAPIData[v.tree][v.tier][v.column].addonData = v;
    end

    talentDataCreated = true;
end

--- Update player talents.
---@param forceTalents nil|{tree:integer, tier:integer, column:integer, rank:integer}[]
local function UpdateTalents(forceTalents)
    _addon.util.PrintDebug("Updating talents");

    if not talentDataCreated then
        SetupTalentData();
        if not talentDataCreated then
            C_Timer.After(3000, UpdateTalents);
            return;
        end
    end

    for tree, treeData in ipairs(talentAPIData) do
        for tier, tierData in ipairs(treeData) do
            for column, talentData in ipairs(tierData) do
                local name, _, _, _, curRank, maxRank = GetTalentInfo(tree, talentData.index);

                if forceTalents ~= nil then
                    for _, ftal in ipairs(forceTalents) do
                        if ftal.tree == tree and ftal.tier == tier and ftal.column == column then
                            curRank = ftal.rank;
                        end
                    end
                end

                talentData.currentRank = curRank;

                _addon.util.PrintDebug(("%s %d/%d"):format(name, curRank, maxRank));

                local data = talentData.addonData;
                if data then
                    -- remove old rank if we have another rank of the talent active
                    if activeRelevantTalents[name] ~= nil and curRank ~= activeRelevantTalents[name] then
                        _addon.util.PrintDebug("Remove old talent rank " .. name .. activeRelevantTalents[name]);
                        local oldIdName = name .. activeRelevantTalents[name];
                        for k, effect in ipairs(data.effects) do
                            ---@type integer
                            local value;
                            if effect.values then
                                value = effect.values[activeRelevantTalents[name]];
                            else
                                value = effect.perPoint * activeRelevantTalents[name];
                            end
                            local useName = (k > 1) and oldIdName .. "-" .. k or oldIdName;
                            _addon:RemoveAuraEffect(useName, effect, value, -1, true);
                        end
                        activeRelevantTalents[name] = nil;
                    end

                    -- add new rank if we don't have the talent already
                    if curRank > 0 and activeRelevantTalents[name] == nil then
                        _addon.util.PrintDebug("Add talent rank " .. name .. curRank);
                        local idName = name .. curRank;
                        for k, effect in ipairs(data.effects) do
                            ---@type integer
                            local value;
                            if effect.values then
                                value = effect.values[curRank];
                            else
                                value = effect.perPoint * curRank;
                            end
                            assert(value, "Talent def for " .. idName .. " has no value!");
                            local useName = (k > 1) and idName .. "-" .. k or idName;
                            _addon:ApplyAuraEffect(useName, effect, value, -1, true);
                        end
                        activeRelevantTalents[name] = curRank;
                    end
                end
            end
        end
    end

    _addon:TriggerUpdate();
end

---Return current rank for given talent.
---@param tree integer
---@param tier integer
---@param column integer
---@return integer
function _addon:GetTalentRank(tree, tier, column)
    assert(talentAPIData[tree] and talentAPIData[tree][tier] and talentAPIData[tree][tier][column],
        "No talent data for " .. tree .. " " .. tier .. " " .. column);
    return talentAPIData[tree][tier][column].currentRank;
end

_addon.events.Register("CHARACTER_POINTS_CHANGED", function(gain) if gain <= -1 then UpdateTalents() end end);
_addon.events.Register("PLAYER_ENTERING_WORLD", function() UpdateTalents() end);
_addon.events.Register("ACTIVE_TALENT_GROUP_CHANGED", function() UpdateTalents() end);

_addon:RegisterSlashCommand("debugtalents", function()
    _addon.util.PrintWarn("Updating talents with debug output!");
    local debugSetting = SpellCalc_settings.debug;
    SpellCalc_settings.debug = true;
    SetupTalentData();
    UpdateTalents();
    SpellCalc_settings.debug = debugSetting;
end);

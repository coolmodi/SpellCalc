---@class AddonEnv
local _addon = select(2, ...);

---@type table<string, integer|nil>
local activeRelevantTalents = {};
---@type TalentDataEntry[]|nil
local talentData;

-- TODO: check if talents work as expected again? keep this system?
local function SetupTalentData()
    _addon.util.PrintDebug("Creating talent data.");

    ---@type table<integer, table<integer, table<integer, integer>>>
    local talentAPIData = {};

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
            talentAPIData[tree][tier][column] = talentIndex;
            talentIndex = talentIndex + 1;
            name, _, tier, column = GetTalentInfo(tree, talentIndex);
        end
    end

    talentData = {};

    for _, v in ipairs(_addon.talentDataRaw) do
        assert(talentAPIData[v.tree] and talentAPIData[v.tree][v.tier] and talentAPIData[v.tree][v.tier][v.column],
            "No talent data for " .. v.tree .. " " .. v.tier .. " " .. v.column);
        table.insert(talentData, {
            tree = v.tree,
            talent = talentAPIData[v.tree][v.tier][v.column],
            effects = v.effects,
        });
    end

end

--- Update player talents.
---@param forceTalents nil|{tree:integer, talent:integer, rank:integer}[]
local function UpdateTalents(forceTalents)
    _addon.util.PrintDebug("Updating talents");

    if not talentData then
        SetupTalentData();
        if not talentData then
            C_Timer.After(3000, UpdateTalents);
            return;
        end
    end

    for _, data in ipairs(talentData) do
        local name, _, _, _, curRank, maxRank = GetTalentInfo(data.tree, data.talent);

        if forceTalents ~= nil then
            for _, ftal in ipairs(forceTalents) do
                if ftal.tree == data.tree and ftal.talent == data.talent then
                    curRank = ftal.rank;
                end
            end
        end

        _addon.util.PrintDebug(("%s %d/%d"):format(name, curRank, maxRank));

        -- remove old rank if we have another rank of the talent active
        if activeRelevantTalents[name] ~= nil and curRank ~= activeRelevantTalents[name] then
            _addon.util.PrintDebug("Remove old talent rank " .. name .. activeRelevantTalents[name]);
            local oldIdName = name .. activeRelevantTalents[name];
            for k, effect in ipairs(data.effects) do
                local value;
                if effect.values then
                    value = effect.values[activeRelevantTalents[name]];
                else
                    value = effect.perPoint * activeRelevantTalents[name];
                    if effect.base ~= nil then
                        value = value + effect.base;
                    end
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
                    if effect.base ~= nil then
                        value = value + effect.base;
                    end
                end
                assert(value, "Talent def for " .. idName .. " has no value!");
                local useName = (k > 1) and idName .. "-" .. k or idName;
                _addon:ApplyAuraEffect(useName, effect, value, -1, true);
            end
            activeRelevantTalents[name] = curRank;
        end
    end

    _addon:TriggerUpdate();
end

_addon.events.Register("CHARACTER_POINTS_CHANGED", function (gain) if gain <= -1 then UpdateTalents() end end);
_addon.events.Register("PLAYER_ENTERING_WORLD", function() UpdateTalents() end);
_addon.events.Register("ACTIVE_TALENT_GROUP_CHANGED", function() UpdateTalents() end);

---@type AddonEnv
local _addon = select(2, ...);

local activeRelevantTalents = {};

--- Update player talents.
---@param forceTalents table
function _addon:UpdateTalents(forceTalents)
    self:PrintDebug("Updating talents");

    for _, data in ipairs(self.talentData) do
        local name, _, _, _, curRank, maxRank = GetTalentInfo(data.tree, data.talent);

        if forceTalents ~= nil then
            for _, ftal in ipairs(forceTalents) do
                if ftal.tree == data.tree and ftal.talent == data.talent then
                    curRank = ftal.rank;
                end
            end
        end

        self:PrintDebug(("%s %d/%d"):format(name, curRank, maxRank));

        -- remove old rank if we have another rank of the talent active
        if activeRelevantTalents[name] ~= nil and curRank ~= activeRelevantTalents[name] then
            self:PrintDebug("Remove old talent rank " .. name .. activeRelevantTalents[name]);
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
                local useName = (k > 1) and oldIdName.."-"..k or oldIdName;
                self:RemoveAuraEffect(useName, effect, value);
            end
            activeRelevantTalents[name] = nil;
        end

        -- add new rank if we don't have the talent already
        if curRank > 0 and activeRelevantTalents[name] == nil then
            self:PrintDebug("Add talent rank " .. name .. curRank);
            local idName = name .. curRank;
            for k, effect in ipairs(data.effects) do
                local value;
                if effect.values then
                    value = effect.values[curRank];
                else
                    value = effect.perPoint * curRank;
                    if effect.base ~= nil then
                        value = value + effect.base;
                    end
                end
                local useName = (k > 1) and idName.."-"..k or idName;
                self:ApplyAuraEffect(useName, effect, value);
            end
            activeRelevantTalents[name] = curRank;
        end
	end

    self:TriggerUpdate();
end
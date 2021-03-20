---@type AddonEnv
local _addon = select(2, ...);
local EFFECT_TYPE = _addon.EFFECT_TYPE;
local stats = _addon.stats;
local conditionsActive = 0;

--- Apply or remove effect for destination
---@param apply boolean
---@param value number @The effect value, negative to remove buff
---@param dest table @The destination table
---@param name string @The name of the buff
local function ApplyOrRemove(apply, value, dest, name)
    dest.val = dest.val + value;
    if apply then
        table.insert(dest.buffs, name);
    else
        _addon:RemoveTableEntry(dest.buffs, name);
    end
end

--- Apply or remove effect affecting a SpellClassSet
---@param apply boolean
---@param name string @The name of the buff
---@param value number @The effect value, negative to remove buff
---@param destTable table @The destination table
---@param setMasks number[] @The masks of class spell sets to affect
local function ApplyOrRemoveSpellSet(apply, name, value, destTable, setMasks)
    for k, setMask in ipairs(setMasks) do
        for setBit, spellSet in pairs(_addon.spellClassSet[k]) do
            if bit.band(setBit, setMask) > 0 then
                for _, spellId in ipairs(spellSet) do
                    if destTable[spellId] == nil then
                        destTable[spellId] = {val=0, buffs={}};
                    end
                    ApplyOrRemove(apply, value, destTable[spellId], name);
                end
            end
        end
    end
end

--- Apply or remove effect by mask for table with bit position as keys.
---@param apply boolean
---@param name string @The name of the buff
---@param value number @The effect value, negative to remove buff
---@param destTable table @The destination table
---@param mask number @The mask of keys to affect
local function ApplyOrRemoveByMask(apply, name, value, destTable, mask)
    -- Weapons start at 0, other stuff at 1, should always be compatible with everything this way
    local offset = destTable[0] == nil and 1 or 0;
    for bitPos in pairs(destTable) do
        if bit.band(mask, bit.lshift(1, bitPos - offset)) > 0 then
            ApplyOrRemove(apply, value, destTable[bitPos], name);
        end
    end
end

local effectAffectSpellSet = {
    [EFFECT_TYPE.SPELLMOD_PCT_EFFECT]   = stats.spellModPctEffect,
    [EFFECT_TYPE.SPELLMOD_PCT_DAMAGE]   = stats.spellModPctDamage,
    [EFFECT_TYPE.SPELLMOD_PCT_HEALING] = stats.spellModPctHealing,
    [EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE] = stats.critMods.spell,
    [EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE] = stats.hitMods.spell,
    [EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC] = stats.mageNWRProc,
    [EFFECT_TYPE.SPELLMOD_FLAT_DURATION] = stats.durationMods,
    [EFFECT_TYPE.SPELLMOD_FLAT_VALUE]   = stats.flatMods,
    [EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER] = stats.extraSp,
    [EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST] = stats.chainMultMods,
    [EFFECT_TYPE.SPELLMOD_GCD_MS]       = stats.gcdMods,
    [EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL] = stats.spellTriggerSpellEffect, -- TODO: If a spell is ever affected by more than one of those it will break!
    [EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT] = stats.critMult.spell,
}

local effectSimpleStat = {
    [EFFECT_TYPE.PCT_HEALING]           = stats.modhealingDone,
    [EFFECT_TYPE.MOD_MANA_PER_5]        = stats.mp5,
    [EFFECT_TYPE.CLEARCAST_CHANCE]      = stats.clearCastChance,
    [EFFECT_TYPE.CLEARCAST_CHANCE_DMG]  = stats.clearCastChanceDmg,
    [EFFECT_TYPE.ILLUMINATION]          = stats.illumination,
    [EFFECT_TYPE.IGNITE]                = stats.ignite,
    [EFFECT_TYPE.WL_IMP_SB]             = stats.impShadowBolt,
    [EFFECT_TYPE.EARTHFURY_RETURN]      = stats.earthfuryReturn,
    [EFFECT_TYPE.DRUID_NATURES_GRACE]   = stats.druidNaturesGrace,
}

local effectAffectMask = {
    [EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE]  = stats.schoolModPctDamage,
    [EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION] = stats.spellPen,
    [EFFECT_TYPE.SCHOOLMOD_FLAT_CRIT]   = stats.critMods.school,
    [EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE_VERSUS] = stats.targetTypeDmgMult,
    [EFFECT_TYPE.SCHOOLMOD_PCT_CRIT_DAMAGE_VERSUS] = stats.targetTypeCritDmgMult,
    [EFFECT_TYPE.SCHOOLMOD_FLAT_SPELLPOWER_VERSUS] = stats.targetTypeFlatSpell,
    [EFFECT_TYPE.WEAPONMOD_FLAT_HIT_CHANCE] = stats.hitMods.weapon,
}

local effectCustom = {
    [EFFECT_TYPE.FSR_SPIRIT_REGEN] = function(apply, name, value)
        ApplyOrRemove(apply, value, stats.fsrRegenMult, name);
        stats.manaReg = stats.baseManaReg * (stats.fsrRegenMult.val / 100);
    end,
    [EFFECT_TYPE.CONDITION_TRIGGER] = function(apply, name, value)
        conditionsActive = conditionsActive + value;
        _addon:PrintDebug("Condition change!");
        _addon:UpdateBuffs();
    end,
    [EFFECT_TYPE.JUDGEMENT_SPELL] = function(apply, name, value)
        if value > 0 then
            _addon.judgementSpell = value;
        elseif -_addon.judgementSpell == value then
            _addon.judgementSpell = nil;
        end
        _addon:PrintDebug("Set judgement spell to " .. tostring(_addon.judgementSpell));
    end,
    [EFFECT_TYPE.TRIGGER_UPDATE] = function()
        _addon:TriggerUpdate();
    end
}

--- Change buff effect value (add/remove)
---@param apply boolean @True to apply, false to remove
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectMask number|nil @The mask of affected things if applicable
---@param affectSpell number[]|nil @The affected spell set if applicable
local function ChangeBuff(apply, name, effect, value, affectMask, affectSpell)
    if apply == false then
        value = -value;
    end
    _addon:PrintDebug(("Change buff %s effect %d > %f"):format(name, effect, value));

    if affectSpell and effectAffectSpellSet[effect] then
        ApplyOrRemoveSpellSet(apply, name, value, effectAffectSpellSet[effect], affectSpell);
        return;
    end

    if effectSimpleStat[effect] then
        ApplyOrRemove(apply, value, effectSimpleStat[effect], name);
        return;
    end

    if affectMask and effectAffectMask[effect] then
        ApplyOrRemoveByMask(apply, name, value, effectAffectMask[effect], affectMask);
        return;
    end

    if effectCustom[effect] then
        effectCustom[effect](apply, name, value);
        return;
    end

    _addon:PrintError("Aura "..name.." uses unknown effect "..effect.." or invalid effect setup! Report this please.");
end

--- Apply a buff
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectMask number|nil @The mask of affected things if applicable
---@param affectSpell number[]|nil @The spells it affects, nil if no specific spell(s) affected
function _addon:ApplyBuff(name, effect, value, affectMask, affectSpell)
    ChangeBuff(true, name, effect, value, affectMask, affectSpell);
end

--- Remove a previously applied buff
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectMask number|nil @The mask of affected things if applicable
---@param affectSpell number[]|nil @The spells it affects, nil if no specific spell(s) affected
function _addon:RemoveBuff(name, effect, value, affectMask, affectSpell)
    ChangeBuff(false, name, effect, value, affectMask, affectSpell);
end

local activeRelevantBuffs = {};
local buffValueCache = {};

local scanTt = CreateFrame("GameTooltip", "SpellCalcScanTooltip", nil, "GameTooltipTemplate");
scanTt:SetOwner( WorldFrame, "ANCHOR_NONE" );
scanTt:AddFontStrings(
    scanTt:CreateFontString("$parentTextLeft1", nil, "GameTooltipText"),
    scanTt:CreateFontString("$parentTextRight1", nil, "GameTooltipText"));
local buffDesc = _G["SpellCalcScanTooltipTextLeft2"];

--- Get buff description if possible.
---@param slot number
---@return string|nil
local function GetBuffDescription(slot)
    scanTt:ClearLines();
    scanTt:SetUnitAura("player", slot, "HELPFUL");
    return buffDesc:GetText();
end

--- Apply buff effect using tooltip or hardcoded values.
---@param effectData any
---@param usedKey string
---@param name string
---@param buffSlot number|nil
---@param effectSlot number|nil
local function ApplyBuffEffect(effectData, usedKey, name, buffSlot, effectSlot)
    local value;

    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end

    if effectData.ttValue then
        local desc = GetBuffDescription(buffSlot);
        if desc then
            value = tonumber(string.match(desc, effectData.ttValue));
            buffValueCache[usedKey] = value;
        else
            -- TODO: for some reason totem buffs just don't work here,
            -- they are found as buff with correct name but setting tooltip just does nothing
            -- only if you aren't the shaman yourself
            -- all other aura like buffs seem to work
            -- Update: GBOW is aparently also a POS (now?). Hardcode values...
            _addon:PrintError("Buff " .. name .. " in slot " .. buffSlot .. " has no description!");
        end
    end

    if value == nil then
        if effectData.value then
            value = effectData.value;
        else
            _addon:PrintError("Can't resolve value for buff " .. name .. " in slot " .. buffSlot .. "! Buff will be ignored!");
            value = 0;
        end
    end

    ChangeBuff(true, name, effectData.effect, value, effectData.affectMask, effectData.affectSpell);
end

--- Remove buff effect using cached tooltip or hardcoded values.
---@param effectData any
---@param usedKey string
---@param name string
---@param effectSlot number|nil
local function RemoveBuffEffect(effectData, usedKey, name, effectSlot)
    local value;

    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end

    if buffValueCache[usedKey] then
        value = buffValueCache[usedKey];
        buffValueCache[usedKey] = nil;
    else
        value = effectData.value;
    end

    ChangeBuff(false, name, effectData.effect, value, effectData.affectMask, effectData.affectSpell);
end

--- Update player buffs
---@param clearOnly boolean
function _addon:UpdateBuffs(clearOnly)
    self:PrintDebug("Updating buffs");

    for k, v in pairs(activeRelevantBuffs) do
        activeRelevantBuffs[k] = false;
    end

    local buffsChanged = false;

    if not clearOnly then
        local i = 1;
        local name, _, count, _, _, _, _, _, _, spellId = UnitBuff("player", i);
        local usedKey;
        while name do
            if self.buffData[spellId] ~= nil or self.buffData[name] ~= nil then
                local buffdata = self.buffData[spellId];
                usedKey = spellId;
                if buffdata == nil then
                    buffdata = self.buffData[name];
                    usedKey = name;
                end

                if buffdata.condition == nil or buffdata.condition == 0 
                or bit.band(buffdata.condition, conditionsActive) == buffdata.condition then
                    if activeRelevantBuffs[usedKey] == nil then
                        self:PrintDebug("Add buff " .. name .. " (" .. usedKey .. ") slot " .. i);

                        if buffdata.effects == nil then
                            ApplyBuffEffect(buffdata, usedKey, name, i);
                        else
                            for k, effect in ipairs(buffdata.effects) do
                                ApplyBuffEffect(effect, usedKey, name, i, k);
                            end
                        end

                        buffsChanged = true;
                    end
                    activeRelevantBuffs[usedKey] = true;
                end
            end
            i = i + 1;
            name, _, count, _, _, _, _, _, _, spellId = UnitBuff("player", i);
        end
    end

    local hasMhEnch, _, _, mhEnchId, hasOhEnch, _, _, ohEnchId = GetWeaponEnchantInfo();

    if hasMhEnch and self.buffData[mhEnchId] ~= nil then
        local enchName = self.buffData[mhEnchId].name.."-MH";
        if activeRelevantBuffs[mhEnchId] == nil then
            self:PrintDebug("Add buff " .. enchName);
            ApplyBuffEffect(self.buffData[mhEnchId], mhEnchId, enchName, -1);
            buffsChanged = true;
        end
        activeRelevantBuffs[mhEnchId] = true;
    end

    if hasOhEnch and self.buffData[ohEnchId] ~= nil then
        local enchName = self.buffData[ohEnchId].name.."-OH";
        if activeRelevantBuffs[ohEnchId] == nil then
            self:PrintDebug("Add buff " .. enchName);
            ApplyBuffEffect(self.buffData[ohEnchId], ohEnchId, enchName, -2);
            buffsChanged = true;
        end
        activeRelevantBuffs[ohEnchId] = true;
    end

    for usedKeyIt, _ in pairs(activeRelevantBuffs) do
        if activeRelevantBuffs[usedKeyIt] == false then
            self:PrintDebug("Remove buff " .. usedKeyIt);
            local buffdata = self.buffData[usedKeyIt];
            local name = usedKeyIt;

            if type(name) == "number" then
                name = GetSpellInfo(name);
            end

            if buffdata.effects == nil then
                RemoveBuffEffect(buffdata, usedKeyIt, name);
            else
                for k, effect in ipairs(buffdata.effects) do
                    RemoveBuffEffect(effect, usedKeyIt, name, k)
                end
            end

            activeRelevantBuffs[usedKeyIt] = nil;
            buffsChanged = true;
        end
    end

    if buffsChanged then
        self:TriggerUpdate();
    end
end

--- Simulate having a buff.
---@param spellId number
function _addon:DebugApplyBuff(spellId)
    local buffdata = self.buffData[spellId];
    local name = GetSpellInfo(spellId);
    local usedKey = spellId;
    local usedSlot = 32;
    if buffdata == nil then
        buffdata = self.buffData[name];
        usedKey = name;
    end

    if buffdata == nil then
        self:PrintError("No data for ID "..spellId);
        return;
    end

    self:PrintWarn("Add buff " .. name .. " (" .. usedKey .. ") in slot " .. usedSlot);

    if buffdata.effects == nil then
        ApplyBuffEffect(buffdata, usedKey, name, usedSlot);
    else
        for k, effect in ipairs(buffdata.effects) do
            ApplyBuffEffect(effect, usedKey, name, usedSlot, k);
        end
    end

    self:TriggerUpdate();
end

local activeRelevantTalents = {};

--- Update talents
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
                local value = effect.perPoint * activeRelevantTalents[name];
                if effect.base ~= nil then
                    value = value + effect.base;
                end
                local useName = (k > 1) and oldIdName.."-"..k or oldIdName;
                ChangeBuff(false, useName, effect.type, value, effect.affectMask, effect.affectSpell);
            end
            activeRelevantTalents[name] = nil;
        end

        -- add new rank if we don't have the talent already
        if curRank > 0 and activeRelevantTalents[name] == nil then
            self:PrintDebug("Add talent rank " .. name .. curRank);
            local idName = name .. curRank;
            for k, effect in ipairs(data.effects) do
                local value = effect.perPoint * curRank;
                if effect.base ~= nil then
                    value = value + effect.base;
                end
                local useName = (k > 1) and idName.."-"..k or idName;
                ChangeBuff(true, useName, effect.type, value, effect.affectMask, effect.affectSpell);
            end
            activeRelevantTalents[name] = curRank;
        end
	end

    self:TriggerUpdate();
end
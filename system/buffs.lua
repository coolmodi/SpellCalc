---@type AddonEnv
local _addon = select(2, ...);

local SCHOOL = _addon.SCHOOL;
local SCHOOL_MASK = _addon.SCHOOL_MASK;
local EFFECT_TYPE = _addon.EFFECT_TYPE;

local conditionsActive = 0;

local stats = _addon.stats;

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

--- Apply or remove effect affecting schools
---@param apply boolean
---@param name string @The name of the buff
---@param value number @The effect value, negative to remove buff
---@param destTable table @The destination table
---@param schoolMask number @The mask of schools to affect
local function ApplyOrRemoveSchoolAffect(apply, name, value, destTable, schoolMask)
    if bit.band(schoolMask, SCHOOL_MASK.HOLY) > 0 then
        ApplyOrRemove(apply, value, destTable[SCHOOL.HOLY], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.FIRE) > 0 then
        ApplyOrRemove(apply, value, destTable[SCHOOL.FIRE], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.NATURE) > 0 then
        ApplyOrRemove(apply, value, destTable[SCHOOL.NATURE], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.FROST) > 0 then
        ApplyOrRemove(apply, value, destTable[SCHOOL.FROST], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.SHADOW) > 0 then
        ApplyOrRemove(apply, value, destTable[SCHOOL.SHADOW], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.ARCANE) > 0 then
        ApplyOrRemove(apply, value, destTable[SCHOOL.ARCANE], name);
    end
end

--- Apply or remove effect by mask for table with bit position as keys.
---@param apply boolean
---@param name string @The name of the buff
---@param value number @The effect value, negative to remove buff
---@param destTable table @The destination table
---@param mask number @The mask of keys to affect
local function ApplyOrRemoveByMask(apply, name, value, destTable, mask)
    for bitPos in pairs(destTable) do
        if bit.band(mask, bit.lshift(1, bitPos - 1)) > 0 then
            ApplyOrRemove(apply, value, destTable[bitPos], name);
        end
    end
end

--- Apply or remove effect affecting weapon types
---@param apply boolean
---@param name string @The name of the buff
---@param value number @The effect value, negative to remove buff
---@param destTable table @The destination table
---@param weaponMask number @The mask of weapon types to affec
local function ApplyOrRemoveWeaponAffect(apply, name, value, destTable, weaponMask)
    for typeKey in pairs(destTable) do
        if bit.band(typeKey, weaponMask) > 0 then
            ApplyOrRemove(apply, value, destTable[typeKey], name);
        end
    end
end

--- Change buff effect value (add/remove)
---@param apply boolean @True to apply, false to remove
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectSchool number|nil @The mask of schools it affects, nil if no school affected
---@param affectSpell number[]|nil @The spells it affects, nil if no specific spell(s) affected
local function ChangeBuff(apply, name, effect, value, affectSchool, affectSpell)
    if apply == false then
        value = -value;
    end
    
    _addon:PrintDebug(("Change buff %s effect %d > %f"):format(name, effect, value));
    if affectSchool then
        _addon:PrintDebug(("Affects school: %d"):format(affectSchool));
    end
    if affectSpell then
        _addon:PrintDebug("Affects spell list");
        if (type(affectSpell[1]) == "string") then
            _addon:PrintWarn("affectSpell is still used with strings for " .. name.. "! Please report this error!");
            return;
        end
    end

    if effect == EFFECT_TYPE.SPELL_MOD_PCT_EFFECT then
        if affectSpell == nil then
            _addon:PrintError("Aura "..name.." uses SPELL_MOD_PCT_EFFECT without a spell mask! Report this please.");
        end
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.spellModPctEffect, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.SPELL_MOD_PCT_DAMAGE then
        if affectSpell == nil then
            _addon:PrintError("Aura "..name.." uses SPELL_MOD_PCT_DAMAGE without a spell mask! Report this please.");
        end
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.spellModPctDamage, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE then
        if affectSchool == nil then
            _addon:PrintError("Aura "..name.." uses SCHOOL_MOD_PCT_DAMAGE without a school mask! Report this please.");
        end
        ApplyOrRemoveSchoolAffect(apply, name, value, _addon.stats.schoolModPctDamage, affectSchool);
        return;
    end

    if effect == EFFECT_TYPE.SPELL_MOD_PCT_HEALING then
        if affectSpell == nil then
            _addon:PrintError("Aura "..name.." uses SPELL_MOD_PCT_HEALING without a spell mask! Report this please.");
        end
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.spellModPctHealing, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.MOD_PCT_HEALING then
        ApplyOrRemove(apply, value, _addon.stats.modhealingDone, name);
        return;
    end

    if effect == EFFECT_TYPE.MOD_HIT_SPELL then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(apply, name, value, _addon.stats.hitMods.school, affectSchool);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.hitMods.spell, affectSpell);
        else
            ApplyOrRemove(apply, value, _addon.stats.hitBonusSpell, name);
        end
        return;
    end

    if effect == EFFECT_TYPE.MOD_CRIT then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(apply, name, value, _addon.stats.critMods.school, affectSchool);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.critMods.spell, affectSpell);
        end
        return;
    end

    if effect == EFFECT_TYPE.MP5 then
        ApplyOrRemove(apply, value, _addon.stats.mp5, name);
        return;
    end

    if effect == EFFECT_TYPE.FSR_REGEN then
        ApplyOrRemove(apply, value, _addon.stats.fsrRegenMult, name);
        _addon.stats.manaReg = _addon.stats.baseManaReg * (_addon.stats.fsrRegenMult.val/100);
        return;
    end

    if effect == EFFECT_TYPE.RESISTANCE_PEN then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(apply, name, value, _addon.stats.spellPen, affectSchool);
        end
        return;
    end

    if effect == EFFECT_TYPE.CLEARCAST_CHANCE then
        ApplyOrRemove(apply, value, _addon.stats.clearCastChance, name);
        return;
    end

    if effect == EFFECT_TYPE.CLEARCAST_CHANCE_DMG then
        ApplyOrRemove(apply, value, _addon.stats.clearCastChanceDmg, name);
        return;
    end

    if effect == EFFECT_TYPE.ILLUMINATION then
        ApplyOrRemove(apply, value, _addon.stats.illumination, name);
        return;
    end

    if effect == EFFECT_TYPE.CRIT_MULT then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(apply, name, value, _addon.stats.critMult.school, affectSchool);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.critMult.spell, affectSpell);
        end
        return;
    end

    if effect == EFFECT_TYPE.IGNITE then
        ApplyOrRemove(apply, value, _addon.stats.ignite, name);
        return;
    end

    if effect == EFFECT_TYPE.WL_IMP_SB then
        ApplyOrRemove(apply, value, _addon.stats.impShadowBolt, name);
        return;
    end

    if effect == EFFECT_TYPE.MAGE_NWR_PROC then
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.mageNWRProc, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.MOD_DURATION then
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.durationMods, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.MOD_FLAT_VALUE then
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.flatMods, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.EXTRA_SP then
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.extraSp, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.EARTHFURY_RETURN then
        ApplyOrRemove(apply, value, _addon.stats.earthfuryReturn, name);
        return;
    end

    if effect == EFFECT_TYPE.CONDITION_TRIGGER then
        conditionsActive = conditionsActive + value;
        _addon:PrintDebug("Condition change!");
        _addon:UpdateBuffs();
        return;
    end

    if effect == EFFECT_TYPE.DRUID_NATURES_GRACE then
        ApplyOrRemove(apply, value, _addon.stats.druidNaturesGrace, name);
        return;
    end

    if effect == EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST then
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.chainMultMods, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.MOD_HIT_WEAPON then
        ApplyOrRemoveWeaponAffect(apply, name, value, _addon.stats.hitMods.weapon, affectSchool)
        return;
    end

    if effect == EFFECT_TYPE.JUDGEMENT_SPELL then
        if value > 0 then
            _addon.judgementSpell = value;
        elseif -_addon.judgementSpell == value then
            _addon.judgementSpell = nil;
        end
        _addon:PrintDebug("Set judgement spell to " .. tostring(_addon.judgementSpell));
        return;
    end

    if effect == EFFECT_TYPE.SPELLMOD_GCD then
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.gcdMods, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.TRIGGER_UPDATE then
        _addon:TriggerUpdate();
        return;
    end

    if effect == EFFECT_TYPE.TRIGGER_SPELL_EFFECT then
        if affectSpell == nil then
            _addon:PrintError("Aura "..name.." uses TRIGGER_SPELL_EFFECT without a spell mask! Report this please.");
        end
        -- TODO: If a spell is ever affected by more than one of those it will break!
        ApplyOrRemoveSpellSet(apply, name, value, _addon.stats.spellTriggerSpellEffect, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.MOD_DAMAGE_DONE_VERSUS then
        ApplyOrRemoveByMask(apply, name, value, _addon.stats.targetTypeDmgMult, affectSchool);
        return;
    end

    if effect == EFFECT_TYPE.MOD_CRIT_DAMAGE_DONE_VERSUS then
        ApplyOrRemoveByMask(apply, name, value, _addon.stats.targetTypeCritDmgMult, affectSchool);
        return;
    end

    _addon:PrintError("Aura "..name.." uses unknown effect "..effect.."! Report this please.");
end

--- Apply a buff
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectSchool number|nil @The mask of schools it affects, nil if no school affected
---@param affectSpell number[]|nil @The spells it affects, nil if no specific spell(s) affected
function _addon:ApplyBuff(name, effect, value, affectSchool, affectSpell)
    ChangeBuff(true, name, effect, value, affectSchool, affectSpell);
end

--- Remove a previously applied buff
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectSchool number|nil @The mask of schools it affects, nil if no school affected
---@param affectSpell number[]|nil @The spells it affects, nil if no specific spell(s) affected
function _addon:RemoveBuff(name, effect, value, affectSchool, affectSpell)
    ChangeBuff(false, name, effect, value, affectSchool, affectSpell);
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

    ChangeBuff(true, name, effectData.effect, value, effectData.affectSchool, effectData.affectSpell);
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

    ChangeBuff(false, name, effectData.effect, value, effectData.affectSchool, effectData.affectSpell);
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
                ChangeBuff(false, useName, effect.type, value, effect.affectSchool, effect.affectSpell);
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
                ChangeBuff(true, useName, effect.type, value, effect.affectSchool, effect.affectSpell);
            end
            activeRelevantTalents[name] = curRank;
        end
	end

    self:TriggerUpdate();
end
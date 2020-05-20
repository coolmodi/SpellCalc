---@type AddonEnv
local _addon = select(2, ...);

local SCHOOL = _addon.SCHOOL;
local SCHOOL_MASK = _addon.SCHOOL_MASK;
local EFFECT_TYPE = _addon.EFFECT_TYPE;

local conditionsActive = 0;

local stats = _addon.stats;

--- Apply or remove effect for destination
---@param value number @The effect value, negative to remove buff
---@param dest table @The destination table
---@param name string @The name of the buff
---@param isMultiplicative boolean @Treat multiplicatively
local function ApplyOrRemove(value, dest, name, isMultiplicative)
    if isMultiplicative then
        if value > 0 then
            dest.val = dest.val * (1 + value/100);
        else
            dest.val = dest.val / (1 + math.abs(value)/100);
        end
    else
        dest.val = dest.val + value;
    end

    if value > 0 then
        table.insert(dest.buffs, name);
    else
        _addon:RemoveTableEntry(dest.buffs, name);
    end
end

--- Apply or remove effect affecting spells
---@param name string @The name of the buff
---@param value number @The effect value, negative to remove buff
---@param destTable table @The destination table
---@param spellList string[] @The list of spellNames to affect
---@param isMultiplicative boolean @Treat multiplicatively
local function ApplyOrRemoveSpellAffect(name, value, destTable, spellList, isMultiplicative)
    for k, spellName in ipairs(spellList) do
        if destTable[spellName] == nil then
            if isMultiplicative then
                destTable[spellName] = {val=1, buffs={}};
            else
                destTable[spellName] = {val=0, buffs={}};
            end
        end
        ApplyOrRemove(value, destTable[spellName], name, isMultiplicative);
    end
end

--- Apply or remove effect affecting schools
---@param name string @The name of the buff
---@param value number @The effect value, negative to remove buff
---@param destTable table @The destination table
---@param schoolMask number @The mask of schools to affect
---@param isMultiplicative boolean @Treat multiplicatively
local function ApplyOrRemoveSchoolAffect(name, value, destTable, schoolMask, isMultiplicative)
    if bit.band(schoolMask, SCHOOL_MASK.HOLY) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.HOLY], name, isMultiplicative);
    end
    if bit.band(schoolMask, SCHOOL_MASK.FIRE) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.FIRE], name, isMultiplicative);
    end
    if bit.band(schoolMask, SCHOOL_MASK.NATURE) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.NATURE], name, isMultiplicative);
    end
    if bit.band(schoolMask, SCHOOL_MASK.FROST) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.FROST], name, isMultiplicative);
    end
    if bit.band(schoolMask, SCHOOL_MASK.SHADOW) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.SHADOW], name, isMultiplicative);
    end
    if bit.band(schoolMask, SCHOOL_MASK.ARCANE) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.ARCANE], name, isMultiplicative);
    end
end

--- Apply or remove effect affecting weapon types
---@param name string @The name of the buff
---@param value number @The effect value, negative to remove buff
---@param destTable table @The destination table
---@param weaponMask number @The mask of weapon types to affec
---@param isMultiplicative boolean @Treat multiplicatively
local function ApplyOrRemoveWeaponAffect(name, value, destTable, weaponMask, isMultiplicative)
    for typeKey in pairs(destTable) do
        if bit.band(typeKey, weaponMask) > 0 then
            ApplyOrRemove(value, destTable[typeKey], name, isMultiplicative);
        end
    end
end

--- Change buff effect value (add/remove)
---@param apply boolean @True to apply, false to remove
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectSchool number|nil @The mask of schools it affects, nil if no school affected
---@param affectSpell string|nil @The spells it affects, nil if no specific spell(s) affected
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
    end
    
    if effect == EFFECT_TYPE.MOD_EFFECT then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(name, value, _addon.stats.effectMods.school, affectSchool, true);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellAffect(name, value, _addon.stats.effectMods.spell, affectSpell, true);
        end
        return;
    end

    if effect == EFFECT_TYPE.MOD_DMG_DONE then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(name, value, _addon.stats.dmgDoneMods.school, affectSchool, true);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellAffect(name, value, _addon.stats.dmgDoneMods.spell, affectSpell, true);
        end
        return;
    end

    if effect == EFFECT_TYPE.MOD_HEALING_DONE then
        ApplyOrRemove(value, _addon.stats.healingDoneMod, name, true);
        return;
    end

    if effect == EFFECT_TYPE.MOD_HEALING_DONE_ALL then
        ApplyOrRemove(value, _addon.stats.healingDoneModAll, name, true);
        return;
    end

    if effect == EFFECT_TYPE.MOD_HIT_SPELL then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(name, value, _addon.stats.hitMods.school, affectSchool);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellAffect(name, value, _addon.stats.hitMods.spell, affectSpell);
        else
            ApplyOrRemove(value, _addon.stats.hitBonusSpell, name);
        end
        return;
    end

    if effect == EFFECT_TYPE.MOD_CRIT then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(name, value, _addon.stats.critMods.school, affectSchool);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellAffect(name, value, _addon.stats.critMods.spell, affectSpell);
        end
        return;
    end

    if effect == EFFECT_TYPE.MP5 then
        ApplyOrRemove(value, _addon.stats.mp5, name);
        return;
    end

    if effect == EFFECT_TYPE.FSR_REGEN then
        ApplyOrRemove(value, _addon.stats.fsrRegenMult, name);
        _addon.stats.manaReg = _addon.stats.baseManaReg * (_addon.stats.fsrRegenMult.val/100);
        return;
    end

    if effect == EFFECT_TYPE.RESISTANCE_PEN then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(name, value, _addon.stats.spellPen, affectSchool);
        end
        return;
    end

    if effect == EFFECT_TYPE.CLEARCAST_CHANCE then
        ApplyOrRemove(value, _addon.stats.clearCastChance, name);
        return;
    end

    if effect == EFFECT_TYPE.CLEARCAST_CHANCE_DMG then
        ApplyOrRemove(value, _addon.stats.clearCastChanceDmg, name);
        return;
    end

    if effect == EFFECT_TYPE.ILLUMINATION then
        ApplyOrRemove(value, _addon.stats.illumination, name);
        return;
    end

    if effect == EFFECT_TYPE.CRIT_MULT then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(name, value, _addon.stats.critMult.school, affectSchool);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellAffect(name, value, _addon.stats.critMult.spell, affectSpell);
        end
        return;
    end

    if effect == EFFECT_TYPE.IGNITE then
        ApplyOrRemove(value, _addon.stats.ignite, name);
        return;
    end

    if effect == EFFECT_TYPE.WL_IMP_SB then
        ApplyOrRemove(value, _addon.stats.impShadowBolt, name);
        return;
    end

    if effect == EFFECT_TYPE.MAGE_NWR_PROC then
        ApplyOrRemoveSpellAffect(name, value, _addon.stats.mageNWRProc, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.MOD_DURATION then
        ApplyOrRemoveSpellAffect(name, value, _addon.stats.durationMods, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.MOD_FLAT_VALUE then
        ApplyOrRemoveSpellAffect(name, value, _addon.stats.flatMods, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.EXTRA_SP then
        ApplyOrRemoveSpellAffect(name, value, _addon.stats.extraSp, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.EARTHFURY_RETURN then
        ApplyOrRemove(value, _addon.stats.earthfuryReturn, name);
        return;
    end

    if effect == EFFECT_TYPE.CONDITION_TRIGGER then
        conditionsActive = conditionsActive + value;
        _addon:PrintDebug("Condition change!");
        _addon:UpdateBuffs();
        return;
    end

    if effect == EFFECT_TYPE.DRUID_NATURES_GRACE then
        ApplyOrRemove(value, _addon.stats.druidNaturesGrace, name);
        return;
    end

    if effect == EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST then
        ApplyOrRemoveSpellAffect(name, value, _addon.stats.chainMultMods, affectSpell);
        return;
    end

    if effect == EFFECT_TYPE.MOD_HIT_WEAPON then
        ApplyOrRemoveWeaponAffect(name, value, _addon.stats.hitMods.weapon, affectSchool)
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
end

--- Apply a buff
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectSchool number|nil @The mask of schools it affects, nil if no school affected
---@param affectSpell string|nil @The spells it affects, nil if no specific spell(s) affected
function _addon:ApplyBuff(name, effect, value, affectSchool, affectSpell)
    ChangeBuff(true, name, effect, value, affectSchool, affectSpell);
end

--- Remove a previously applied buff
---@param name string @The name of the buff
---@param effect number @The effect type
---@param value number @The effect value
---@param affectSchool number|nil @The mask of schools it affects, nil if no school affected
---@param affectSpell string|nil @The spells it affects, nil if no specific spell(s) affected
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

local function GetBuffDescription(slot)
    scanTt:ClearLines();
    scanTt:SetUnitAura("player", slot, "HELPFUL");
    return buffDesc:GetText();
end

local function ApplyBuffEffect(effectData, usedKey, name, buffSlot, effectSlot)
    local value = effectData.value;
    if value == nil then
        local desc = GetBuffDescription(buffSlot);
        if desc == nil then
            -- TODO: for some reason totem buffs just don't work here,
            -- they are found as buff with correct name but setting tooltip just does nothing
            -- only if you aren't the shaman yourself
            -- all other aura like buffs seem to work
            _addon:PrintError("Buff " .. name .. " in slot " .. buffSlot .. " has no description!");
            -- so it doesn't throw errors around, just ignore the effect
            value = 0;
        end
        value = tonumber(string.match(desc, effectData.ttValue));
        buffValueCache[usedKey] = value;
    end

    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end

    ChangeBuff(true, name, effectData.effect, value, effectData.affectSchool, effectData.affectSpell);
end

local function RemoveBuffEffect(effectData, usedKey, name, effectSlot)
    local value = effectData.value;
    if value == nil then
        value = buffValueCache[usedKey];
    end

    if effectSlot then
        usedKey = usedKey.."-"..effectSlot;
        name = name.."-"..effectSlot;
    end

    ChangeBuff(false, name, effectData.effect, value, effectData.affectSchool, effectData.affectSpell);
    buffValueCache[usedKey] = nil;
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
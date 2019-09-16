local _, _addon = ...;

local SCHOOL = _addon.SCHOOL;
local SCHOOL_MASK = _addon.SCHOOL_MASK;
local EFFECT_TYPE = _addon.EFFECT_TYPE;

--- Apply or remove effect for destination
-- @param value The effect value, negative to remove buff
-- @param dest The destination table
-- @param key The table key
-- @param name The name of the buff
local function ApplyOrRemove(value, dest, name)
    dest.val = dest.val + value;
    if value > 0 then
        table.insert(dest.buffs, name);
    else
        _addon:RemoveTableEntry(dest.buffs, name);
    end
end

--- Apply or remove effect affecting spells
-- @param name The name of the buff
-- @param value The effect value, negative to remove buff
-- @param destTable The destination table
-- @param spellList The list of spellNames to affect
local function ApplyOrRemoveSpellAffect(name, value, destTable, spellList)
    for k, spellName in ipairs(spellList) do
        if destTable[spellName] == nil then
            destTable[spellName] = {val=0, buffs={}};
        end
        ApplyOrRemove(value, destTable[spellName], name);
    end
end

--- Apply or remove effect affecting schools
-- @param name The name of the buff
-- @param value The effect value, negative to remove buff
-- @param destTable The destination table
-- @param schoolMask The mask of schools to affect
local function ApplyOrRemoveSchoolAffect(name, value, destTable, schoolMask)
    if bit.band(schoolMask, SCHOOL_MASK.HOLY) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.HOLY], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.FIRE) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.FIRE], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.NATURE) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.NATURE], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.FROST) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.FROST], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.SHADOW) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.SHADOW], name);
    end
    if bit.band(schoolMask, SCHOOL_MASK.ARCANE) > 0 then
        ApplyOrRemove(value, destTable[SCHOOL.ARCANE], name);
    end
end

--- Change buff effect value (add/remove)
-- @param apply True to apply, false to remove
-- @param name The name of the buff
-- @param effect The effect type
-- @param value The effect value
-- @param affectSchool The mask of schools it affects, nil if no school affected
-- @param affectSpell The spells it affects, nil if no specific spell(s) affected
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
            ApplyOrRemoveSchoolAffect(name, value, _addon.stats.effectMods.school, affectSchool);
        elseif affectSpell ~= nil then
            ApplyOrRemoveSpellAffect(name, value, _addon.stats.effectMods.spell, affectSpell);
        end
        return;
    end

    if effect == EFFECT_TYPE.MOD_DMG_DONE then
        if affectSchool ~= nil then
            ApplyOrRemoveSchoolAffect(name, value, _addon.stats.dmgDoneMods, affectSchool);
        end
        return;
    end

    if effect == EFFECT_TYPE.MOD_HEALING_DONE then
        ApplyOrRemove(value, _addon.stats.healingDoneMod, name);
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
end

--- Apply a buff
-- @param name The name of the buff
-- @param effect The effect type
-- @param value The effect value
-- @param affectSchool The mask of schools it affects, nil if no school affected
-- @param affectSpell The spells it affects, nil if no specific spell(s) affected
function _addon:ApplyBuff(name, effect, value, affectSchool, affectSpell)
    ChangeBuff(true, name, effect, value, affectSchool, affectSpell);
end

--- Remove a previously applied buff
-- @param name The name of the buff
-- @param effect The effect type
-- @param value The effect value
-- @param affectSchool The mask of schools it affects, nil if no school affected
-- @param affectSpell The spells it affects, nil if no specific spell(s) affected
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
    scanTt:SetUnitAura("player", slot, "HELPFUL");
    return buffDesc:GetText();
end

local function ApplyBuffEffect(effectData, usedKey, name, buffSlot, effectSlot)
    local value = effectData.value;
    if value == nil then
        local desc = GetBuffDescription(buffSlot);
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
function _addon:UpdateBuffs()
    _addon:PrintDebug("Updating buffs");

    for k, v in pairs(activeRelevantBuffs) do
        activeRelevantBuffs[k] = false;
    end

    local i = 1;
    local name, _, count, _, _, _, _, _, _, spellId = UnitBuff("player", i);
    local buffsChanged = false;
    local usedKey;
    while name do
        if _addon.buffData[spellId] ~= nil or _addon.buffData[name] ~= nil then
            local buffdata = _addon.buffData[spellId];
            usedKey = spellId;
            if buffdata == nil then
                buffdata = _addon.buffData[name];
                usedKey = name;
            end

            if activeRelevantBuffs[usedKey] == nil then
                _addon:PrintDebug("Add buff " .. name .. " " .. usedKey);

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
        i = i + 1;
        name, _, count, _, _, _, _, _, _, spellId = UnitBuff("player", i);
    end

    for usedKeyIt, _ in pairs(activeRelevantBuffs) do
        if activeRelevantBuffs[usedKeyIt] == false then
            _addon:PrintDebug("Remove buff " .. usedKeyIt);
            local buffdata = _addon.buffData[usedKeyIt];
            name = usedKeyIt;

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
        _addon.lastChange = time();
    end
end

local activeRelevantTalents = {};

--- Update talents
function _addon:UpdateTalents()
    _addon:PrintDebug("Updating talents");

    for _, data in ipairs(_addon.talentData) do
        local name, _, _, _, curRank, maxRank = GetTalentInfo(data.tree, data.talent);

        _addon:PrintDebug(("%s %d/%d"):format(name, curRank, maxRank));

        -- remove old rank if we have another rank of the talent active
        if activeRelevantTalents[name] ~= nil and curRank ~= activeRelevantTalents[name] then
            _addon:PrintDebug("Remove old talent rank " .. name .. activeRelevantTalents[name]);
            local oldIdName = name .. activeRelevantTalents[name];
            for k, effect in ipairs(data.effects) do
                ChangeBuff(false, oldIdName.."-"..k, effect.type, effect.perPoint*activeRelevantTalents[name], effect.affectSchool, effect.affectSpell);
            end
            activeRelevantTalents[name] = nil;
        end

        -- add new rank if we don't have the talent already
        if curRank > 0 and activeRelevantTalents[name] == nil then
            _addon:PrintDebug("Add talent rank " .. name .. curRank);
            local idName = name .. curRank;
            for k, effect in ipairs(data.effects) do
                ChangeBuff(true, idName.."-"..k, effect.type, effect.perPoint*curRank, effect.affectSchool, effect.affectSpell);
            end
            activeRelevantTalents[name] = curRank;
        end
	end

    _addon.lastChange = time();
end
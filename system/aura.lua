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
    local spellIdsDone = {};
    for k, setMask in ipairs(setMasks) do
        for setBit, spellSet in pairs(_addon.spellClassSet[k]) do
            if bit.band(setBit, setMask) > 0 then
                for _, spellId in ipairs(spellSet) do
                    if not spellIdsDone[spellId] then
                        spellIdsDone[spellId] = true;
                        if destTable[spellId] == nil then
                            destTable[spellId] = {val=0, buffs={}};
                        end
                        ApplyOrRemove(apply, value, destTable[spellId], name);
                    end
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
    [EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE] = stats.spellModFlatCritChance,
    [EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE] = stats.spellModFlatHitChance,
    [EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC] = stats.spellModMageNWR,
    [EFFECT_TYPE.SPELLMOD_FLAT_DURATION] = stats.spellModFlatDuration,
    [EFFECT_TYPE.SPELLMOD_FLAT_VALUE]   = stats.spellModFlatValue,
    [EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER] = stats.spellModFlatSpellpower,
    [EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST] = stats.spellModChainMult,
    [EFFECT_TYPE.SPELLMOD_GCD_MS]       = stats.spellModGCDms,
    [EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL] = stats.spellModAddTriggerSpell, -- TODO: If a spell is ever affected by more than one of those it will break!
    [EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT] = stats.spellModPctCritMult,
    [EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE] = stats.spellModFlatSpellScale,
    [EFFECT_TYPE.SPELLMOD_PCT_SPELL_SCALE] = stats.spellModPctSpellScale,
    [EFFECT_TYPE.SPELLMOD_CLEARCAST_CHANCE] = stats.spellModClearCastChance,
}

local effectSimpleStat = {
    [EFFECT_TYPE.PCT_HEALING]           = stats.modhealingDone,
    [EFFECT_TYPE.MOD_MANA_PER_5]        = stats.mp5,
    [EFFECT_TYPE.CLEARCAST_CHANCE_DMG]  = stats.clearCastChanceDmg,
    [EFFECT_TYPE.ILLUMINATION]          = stats.illumination,
    [EFFECT_TYPE.IGNITE]                = stats.ignite,
    [EFFECT_TYPE.WL_IMP_SB]             = stats.impShadowBolt,
    [EFFECT_TYPE.EARTHFURY_RETURN]      = stats.earthfuryReturn,
    [EFFECT_TYPE.DRUID_NATURES_GRACE]   = stats.druidNaturesGrace,
    [EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL] = stats.hitBonusSpell,
}

local effectAffectMask = {
    [EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE]  = stats.schoolModPctDamage,
    [EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION] = stats.schoolModSpellPen,
    [EFFECT_TYPE.SCHOOLMOD_FLAT_CRIT]   = stats.schoolModFlatCritChance,
    [EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE] = stats.versusModPctDamage,
    [EFFECT_TYPE.VERSUSMOD_PCT_CRIT_DAMAGE] = stats.versusModPctCritDamage,
    [EFFECT_TYPE.VERSUSMOD_FLAT_SPELLPOWER] = stats.versusModFlatSpellpower,
    [EFFECT_TYPE.WEAPONMOD_FLAT_HIT_CHANCE] = stats.weaponModFlatHitChance,
}

local DelayedUpdateTimer = CreateFrame("Frame");
DelayedUpdateTimer.timerDiff = 0;
---@type number[]
DelayedUpdateTimer.timers = {};
DelayedUpdateTimer.timerCount = 0;
do
    local function TimerUpdate(self, diff)
        self.timerDiff = self.timerDiff + diff;
        if self.timerDiff > 0.1 then
            local timers = self.timers;
            for i = self.timerCount, 1, -1 do
                timers[i] = timers[i] - self.timerDiff;
                if timers[i] <= 0 then
                    _addon:PrintDebug("A delayed update timer finished");
                    _addon:TriggerUpdate();
                    table.remove(timers, i);
                    self.timerCount = self.timerCount - 1;
                end
            end
            if self.timerCount == 0 then
                _addon:PrintDebug("No more delayed update timers");
                self:SetScript("OnUpdate", nil);
            end
            self.timerDiff = 0;
        end
    end

    --- Add delayed update trigger.
    ---@param delay number @Delay in ms
    function DelayedUpdateTimer:Add(delay)
        _addon:PrintDebug("Trigger delayed update in " .. delay .. "ms");
        table.insert(self.timers, delay/1000);
        self.timerCount = self.timerCount + 1;
        if self.timerCount == 1 then
            self:SetScript("OnUpdate", TimerUpdate);
        end
    end
end

local effectCustom = {
    [EFFECT_TYPE.FSR_SPIRIT_REGEN] = function(apply, name, value)
        ApplyOrRemove(apply, value, stats.fsrRegenMult, name);
        stats.manaRegCasting = stats.manaRegBase * (stats.fsrRegenMult.val / 100);
    end,
    [EFFECT_TYPE.CONDITION_TRIGGER] = function(apply, name, value)
        conditionsActive = conditionsActive + value;
        _addon:PrintDebug("Condition change!");
        _addon:UpdatePlayerAuras();
    end,
    [EFFECT_TYPE.JUDGEMENT_SPELL] = function(apply, name, value)
        if value > 0 then
            _addon.judgementSpell = value;
        elseif -_addon.judgementSpell == value then
            _addon.judgementSpell = nil;
        end
        _addon:PrintDebug("Set judgement spell to " .. tostring(_addon.judgementSpell));
    end,
    [EFFECT_TYPE.TRIGGER_UPDATE] = function(apply, name, value)
        _addon:TriggerUpdate();
        if value ~= 0 then
            if value < 0 then
                value = -value;
            end
            DelayedUpdateTimer:Add(value);
        end
    end
}

--- Apply or remove an aura effect.
---@param apply boolean @True to apply, false to remove
---@param name string @The name of the buff
---@param effectBase AuraEffectBase
---@param value number @The effect value
local function AuraEffectUpdate(apply, name, effectBase, value)
    if apply == false then
        value = -value;
    end
    _addon:PrintDebug(("Change buff %s effect %d > %f"):format(name, effectBase.type, value));

    if effectBase.affectSpell and effectAffectSpellSet[effectBase.type] then
        ApplyOrRemoveSpellSet(apply, name, value, effectAffectSpellSet[effectBase.type], effectBase.affectSpell);
        return;
    end

    if effectSimpleStat[effectBase.type] then
        ApplyOrRemove(apply, value, effectSimpleStat[effectBase.type], name);
        return;
    end

    if effectBase.affectMask and effectAffectMask[effectBase.type] then
        ApplyOrRemoveByMask(apply, name, value, effectAffectMask[effectBase.type], effectBase.affectMask);
        return;
    end

    if effectCustom[effectBase.type] then
        effectCustom[effectBase.type](apply, name, value);
        return;
    end

    _addon:PrintError("Aura "..name.." uses unknown effect "..effectBase.type.." or invalid effect setup! Report this please.");
end

---Get current aura condition mask.
---@return integer
function _addon:GetAuraConditions()
    return conditionsActive;
end

--- Apply an aura effect.
---@param name string @The name of the buff
---@param effectBase AuraEffectBase
---@param value number @The effect value
function _addon:ApplyAuraEffect(name, effectBase, value)
    AuraEffectUpdate(true, name, effectBase, value);
end

--- Remove a previously applied aura effect.
---@param name string @The name of the buff
---@param effectBase AuraEffectBase
---@param value number @The effect value
function _addon:RemoveAuraEffect(name, effectBase, value)
    AuraEffectUpdate(false, name, effectBase, value);
end
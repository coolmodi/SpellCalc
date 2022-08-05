---@class AddonEnv
local _addon = select(2, ...);
local EFFECT_TYPE = _addon.CONST.EFFECT_TYPE;
local stats = _addon.stats;
local toggledFlags = 0;

--- Apply or remove effect for destination
---@param apply boolean
---@param value integer The effect value, negative to remove buff
---@param dest UniformStat The destination table
---@param name string The name of the buff
local function ApplyOrRemove(apply, value, dest, name)
    dest.val = dest.val + value;
    if apply then
        table.insert(dest.buffs, name);
    else
        _addon.util.RemoveTableEntry(dest.buffs, name);
    end
end

--- Apply or remove effect affecting a SpellClassSet
---@param apply boolean
---@param name string The name of the buff
---@param value integer The effect value, negative to remove buff
---@param destTable table<integer, UniformStat> The destination table
---@param setMasks integer[] The masks of class spell sets to affect
local function ApplyOrRemoveSpellSet(apply, name, value, destTable, setMasks)
    ---@type table<integer, boolean>
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
---@param name string The name of the buff
---@param value integer The effect value, negative to remove buff
---@param destTable table<integer, UniformStat> The destination table
---@param mask integer The mask of keys to affect
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
    [EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING]   = stats.spellModPctDamageHealing,
    [EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME]   = stats.spellModPctDoTHoT,
    [EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE] = stats.spellModFlatCritChance,
    [EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE] = stats.spellModFlatHitChance,
    [EFFECT_TYPE.SPELLMOD_MAGE_NWR_PROC] = stats.spellModMageNWR,
    [EFFECT_TYPE.SPELLMOD_FLAT_DURATION] = stats.spellModFlatDuration,
    [EFFECT_TYPE.SPELLMOD_FLAT_VALUE]   = stats.spellModFlatValue,
    [EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER] = stats.spellModFlatSpellpower,
    [EFFECT_TYPE.SPELLMOD_EFFECT1_FLAT_SPELLPOWER] = stats.spellModEff1FlatSpellpower,
    [EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST] = stats.spellModChainMult,
    [EFFECT_TYPE.SPELLMOD_GCD_MS]       = stats.spellModGCDms,
    [EFFECT_TYPE.SPELLMOD_ADD_TRIGGER_SPELL] = stats.spellModAddTriggerSpell, -- TODO: If a spell is ever affected by more than one of those it will break!
    [EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT] = stats.spellModPctCritMult,
    [EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE] = stats.spellModFlatSpellScale,
    [EFFECT_TYPE.SPELLMOD_PCT_SPELL_SCALE] = stats.spellModPctSpellScale,
    [EFFECT_TYPE.SPELLMOD_CLEARCAST_CHANCE] = stats.spellModClearCastChance,
    [EFFECT_TYPE.SPELLMOD_CHARGES] = stats.spellModCharges,
    [EFFECT_TYPE.SPELLMOD_CRIT_MANARESTORE] = stats.spellModCritManaRestore,
    [EFFECT_TYPE.SPELLMOD_MANARESTORE] = stats.spellModManaRestore,
    [EFFECT_TYPE.SHAMAN_LIGHTNING_OVERLOAD] = stats.shamanLightningOverload,
    [EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT] = stats.spellModAllowDotCrit,
    [EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_HASTE] = stats.spellModAllowDotHaste,
    [EFFECT_TYPE.SPELLMOD_EXTRA_ON_CRIT] = stats.spellModExtraOnCrit,
}

local effectSimpleStat = {
    [EFFECT_TYPE.PCT_HEALING]           = stats.modhealingDone,
    [EFFECT_TYPE.MOD_MANA_PER_5]        = stats.mp5,
    [EFFECT_TYPE.CLEARCAST_CHANCE_DMG]  = stats.clearCastChanceDmg,
    [EFFECT_TYPE.CLEARCAST_CHANCE]      = stats.clearCastChance,
    [EFFECT_TYPE.ILLUMINATION]          = stats.illumination,
    [EFFECT_TYPE.IGNITE]                = stats.ignite,
    [EFFECT_TYPE.WL_IMP_SB]             = stats.impShadowBolt,
    [EFFECT_TYPE.EARTHFURY_RETURN]      = stats.earthfuryReturn,
    [EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL] = stats.hitBonusSpell,
    [EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE] = stats.hitBonus,
    [EFFECT_TYPE.GLOBAL_FLAT_MANARESTORE_AVG] = stats.castManaRestoreAvg,
    [EFFECT_TYPE.TARGET_HEALING_RECIEVED] = stats.targetHealingRecieved,
    [EFFECT_TYPE.GLOBAL_MOD_CRITICAL_HEALING] = stats.modCriticalHealing,
}

local effectAffectMask = {
    [EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE]  = stats.schoolModPctDamage,
    [EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION] = stats.schoolModSpellPen,
    [EFFECT_TYPE.SCHOOLMOD_FLAT_CRIT]   = stats.schoolModFlatCritChance,
    [EFFECT_TYPE.SCHOOLMOD_PCT_CRIT_BASE_MULT] = stats.schoolCritBaseMult,
    [EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE] = stats.versusModPctDamage,
    [EFFECT_TYPE.VERSUSMOD_PCT_CRIT_DAMAGE] = stats.versusModPctCritDamage,
    [EFFECT_TYPE.VERSUSMOD_FLAT_SPELLPOWER] = stats.versusModFlatSpellpower,
    [EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT] = stats.targetSchoolModDamageTaken,
    [EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT] = stats.targetSchoolModResistancePct,
    [EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT] = stats.targetSchoolModCritTaken,
    [EFFECT_TYPE.TARGET_SCHOOLMOD_HIT_CHANCE_FLAT] = stats.targetSchoolModHit,
}

---@type table<number, table<number, UniformStat>>
local effectAffectKey = {
    [EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT] = stats.targetMechanicModDmgTakenPct,
}

---@class DelayedUpdateTimer : WoWFrame
local DelayedUpdateTimer = CreateFrame("Frame");
DelayedUpdateTimer.timerDiff = 0;
---@type number[]
DelayedUpdateTimer.timers = {};
DelayedUpdateTimer.timerCount = 0;
do
    ---comment
    ---@param self DelayedUpdateTimer
    ---@param diff number
    local function TimerUpdate(self, diff)
        self.timerDiff = self.timerDiff + diff;
        if self.timerDiff > 0.1 then
            local timers = self.timers;
            for i = self.timerCount, 1, -1 do
                timers[i] = timers[i] - self.timerDiff;
                if timers[i] <= 0 then
                    _addon.util.PrintDebug("A delayed update timer finished");
                    _addon:TriggerUpdate();
                    table.remove(timers, i);
                    self.timerCount = self.timerCount - 1;
                end
            end
            if self.timerCount == 0 then
                _addon.util.PrintDebug("No more delayed update timers");
                self:SetScript("OnUpdate", nil);
            end
            self.timerDiff = 0;
        end
    end

    --- Add delayed update trigger.
    ---@param delay number @Delay in ms
    function DelayedUpdateTimer:Add(delay)
        _addon.util.PrintDebug("Trigger delayed update in " .. delay .. "ms");
        table.insert(self.timers, delay/1000);
        self.timerCount = self.timerCount + 1;
        if self.timerCount == 1 then
            self:SetScript("OnUpdate", TimerUpdate);
        end
    end
end

---@type table<integer, fun(apply:boolean, name:string, value:integer):nil>
local effectCustom = {
    ---@param apply boolean
    ---@param name string
    ---@param value integer
    [EFFECT_TYPE.FSR_SPIRIT_REGEN] = function(apply, name, value)
        ApplyOrRemove(apply, value, stats.fsrRegenMult, name);
        _addon:UpdateManaRegen();
    end,
    ---@param apply boolean
    ---@param name string
    ---@param value integer
    [EFFECT_TYPE.MANA_PER_5_FROM_INT] = function (apply, name, value)
        ApplyOrRemove(apply, value, stats.intToMP5Pct, name);
        _addon:UpdateManaRegen();
    end,
    ---@param apply boolean
    ---@param name string
    ---@param value integer
    [EFFECT_TYPE.JUDGEMENT_SPELL] = function(apply, name, value)
        if value > 0 then
            _addon.judgementSpell = value;
        elseif -_addon.judgementSpell == value then
            _addon.judgementSpell = nil;
        end
        _addon.util.PrintDebug("Set judgement spell to " .. tostring(_addon.judgementSpell));
    end,
    ---@param apply boolean
    ---@param name string
    ---@param value integer
    [EFFECT_TYPE.TRIGGER_UPDATE] = function(apply, name, value)
        _addon:TriggerUpdate();
        if value ~= 0 then
            if value < 0 then
                value = -value;
            end
            DelayedUpdateTimer:Add(value);
        end
    end,
    ---@param apply boolean
    ---@param name string
    ---@param value integer
    [EFFECT_TYPE.BOOLEAN_BITFLAG_SET] = function(apply, name, value)
        value = math.floor(math.abs(value));
        if apply then
            toggledFlags = bit.bor(toggledFlags, value);
        else
            toggledFlags = bit.band(toggledFlags, bit.bnot(value));
        end
        _addon:TriggerUpdate();
    end,
}

--- Apply or remove an aura effect.
---@param apply boolean True to apply, false to remove
---@param name string The name of the buff
---@param effectBase AuraEffectBase
---@param value integer The effect value
local function AuraEffectUpdate(apply, name, effectBase, value)
    if apply == false then
        value = -value;
    end
    _addon.util.PrintDebug(("Change buff %s effect %d > %f"):format(name, effectBase.type, value));

    if effectBase.affectSpell and effectAffectSpellSet[effectBase.type] then
        ApplyOrRemoveSpellSet(apply, name, value, effectAffectSpellSet[effectBase.type], effectBase.affectSpell);
        return;
    end

    if effectSimpleStat[effectBase.type] then
        ApplyOrRemove(apply, value, effectSimpleStat[effectBase.type], name);
        return;
    end

    if effectBase.affectMask then
        if effectAffectMask[effectBase.type] then
            ApplyOrRemoveByMask(apply, name, value, effectAffectMask[effectBase.type], effectBase.affectMask);
            return;
        end
    end

    if effectCustom[effectBase.type] then
        effectCustom[effectBase.type](apply, name, value);
        return;
    end

    if effectBase.type > EFFECT_TYPE.SCRIPT_MIN_ID_DO_NOT_USE then
        _addon.scripting.HandleEffect(apply, name, value, effectBase);
        return;
    end

    if effectAffectKey[effectBase.type] then
        ApplyOrRemove(apply, value, effectAffectKey[effectBase.type][effectBase.affectMechanic], name);
        return;
    end

    error("Aura "..name.." uses unknown effect "..effectBase.type.." or invalid effect setup!");
end

---@type table<string, WeaponRestrictedAuraInfo>
local weaponRestrictedAuras = {};

---Update auras that require weapon types equipped to be active.
function _addon:UpdateWeaponRestrictedAuras()
    self.util.PrintDebug("Updating weapon type auras");
    local changes = false;

    for name, wrai in pairs(weaponRestrictedAuras) do
        if wrai.state == 1 then
            wrai.state = -1;
        end

        if not wrai.remove and _addon:IsWeaponTypeMaskEquipped(wrai.effectBase.neededWeaponMask, "mainhand") then
            if wrai.state == 0 then
                AuraEffectUpdate(true, name, wrai.effectBase, wrai.value);
                changes = true;
            end
            wrai.state = 1;
        end

        if wrai.state == -1 then
            AuraEffectUpdate(false, name, wrai.effectBase, wrai.value);
            wrai.state = 0;
            changes = true;
        end
    end

    if changes then
        self:TriggerUpdate();
    end
end

--- Apply or remove an aura effect requiring a weapon type equipped.
---@param apply boolean @True to apply, false to remove
---@param name string @The name of the buff
---@param effectBase AuraEffectBase
---@param value integer The effect value
local function WeaponAuraUpdate(apply, name, effectBase, value)
    if apply then
        _addon.util.PrintDebug("Adding weapon aura "..name);
        if weaponRestrictedAuras[name] == nil then
            ---@class WeaponRestrictedAuraInfo
            weaponRestrictedAuras[name] = {
                effectBase = effectBase,
                value = value,
                state = 0,
                remove = false
            }
        end
        _addon:UpdateWeaponRestrictedAuras();
    else
        _addon.util.PrintDebug("Removing weapon aura "..name);
        weaponRestrictedAuras[name].remove = true;
        _addon:UpdateWeaponRestrictedAuras();
        weaponRestrictedAuras[name] = nil;
    end
end

--- Apply an aura effect.
---@param name string The name of the buff
---@param effectBase AuraEffectBase
---@param value integer The effect value
function _addon:ApplyAuraEffect(name, effectBase, value)
    if effectBase.neededWeaponMask then
        WeaponAuraUpdate(true, name, effectBase, value);
        return;
    end
    AuraEffectUpdate(true, name, effectBase, value);
end

--- Remove a previously applied aura effect.
---@param name string @The name of the buff
---@param effectBase AuraEffectBase
---@param value integer The effect value
function _addon:RemoveAuraEffect(name, effectBase, value)
    if effectBase.neededWeaponMask then
        WeaponAuraUpdate(false, name, effectBase, value);
        return;
    end
    AuraEffectUpdate(false, name, effectBase, value);
end

---Check if given flag is currently active.
---@param flag integer
function _addon:IsBooleanFlagActive(flag)
    return bit.band(toggledFlags, flag) == flag;
end

function _addon:ApplyPassives()
    -- Beast Slaying (Troll Racial)
    local _, raceEn = UnitRace("player");
    if raceEn == "Troll" then
        _addon:ApplyAuraEffect(GetSpellInfo(20557), { type = EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE, affectMask = _addon.CONST.CREATURE_TYPE_MASK.BEAST }, 5);
    end

    -- Class passives
    if _addon.classPassives then
        for k, v in ipairs(_addon.classPassives) do
            local name = v.scriptKey or ("ClassPassive"..k);
            _addon:ApplyAuraEffect(name, v, v.value);
        end
    end
end
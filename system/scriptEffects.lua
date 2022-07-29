---@type AddonEnv
local _addon = select(2, ...);
local EFFECT_TYPE = _addon.EFFECT_TYPE;
---@type table<string,number|nil>
local scriptValueCache = {};
---spellId -> effectType -> scriptKey -> func
---@type table<number, table<number, table<string, EffectScript>>>
local spellScripts = {};
---@type table<string,boolean|nil>
local targetUpdateOnAuraPersonal = {};
---@type table<string,boolean|nil>
local targetUpdateOnAura = {};

---Apply or remove script affecting a SpellClassSet.
---@param apply boolean
---@param effectBase AuraEffectBase
local function ApplyOrRemoveSpellSet(apply, effectBase)
    local spellIdsDone = {};
    for k, setMask in ipairs(effectBase.affectSpell) do
        for setBit, spellSet in pairs(_addon.spellClassSet[k]) do
            if bit.band(setBit, setMask) > 0 then
                for _, spellId in ipairs(spellSet) do
                    if not spellIdsDone[spellId] then
                        spellIdsDone[spellId] = true;
                        spellScripts[spellId] = spellScripts[spellId] or {};
                        spellScripts[spellId][effectBase.type] = spellScripts[spellId][effectBase.type] or {};
                        spellScripts[spellId][effectBase.type][effectBase.scriptKey] = apply and effectBase.script or nil;
                    end
                end
            end
        end
    end
end

_addon.ScriptEffects = {};

---Handle SCRIPT_ effect types.
---@param apply boolean
---@param name string
---@param value number
---@param effectBase AuraEffectBase
function _addon.ScriptEffects.HandleEffect(apply, name, value, effectBase)
    local scriptKey = effectBase.scriptKey;
    local type = effectBase.type;

    print("Handling script effect", effectBase.scriptKey, apply)

    if not scriptKey then
        _addon:PrintError("Aura "..name.." uses SCRIPT_ effect without scriptKey! Report this please.");
        return;
    end

    if type == EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL then
        targetUpdateOnAuraPersonal[scriptKey] = apply or nil;
        return;
    end

    if type == EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA then
        targetUpdateOnAura[scriptKey] = apply or nil;
        return;
    end

    if not effectBase.script then
        _addon:PrintError("Aura "..name.." uses SCRIPT_ effect without script attached! Report this please.");
        return;
    end

    if (type == EFFECT_TYPE.SCRIPT_SPELLMOD_CRIT_CHANCE
    or type == EFFECT_TYPE.SCRIPT_SPELLMOD_DAMAGE_PCT)
    and effectBase.affectSpell then

        print("Effect handler reached", effectBase.scriptKey)

        if apply then
            scriptValueCache[scriptKey] = scriptValueCache[scriptKey] or 0;
            scriptValueCache[scriptKey] = scriptValueCache[scriptKey] + value;
        else
            scriptValueCache[scriptKey] = nil;
        end
        ApplyOrRemoveSpellSet(apply, effectBase);
        return;
    end

    _addon:PrintError("Aura "..name.." uses unknown script effect "..type.." or an incorrect effect definition! Report this please.");
end

---Get sum of all SCRIPT_ effect type scripts registered for this spell.
---@param type number The SCRIPT_ effect type.
---@param cs CalcedSpell
---@param spellId number
---@param ri SpellRankInfo
---@param eff number
---@return number|nil
function _addon.ScriptEffects.DoSpell(type, cs, spellId, ri, eff)
    print("Doing spell scripts", type, spellId)
    if spellScripts[spellId]
    and spellScripts[spellId][type] then
        print("Have scripts", type, spellId)
        local rv = 0;
        for scriptKey, func in pairs(spellScripts[spellId][type]) do
            rv = rv + func(scriptValueCache[scriptKey], cs, spellId, ri, eff);
        end
        print("Result of scripts: ", rv, type, spellId)
        return rv;
    end
    return 0;
end

---Triggers update if needed.
---@param auraName string
---@param personal boolean
function _addon.ScriptEffects.TargetAuraChanged(auraName, personal)
    if personal then
        if targetUpdateOnAuraPersonal[auraName] then _addon:TriggerUpdate() end
        return;
    end
    if targetUpdateOnAura[auraName] then _addon:TriggerUpdate() end
end
---@class AddonEnv
local _addon = select(2, ...);
local EFFECT_TYPE = _addon.CONST.EFFECT_TYPE;
---@type table<string, EffectScript>
local scripts = {};
---@type table<string,number|nil>
local scriptValueCache = {};
---spellId -> effectType -> scriptKey -> func
---@type table<number, table<number, table<string, EffectScript>>>
local spellScripts = {};
---@type table<string, number|nil>
local targetUpdateOnAuraPersonal = {};
---@type table<string, number|nil>
local targetUpdateOnAura = {};

---Apply or remove script affecting a SpellClassSet.
---@param apply boolean
---@param effectBase AuraEffectBase
---@param scriptFunc EffectScript
local function ApplyOrRemoveSpellSet(apply, effectBase, scriptFunc)
    if effectBase.affectSpell == nil then return end
    local spellIdsDone = {};
    for k, setMask in ipairs(effectBase.affectSpell) do
        for setBit, spellSet in pairs(_addon.spellClassSet[k]) do
            if bit.band(setBit, setMask) > 0 then
                for _, spellId in ipairs(spellSet) do
                    if not spellIdsDone[spellId] then
                        spellIdsDone[spellId] = true;
                        spellScripts[spellId] = spellScripts[spellId] or {};
                        spellScripts[spellId][effectBase.type] = spellScripts[spellId][effectBase.type] or {};
                        spellScripts[spellId][effectBase.type][effectBase.scriptKey] = apply and scriptFunc or nil;
                    end
                end
            end
        end
    end
end

_addon.ScriptEffects = {};

---Add script function.
---@param scriptKey string
---@param func EffectScript
function _addon.ScriptEffects.RegisterScript(scriptKey, func)
    assert(not scripts[scriptKey], "Script already defined! " .. scriptKey);
    scripts[scriptKey] = func;
end

---Load scripts.
function _addon.ScriptEffects.LoadScripts()
    if _addon.classScripts then
        for scriptKey, func in pairs(_addon.classScripts) do
            _addon.ScriptEffects.RegisterScript(scriptKey, func);
        end
    end
end

---Handle SCRIPT_ effect types.
---@param apply boolean
---@param name string
---@param value number
---@param effectBase AuraEffectBase
function _addon.ScriptEffects.HandleEffect(apply, name, value, effectBase)
    local scriptKey = effectBase.scriptKey;
    local type = effectBase.type;

    assert(scriptKey, "Aura " .. name .. " uses SCRIPT_ effect without scriptKey!");

    if type == EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL then
        if apply then
            targetUpdateOnAuraPersonal[scriptKey] = targetUpdateOnAuraPersonal[scriptKey] or 0;
            targetUpdateOnAuraPersonal[scriptKey] = targetUpdateOnAuraPersonal[scriptKey] + 1;
        else
            if not targetUpdateOnAuraPersonal[scriptKey] then return end
            targetUpdateOnAuraPersonal[scriptKey] = targetUpdateOnAuraPersonal[scriptKey] - 1;
            if targetUpdateOnAuraPersonal[scriptKey] == 0 then
                targetUpdateOnAuraPersonal[scriptKey] = nil;
            end
        end
        return;
    end

    if type == EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA then
        if apply then
            targetUpdateOnAura[scriptKey] = targetUpdateOnAura[scriptKey] or 0;
            targetUpdateOnAura[scriptKey] = targetUpdateOnAura[scriptKey] + 1;
        else
            if not targetUpdateOnAura[scriptKey] then return end
            targetUpdateOnAura[scriptKey] = targetUpdateOnAura[scriptKey] - 1;
            if targetUpdateOnAura[scriptKey] == 0 then
                targetUpdateOnAura[scriptKey] = nil;
            end
        end
        return;
    end

    if type == EFFECT_TYPE.SCRIPT_SET_VALUE then
        _addon:UpdatePlayerAuras(true);
        scriptValueCache[scriptKey] = apply and value or nil;
        _addon:UpdatePlayerAuras();
        return;
    end

    local script = scripts[scriptKey];
    assert(script,
        "Aura " .. name .. " uses SCRIPT_ effect with undefined script " .. scriptKey .. "!");

    if (type == EFFECT_TYPE.SCRIPT_SPELLMOD_CRIT_CHANCE
        or type == EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT
        or type == EFFECT_TYPE.SCRIPT_SPELLMOD_EFFECT_PRE)
        and effectBase.affectSpell then
        scriptValueCache[scriptKey] = apply and value or nil;
        ApplyOrRemoveSpellSet(apply, effectBase, script);
        return;
    end

    error("Aura " ..
        name .. " uses unhandled script effect " .. type .. " or an incorrect effect definition!");
end

---Get a value for a scriptKey.
---@param scriptKey string
---@return number|nil
function _addon.ScriptEffects.GetValue(scriptKey)
    return scriptValueCache[scriptKey] or 0;
end

---Get sum of all SCRIPT_ effect type scripts applicable for this spell.
---@param type number The SCRIPT_ effect type.
---@param cs CalcedSpell
---@param ce CalcedEffect
---@param spellId number
---@param ri SpellRankInfo
function _addon.ScriptEffects.DoSpell(type, cs, ce, spellId, ri)
    if spellScripts[spellId]
        and spellScripts[spellId][type] then
        for scriptKey, func in pairs(spellScripts[spellId][type]) do
            func(scriptValueCache[scriptKey], cs, ce, spellId, ri, type);
        end
    end
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

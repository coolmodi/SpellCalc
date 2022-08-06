---@class AddonEnv
local _addon = select(2, ...);
local EFFECT_TYPE = _addon.CONST.EFFECT_TYPE;
---@type table<string, EffectScript>
local scripts = {};
---@type table<string, AuraScript>
local auraSripts = {};
---@type table<string,integer|nil>
local scriptValueCache = {};
---@type table<string, integer|nil>
local auraValueCache = {};
---spellId -> effectType -> scriptKey -> func
---@type table<integer, table<AddonEffectType, table<string, EffectScript>>>
local spellScripts = {};
---@type table<string, number|nil>
local targetUpdateOnAuraPersonal = {};
---@type table<string, number|nil>
local targetUpdateOnAura = {};
---@type table<SpellMechanic, number|nil>
local targetUpdateOnMechanic = {};

---Apply or remove script affecting a SpellClassSet.
---@param apply boolean
---@param type AddonEffectType
---@param affectSpell integer[]
---@param scriptKey string
---@param scriptFunc EffectScript
local function ApplyOrRemoveSpellSet(apply, type, affectSpell, scriptKey, scriptFunc)
    ---@type table<integer, boolean>
    local spellIdsDone = {};
    for k, setMask in ipairs(affectSpell) do
        for setBit, spellSet in pairs(_addon.spellClassSet[k]) do
            if bit.band(setBit, setMask) > 0 then
                for _, spellId in ipairs(spellSet) do
                    if not spellIdsDone[spellId] then
                        spellIdsDone[spellId] = true;
                        spellScripts[spellId] = spellScripts[spellId] or {};
                        spellScripts[spellId][type] = spellScripts[spellId][type] or {};
                        spellScripts[spellId][type][scriptKey] = apply and scriptFunc or nil;
                    end
                end
            end
        end
    end
end

local scripting = {};

---Add script function.
---@param scriptKey string
---@param func EffectScript
function scripting.RegisterScript(scriptKey, func)
    assert(not scripts[scriptKey], "Script already defined! " .. scriptKey);
    scripts[scriptKey] = func;
end

---Add aura script function.
---@param scriptKey string
---@param func AuraScript
function scripting.RegisterAuraScript(scriptKey, func)
    assert(not auraSripts[scriptKey], "Aura script already defined! " .. scriptKey);
    auraSripts[scriptKey] = func;
end

---Handle SCRIPT_ effect types.
---@param apply boolean
---@param name string
---@param value integer
---@param effectBase AuraEffectBase
---@param auraId integer
---@param personal boolean
function scripting.HandleEffect(apply, name, value, effectBase, auraId, personal)
    local scriptKey = effectBase.scriptKey;
    local type = effectBase.type;

    if type == EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_MECHANIC then
        local m = effectBase.affectMechanic;
        assert(m, "SCRIPT_TARGET_UPDATE_ON_AURA_MECHANIC used without affectMechanic defined!");
        if apply then
            targetUpdateOnMechanic[m] = targetUpdateOnMechanic[m] or 0;
            targetUpdateOnMechanic[m] = targetUpdateOnMechanic[m] + 1;
        else
            if not targetUpdateOnMechanic[m] then return end
            targetUpdateOnMechanic[m] = targetUpdateOnMechanic[m] - 1;
            if targetUpdateOnMechanic[m] == 0 then
                targetUpdateOnMechanic[m] = nil;
            end
        end
        return;
    end

    assert(scriptKey, "Aura " .. name .. " uses SCRIPT_ effect without scriptKey!");

    if type == EFFECT_TYPE.SCRIPT_AURASCRIPT then
        local script = auraSripts[scriptKey];
        assert(script, "Aura " .. name .. " uses SCRIPT_AURASCRIPT with undefined script " .. scriptKey .. "!");
        auraValueCache[scriptKey] = script(apply, auraId, personal, type, auraValueCache[scriptKey]);
        return;
    end

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
        _addon:UpdateAurasForUnit("player", true);
        _addon:UpdateAurasForUnit("target", true);
        scriptValueCache[scriptKey] = apply and value or nil;
        _addon:UpdateAurasForUnit("player");
        _addon:UpdateAurasForUnit("target");
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
        ApplyOrRemoveSpellSet(apply, type, effectBase.affectSpell, scriptKey, script);
        return;
    end

    error("Aura " ..
        name .. " uses unhandled script effect " .. type .. " or an incorrect effect definition!");
end

---Get a value for a scriptKey.
---@param scriptKey string
function scripting.GetValue(scriptKey)
    return scriptValueCache[scriptKey] or 0;
end

---Get sum of all SCRIPT_ effect type scripts applicable for this spell.
---@param type AddonEffectType The SCRIPT_ effect type.
---@param cs CalcedSpell
---@param ce CalcedEffect|nil
---@param spellId integer
---@param si SpellInfo
---@param spellName string
function scripting.DoSpell(type, cs, ce, spellId, si, spellName)
    if spellScripts[spellId]
        and spellScripts[spellId][type] then
        for scriptKey, func in pairs(spellScripts[spellId][type]) do
            func(scriptValueCache[scriptKey], cs, ce, spellId, si, type, spellName);
        end
    end
end

---Triggers update if needed.
---@param auraName string
---@param unit "target"|"player"
---@param personal boolean|nil
function scripting.AuraChanged(auraName, unit, personal)
    if unit == "target" then
        if personal then
            if targetUpdateOnAuraPersonal[auraName] then _addon:TriggerUpdate() end
            return;
        end
        if targetUpdateOnAura[auraName] then _addon:TriggerUpdate() end
        return;
    end
end

---Triggers update if needed.
---@param mechanic SpellMechanic
---@param unit "target"|"player"
function scripting.MechanicChanged(mechanic, unit)
    if unit == "target" then
        if targetUpdateOnMechanic[mechanic] then _addon:TriggerUpdate() end
        return;
    end
end

_addon.scripting = scripting;

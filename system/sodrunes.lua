---@class AddonEnv
local _addon = select(2, ...);

local pd = _addon.util.PrintDebug;

-- spellId -> effects
---@type table<integer, UnitAuraEffect[]>
local runeSpellEffects = {};
-- spellId -> isActive
---@type table<integer, boolean|nil>
local activeRuneSpells = {};

---Clear effects from rune spell.
---@param spellId integer
local function RemoveRuneSpell(spellId)
    if activeRuneSpells[spellId] then
        pd("Clear rune spell " .. spellId);
        local effects = runeSpellEffects[spellId];
        local spellName = GetSpellInfo(spellId);
        for k, auraEffect in ipairs(effects) do
            pd("Remove effect " .. spellName .. " " .. k);
            _addon:RemoveAuraEffect(spellName .. "1", auraEffect, auraEffect.value, spellId, true);
        end
        activeRuneSpells[spellId] = nil;
    end
end

---Apply a rune spell.
---@param spellId integer
---@param effects UnitAuraEffect[]
local function ApplyRuneSpell(spellId, effects)
    pd("Apply rune spell: " .. spellId);
    local spellName = GetSpellInfo(spellId);
    activeRuneSpells[spellId] = true;
    for k, auraEffect in ipairs(effects) do
        pd("Apply effect " .. spellName .. " " .. k);
        _addon:ApplyAuraEffect(spellName .. "1", auraEffect, auraEffect.value, spellId, true);
    end
end

---Check if a rune spell is known.
---@param spellId integer
---@return boolean
local function RuneSpellIsKnown(spellId)
    local baseSpellId = FindBaseSpellByID(spellId);
    if baseSpellId and FindSpellOverrideByID(baseSpellId) == spellId then
        spellId = baseSpellId;
    end
    return IsPlayerSpell(spellId);
end

---Update all rune slots.
local function UpdateRunes()
    pd("Updating all runes");
    for spellId, effects in pairs(runeSpellEffects) do
        if RuneSpellIsKnown(spellId) then
            if not activeRuneSpells[spellId] then
                ApplyRuneSpell(spellId, effects);
            end
        else
            if activeRuneSpells[spellId] then
                RemoveRuneSpell(spellId);
            end
        end
    end
end

---Register a rune spell.
---@param spellId integer
---@param effects UnitAuraEffect[]
function _addon:DefineRuneSpell(spellId, effects)
    assert(not runeSpellEffects[spellId], "Rune spell was already defined!");
    runeSpellEffects[spellId] = effects;
end

_addon.events.Register("SPELLS_CHANGED", UpdateRunes);

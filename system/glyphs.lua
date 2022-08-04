---@class AddonEnv
local _addon = select(2, ...);

---Glyph slot -> active spellID
---@type table<number, number|nil>
local activeGlyphs = {}

---Update specific slot
---@param slot number
local function UpdateGlyphSlot(slot)
    _addon:PrintDebug("Updating glyph "..slot);
    local _, _, glyphSpellID = GetGlyphSocketInfo(slot);
    local oldGlyphId = activeGlyphs[slot];

    if oldGlyphId then
        -- No change.
        if oldGlyphId == glyphSpellID then return end

        -- Remove old effects in slot.
        local name = GetSpellInfo(oldGlyphId);
        local oldGlyph = _addon.classGlyphs[oldGlyphId];
        for k, effect in ipairs(oldGlyph) do
            _addon:RemoveAuraEffect(name.."-"..k, effect, effect.value);
        end
        activeGlyphs[slot] = nil;
    end

    local glyphData = _addon.classGlyphs[glyphSpellID];

    if glyphData then
        -- Apply new glyph effect.
        local name = GetSpellInfo(glyphSpellID);
        for k, effect in ipairs(glyphData) do
            _addon:ApplyAuraEffect(name.."-"..k, effect, effect.value);
        end
        activeGlyphs[slot] = glyphSpellID;
    end

    _addon:TriggerUpdate();
end

--- Update player glyphs.
---@param slot number|nil Only update specific slot.
function _addon:UpdateGlyphs(slot)
    if slot then
        UpdateGlyphSlot(slot);
        return;
    end

    for i=1, GetNumGlyphSockets() do
        UpdateGlyphSlot(i);
    end
end
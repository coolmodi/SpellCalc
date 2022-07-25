---@type AddonEnv
local _addon = select(2, ...);

--- Update player glyphs.
---@param slot number|nil Only update specific slot.
function _addon:UpdateGlyphs(slot)
    self:PrintDebug("Updating glyphs");
    -- TODO
end
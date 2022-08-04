---@class AddonEnv
local _addon = select(2, ...);

local activeEnchants = {
    MH = 0,
    OH = 0
};

---Get unique enchant identifier.
---@param name string
---@param id number
---@param slot string
---@return string
local function GetEnchantIdent(name, id, slot)
    return name.."-"..id.."-"..slot;
end

---Apply, remove or update enchant effect for weapon slot.
---@param slot string
---@param enchantId number|nil
---@return boolean enchantChanged
local function HandleWeaponTempEnchant(slot, enchantId)
    local enchantChanged = false;

    -- Remove currently active effect if enchant changed or is gone
    if activeEnchants[slot] > 0 and (enchantId ~= activeEnchants[slot] or enchantId == nil) then
        local ed = _addon.enchantData[activeEnchants[slot]];
        _addon:RemoveAuraEffect(GetEnchantIdent(ed.name, activeEnchants[slot], slot), ed, ed.value);
        activeEnchants[slot] = 0;
        enchantChanged = true;
        _addon:PrintDebug("Removed enchant from "..slot);
    end

    -- Apply echant effect if it isn't already active
    if enchantId and enchantId ~= activeEnchants[slot] then
        local ed = _addon.enchantData[enchantId];
        if ed then
            _addon:ApplyAuraEffect(GetEnchantIdent(ed.name, enchantId, slot), ed, ed.value);
            activeEnchants[slot] = enchantId;
            enchantChanged = true;
            _addon:PrintDebug("Applied enchant "..ed.name.." to "..slot);
        end
    end

    return enchantChanged;
end

--- Update player weapon enchants
function _addon:UpdateWeaponEnchants()
    self:PrintDebug("Updating weapon enchants");
    local _, _, _, mhEnchId, _, _, _, ohEnchId = GetWeaponEnchantInfo();
    local mhchanged = HandleWeaponTempEnchant("MH", mhEnchId);
    local ohchanged = HandleWeaponTempEnchant("OH", ohEnchId);
    if mhchanged or ohchanged then
        self:TriggerUpdate();
    end
end
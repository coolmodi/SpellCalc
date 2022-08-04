---@type string
local _addonName = select(1, ...);
---@class AddonEnv
local _A = select(2, ...);

-- dirty fix to "disable" the addon preventing errors on unsupported classes
-- TODO: Remove when classes are supported
local _, class = UnitClass("player");
if class == "WARRIOR" or class == "ROGUE" or class == "HUNTER" then
    _A.util.PrintError("Class not (yet) supported, addon won't work!");
    return;
end

local frame = CreateFrame("Frame");
local handlers = {};

-- These can fire too early causing problems. Delay until entering world.
local afterEnterWorld = {
    ACTIONBAR_SLOT_CHANGED = true,
}

function handlers.ADDON_LOADED(addonName)
    if addonName ~= _addonName then
        return;
    end
    frame:UnregisterEvent("ADDON_LOADED");
    _A:SetupSettings();
    _A.events.SetPowerUpdateActive(SpellCalc_settings.useCurrentPowerLevel);

    if _A.spellRankInfo == nil or _A.talentDataRaw == nil then
        _A.util.PrintError(_addonName .. ": No data for this class (yet)! Addon won't work!");
    end
end

function handlers.PLAYER_LOGIN()
    _A.ActionBarValues:Setup();
    _A.ScriptEffects.LoadScripts();
    _A:ApplyPassives();
end

function handlers.PLAYER_ENTERING_WORLD(isLogin, isReload)
    if isLogin or isReload then
        for k, _ in pairs(afterEnterWorld) do
            frame:RegisterEvent(k);
        end
    end
    _A:FullUpdate();
end

function handlers.UNIT_AURA(unit)
    if unit == "player" then
        _A:UpdatePlayerAuras();
        _A:UpdateWeaponEnchants();
        _A:UpdateManaRegen();
    elseif unit == "target" then
        _A.Target:UpdateAuras();
    end
end

function handlers.UNIT_STATS(unit)
    if unit ~= "player" then
        return;
    end
    _A:UpdateStats();
    _A:UpdateManaRegen();
end

function handlers.CHARACTER_POINTS_CHANGED(gain)
    if gain > -1 then
        return;
    end
    _A:UpdateTalents();
end

function handlers.ACTIVE_TALENT_GROUP_CHANGED()
    _A:UpdateTalents();
end

function handlers.SPELL_POWER_CHANGED()
    _A:UpdateSpellPower();
end

function handlers.PLAYER_DAMAGE_DONE_MODS(unit)
    if unit ~= "player" then
        return;
    end
    _A:UpdateDmgDoneMods();
end

function handlers.COMBAT_RATING_UPDATE()
    _A:CombatRatingUpdate();
end

function handlers.UPDATE_INVENTORY_DURABILITY()
    _A:UpdateItems();
end

function handlers.UNIT_INVENTORY_CHANGED(unit)
    if unit ~= "player" then
        return;
    end
    _A:UpdateItems();
    _A:UpdateWeaponRestrictedAuras();
end

function handlers.PLAYER_TARGET_CHANGED()
    _A.Target:Update();
end

function handlers.ACTIONBAR_SLOT_CHANGED(slot)
    if slot >= 1 and slot <= 120 then
        _A.ActionBarValues:SlotUpdate(slot)
    end
end

function handlers.UNIT_ATTACK_SPEED(unit)
    if unit ~= "player" then
        return;
    end
    _A:UpdateAttackSpeeds();
end

function handlers.UNIT_ATTACK(unit)
    if unit ~= "player" then
        return;
    end
    _A:UpdateWeaponAttack();
end

function handlers.UNIT_DAMAGE(unit)
    if unit ~= "player" then
        return;
    end
    _A:UpdateAttackDmg();
end

function handlers.UNIT_RANGEDDAMAGE(unit)
    if unit ~= "player" then
        return;
    end
    _A:UpdateRangedAttackDmg();
end

function handlers.UNIT_POWER_UPDATE(unit, powerType)
    if unit ~= "player" then
        return;
    end
    _A:UpdatePower(powerType);
end

function handlers.GET_ITEM_INFO_RECEIVED(itemId)
    _A:UpdateRecievedItemData(itemId);
end

function handlers.GLYPH_ADDED(slot)
    _A:UpdateGlyphs(slot)
end

function handlers.GLYPH_REMOVED(slot)
    _A:UpdateGlyphs(slot)
end

function handlers.GLYPH_UPDATED(slot)
    _A:UpdateGlyphs(slot)
end

function handlers.UNIT_ATTACK_POWER(unit)
    if unit ~= "player" then return end
    _A:UpdateAttackPower();
end

function handlers.UNIT_RANGED_ATTACK_POWER(unit)
    if unit ~= "player" then return end
    _A:UpdateAttackPower(true);
end

frame:SetScript("OnEvent", function(self, event, ...)
    handlers[event](...);
end)

for k, _ in pairs(handlers) do
    if not afterEnterWorld[k] then
        frame:RegisterEvent(k);
    end
end

--- Toggle power updates via UNIT_POWER_UPDATE
---@param active boolean
local function SetPowerUpdateActive(active)
    if active then
        frame:RegisterEvent("UNIT_POWER_UPDATE");
    else
        frame:UnregisterEvent("UNIT_POWER_UPDATE");
    end
    _A:UpdatePower();
end

_A.events = {
    SetPowerUpdateActive = SetPowerUpdateActive
};

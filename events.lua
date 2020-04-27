local _addonName, _addon = ...;
local L = _addon:GetLocalization();

local frame = CreateFrame("Frame");
local handlers = {};

function handlers.ADDON_LOADED(addonName)
    if addonName ~= _addonName then
        return;
    end
	frame:UnregisterEvent("ADDON_LOADED");
    _addon:SetupSettings();

    if _addon.spellRankInfo == nil or _addon.talentData == nil then
		_addon:PrintError(_addonName .. ": No data for this class (yet)! Addon won't work!");
	end
end

function handlers.PLAYER_ENTERING_WORLD()
    _addon:FullUpdate();
    _addon:SetupActionbars();
end

function handlers.UNIT_AURA(unit)
    if unit ~= "player" then
        return;
    end
    _addon:UpdateBuffs();
end

function handlers.UNIT_STATS(unit)
    if unit ~= "player" then
        return;
    end
    _addon:UpdateStats();
end

function handlers.CHARACTER_POINTS_CHANGED(gain)
    if gain > -1 then
        return;
    end
    _addon:UpdateTalents();
end

function handlers.SPELL_POWER_CHANGED()
    _addon:UpdateSpellPower();
end

function handlers.PLAYER_DAMAGE_DONE_MODS(unit)
    if unit ~= "player" then
        return;
    end
    _addon:UpdateDmgDoneMods();
end

function handlers.COMBAT_RATING_UPDATE()
    _addon:CombatRatingUpdate();
end

function handlers.UPDATE_INVENTORY_DURABILITY()
    _addon:UpdateItems();
end

function handlers.UNIT_INVENTORY_CHANGED(unit)
    if unit ~= "player" then
        return;
    end
    _addon:UpdateItems();
end

function handlers.PLAYER_TARGET_CHANGED()
    _addon:UpdateTarget();
end

function handlers.ACTIONBAR_SLOT_CHANGED(slot)
    _addon:ActionbarSlotUpdate(slot)
end

function handlers.UNIT_ATTACK_SPEED(unit)
    if unit ~= "player" then
        return;
    end
    _addon:UpdateAttackSpeeds();
end

function handlers.UNIT_ATTACK(unit)
    if unit ~= "player" then
        return;
    end
    _addon:UpdateWeaponAttack();
end


function handlers.UNIT_DAMAGE(unit)
    if unit ~= "player" then
        return;
    end
    _addon:UpdateAttackDmg();
end

function handlers.UNIT_RANGEDDAMAGE(unit)
    if unit ~= "player" then
        return;
    end
    _addon:UpdateRangedAttackDmg();
end

function handlers.UPDATE_SHAPESHIFT_FORM()
    _addon:ActionbarShapeShiftUpdate();
end

frame:SetScript( "OnEvent",function(self, event, ...) 
	handlers[event](...);
end)

for k,_ in pairs(handlers) do
    frame:RegisterEvent(k);
end

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

_addon.aurasPlayer[407988] = { -- Savage Roar
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.PHYSICAL,
        value = 30
    }
};

_addon.aurasPlayer[17116] = { -- Nature's Swiftness dummy
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 1500
    }
};

_addon.itemEffects[22399] = { -- Idol of Health (Dummy effect to trigger update)
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 0
    }
}

--------------------------------------------------------------------------
-- Runes
--------------------------------------------------------------------------

-- Lifebloom rune Rejuvenation GCD reduce
_addon:DefineRuneSpell(408124, {
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
        affectSpell = { 16, 0, 0, 0 },
        value = -500,
    }
});

--------------------------------------------------------------------------
-- Passives
--------------------------------------------------------------------------

---@type UnitAuraEffect[]
_addon.classPassives = {};

if _addon.IS_CLASSIC_SOD then
    -- Implement changes from https://www.wowhead.com/classic/spell=436895/s03-tuning-and-overrides-passive-druid

    -- Can do rake somewhat properly.
    -- Rake Modifies Effect #1's Value +50%: (direct)
    table.insert(_addon.classPassives, {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = { 0, 0, 1073741824 },
        value = 50
    });
    -- Rake Modifies Effect #2's Value +50%: (DoT)
    table.insert(_addon.classPassives, {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
        affectSpell = { 0, 0, 1073741824 },
        value = 50
    });

    -- Shred
    -- Modifies Effect #1's Value -25% = WEAPON_DAMAGE = the base dmg
    -- Modifies Effect #2's Value +75 = WEAPON_PERCENT_DAMAGE
    -- hackfix it :/
    -- TODO: ffs why did I not implement effects properly...
    local SHRED = GetSpellInfo(5221);
    for spellId, spellInfo in pairs(_addon.spellInfo) do
        if GetSpellInfo(spellId) == SHRED then
            spellInfo.effects[1].weaponCoef = 3;
            spellInfo.effects[1].valueBase = spellInfo.effects[1].valueBase * 0.75;
            print("Fix shred " .. spellId .. " B: " .. spellInfo.effects[1].valueBase .. " C: " .. spellInfo.effects[1].weaponCoef)
        end
    end
end

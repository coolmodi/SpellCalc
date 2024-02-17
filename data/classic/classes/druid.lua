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
    -- Rake Modifies Effect #2's Value +50%: (DoT)
    table.insert(_addon.classPassives, {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
        affectSpell = { 0, 0, 0, 1073741824 },
        value = 50
    });

    -- Rip 4s extra duration
    table.insert(_addon.classPassives, {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
        affectSpell = { 8388608 },
        value = 4
    });

    local RAKE = GetSpellInfo(1822);
    local SWIPE = GetSpellInfo(769);
    local SHRED = GetSpellInfo(5221);

    -- TODO: ffs why did I not implement effects properly...
    for spellId, spellInfo in pairs(_addon.spellInfo) do
        if GetSpellInfo(spellId) == SHRED then
            -- Shred
            -- Modifies Effect #1's Value -25% = WEAPON_DAMAGE = the base dmg
            -- Modifies Effect #2's Value +75 = WEAPON_PERCENT_DAMAGE
            -- hackfix it :/
            spellInfo.effects[1].weaponCoef = 3;
            spellInfo.effects[1].valueBase = spellInfo.effects[1].valueBase * 0.75;
        elseif GetSpellInfo(spellId) == RAKE then
            -- Rake AP coef
            spellInfo.effects[1].coefAP = 0.04;
            spellInfo.effects[2].coefAP = 0.04;
        elseif GetSpellInfo(spellId) == SWIPE then
            -- Rake AP coef
            spellInfo.effects[1].coefAP = 0.1;
        end
    end
end

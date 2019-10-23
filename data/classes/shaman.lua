local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

-- TODO: totems

local LIGHTNING_BOLT = GetSpellInfo(403);
local CHAIN_LIGHTNING = GetSpellInfo(421);
local EARTH_SHOCK = GetSpellInfo(8042);
local FLAME_SHOCK = GetSpellInfo(8050);
local FROST_SHOCK = GetSpellInfo(8056);

_addon.talentData = {
    { -- Concussion
        tree = 1,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {LIGHTNING_BOLT, CHAIN_LIGHTNING, EARTH_SHOCK, FLAME_SHOCK, FROST_SHOCK},
                perPoint = 1
            }
        }
    },
    -- TODO: Call of Flame
    { -- Elemental Focus
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CLEARCAST_CHANCE_DMG,
                perPoint = 10
            }
        }
    },
    { -- Call of Thunder
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSpell = {CHAIN_LIGHTNING, LIGHTNING_BOLT},
                perPoint = 1
            }
        }
    },
    { -- Elemental Fury
        tree = 1,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CRIT_MULT,
                affectSchool = _addon.SCHOOL_MASK.FROST + _addon.SCHOOL_MASK.FIRE + _addon.SCHOOL_MASK.NATURE,
                perPoint = 100
            }
        }
    },

    { -- Tidal Mastery
        tree = 1,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSchool = _addon.SCHOOL_MASK.NATURE,
                perPoint = 1
            }
        }
    },
    { -- Tidal Mastery
        tree = 1,
        talent = 14,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HEALING_DONE,
                perPoint = 2
            }
        }
    },
};

_addon.buffData[16166] = { -- Elemental Mastery
    effect = _addon.EFFECT_TYPE.MOD_CRIT,
    affectSpell = {LIGHTNING_BOLT, CHAIN_LIGHTNING, EARTH_SHOCK, FLAME_SHOCK, FROST_SHOCK},
    value = 100,
};

_addon.buffData[16188] = { -- Nature's Swiftness dummy
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.NATURE,
    value = 0,
};
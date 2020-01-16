local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

local MOONFIRE = GetSpellInfo(8921);
local THORNS = GetSpellInfo(782);
local STARFIRE = GetSpellInfo(2912);
local WRATH = GetSpellInfo(5176);
local REJUVENATION = GetSpellInfo(1058);
local REGROWTH = GetSpellInfo(8936);

local FEROCIOUS_BITE = GetSpellInfo(22827);
local CLAW = GetSpellInfo(1082);
local RAKE = GetSpellInfo(1822);
local MAUL = GetSpellInfo(6808);
local SWIPE = GetSpellInfo(779);

_addon.talentData = {
    { -- Improve Moonfire
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSpell = {MOONFIRE},
                perPoint = 2
            },
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {MOONFIRE},
                perPoint = 2
            }
        }
    },
    { -- Improve Thorns
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {THORNS},
                perPoint = 25
            }
        }
    },
    { -- Vengeance
        tree = 1,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CRIT_MULT,
                affectSpell = {STARFIRE, WRATH, MOONFIRE},
                perPoint = 20
            }
        }
    },
    { -- Nature's Grace
        tree = 1,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.DRUID_NATURES_GRACE,
                perPoint = 1
            }
        }
    },
    { -- Moonfury
        tree = 1,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {STARFIRE, WRATH, MOONFIRE},
                perPoint = 2
            }
        }
    },

    { -- Feral Aggression
        tree = 2,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {FEROCIOUS_BITE},
                perPoint = 3
            }
        }
    },
    { -- Savage Fury
        tree = 2,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {CLAW, RAKE, MAUL, SWIPE},
                perPoint = 10
            }
        }
    },

    { -- Reflection
        tree = 3,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_REGEN,
                perPoint = 5
            }
        }
    },
    { -- Improved Rejuvenation
        tree = 3,
        talent = 10,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {REJUVENATION},
                perPoint = 5
            }
        }
    },
    { -- Gift of Nature
        tree = 3,
        talent = 12,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HEALING_DONE,
                perPoint = 2
            }
        }
    },
    { -- Improved Regrowth
        tree = 3,
        talent = 12,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSpell = {REGROWTH},
                perPoint = 10
            }
        }
    },
};

_addon.buffData[17116] = { -- Nature's Swiftness dummy
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.NATURE,
    value = 0,
};
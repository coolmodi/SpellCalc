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


_addon.talentData = {
    { -- Improve Moonfire
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
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
    -- TODO. Nature's Grace
    { -- Improve Thorns
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

    { -- Reflection
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_REGEN,
                perPoint = 5
            }
        }
    },
    { -- Improved Rejuvenation
        tree = 1,
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
        tree = 1,
        talent = 12,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HEALING_DONE,
                perPoint = 2
            }
        }
    },
    { -- Improved Regrowth
        tree = 1,
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
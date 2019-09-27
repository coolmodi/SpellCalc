local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

local L = _addon:GetLocalization();

local CORRUPTION = GetSpellInfo(172);
local SHADOW_BOLT = GetSpellInfo(686);
local IMMOLATE = GetSpellInfo(348);
local SEARING_PAIN = GetSpellInfo(5676);
local SHADOW_BURN = GetSpellInfo(17877);
local DEATH_COIL = GetSpellInfo(6789);
local DRAIN_LIFE = GetSpellInfo(689);
local CURSE_OF_AGONY = GetSpellInfo(980);
local DRAIN_SOUL = GetSpellInfo(1120);
local SOUL_FIRE = GetSpellInfo(1571);
local CONFLAGRATE = GetSpellInfo(17962);
local CURSE_OF_DOOM = GetSpellInfo(603);
local SIPHON_LIFE = GetSpellInfo(18265);
local RAIN_OF_FIRE = GetSpellInfo(5740);
local HELLFIRE = GetSpellInfo(1949);

local CORRUPTION_GENERIC = {
    school = _addon.SCHOOL.SHADOW,
    isDuration = true,
    duration = 18,
    tickPeriod = 3,
    ttMinMax = "(%d+)",
    coef = 1/6 -- TODO: really? or like SWP always 0.2?
}

local CURSE_OF_AGONY_GENERIC = {
    school = _addon.SCHOOL.SHADOW,
    isDuration = true,
    duration = 24,
    tickPeriod = 2,
    ttMinMax = "(%d+)",
    coef = 1/12 -- TODO: really? or like SWP?
}

local DRAIN_SOUL_GENERIC = {
    school = _addon.SCHOOL.SHADOW,
    isDuration = true,
    isChannel = true,
    duration = 15,
    tickPeriod = 3,
    ttMinMax = "(%d+)",
    coef = 3/7
}

local SHADOW_BOLT_GENERIC = {
    school = _addon.SCHOOL.SHADOW,
    ttMinMax = "(%d+).-%s(%d+)",
    coef = 3/3.5
};

local SEARING_PAIN_GENERIC = {
    school = _addon.SCHOOL.FIRE,
    ttMinMax = "(%d+).-%s(%d+)",
    coef = 1.5/3.5
};

local IMMOLATE_GENERIC = {
    school = _addon.SCHOOL.FIRE,
    primary = {
        ttMinMax = "(%d+)",
        coef = 0.187,
    },
    secondary = {
        isDuration = true,
        duration = 15,
        tickPeriod = 3,
        ttMinMax = ".*%s(%d+).*%s%d",
        coef = 0.127,
    }
};

local DRAIN_LIFE_GENERIC = {
    school = _addon.SCHOOL.SHADOW,
    isDuration = true,
    isChannel = true,
    duration = 5,
    tickPeriod = 1,
    ttMinMax = "(%d+)",
    ttIsPerTick = true,
    coef = 1/7,
};

_addon.spellData = {
    [172] = _addon:SpellDataMerge(CORRUPTION_GENERIC, {level = 4, coef = 0.2, duration = 12}),
    [6222] = _addon:SpellDataMerge(CORRUPTION_GENERIC, {level = 14, coef = 0.2, duration = 15}),
    [CORRUPTION] = CORRUPTION_GENERIC,

    [686] = _addon:SpellDataMerge(SHADOW_BOLT_GENERIC, {level = 1, coef = 1.5/3.5}),
    [695] = _addon:SpellDataMerge(SHADOW_BOLT_GENERIC, {level = 6, coef = 2.2/3.5}),
    [705] = _addon:SpellDataMerge(SHADOW_BOLT_GENERIC, {level = 12, coef = 2.8/3.5}),
    [SHADOW_BOLT] = SHADOW_BOLT_GENERIC,

    [348] = _addon:SpellDataMerge(IMMOLATE_GENERIC, {level = 1}),
    [707] = _addon:SpellDataMerge(IMMOLATE_GENERIC, {level = 10}),
    [IMMOLATE] = IMMOLATE_GENERIC,

    [5676] = _addon:SpellDataMerge(SEARING_PAIN_GENERIC, {level = 18}),
    [SEARING_PAIN] = SEARING_PAIN_GENERIC,

    [SHADOW_BURN] = {
        school = _addon.SCHOOL.SHADOW,
        ttMinMax = "(%d+).-%s(%d+)",
        coef = 1.5/3.5
    },

    [DEATH_COIL] = {
        school = _addon.SCHOOL.SHADOW,
        ttMinMax = "3.-(%d+)",
        coef = 1.5/3.5 * 0.5,
    },

    [980] = _addon:SpellDataMerge(CURSE_OF_AGONY_GENERIC, {level = 8}),
    [1014] = _addon:SpellDataMerge(CURSE_OF_AGONY_GENERIC, {level = 18}),
    [CURSE_OF_AGONY] = CURSE_OF_AGONY_GENERIC,

    [1120] = _addon:SpellDataMerge(DRAIN_SOUL_GENERIC, {level = 10}),
    [DRAIN_SOUL] = DRAIN_SOUL_GENERIC,

    [689] = _addon:SpellDataMerge(DRAIN_LIFE_GENERIC, {level = 14}),
    [DRAIN_LIFE] = DRAIN_LIFE_GENERIC,

    [SOUL_FIRE] = {
        school = _addon.SCHOOL.FIRE,
        ttMinMax = "(%d+).-%s(%d+)",
        coef = 6 / 3.5,
    },

    [CONFLAGRATE] = {
        school = _addon.SCHOOL.FIRE,
        ttMinMax = "(%d+).-%s(%d+)",
        coef = 1.5 / 3.5,
    },

    [CURSE_OF_DOOM] = {
        school = _addon.SCHOOL.SHADOW,
        isDuration = true,
        duration = 60,
        tickPeriod = 60,
        ttMinMax = "(%d+)",
        coef = 1,
    },

    [SIPHON_LIFE] = {
        school = _addon.SCHOOL.SHADOW,
        isDuration = true,
        duration = 15,
        tickPeriod = 3,
        ttMinMax = "(%d+)",
        ttIsPerTick = true,
        coef = 0.05,
    },

    [RAIN_OF_FIRE] = {
        school = _addon.SCHOOL.FIRE,
        isDuration = true,
        isChannel = true,
        isChannelAoe = true,
        duration = 8,
        tickPeriod = 2,
        ttMinMax = "(%d+)",
        coef = 2/7,
    },

    [HELLFIRE] = {
        school = _addon.SCHOOL.FIRE,
        isDuration = true,
        isChannel = true,
        isChannelAoe = true,
        duration = 15,
        tickPeriod = 1,
        ttMinMax = "(%d+)",
        ttIsPerTick = true,
        coef = 1/7,
    }
}

_addon.talentData = {
    { -- Supression
        tree = 1,
        talent = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HIT_SPELL,
                affectSpell = {CORRUPTION, CURSE_OF_AGONY, SIPHON_LIFE, DRAIN_LIFE, DRAIN_SOUL, DEATH_COIL, CURSE_OF_DOOM},
                perPoint = 2
            }
        }
    },
    { -- Shadow Mastery
        tree = 1,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {SHADOW_BOLT, CORRUPTION, SHADOW_BURN, CURSE_OF_DOOM},
                perPoint = 2
            }
        }
    },

    { -- Improved Shadow Bolt
        tree = 3,
        talent = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.WL_IMP_SB,
                perPoint = 4
            }
        }
    },
    { -- Devastation
        tree = 3,
        talent = 7,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSpell = {SHADOW_BOLT, SOUL_FIRE, SHADOW_BURN, CONFLAGRATE, IMMOLATE, SEARING_PAIN},
                perPoint = 1
            }
        }
    },
    { -- Improved Searing Pain
        tree = 3,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSpell = {SEARING_PAIN},
                perPoint = 2
            }
        }
    },
    -- TODO: Improved Immolate needed?
    { -- Ruin
        tree = 3,
        talent = 14,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CRIT_MULT,
                affectSpell = {SHADOW_BOLT, SOUL_FIRE, SHADOW_BURN, CONFLAGRATE, IMMOLATE, SEARING_PAIN},
                perPoint = 100
            }
        }
    },
    -- TODO: Emberstorm needed?
}

-- Amplify Curse dummy to update tooltip
_addon.buffData[18288] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSpell = {CURSE_OF_AGONY, CURSE_OF_DOOM},
    value = 0,
};

-- Demonic Sacrifice Succubus 
--TODO: needed?
_addon.buffData[18791] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.SHADOW,
    value = 15,
};

-- Demonic Sacrifice Imp
--TODO: needed?
_addon.buffData[18789] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.FIRE,
    value = 15,
};

-- Master Demonologist dmg done
--TODO: needed?
_addon.buffData[23761] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 2,
};
_addon.buffData[23833] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 4,
};
_addon.buffData[23834] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 6,
};
_addon.buffData[23835] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 8,
};
_addon.buffData[23836] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 10,
};

--- Add class settings page
function _addon:ClassSettings(settings)
    settings:MakeCheckboxOption("useImpSB", L["SETTINGS_WL_USE_IMP_SB"], L["SETTINGS_WL_USE_IMP_SB_TT"]);
    return {
        useImpSB = false;
    };
end
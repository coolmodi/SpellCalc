local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

-- TODO: Arcane Missiles, but who even needs that?
-- TODO: Blizzard

local FROST_BOLT = GetSpellInfo(837);
local ARCANE_EXPLOSION = GetSpellInfo(1449);
local FIRE_BLAST = GetSpellInfo(10197);
local SCORCH = GetSpellInfo(10205);
local FLAME_STRIKE = GetSpellInfo(2120);
local FIREBALL = GetSpellInfo(3140);
local PYROBLAST = GetSpellInfo(11366);
local CONE_OF_COLD = GetSpellInfo(8492);
local BLAST_WAVE = GetSpellInfo(11113);

local ARCANE_EXPLOSION_GENERIC = {
    school = _addon.SCHOOL.ARCANE,
    ttMinMax = "(%d+).-%s(%d+)",
    coef = 0.214
};

local FIRE_BLAST_GENERIC = {
    school = _addon.SCHOOL.FIRE,
    ttMinMax = "(%d+).-%s(%d+)",
    coef = 1.5/3.5
};

local FROST_BOLT_GENERIC = {
    school = _addon.SCHOOL.FROST,
    ttMinMax = "(%d+).-%s(%d+)",
    coef = 3 / 3.5 * 0.95
};

local FLAME_STRIKE_GENERIC = {
    school = _addon.SCHOOL.FIRE,
    primary = {
        ttMinMax = "(%d+).-%s(%d+)",
        coef = 0.264
    },
    secondary = {
        isDuration = true,
        duration = 8,
        tickPeriod = 2,
        ttMinMax = ".*%s(%d+).*%s%d",
        coef = 0.025,
    }
};

_addon.spellData = {
    [1449] = _addon:SpellDataMerge(ARCANE_EXPLOSION_GENERIC, {level = 14}),
    [ARCANE_EXPLOSION] = ARCANE_EXPLOSION_GENERIC,

    [133] = {
        school = _addon.SCHOOL.FIRE,
        level = 1,
        primary = {
            ttMinMax = "(%d+).-%s(%d+)",
            coef = 1.5/3.5
        },
        secondary = {
            isDuration = true,
            duration = 4,
            tickPeriod = 2,
            ttMinMax = ".*%s(%d+).*%s%d",
            coef = 0,
        }
    },
    [143] = {
        school = _addon.SCHOOL.FIRE,
        level = 6,
        primary = {
            ttMinMax = "(%d+).-%s(%d+)",
            coef = 2/3.5
        },
        secondary = {
            isDuration = true,
            duration = 6,
            tickPeriod = 2,
            ttMinMax = ".*%s(%d+).*%s%d",
            coef = 0,
        }
    },
    [145] = {
        school = _addon.SCHOOL.FIRE,
        level = 12,
        primary = {
            ttMinMax = "(%d+).-%s(%d+)",
            coef = 2.5/3.5
        },
        secondary = {
            isDuration = true,
            duration = 6,
            tickPeriod = 2,
            ttMinMax = ".*%s(%d+).*%s%d",
            coef = 0,
        }
    },
    [3140] = {
        school = _addon.SCHOOL.FIRE,
        level = 18,
        primary = {
            ttMinMax = "(%d+).-%s(%d+)",
            coef = 3/3.5
        },
        secondary = {
            isDuration = true,
            duration = 8,
            tickPeriod = 2,
            ttMinMax = ".*%s(%d+).*%s%d",
            coef = 0,
        }
    },
    [FIREBALL] = {
        school = _addon.SCHOOL.FIRE,
        primary = {
            ttMinMax = "(%d+).-%s(%d+)",
            coef = 1
        },
        secondary = {
            isDuration = true,
            duration = 8,
            tickPeriod = 2,
            ttMinMax = ".*%s(%d+).*%s%d",
            coef = 0,
        }
    },

    [PYROBLAST] = {
        school = _addon.SCHOOL.FIRE,
        primary = {
            ttMinMax = "(%d+).-%s(%d+)",
            coef = 1
        },
        secondary = {
            isDuration = true,
            duration = 12,
            tickPeriod = 3,
            ttMinMax = ".*%s(%d+).*%s%d",
            coef = 0.175,
        }
    },

    [2136] = _addon:SpellDataMerge(FIRE_BLAST_GENERIC, {level = 6}),
    [2137] = _addon:SpellDataMerge(FIRE_BLAST_GENERIC, {level = 14}),
    [FIRE_BLAST] = FIRE_BLAST_GENERIC,

    [SCORCH] = {
        school = _addon.SCHOOL.FIRE,
        ttMinMax = "(%d+).-%s(%d+)",
        coef = 1.5/3.5
    },

    [2120] = _addon:SpellDataMerge(FLAME_STRIKE_GENERIC, {level = 16}),
    [FLAME_STRIKE] = FLAME_STRIKE_GENERIC,

    [116] = _addon:SpellDataMerge(FROST_BOLT_GENERIC, {level = 4, coef = 1.5 / 3.5 * 0.95}),
    [205] = _addon:SpellDataMerge(FROST_BOLT_GENERIC, {level = 8, coef = 1.8 / 3.5 * 0.95}),
    [837] = _addon:SpellDataMerge(FROST_BOLT_GENERIC, {level = 14, coef = 2.2 / 3.5 * 0.95}),
    [7322] = _addon:SpellDataMerge(FROST_BOLT_GENERIC, {coef = 2.6 / 3.5 * 0.95}),
    [FROST_BOLT] = FROST_BOLT_GENERIC,

    [CONE_OF_COLD] = {
        school = _addon.SCHOOL.FROST,
        ttMinMax = "(%d+).-%s(%d+)",
        coef = 0.136
    },

    [BLAST_WAVE] = {
        school = _addon.SCHOOL.FIRE,
        ttMinMax = "(%d+).-%s(%d+)",
        coef = 0.136
    },
};

_addon.talentData = {
    { -- Arcane Subtlety
        tree = 1,
        talent = 1,
        effect = _addon.EFFECT_TYPE.RESISTANCE_PEN,
        affectSchool = _addon.SCHOOL_MASK.ARCANE,
        perPoint = 5
    },
    { -- Arcane Focus
        tree = 1,
        talent = 2,
        effect = _addon.EFFECT_TYPE.MOD_HIT_SPELL,
        affectSchool = _addon.SCHOOL_MASK.ARCANE,
        perPoint = 2
    },
    -- TODO: clearcast
    { -- Improved Arcane Explosion
        tree = 1,
        talent = 8,
        effect = _addon.EFFECT_TYPE.MOD_CRIT,
        affectSpell = {ARCANE_EXPLOSION},
        perPoint = 2
    },
    { -- Arcane Meditation
        tree = 1,
        talent = 12,
        effect = _addon.EFFECT_TYPE.FSR_REGEN,
        perPoint = 5
    },
    { -- Arcane Instability
        tree = 1,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {}, -- TODO: What to affect? DoT parts of spells?
                perPoint = 1
            },
            { -- TODO: needed? It should be...
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSchool = _addon.SCHOOL_MASK.ALL,
                perPoint = 1
            }
        }
    },

    -- TODO: Ignite
    { -- Incinerate
        tree = 2,
        talent = 6,
        effect = _addon.EFFECT_TYPE.MOD_CRIT,
        affectSpell = {FIRE_BLAST, SCORCH},
        perPoint = 2
    },
    { -- Improved Flamestrike
        tree = 2,
        talent = 7,
        effect = _addon.EFFECT_TYPE.MOD_CRIT,
        affectSpell = {FLAME_STRIKE},
        perPoint = 5
    },
    -- TODO: Master of Elements
    { -- Improved Flamestrike
        tree = 2,
        talent = 13,
        effect = _addon.EFFECT_TYPE.MOD_CRIT,
        affectSchool = _addon.SCHOOL_MASK.FIRE,
        perPoint = 2
    },
    -- TODO: Fire Power and dot part of FB, PB and FS

    { -- Elemental Precision
        tree = 3,
        talent = 3,
        effect = _addon.EFFECT_TYPE.MOD_HIT_SPELL,
        affectSchool = _addon.SCHOOL_MASK.FROST + _addon.SCHOOL_MASK.FIRE,
        perPoint = 2
    },
    -- TODO: Ice Shards
    -- TODO: Piercing Ice shouldn't be needed, check
    -- TODO: Imp CoC shouldn't be needed, check
};

_addon.buffData[12042] = { -- Arcane Power
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 30,
};
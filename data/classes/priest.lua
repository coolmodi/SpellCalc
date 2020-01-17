local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

local MIND_BLAST = GetSpellInfo(8092);
local SHADOW_WORD_PAIN = GetSpellInfo(589);
local POWER_WORD_SHIELD = GetSpellInfo(17);
local SMITE = GetSpellInfo(585);
local HOLY_FIRE = GetSpellInfo(14914);
local HOLY_NOVA = GetSpellInfo(15237);
local RENEW = GetSpellInfo(139);
local SHADOW_GUARD = GetSpellInfo(28377);
local DEVOURING_PLAGUE = GetSpellInfo(2944);
local MIND_FLAY = GetSpellInfo(17312);
local TOUCH_OF_WEAKNESS = GetSpellInfo(19251);

_addon.talentData = {
    -- Meditation
    {
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_REGEN,
                perPoint = 5
            }
        }
    },
    -- Improved Power Word: Shield
    {
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {POWER_WORD_SHIELD},
                perPoint = 5
            }
        }
    },
    -- Force of will
    {
        tree = 1,
        talent = 14,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSchool = _addon.SCHOOL_MASK.ALL_SPELL,
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSpell = {SMITE, MIND_BLAST, HOLY_FIRE, HOLY_NOVA},
                perPoint = 1
            }
        }
    },

    -- Improved Renew
    {
        tree = 2,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {RENEW},
                perPoint = 5
            }
        }
    },
    -- Holy Spec
    {
        tree = 2,
        talent = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSchool = _addon.SCHOOL_MASK.HOLY,
                perPoint = 1
            }
        }
    },
    { -- Searing Light
        tree = 2,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {SMITE, HOLY_FIRE},
                perPoint = 5
            }
        }
    },
    { -- Spiritual Healing
        tree = 2,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HEALING_DONE,
                perPoint = 2
            }
        }
    },

    -- Improved Shadow Word: Pain
    {
        tree = 3,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DURATION,
                affectSpell = {SHADOW_WORD_PAIN},
                perPoint = 3
            }
        }
    },
    -- Shadow Focus
    {
        tree = 3,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HIT_SPELL,
                affectSchool = _addon.SCHOOL_MASK.SHADOW,
                perPoint = 2
            }
        }
    },
    -- Darkness
    {
        tree = 3,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {MIND_BLAST, SHADOW_GUARD, DEVOURING_PLAGUE},
                perPoint = 2
            },
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {SHADOW_WORD_PAIN, MIND_FLAY, TOUCH_OF_WEAKNESS},
                perPoint = 2
            }
        }
    },
};

-- Shadowform
_addon.buffData[15473] = {
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.SHADOW,
    value = 15,
}

-- Inner Focus
_addon.buffData[14751] = {
    effect = _addon.EFFECT_TYPE.MOD_CRIT,
    affectSchool = _addon.SCHOOL_MASK.ALL_SPELL,
    value = 25
}
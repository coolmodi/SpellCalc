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
    { -- Improved Drain Life
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {DRAIN_LIFE},
                perPoint = 2
            }
        }
    },
    { -- Improved Curse Of Agony
        tree = 1,
        talent = 7,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {CURSE_OF_AGONY},
                perPoint = 2
            }
        }
    },
    { -- Shadow Mastery
        tree = 1,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSchool = _addon.SCHOOL_MASK.SHADOW,
                perPoint = 2
            }
        }
    },

    { -- Improved Health Funnel
        tree = 2,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                perPoint = 10
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
    { -- Improved Immolate
        tree = 3,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {IMMOLATE},
                perPoint = 5
            }
        }
    },
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
    { -- Emberstorm
        tree = 3,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSchool = _addon.SCHOOL_MASK.FIRE,
                perPoint = 2
            }
        }
    },
}

-- Amplify Curse
_addon.buffData[18288] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSpell = {CURSE_OF_AGONY, CURSE_OF_DOOM},
    value = 50,
};

-- Demonic Sacrifice Succubus
_addon.buffData[18791] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.SHADOW,
    value = 15,
};

-- Demonic Sacrifice Imp
_addon.buffData[18789] = {
    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
    affectSchool = _addon.SCHOOL_MASK.FIRE,
    value = 15,
};

-- Master Demonologist dmg done
_addon.buffData[23761] = {
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 2,
};
_addon.buffData[23833] = {
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 4,
};
_addon.buffData[23834] = {
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 6,
};
_addon.buffData[23835] = {
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 8,
};
_addon.buffData[23836] = {
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 10,
};

-- Soul Link
_addon.buffData[25228] = {
    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 3,
};

--- Add class settings page
function _addon:ClassSettings(settings)
    settings:MakeCheckboxOption("useImpSB", L["SETTINGS_WL_USE_IMP_SB"], L["SETTINGS_WL_USE_IMP_SB_TT"]);
    return {
        useImpSB = false;
    };
end
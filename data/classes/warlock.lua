local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

local L = _addon:GetLocalization();

_addon.talentData = {
    { -- Supression
        tree = 1,
        talent = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HIT_SPELL,
                affectSpell = {-2142714854, 1},
                perPoint = 2
            }
        }
    },
    { -- Improved Drain Life
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_EFFECT,
                affectSpell = {8},
                perPoint = 2
            }
        }
    },
    { -- Improved Curse Of Agony
        tree = 1,
        talent = 7,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_EFFECT,
                affectSpell = {1024},
                perPoint = 2
            }
        }
    },
    { -- Shadow Mastery
        tree = 1,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_DAMAGE,
                affectSpell = {145 + 2},
                perPoint = 2
            },
            {
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_EFFECT,
                affectSpell = {541704, 1},
                perPoint = 2
            }
        }
    },

    { -- Improved Health Funnel
        tree = 2,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_EFFECT,
                affectSpell = {16777216},
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
                affectSpell = {997},
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
                affectSpell = {256},
                perPoint = 2
            }
        }
    },
    { -- Improved Immolate
        tree = 3,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_DAMAGE,
                affectSpell = {4},
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
                affectSpell = {997},
                perPoint = 100
            }
        }
    },
    { -- Emberstorm
        tree = 3,
        talent = 15,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELL_MOD_PCT_DAMAGE,
                affectSpell = {868},
                perPoint = 2
            }
        }
    },
}

-- Amplify Curse
_addon.buffData[18288] = {
    effect = _addon.EFFECT_TYPE.SPELL_MOD_PCT_EFFECT,
    affectSpell = {1024},
    value = 50,
};

-- Demonic Sacrifice Succubus
_addon.buffData[18791] = {
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.SHADOW,
    value = 15,
};

-- Demonic Sacrifice Imp
_addon.buffData[18789] = {
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.FIRE,
    value = 15,
};

-- Master Demonologist dmg done
_addon.buffData[23761] = {
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 2,
};
_addon.buffData[23833] = {
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 4,
};
_addon.buffData[23834] = {
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 6,
};
_addon.buffData[23835] = {
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 8,
};
_addon.buffData[23836] = {
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 10,
};

-- Soul Link
_addon.buffData[25228] = {
    effect = _addon.EFFECT_TYPE.SCHOOL_MOD_PCT_DAMAGE,
    affectSchool = _addon.SCHOOL_MASK.ALL,
    value = 3,
};

-- Add class settings page
function _addon:ClassSettings()
    if SpellCalc_settings.useImpSB == nil then
        SpellCalc_settings.useImpSB = false;
    end
    return {
        useImpSB = {
            type = "toggle",
            name = L.SETTINGS_WL_USE_IMP_SB,
            desc = L.SETTINGS_WL_USE_IMP_SB_TT,
        }
    }
end
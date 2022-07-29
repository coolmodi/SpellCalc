---@type AddonEnv
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

local L = _addon:GetLocalization();

_addon.talentData = {
    -----------------------------
    -- Affliction
    -----------------------------
    { -- Supression
        tree = 1,
        talent = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {-2142714854, 3867},
                perPoint = 2
            }
        }
    },
    { -- Improved Curse Of Agony
        tree = 1,
        talent = 7,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1024},
                perPoint = 5
            }
        }
    },
    { -- Empowered Corruption
        tree = 1,
        talent = 12,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {2},
                perPoint = 2
            }
        }
    },
    { -- Shadow Mastery
        tree = 1,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {541851, 6417},
                perPoint = 2
            }
        }
    },
    { -- Contagion
        tree = 1,
        talent = 17,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1026, 16},
                perPoint = 1
            }
        }
    },
    -----------------------------
    -- Demonology
    -----------------------------
    { -- Improved Health Funnel
        tree = 2,
        talent = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {16777216},
                perPoint = 10
            }
        }
    },
    -----------------------------
    -- Destruction
    -----------------------------
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
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {901, 4288},
                perPoint = 1
            }
        }
    },
    { -- Improved Searing Pain
        tree = 3,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {256},
                base = 1,
                perPoint = 3
            }
        }
    },
    { -- Improved Immolate
        tree = 3,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {965, 4288},
                perPoint = 100
            }
        }
    },
    { -- Emberstorm
        tree = 3,
        talent = 16,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {868, 192},
                perPoint = 2
            }
        }
    },
    { -- Shadow and Flame
        tree = 3,
        talent = 20,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {1, 64},
                perPoint = 4
            }
        }
    },
}

-- Amplify Curse TODO
_addon.aurasPlayer[18288] = {
    {type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
    affectSpell = {1024},
    value = 50,}
};

-- Demonic Sacrifice Succubus
_addon.aurasPlayer[18791] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.SHADOW,
    value = 15,}
};

-- Demonic Sacrifice Imp
_addon.aurasPlayer[18789] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.FIRE,
    value = 15,}
};

-- Master Demonologist Succubus
_addon.aurasPlayer[23761] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 2,}
};
_addon.aurasPlayer[23833] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 4,}
};
_addon.aurasPlayer[23834] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 6,}
};
_addon.aurasPlayer[23835] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 8,}
};
_addon.aurasPlayer[23836] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 10,}
};
-- Master Demonologist Felguard
_addon.aurasPlayer[35702] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 1,}
};
_addon.aurasPlayer[35703] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 2,}
};
_addon.aurasPlayer[35704] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 3,}
};
_addon.aurasPlayer[35705] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 4,}
};
_addon.aurasPlayer[35706] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 5,}
};

-- Soul Link
_addon.aurasPlayer[25228] = {
    {type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.SCHOOL_MASK.ALL,
    value = 3,}
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
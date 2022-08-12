---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

local L = _addon:GetLocalization();

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {
    -----------------------------
    -- Affliction
    -----------------------------
    { -- Improved Curse Of Agony
        tree = 1,
        tier = 1,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {1024},
                perPoint = 5
            }
        }
    },
    { -- Supression
        tree = 1,
        tier = 1,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {-2142714854, 266011},
                perPoint = 1
            }
        }
    },
    { -- Improved Corruption
        tree = 1,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2},
                perPoint = 2
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {0, 16},
                perPoint = 1
            }
        }
    },
    { -- Empowered Corruption
        tree = 1,
        tier = 4,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {2},
                perPoint = 2
            }
        }
    },
    { -- Siphon Life
        tree = 1,
        tier = 5,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2, 272},
                perPoint = 5
            }
        }
    },
    { -- Shadow Mastery
        tree = 1,
        tier = 6,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {524433, 4528400},
                perPoint = 3
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {17418, 275},
                perPoint = 3
            }
        }
    },
    { -- Contagion
        tree = 1,
        tier = 7,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {1026, 16},
                perPoint = 1
            }
        }
    },
    { -- Malediction
        tree = 1,
        tier = 8,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.CONST.SCHOOL_MASK.ALL_SPELL,
                perPoint = 1
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {2, 256},
                perPoint = 3
            }
        }
    },
    -- TODO: Death's Embrace
    { -- Pandemic
        tree = 1,
        tier = 9,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
                affectSpell = {2, 256},
                perPoint = 1,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {2, 262400},
                perPoint = 100,
            }
        }
    },
    { -- Everlasting Affliction
        tree = 1,
        tier = 10,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {2, 257},
                perPoint = 1
            }
        }
    },
    --[[ 
    
    
    
    -----------------------------
    -- Demonology
    -----------------------------
    { -- Improved Health Funnel
        tree = 2,
        talent = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
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
                type = _addon.CONST.EFFECT_TYPE.WL_IMP_SB,
                perPoint = 4
            }
        }
    },
    { -- Devastation
        tree = 3,
        talent = 7,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
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
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
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
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
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
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
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
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {1, 64},
                perPoint = 4
            }
        }
    }, 
    ]]
}

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

-- Demonic Sacrifice Succubus
_addon.aurasPlayer[18791] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.SHADOW,
    value = 15,}
};

-- Demonic Sacrifice Imp
_addon.aurasPlayer[18789] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
    value = 15,}
};

-- Master Demonologist Succubus
_addon.aurasPlayer[23761] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 2,}
};
_addon.aurasPlayer[23833] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 4,}
};
_addon.aurasPlayer[23834] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 6,}
};
_addon.aurasPlayer[23835] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 8,}
};
_addon.aurasPlayer[23836] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 10,}
};
-- Master Demonologist Felguard
_addon.aurasPlayer[35702] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 1,}
};
_addon.aurasPlayer[35703] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 2,}
};
_addon.aurasPlayer[35704] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 3,}
};
_addon.aurasPlayer[35705] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 4,}
};
_addon.aurasPlayer[35706] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 5,}
};

-- Soul Link
_addon.aurasPlayer[25228] = {
    {type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    value = 3,}
};



_addon.aurasPlayer[70840] = { -- Devious Minds (T10)
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 10
    }
}

--------------------------------------------------------------------------
-- Target auras
--------------------------------------------------------------------------

_addon.aurasTarget[32386] = { -- Shadow Embrace 1
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 1,
        hasStacks = true
    }
}

_addon.aurasTarget[32388] = { -- Shadow Embrace 2
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 2,
        hasStacks = true
    }
}

_addon.aurasTarget[32389] = { -- Shadow Embrace 3
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 3,
        hasStacks = true
    }
}

_addon.aurasTarget[32390] = { -- Shadow Embrace 4
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 4,
        hasStacks = true
    }
}

_addon.aurasTarget[32391] = { -- Shadow Embrace 5
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 5,
        hasStacks = true
    }
}

local haunt = {
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17418, 273},
        value = 20
    }
}
_addon.aurasTarget[48181] = haunt; -- Haunt 1
_addon.aurasTarget[59161] = haunt; -- Haunt 2
_addon.aurasTarget[59163] = haunt; -- Haunt 3
_addon.aurasTarget[59164] = haunt; -- Haunt 4

--------------------------------------------------------------------------
-- Additional Glyphs (generated effects are in <class>_spell.lua)
--------------------------------------------------------------------------

--------------------------------------------------------------------------
-- Passives
--------------------------------------------------------------------------

--------------------------------------------------------------------------
-- Scripts
--------------------------------------------------------------------------

-- Soul Siphon
do
    local CURSE_OF_AGONY = GetSpellInfo(47864);
    local CURSE_OF_ELEMENTS = GetSpellInfo(11722);
    local CURSE_OF_WEAKNESS = GetSpellInfo(11707);
    local CURSE_OF_TONGUES = GetSpellInfo(1714);
    local CURSE_OF_DOOM = GetSpellInfo(30910);
    local CURSE_OF_EXHAUSTION = GetSpellInfo(29539);
    local CORRUPTION = GetSpellInfo(6223);
    local SEED_OF_CORRUPTION = GetSpellInfo(43991);
    local UNSTABLE_AFFLICTION = GetSpellInfo(30404);
    local HAUNT = GetSpellInfo(59161);

    local afflictionEffects = {
        CURSE_OF_AGONY, CURSE_OF_ELEMENTS, CURSE_OF_WEAKNESS, CURSE_OF_TONGUES, CURSE_OF_DOOM, CURSE_OF_EXHAUSTION,
        CORRUPTION, SEED_OF_CORRUPTION, UNSTABLE_AFFLICTION, HAUNT
    }

    _addon.scripting.RegisterScript("Soul_Siphon_Dmg_Per_Dot", function (val, cs, ce, spellId, si, scriptType, spellName)
        assert(ce, "Soul_Siphon_Dmg_Per_Dot called with ce nil!");
        local effectCount = 0;
        for _, auraName in ipairs(afflictionEffects) do
            if _addon.Target.HasAuraName(auraName, true) then
                effectCount = effectCount + 1;
                -- Maximum of 3 times value increase.
                if effectCount == 3 then break end
            end
        end
        ce.modBonus = ce.modBonus * (1 + (val/100) * effectCount)
    end);

    local talent = {
        tree = 1,
        tier = 2,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
                affectSpell = {8 + 16384},
                scriptKey = "Soul_Siphon_Dmg_Per_Dot",
                perPoint = 3
            }
        }
    }

    for _, auraName in ipairs(afflictionEffects) do
        table.insert(talent.effects, {
            type = _addon.CONST.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
            scriptKey = auraName,
            perPoint = 1
        });
    end

    table.insert(_addon.talentDataRaw, talent);
end




-- Add class settings page
function _addon.ClassSettings()
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
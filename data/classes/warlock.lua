---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

local IMMOLATE = GetSpellInfo(47811);

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
    -----------------------------
    -- Demonology
    -----------------------------
    { -- Improved Health Funnel
        tree = 2,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {16777216},
                perPoint = 10
            }
        }
    },
    { -- Molten Core
        tree = 2,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {4},
                perPoint = 3000
            }
        }
    },
    { -- Demonic Pact
        tree = 2,
        tier = 10,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.CONST.SCHOOL_MASK.FIRE + _addon.CONST.SCHOOL_MASK.SHADOW,
                perPoint = 2
            }
        }
    },
    -----------------------------
    -- Destruction
    -----------------------------
    { -- Improved Shadow Bolt
        tree = 3,
        tier = 1,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1},
                perPoint = 2
            }
        }
    },
    { -- Aftermath
        tree = 3,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {4},
                perPoint = 3
            }
        }
    },
    { -- Ruin
        tree = 3,
        tier = 3,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {5093, 12783808},
                perPoint = 20
            }
        }
    },
    { -- Improved Searing Pain
        tree = 3,
        tier = 4,
        column = 4,
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
        tier = 5,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {4},
                perPoint = 10
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {4},
                perPoint = 10
            }
        }
    },
    { -- Devastation
        tree = 3,
        tier = 5,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {997, 8589504},
                perPoint = 5
            }
        }
    },
    { -- Emberstorm
        tree = 3,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {868, 8519872},
                perPoint = 3
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {100, 8388608, 2},
                perPoint = 3
            }
        }
    },
    { -- Shadow and Flame
        tree = 3,
        tier = 8,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_SPELL_SCALE,
                affectSpell = {129, 131136},
                perPoint = 4
            }
        }
    },
    { -- Fire and Brimstone
        tree = 3,
        tier = 10,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
                affectSpell = {0, 64 + 131072},
                scriptKey = "Fire_and_Brimstone",
                perPoint = 2
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {0, 8388608},
                perPoint = 5
            },
        }
    },
}

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

-- Master Demonologist Succubus
_addon.aurasPlayer[23761] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.SHADOW,
        value = 1,
    }
};
_addon.aurasPlayer[23833] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.SHADOW,
        value = 2,
    }
};
_addon.aurasPlayer[23834] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.SHADOW,
        value = 3,
    }
};
_addon.aurasPlayer[23835] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.SHADOW,
        value = 4,
    }
};
_addon.aurasPlayer[23836] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.SHADOW,
        value = 5,
    }
};

-- Master Demonologist Felguard
_addon.aurasPlayer[35702] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 1,
    }
};
_addon.aurasPlayer[35703] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 2,
    }
};
_addon.aurasPlayer[35704] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 3,
    }
};
_addon.aurasPlayer[35705] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 4,
    }
};
_addon.aurasPlayer[35706] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 5,
    }
};

-- Master Demonologist Imp
_addon.aurasPlayer[23759] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
        value = 1,
    }
};
_addon.aurasPlayer[23826] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
        value = 2,
    }
};
_addon.aurasPlayer[23827] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
        value = 3,
    }
};
_addon.aurasPlayer[23828] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
        value = 4,
    }
};
_addon.aurasPlayer[23829] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
        value = 5,
    }
};

_addon.aurasPlayer[70840] = { -- Devious Minds (T10)
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 10
    }
}

_addon.aurasPlayer[47383] = { -- Molten Core 1
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 192},
        value = 6
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {0, 128},
        value = 5
    }
}
_addon.aurasPlayer[71162] = { -- Molten Core 2
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 192},
        value = 12
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {0, 128},
        value = 10
    }
}
_addon.aurasPlayer[71165] = { -- Molten Core 3
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {0, 192},
        value = 18
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {0, 128},
        value = 15
    }
}

_addon.aurasPlayer[63165] = { -- Decimation 1
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 0
    },
}
_addon.aurasPlayer[63167] = { -- Decimation 2
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 0
    },
}

_addon.aurasPlayer[18093] = { -- Pyroclasm 1
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
        value = 2
    },
}
_addon.aurasPlayer[63243] = { -- Pyroclasm 2
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
        value = 4
    },
}
_addon.aurasPlayer[63244] = { -- Pyroclasm 3
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.FIRE,
        value = 6
    },
}

--------------------------------------------------------------------------
-- Target auras
--------------------------------------------------------------------------

_addon.aurasTarget[32386] = { -- Shadow Embrace 1
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 1,
        hasStacks = true,
        onlyPersonal = true
    }
}

_addon.aurasTarget[32388] = { -- Shadow Embrace 2
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 2,
        hasStacks = true,
        onlyPersonal = true
    }
}

_addon.aurasTarget[32389] = { -- Shadow Embrace 3
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 3,
        hasStacks = true,
        onlyPersonal = true
    }
}

_addon.aurasTarget[32390] = { -- Shadow Embrace 4
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 4,
        hasStacks = true,
        onlyPersonal = true
    }
}

_addon.aurasTarget[32391] = { -- Shadow Embrace 5
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17434, 273},
        value = 5,
        hasStacks = true,
        onlyPersonal = true
    }
}

---@type UnitAuraEffect[]
local haunt = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
        scriptKey = "Haunt_Script",
        value = 0,
        onlyPersonal = true
    }
}
_addon.aurasTarget[48181] = haunt; -- Haunt 1
_addon.aurasTarget[59161] = haunt; -- Haunt 2
_addon.aurasTarget[59163] = haunt; -- Haunt 3
_addon.aurasTarget[59164] = haunt; -- Haunt 4

--------------------------------------------------------------------------
-- Additional Glyphs (generated effects are in <class>_spell.lua)
--------------------------------------------------------------------------

_addon.classGlyphs[63302] = { -- Glyph of Haunt
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_SET_VALUE,
        value = 3,
        scriptKey = "Glyph_of_Haunt",
    },
}

--------------------------------------------------------------------------
-- Passives
--------------------------------------------------------------------------

---@type UnitAuraEffect[]
_addon.classPassives = {
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
        affectSpell = {4},
        value = 1,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA,
        scriptKey = IMMOLATE,
        value = 1,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_SPELLMOD_EFFECT_BASEVALUES,
        affectSpell = {0, 64},
        scriptKey = "Incinerate_Extra",
        value = 1,
    }
}

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

_addon.scripting.RegisterScript("Fire_and_Brimstone", function (val, cs, ce, spellId, si, scriptType, spellName)
    assert(ce, "Fire_and_Brimstone called with ce nil!");
    if _addon.Target.HasAuraName(IMMOLATE, true) then
        ce.modBonus = ce.modBonus * (1 + val/100);
    end
end);

_addon.scripting.RegisterScript("Incinerate_Extra", function (val, cs, ce, spellId, si, scriptType, spellName)
    assert(ce, "Incinerate_Extra called with ce nil!");
    if _addon.Target.HasAuraName(IMMOLATE) then
        local extra = ce.modBase * si.effects[1].valueBase / 4;
        ce.min = ce.min + extra;
        ce.max = ce.max + extra + ce.modBase * si.effects[1].valueRange / 4;
        ce.avg = 0.5 * (ce.min + ce.max);
        ce.avgCombined = ce.avg;
    end
end);

do
    ---@type AuraEffectBase
    local hauntAuraEffect = {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        affectSpell = {17418, 273},
    }

    _addon.scripting.RegisterAuraScript("Haunt_Script", function (apply, auraId, fromPlayer, scriptType, cacheValue)
        assert(fromPlayer, "Haunt_Script called for foreign aura, aura def wrong?");
        local name = "HauntScript";
        if apply then
            local val = 20 + _addon.scripting.GetValue("Glyph_of_Haunt");
            _addon:ApplyAuraEffect(name, hauntAuraEffect, val, auraId, fromPlayer);
            return val;
        else
            assert(cacheValue, "Haunt removed while cacheValue is nil!");
            _addon:RemoveAuraEffect(name, hauntAuraEffect, cacheValue, auraId, fromPlayer);
        end
    end);
end
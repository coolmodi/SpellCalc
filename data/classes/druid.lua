---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

local INSECT_SWARM = GetSpellInfo(5570);
local FF = GetSpellInfo(770);
local FF_FERAL = GetSpellInfo(16857);
local REGROWTH = GetSpellInfo(48443);
local REJUVENATION = GetSpellInfo(48441);
local LIFEBLOOM = GetSpellInfo(48451);
local WILD_GROWTH = GetSpellInfo(53251);
local MOONFIRE = GetSpellInfo(48463);

_addon.talentDataRaw = {
    -----------------------------
    -- Balance
    -----------------------------
    { -- Genesis
        tree = 1,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2097746, 67108880},
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {4194432},
                perPoint = 1
            }
        }
    },
    { -- Nature's Majesty
        tree = 1,
        tier = 2,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {37, 41943040},
                perPoint = 2
            }
        }
    },
    { -- Improve Moonfire
        tree = 1,
        tier = 2,
        column = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {2},
                perPoint = 5
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {2},
                perPoint = 5
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2},
                perPoint = 5
            }
        }
    },
    { -- Brambles
        tree = 1,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {256},
                perPoint = 25
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {512},
                perPoint = 25
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {0, 512},
                perPoint = 5
            }
        }
    },
    { -- Nature's Splendor
        tree = 1,
        tier = 3,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {18},
                perPoint = 3
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {64},
                perPoint = 6
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
                affectSpell = {2097152, 16},
                perPoint = 2
            }
        }
    },
    { -- Vengeance
        tree = 1,
        tier = 4,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {7, 8388608},
                perPoint = 20
            }
        }
    },
    { -- Improved Insect Swarm
        tree = 1,
        tier = 5,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
                affectSpell = {1},
                perPoint = 1,
                scriptKey = "Imp_IS_Target_Aura_Check",
            },
            {
                type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
                scriptKey = INSECT_SWARM,
                perPoint = 0
            },
            {
                type = _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_EFFECT_PRE,
                affectSpell = {4},
                perPoint = 1,
                scriptKey = "Imp_IS_Target_Aura_Check",
            },
            {
                type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
                scriptKey = MOONFIRE,
                perPoint = 0
            }
        }
    },
    { -- Dreamstate
        tree = 1,
        tier = 6,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MANA_PER_5_FROM_INT,
                perPoint = 3,
                base = 1
            }
        }
    },
    { -- Moonfury
        tree = 1,
        tier = 6,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {7},
                values = {3, 6, 10}
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2},
                values = {3, 6, 10}
            }
        }
    },
    { -- Balance of Power
        tree = 1,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                perPoint = 2
            },
        }
    },
    { -- Improved Faerie Fire
        tree = 1,
        tier = 7,
        column = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_CRIT_CHANCE,
                affectSpell = {4194311, 25165824},
                perPoint = 1,
                scriptKey = "Imp_FF_Crit"
            },
            {
                type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA,
                scriptKey = FF,
                perPoint = 0
            },
            {
                type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA,
                scriptKey = FF_FERAL,
                perPoint = 0
            }
        }
    },
    { -- Wrath of Cenarius
        tree = 1,
        tier = 8,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {4},
                perPoint = 4
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {1},
                perPoint = 2
            }
        }
    },
    { -- Gale Winds
        tree = 1,
        tier = 9,
        column = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {4194304, 16777216},
                perPoint = 15
            }
        }
    },
    { -- Earth and Moon
        tree = 1,
        tier = 10,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
                perPoint = 2
            }
        }
    },
    -----------------------------
    -- Feral
    -----------------------------
    { -- Feral Aggression
        tree = 2,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {8388608},
                perPoint = 3
            }
        }
    },
    { -- Savage Fury
        tree = 2,
        tier = 2,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {6144, 1088, 262144},
                perPoint = 10
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {4096},
                perPoint = 10
            }
        }
    },
    { -- Predatory Instincts
        tree = 2,
        tier = 8,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_CRIT_BASE_MULT,
                affectMask = _addon.SCHOOL_MASK.PHYSICAL,
                values = {3, 7, 10}
            }
        }
    },
    -- TODO: Rend and Tear (2/28), dmg and crit on bleeding targets
    { -- Primal Gore
        tree = 2,
        tier = 10,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
                affectSpell = {8388608, 256},
                values = 1
            }
        }
    },
    -----------------------------
    -- Restoration
    -----------------------------
    { -- Intensity
        tree = 3,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                values = {17, 33, 50}
            }
        }
    },
    { -- Omen of Clarity
        tree = 3,
        tier = 3,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CLEARCAST_CHANCE,
                perPoint = 6 -- TODO: procchance, fix basecost calc
            }
        }
    },
    { -- Master Shapeshifter
        tree = 3,
        tier = 3,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCRIPT_SET_VALUE,
                scriptKey = "Master_Shapeshifter_Value",
                perPoint = 2
            }
        }
    },
    { -- Improved Rejuvenation
        tree = 3,
        tier = 4,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {16},
                perPoint = 5
            }
        }
    },
    { -- Gift of Nature
        tree = 3,
        tier = 5,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {224, 33554448},
                perPoint = 2
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {80, 67108880},
                perPoint = 2
            }
        }
    },
    { -- Empowered Touch
        tree = 3,
        tier = 6,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {32},
                perPoint = 20
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {0, 33554432},
                perPoint = 10
            }
        }
    },
    { -- Nature's Bounty
        tree = 3,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {64, 33554432},
                perPoint = 5
            }
        }
    },
    { -- Empowered Rejuvenation
        tree = 3,
        tier = 8,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_SPELL_SCALE,
                affectSpell = {208, 67108880},
                perPoint = 4
            }
        }
    },
    { -- Living Seed
        tree = 3,
        tier = 8,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_EXTRA_ON_CRIT,
                affectSpell = {32 + 64, 2 + 33554432},
                perPoint = 10
            }
        }
    },
    { -- Gift of the Earthmother
        tree = 3,
        tier = 10,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_GCD_MS,
                affectSpell = {0, 16},
                perPoint = -30
            }
        }
    },
};

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

_addon.aurasPlayer[17116] = { -- Nature's Swiftness dummy
    {
        type = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 1500
    }
};

_addon.aurasPlayer[16886] = { -- Nature's Grace
    {
        type = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 1500
    }
};

_addon.aurasPlayer[48518] = { -- Eclipse (Lunar)
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {4},
        value = 40
    }
};

_addon.aurasPlayer[48517] = { -- Eclipse (Solar)
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {1},
        value = 40
    }
};

_addon.aurasPlayer[48418] = { -- Master Shapeshifter Bear
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.SCHOOL_MASK.PHYSICAL,
        scriptValue = "Master_Shapeshifter_Value"
    }
};

_addon.aurasPlayer[48422] = { -- Master Shapeshifter Tree
    {
        type = _addon.EFFECT_TYPE.PCT_HEALING,
        scriptValue = "Master_Shapeshifter_Value"
    }
};

_addon.aurasPlayer[48421] = { -- Master Shapeshifter Owl
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.SCHOOL_MASK.ARCANE + _addon.SCHOOL_MASK.NATURE,
        scriptValue = "Master_Shapeshifter_Value"
    }
};

--------------------------------------------------------------------------
-- Additional Glyphs (generated effects are in <class>_spell.lua)
--------------------------------------------------------------------------

_addon.classGlyphs[54743] = { -- Glyph of Regrowth
    {
        type = _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
        affectSpell = {64},
        value = 20,
        scriptKey = "Glyph_of_Regrowth",
    },
    {
        type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
        scriptKey = REGROWTH,
        value = 0
    },
}

--------------------------------------------------------------------------
-- Passives
--------------------------------------------------------------------------

_addon.classPassives = {
    {
        type = _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
        affectSpell = {0, 33554432},
        value = 20,
        scriptKey = "Nourish_Script",
    },
    {
        type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
        scriptKey = REJUVENATION,
        value = 0
    },
    {
        type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
        scriptKey = REGROWTH,
        value = 0
    },
    {
        type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
        scriptKey = LIFEBLOOM,
        value = 0
    },
    {
        type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
        scriptKey = WILD_GROWTH,
        value = 0
    },
}

--------------------------------------------------------------------------
-- Scripts
--------------------------------------------------------------------------

_addon.classScripts = {
    ---@param val number
    ---@param cs CalcedSpell
    ---@param ce CalcedEffect
    ---@param spellId number
    ---@param ri SpellRankInfo
    ---@param scriptType number
    Imp_IS_Target_Aura_Check = function(val, cs, ce, spellId, ri, scriptType)
        if scriptType == _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT then
            -- Wrath
            if _addon.Target.HasAuraName(INSECT_SWARM, true) then
                ce.modBonus = ce.modBonus * (1 + val/100);
            end
        else
            -- Starfire
            if _addon.Target.HasAuraName(MOONFIRE, true) then
                cs.critChance = cs.critChance + val;
            end
        end
    end,

    ---@param val number
    ---@param cs CalcedSpell
    ---@param ce CalcedEffect
    Glyph_of_Regrowth = function(val, cs, ce)
        if _addon.Target.HasAuraName(REGROWTH, true) then
            ce.modBonus = ce.modBonus * (1 + val/100);
        end
        return _addon.Target.HasAuraName(REGROWTH, true) and val or 0;
    end,

    ---@param val number
    ---@param cs CalcedSpell
    ---@param ce CalcedEffect
    Nourish_Script = function(val, cs, ce)
        local hasAura = _addon.Target.HasAuraName;
        if hasAura(REJUVENATION, true) or hasAura(REGROWTH, true)
        or hasAura(LIFEBLOOM, true) or hasAura(WILD_GROWTH, true) then
            ce.modBonus = ce.modBonus * 1.2;
        end
    end,

    ---@param val number
    ---@param cs CalcedSpell
    ---@param ce CalcedEffect
    Imp_FF_Crit = function(val, cs, ce)
        if _addon.Target.HasAuraName(FF)
        or _addon.Target.HasAuraName(FF_FERAL) then
            cs.critChance = cs.critChance + val;
        end
    end,
}
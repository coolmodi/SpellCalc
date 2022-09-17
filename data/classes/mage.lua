---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

local FROST_NOVA = GetSpellInfo(122);
local FROSTBITE = GetSpellInfo(12494);
local DEEP_FREEZE = GetSpellInfo(58534);
local FREEZE = GetSpellInfo(33395);

_addon.talentDataRaw = {
    -----------------------------
    -- Arcane
    -----------------------------
    { -- Arcane Focus
        tree = 1,
        tier = 1,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {-1591717888, 32784},
                perPoint = 1
            }
        }
    },
    { -- Arcane Concentration
        tree = 1,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.CLEARCAST_CHANCE_DMG,
                perPoint = 2
            }
        }
    },
    { -- Spell Impact
        tree = 1,
        tier = 3,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {537006611, 64},
                perPoint = 2
            }
        }
    },
    { -- Arcane Shielding
        tree = 1,
        tier = 4,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCRIPT_SET_VALUE,
                values = {17, 33},
                scriptKey = "Mage_Arcane_Shielding,"
            }
        }
    },
    { -- Arcane Meditation
        tree = 1,
        tier = 4,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                values = {17, 33, 50}
            }
        }
    },

    -- TODO: Torment the Weak
    -- Use/implenmet debuff mechanic tracking for snare/slow similar to bleed

    { -- Arcane Instability
        tree = 1,
        tier = 6,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.CONST.SCHOOL_MASK.ALL_SPELL,
                perPoint = 1
            }
        }
    },
    { -- Arcane Empowerment
        tree = 1,
        tier = 7,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {538968064},
                perPoint = 3
            }
        }
    },
    { -- Spell Power
        tree = 1,
        tier = 10,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {551686903, 102472},
                perPoint = 25
            }
        }
    },
    -----------------------------
    -- Fire
    -----------------------------
    { -- Incineration
        tree = 2,
        tier = 1,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {536871442},
                perPoint = 2
            }
        }
    },
    { -- Ignite
        tree = 2,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_EXTRA_ON_CRIT,
                affectSpell = {1 + 2 + 4 + 16 + 4194304 + 8388608, 4096 + 65536},
                perPoint = 8
            }
        }
    },
    { -- World in Flames
        tree = 2,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {12587140, 65600},
                perPoint = 2
            }
        }
    },
    { -- Master of Elements
        tree = 2,
        tier = 4,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.ILLUMINATION,
                perPoint = 10
            }
        }
    },
    { -- Playing with Fire
        tree = 2,
        tier = 5,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.CONST.SCHOOL_MASK.ALL_SPELL,
                perPoint = 1
            }
        }
    },
    { -- Fire Power
        tree = 2,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {12845079, 69704},
                perPoint = 2
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {4194309, 135168},
                perPoint = 2
            }
        }
    },
    { -- Pyromaniac
        tree = 2,
        tier = 7,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                values = {17, 33, 50}
            }
        }
    },
    { -- Empowered Fire
        tree = 2,
        tier = 8,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {4194305, 4096},
                perPoint = 5
            }
        }
    },
    { -- Burnout
        tree = 2,
        tier = 10,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {551686903, 233544},
                perPoint = 10
            }
        }
    },
    -----------------------------
    -- Frost
    -----------------------------
    { -- Ice Shards
        tree = 3,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {131808, 1052672, 32},
                values = {33, 66, 100}
            }
        }
    },
    { -- Precision
        tree = 3,
        tier = 2,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                perPoint = 1
            }
        }
    },
    { -- Piercing Ice
        tree = 3,
        tier = 3,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.CONST.SCHOOL_MASK.FROST,
                perPoint = 2
            }
        }
    },
    { -- Improved Cone of Cold
        tree = 3,
        tier = 5,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {512},
                perPoint = 10,
                base = 5
            }
        }
    },
    { -- Arctic Winds
        tree = 3,
        tier = 7,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.CONST.SCHOOL_MASK.FROST,
                perPoint = 1,
            }
        }
    },
    { -- Empowered Frostbolt
        tree = 3,
        tier = 8,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {32},
                perPoint = 5,
            }
        }
    },
    { -- Chilled to the Bone
        tree = 3,
        tier = 10,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {131104, 4096},
                perPoint = 1,
            }
        }
    },
};

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

_addon.aurasPlayer[12042] = { -- Arcane Power
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {685904631, 102472},
        value = 20,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
        affectSpell = {4194437, 4096},
        value = 20,
    }
};

_addon.aurasPlayer[44401] = { -- Missile Barrage
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
        affectSpell = {2048},
        value = -2500,
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_TICKPERIOD,
        affectSpell = {2048},
        value = -500,
    }
};

_addon.aurasPlayer[70747] = { -- Quad Core
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 18,
    }
};

local mageArmorEffect = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
        scriptKey = "Mage_Armor",
        value = 50,
    }
};
_addon.aurasPlayer[6117] = mageArmorEffect;
_addon.aurasPlayer[22782] = mageArmorEffect;
_addon.aurasPlayer[22783] = mageArmorEffect;
_addon.aurasPlayer[27125] = mageArmorEffect;
_addon.aurasPlayer[43023] = mageArmorEffect;
_addon.aurasPlayer[43024] = mageArmorEffect;

_addon.aurasPlayer[36032] = { -- Arcane Blast
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
        scriptKey = "Arcane_Blast_Debuff",
        value = 15,
        hasStacks = true
    }
}

--------------------------------------------------------------------------
-- Target auras
--------------------------------------------------------------------------

--------------------------------------------------------------------------
-- Additional Glyphs (generated effects are in <class>_spell.lua)
--------------------------------------------------------------------------

-- Glyph of Mage Armor
_addon.classGlyphs[54943] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_SET_VALUE,
        scriptKey = "Glyph_of_Mage_Armor",
        value = 20
    }
}

-- Glyph of Arcane Blast
_addon.classGlyphs[62210] = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_SET_VALUE,
        scriptKey = "Glyph_of_Arcane_Blast",
        value = 3
    }
}

--------------------------------------------------------------------------
-- Passives
--------------------------------------------------------------------------

---@type UnitAuraEffect[]
_addon.classPassives = {
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
        affectSpell = {131072},
        value = 0,
        scriptKey = "Ice_Lance_Script",
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA,
        scriptKey = FREEZE,
        value = 0
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA,
        scriptKey = FROST_NOVA,
        value = 0
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA,
        scriptKey = DEEP_FREEZE,
        value = 0
    },
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA,
        scriptKey = FROSTBITE,
        value = 0
    },
}

--------------------------------------------------------------------------
-- Scripts
--------------------------------------------------------------------------

do
    local mageArmorAura = { type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN };
    _addon.scripting.RegisterAuraScript("Mage_Armor", function (apply, auraId, fromPlayer, scriptType, cacheValue)
        local name = "MageArmor";
        local glyphVal = _addon.scripting.GetValue("Glyph_of_Mage_Armor");
        local total = 50 + glyphVal;
        if apply then
            _addon:ApplyAuraEffect(name, mageArmorAura, total, auraId, fromPlayer);
        else
            _addon:RemoveAuraEffect(name, mageArmorAura, total, auraId, fromPlayer);
        end
    end);
end

do
    local effectBase = {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ARCANE
    };
    _addon.scripting.RegisterAuraScript("Arcane_Blast_Debuff", function (apply, auraId, fromPlayer, scriptType, cacheValue, value)
        local name = "ArcaneBlastDebuff";
        local glyphVal = _addon.scripting.GetValue("Glyph_of_Arcane_Blast");
        local total = value + glyphVal * math.floor(value / 15);
        if apply then
            _addon:ApplyAuraEffect(name, effectBase, total, auraId, fromPlayer);
        else
            _addon:RemoveAuraEffect(name, effectBase, total, auraId, fromPlayer);
        end
    end);
end

_addon.scripting.RegisterScript("Ice_Lance_Script", function (val, cs, ce, spellId, si, scriptType)
    assert(ce, "Ice_Lance_Script called with ce nil!");
    local hasAura = _addon.Target.HasAuraName;

    if hasAura(FROST_NOVA)
    or hasAura(FROSTBITE)
    or hasAura(DEEP_FREEZE)
    or hasAura(FREEZE) then
        print("has freeze effect");
        ce.modBonus = ce.modBonus * 3;
    end
end);

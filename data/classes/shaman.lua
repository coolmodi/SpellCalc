---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {
    -----------------------------
    -- Elemental
    -----------------------------
    { -- Concussion
        tree = 1,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {-1877999613, 12288},
                perPoint = 1
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {268435456},
                perPoint = 1
            }
        }
    },
    { -- Call of Flame
        tree = 1,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1073741824, 262144}, -- Nova, Magma, Searing
                perPoint = 5
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {0, 4096},
                perPoint = 2
            }
        }
    },
    -- TODO: Elemental Focus. Can proc on EO.
    { -- Elemental Fury
        tree = 1,
        tier = 3,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {-785383421, 274432}, -- Default + Nova, Magma, Searing
                perPoint = 20
            }
        }
    },
    { -- Improved Fire Nova
        tree = 1,
        tier = 4,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {0, -2147483648},
                perPoint = 10
            },
        }
    },
    { -- Call of Thunder
        tree = 1,
        tier = 5,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {3, 8192},
                perPoint = 5
            }
        }
    },
    { -- Elemental Precision
        tree = 1,
        tier = 6,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_HIT_CHANCE,
                affectSpell = {-605023225, -1926925674, 206320262, -37482307},
                perPoint = 1
            }
        }
    },
    { -- Storm, Earth and Fire
        tree = 1,
        tier = 7,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {268435456},
                perPoint = 20
            }
        }
    },
    { -- Booming Echoes
        tree = 1,
        tier = 8,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {-1879048192},
                perPoint = 10
            }
        }
    },
    -- TODO: Elemental Oath?
    { -- Lightning Overload
        tree = 1,
        tier = 8,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SHAMAN_LIGHTNING_OVERLOAD,
                affectSpell = {3},
                perPoint = 11
            }
        }
    },
    { -- Lava Flows
        tree = 1,
        tier = 9,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
                affectSpell = {0, 4096},
                perPoint = 6
            }
        }
    },
    { -- Shamanism
        tree = 1,
        tier = 10,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {0, 4096},
                perPoint = 5
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {3},
                perPoint = 4
            }
        }
    },
    -----------------------------
    -- Enhancement
    -----------------------------
    { -- Improved Shields
        tree = 2,
        tier = 2,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1024},
                perPoint = 5
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {0, 1056},
                perPoint = 5
            }
        }
    },
    -- TODO: Elemental Weapons?
    { -- Weapon Mastery
        tree = 2,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.CONST.SCHOOL_MASK.PHYSICAL,
                values = {4, 7, 10}
            }
        }
    },
    { -- Frozen Power TODO: add frostbrand aura effect
        tree = 2,
        tier = 6,
        column = 4,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SCRIPT_SET_VALUE,
                scriptKey = "Frozen_Power",
                perPoint = 5
            }
        }
    },
    { -- Dual Wield Specialization
        tree = 2,
        tier = 7,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                perPoint = 2
            }
        }
    },
    -----------------------------
    -- Restoration
    -----------------------------
    --TODO: Improved Water Shield
    { -- Restorative Totems
        tree = 3,
        tier = 4,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {16384},
                perPoint = 15
            }
        }
    },
    { -- Tidal Mastery
        tree = 3,
        tier = 4,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {1475, 8192, 16},
                perPoint = 1
            }
        }
    },
    { -- Healing Way
        tree = 3,
        tier = 5,
        column = 1,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {64},
                perPoint = 8
            }
        }
    },
    { -- Purification
        tree = 3,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.PCT_HEALING,
                perPoint = 2
            }
        }
    },
    { -- Improved Chain Heal
        tree = 3,
        tier = 8,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {256},
                perPoint = 10
            }
        }
    },
    { -- Improved Earth Shield
        tree = 3,
        tier = 9,
        column = 3,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {0, 1024},
                perPoint = 5
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_CHARGES,
                affectSpell = {0, 1024},
                perPoint = 1
            }
        }
    },
    { -- Tidal Waves
        tree = 3,
        tier = 10,
        column = 2,
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {64},
                perPoint = 4
            },
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
                affectSpell = {128},
                perPoint = 2
            }
        }
    },
};

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

_addon.aurasPlayer[16166] = { -- Elemental Mastery
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {-1877999613, 12288},
        value = 100,
    }
};

_addon.aurasPlayer[16188] = { -- Nature's Swiftness dummy
    {
        type = _addon.CONST.EFFECT_TYPE.TRIGGER_UPDATE,
        value = 1500
    }
};

_addon.aurasPlayer[55166] = { -- Tidal Force
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {448},
        value = 20,
        hasStacks = true
    }
};

_addon.aurasPlayer[53390] = { -- Tidal Waves
    {
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {128},
        value = 25
    }
};

--------------------------------------------------------------------------
-- Target auras
--------------------------------------------------------------------------

_addon.aurasTarget[17364] = { -- Stormstrike
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
        scriptKey = "StormstrikeDebuff",
        value = 20,
        onlyPersonal = true,
    }
}

do
    ---@type UnitAuraEffect[]
    local frostbrand = {
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
            affectSpell = {-1877999613, 16, 4},
            scriptValue = "Frozen_Power"
        }
    }
    _addon.aurasTarget[8034] = frostbrand;
    _addon.aurasTarget[8037] = frostbrand;
    _addon.aurasTarget[10458] = frostbrand;
    _addon.aurasTarget[16352] = frostbrand;
    _addon.aurasTarget[16353] = frostbrand;
    _addon.aurasTarget[25501] = frostbrand;
    _addon.aurasTarget[58797] = frostbrand;
    _addon.aurasTarget[58798] = frostbrand;
    _addon.aurasTarget[64186] = frostbrand;
    _addon.aurasTarget[58799] = frostbrand;
end

_addon.aurasTarget[70829] = { -- Elemental Rage
    {
        type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 12
    }
}

--------------------------------------------------------------------------
-- Additional Glyphs (generated effects are in <class>_spell.lua)
--------------------------------------------------------------------------

_addon.classGlyphs[55446] = { -- Glyph of Stormstrike
    {
        type = _addon.CONST.EFFECT_TYPE.SCRIPT_SET_VALUE,
        value = 8,
        scriptKey = "Glyph_of_Stormstrike",
    },
}

-- TODO: 55444: Glyph of Lava Lash // Damage on your Lava Lash is increased by an additional $55444s1% if your weapon is enchanted with Flametongue.
-- TODO: 62132: Glyph of Thunderstorm // "IncreasesthemanayoureceivefromyourThunderstormspellby$62132s1%,butitnolongerknocksenemiesback."

--------------------------------------------------------------------------
-- Passives
--------------------------------------------------------------------------

---@type UnitAuraEffect[]
_addon.classPassives = {
    { -- Flame Shock Passive
        type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
        affectSpell = {268435456},
        value = 1
    }
}

--------------------------------------------------------------------------
-- Scripts
--------------------------------------------------------------------------

do
    ---@type AuraEffectBase
    local auraEffect = {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
        affectMask = _addon.CONST.SCHOOL_MASK.NATURE
    }
    _addon.scripting.RegisterAuraScript("StormstrikeDebuff", function (apply, auraId, fromPlayer, scriptType, cacheValue, value)
        local name = "StormstrikeDebuff";

        if apply then
            local total = value + _addon.scripting.GetValue("Glyph_of_Stormstrike");
            _addon:ApplyAuraEffect(name, auraEffect, total, auraId, fromPlayer);
            return total;
        end

        assert(cacheValue, "Stormstrike aura removed while cacheValue is nil!");
        _addon:RemoveAuraEffect(name, auraEffect, cacheValue, auraId, fromPlayer);
    end);
end

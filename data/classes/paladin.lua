---@type AddonEnv
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then return end

local HOLY_VENGEANCE = GetSpellInfo(31803);

_addon.talentDataRaw = {
    -----------------------------
    -- Holy
    -----------------------------
    { -- Seals of the Pure
        tree = 1,
        tier = 1,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {1024, 4196352 + 536870912},
                perPoint = 3
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {0, 2048},
                perPoint = 3
            }
        }
    },
    { -- Healing Light
        tree = 1,
        tier = 2,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {-1071644672, 65536},
                perPoint = 4
            }
        }
    },
    { -- Illumination
        tree = 1,
        tier = 3,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.ILLUMINATION,
                perPoint = 6 -- Internally Illumination is still 100% return. Adjust to 30% here.
            }
        }
    },
    { -- Sanctified Light
        tree = 1,
        tier = 5,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {-2145386496, 65536},
                perPoint = 2
            }
        }
    },
    { -- Judgements of the Pure
        tree = 1,
        tier = 9,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {33555456, 541068800, 24},
                perPoint = 5
            },
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {41943040, 536873984, 8},
                perPoint = 5
            }
        }
    },
    { -- Enlightened Judgements
        tree = 1,
        tier = 10,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                perPoint = 2
            },
            {
                type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                perPoint = 2
            },
        }
    },
    -----------------------------
    -- Protection
    -----------------------------
    { -- Divinity
        tree = 2,
        tier = 1,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.PCT_HEALING,
                perPoint = 1
            }
        }
    },
    { -- Divine Guardian
        tree = 2,
        tier = 4,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
                affectSpell = {0, 524288},
                perPoint = 10
            },
        }
    },
    { -- One-Handed Weapon Specialization
        tree = 2,
        tier = 6,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                neededWeaponMask = _addon.WEAPON_TYPES_MASK.AXE_1H +
                    _addon.WEAPON_TYPES_MASK.MACE_1H +
                    _addon.WEAPON_TYPES_MASK.SWORD_1H,
                affectMask = _addon.SCHOOL_MASK.ALL,
                values = {4, 7, 10}
            }
        }
    },
    { -- Touched by the Light
        tree = 2,
        tier = 9,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.GLOBAL_MOD_CRITICAL_HEALING,
                perPoint = 10
            }
        }
    },
    -----------------------------
    -- Retribution
    -----------------------------
    { -- Sanctity of Battle
        tree = 3,
        tier = 4,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {0, 32770},
                perPoint = 5
            }
        }
    },
    { -- Crusade
        tree = 3,
        tier = 4,
        column = 4,
        effects = {
            {
                type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
                affectMask = _addon.CREATURE_TYPE_MASK.HUMANOID +
                    _addon.CREATURE_TYPE_MASK.DEMON +
                    _addon.CREATURE_TYPE_MASK.UNDEAD +
                    _addon.CREATURE_TYPE_MASK.ELEMENTAL,
                perPoint = 1
            },
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                affectMask = _addon.SCHOOL_MASK.ALL,
                perPoint = 1
            }
        }
    },
    { -- Two-Handed Weapon Specialization
        tree = 3,
        tier = 5,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
                neededWeaponMask = _addon.WEAPON_TYPES_MASK.AXE_2H +
                    _addon.WEAPON_TYPES_MASK.MACE_2H +
                    _addon.WEAPON_TYPES_MASK.SWORD_2H +
                    _addon.WEAPON_TYPES_MASK.POLEARM,
                affectMask = _addon.SCHOOL_MASK.PHYSICAL,
                perPoint = 2
            }
        }
    },
    { -- Sanctified Retribution
        tree = 3,
        tier = 5,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {8},
                perPoint = 50
            }
        }
    },
    { -- The Art of War
        tree = 3,
        tier = 7,
        column = 1,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
                affectSpell = {8388608, 163840},
                perPoint = 5
            }
        }
    },
    { -- Fanaticism
        tree = 3,
        tier = 8,
        column = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {8388608, 0, 8},
                perPoint = 6
            }
        }
    },
    { -- Sanctified Wrath
        tree = 3,
        tier = 8,
        column = 3,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {0, 128, 0},
                perPoint = 25
            }
        }
    },
    -- TODO: Sheath of Light
    -- TODO: Righteous Vengeance
};

_addon.aurasPlayer[20216] = { -- Divine Favor
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {-1071644672, 65536},
        value = 100
    }
};

_addon.aurasPlayer[53672] = { -- Infusion of Light 1
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {-2147483648},
        value = 10
    }
};

_addon.aurasPlayer[54149] = { -- Infusion of Light 2
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {-2147483648},
        value = 20
    }
};

_addon.aurasPlayer[54428] = { -- Divine Plea
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
        affectSpell = {-1073741824, 65536},
        value = -50
    }
};

_addon.aurasPlayer[20050] = { -- Vengeance 1
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.SCHOOL_MASK.HOLY + _addon.SCHOOL_MASK.PHYSICAL,
        value = 1
    }
};

_addon.aurasPlayer[20052] = { -- Vengeance 2
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.SCHOOL_MASK.HOLY + _addon.SCHOOL_MASK.PHYSICAL,
        value = 2
    }
};

_addon.aurasPlayer[20053] = { -- Vengeance 3
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.SCHOOL_MASK.HOLY + _addon.SCHOOL_MASK.PHYSICAL,
        value = 3
    }
};

_addon.aurasPlayer[31884] = { -- Avenging Wrath
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.SCHOOL_MASK.ALL,
        value = 20
    },
    {
        type = _addon.EFFECT_TYPE.PCT_HEALING,
        value = 20
    }
}

_addon.aurasTarget[58597] = { -- Sacred Shield
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
        affectSpell = {1073741824},
        value = 50
    }
}

_addon.classPassives = {
    {
        type = _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_EFFECT_PRE,
        affectSpell = {0, 1048576},
        scriptKey = "Shield_of_Righteousness_BV_Scale",
        value = 0
    },
    {
        type = _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
        affectSpell = {0, 4194304},
        scriptKey = "Holy_Vengeance_Judgement_Mod",
        value = 10
    },
    {
        type = _addon.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
        scriptKey = HOLY_VENGEANCE,
        value = 0
    },
    {
        type = _addon.EFFECT_TYPE.SCRIPT_SPELLMOD_EFFECT_PRE,
        affectSpell = {0, 262144},
        scriptKey = "Hammer_of_the_Righteous_MH_DPS",
        value = 0
    },
}

_addon.classScripts = {
    ---Scale Shield of Righteousness with block value.
    ---@param val number
    ---@param cs CalcedSpell
    ---@param spellId number
    ---@param ri SpellRankInfo
    ---@param eff number
    Shield_of_Righteousness_BV_Scale = function(val, cs, spellId, ri, eff)
        ---@type CalcedEffect
        local calcedEffect = cs[eff];
        calcedEffect.effectivePower = GetShieldBlock() * calcedEffect.modBonus;
        return 0;
    end,

    ---Increase Judgement of Vengeance/Corruption damage if target has seal debuff stacks.
    ---@param val number
    Holy_Vengeance_Judgement_Mod = function(val)
        local stacks = _addon.Target.GetAuraApplications(HOLY_VENGEANCE, true, true);
        if stacks then return stacks * val end
        return 0;
    end,

    ---Set Hammer of the Righteous damage.
    ---@param val number
    ---@param cs CalcedSpell
    ---@param spellId number
    ---@param ri SpellRankInfo
    ---@param eff number
    Hammer_of_the_Righteous_MH_DPS = function(val, cs, spellId, ri, eff)
        ---@type CalcedEffect
        local calcedEffect = cs[eff];
        -- Does 4 times the weapon dps WITHOUT HASTE!
        local stats = _addon.stats;
        local baseAtkSpd = stats.baseAttackSpeed.mainhand;
        if baseAtkSpd > 0 then
            local avgDmg = 0.5 * (stats.attackDmg.mainhand.min + stats.attackDmg.mainhand.max);
            calcedEffect.effectivePower = 4 * avgDmg * (1 / stats.baseAttackSpeed.mainhand) - 1;
            calcedEffect.effectivePower = calcedEffect.effectivePower * calcedEffect.modBonus;
        end
        return 0;
    end,
}

-- TODO
-- Glyph of Seal of Light
-- Ret talents
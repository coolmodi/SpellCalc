---@class AddonEnv
local _addon = select(2, ...);
local CONST = _addon.CONST;

-- Acid Spit
---@type TargetAuraEffect[]
local acidSpit = {
    {
        type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
        affectMask = CONST.SCHOOL_MASK.PHYSICAL,
        value = -10,
        hasStacks = true,
        debuffCategory = CONST.DEBUFF_CATEGORY.ARMOR_MAJOR
    }
}

---@type TargetAuraEffect[]
local minorArmorDebuff = {
    {
        type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
        affectMask = CONST.SCHOOL_MASK.PHYSICAL,
        value = -5,
        debuffCategory = CONST.DEBUFF_CATEGORY.ARMOR_MINOR
    }
}

-- Buffs and debuffs the target can have.
---@type table<integer, TargetAuraEffect[]>
_addon.aurasTarget = {
    -----------------------
    -- Armor Major
    -----------------------
    [58567] = { -- Sunder Armor
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = CONST.SCHOOL_MASK.PHYSICAL,
            value = -4,
            hasStacks = true,
            debuffCategory = CONST.DEBUFF_CATEGORY.ARMOR_MAJOR
        }
    },
    [8647] = { -- Expose Armor
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = CONST.SCHOOL_MASK.PHYSICAL,
            value = -20,
            debuffCategory = CONST.DEBUFF_CATEGORY.ARMOR_MAJOR
        }
    },
    [55749] = acidSpit, -- Acid Spit 1
    [55750] = acidSpit, -- Acid Spit 2
    [55751] = acidSpit, -- Acid Spit 3
    [55752] = acidSpit, -- Acid Spit 4
    [55753] = acidSpit, -- Acid Spit 5
    [55754] = acidSpit, -- Acid Spit 6
    -----------------------
    -- Armor Minor
    -----------------------
    [702] = minorArmorDebuff, -- Curse of Weakness 1
    [1108] = minorArmorDebuff, -- Curse of Weakness 2
    [6205] = minorArmorDebuff, -- Curse of Weakness 3
    [7646] = minorArmorDebuff, -- Curse of Weakness 4
    [11707] = minorArmorDebuff, -- Curse of Weakness 5
    [11708] = minorArmorDebuff, -- Curse of Weakness 6
    [27224] = minorArmorDebuff, -- Curse of Weakness 7
    [30909] = minorArmorDebuff, -- Curse of Weakness 8
    [50511] = minorArmorDebuff, -- Curse of Weakness 9
    [770] = minorArmorDebuff, -- Faerie Fire
    [16857] = minorArmorDebuff, -- Faerie Fire (Feral)
    [56626] = minorArmorDebuff, -- Sting 1
    [56627] = minorArmorDebuff, -- Sting 2
    [56628] = minorArmorDebuff, -- Sting 3
    [56629] = minorArmorDebuff, -- Sting 4
    [56630] = minorArmorDebuff, -- Sting 5
    [56631] = minorArmorDebuff, -- Sting 6
    -----------------------
    -- Spell damage
    -----------------------
    [60431] = { -- Earth and Moon 1
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 4,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [60432] = { -- Earth and Moon 2
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 9,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [60433] = { -- Earth and Moon 3
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 13,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },

    [1490] = { -- Curse of Elements 1
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 6,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [11721] = { -- Curse of Elements 2
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 8,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [11722] = { -- Curse of Elements 3
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 10,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [27228] = { -- Curse of Elements 4
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 11,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [47865] = { -- Curse of Elements 5
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 13,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },

    [51726] = { -- Ebon Plague 1
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 4,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        },
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.INFECTED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    [51734] = { -- Ebon Plague 2
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 9,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        },
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.INFECTED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    [51735] = { -- Ebon Plague 3
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 13,
            debuffCategory = CONST.DEBUFF_CATEGORY.SPELL_DAMAGE
        },
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.INFECTED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    -----------------------
    -- Disease
    -----------------------
    [50508] = { -- Crypt Fever 1
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.INFECTED,
            value = 10,
            debuffCategory = CONST.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    [50509] = { -- Crypt Fever 2
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.INFECTED,
            value = 20,
            debuffCategory = CONST.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    [50510] = { -- Crypt Fever 3
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.INFECTED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    -----------------------
    -- Bleed
    -----------------------
    [46856] = { -- Trauma 1
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 15,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [46857] = { -- Trauma 2
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },

    [33876] = { -- Mangle (Cat) 1
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [33982] = { -- Mangle (Cat) 2
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [33983] = { -- Mangle (Cat) 3
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [48565] = { -- Mangle (Cat) 4
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [48566] = { -- Mangle (Cat) 5
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },

    [33878] = { -- Mangle (Bear) 1
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [33986] = { -- Mangle (Bear) 2
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [33987] = { -- Mangle (Bear) 3
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [48563] = { -- Mangle (Bear) 4
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [48564] = { -- Mangle (Bear) 5
        {
            type = CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectMechanic = CONST.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = CONST.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    -----------------------
    -- Physical dmg taken
    -----------------------
    [30069] = { -- Blood Frenzy 1
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.PHYSICAL,
            value = 2,
            debuffCategory = CONST.DEBUFF_CATEGORY.PHYSICAL_DAMAGE
        }
    },
    [30070] = { -- Blood Frenzy 2
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.PHYSICAL,
            value = 4,
            debuffCategory = CONST.DEBUFF_CATEGORY.PHYSICAL_DAMAGE
        }
    },
    [58684] = { -- Savage Combat 1
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.PHYSICAL,
            value = 2,
            debuffCategory = CONST.DEBUFF_CATEGORY.PHYSICAL_DAMAGE
        }
    },
    [58683] = { -- Savage Combat 2
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = CONST.SCHOOL_MASK.PHYSICAL,
            value = 4,
            debuffCategory = CONST.DEBUFF_CATEGORY.PHYSICAL_DAMAGE
        }
    },
    -----------------------
    -- Crit all
    -----------------------
    [30708] = { -- Totem of Wrath
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 3,
            debuffCategory = CONST.DEBUFF_CATEGORY.CRIT_ALL
        }
    },
    [21183] = { -- Heart of the Crusader 1
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 1,
            debuffCategory = CONST.DEBUFF_CATEGORY.CRIT_ALL
        }
    },
    [54498] = { -- Heart of the Crusader 2
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 2,
            debuffCategory = CONST.DEBUFF_CATEGORY.CRIT_ALL
        }
    },
    [54499] = { -- Heart of the Crusader 3
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 3,
            debuffCategory = CONST.DEBUFF_CATEGORY.CRIT_ALL
        }
    },
    -----------------------
    -- Crit spell
    -----------------------
    [12579] = { -- Winter's Chill
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            hasStacks = true,
            value = 1,
            debuffCategory = CONST.DEBUFF_CATEGORY.CRIT_SPELL
        }
    },
    [22959] = { -- Improved Scorch
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 5,
            debuffCategory = CONST.DEBUFF_CATEGORY.CRIT_SPELL
        }
    },
    [17800] = { -- Shadow Mastery (Imp. SB)
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 5,
            debuffCategory = CONST.DEBUFF_CATEGORY.CRIT_SPELL
        }
    },
    -----------------------
    -- Hit spell
    -----------------------
    [33196] = { -- Misery 1
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_HIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 1,
            debuffCategory = CONST.DEBUFF_CATEGORY.HIT_SPELL
        }
    },
    [33197] = { -- Misery 2
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_HIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 2,
            debuffCategory = CONST.DEBUFF_CATEGORY.HIT_SPELL
        }
    },
    [33198] = { -- Misery 3
        {
            type = CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_HIT_CHANCE_FLAT,
            affectMask = CONST.SCHOOL_MASK.ALL_SPELL,
            value = 3,
            debuffCategory = CONST.DEBUFF_CATEGORY.HIT_SPELL
        }
    },
    -----------------------
    -- Healing Recieved
    -----------------------
    [34123] = { -- Tree of Life
        {
            type = CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = 6,
            debuffCategory = CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_POSITIVE
        }
    },
    -----------------------
    -- Pct Damage Done TODO: these are buffs...
    -----------------------
    [31579] = { -- Arcane Empowerment 1
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 1,
            debuffCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [31582] = { -- Arcane Empowerment 2
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 2,
            debuffCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [31583] = { -- Arcane Empowerment 3
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 3,
            debuffCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [75593] = { -- Ferocious Inspiration 1
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 1,
            debuffCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [75446] = { -- Ferocious Inspiration 2
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 2,
            debuffCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [75447] = { -- Ferocious Inspiration 3
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 3,
            debuffCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
}
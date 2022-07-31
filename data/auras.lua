---@type AddonEnv
local _addon = select(2, ...);

-- Buffs the player can have
_addon.aurasPlayer = {
    [5677] = { -- Mana Spring 1
        {
            type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 15 -- 6/2s
        }
    },
    [10491] = { -- Mana Spring 2
        {
            type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 22 -- 9/2s
        }
    },
    [10493] = { -- Mana Spring 3
        {
            type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 32 -- 13/2s
        }
    },
    [10494] = { -- Mana Spring 4
        {
            type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 42 -- 17/2s
        }
    },
    [25569] = { -- Mana Spring 5
        {
            type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 50 -- 20/2s
        }
    },
    [26166] = { -- Obsidian Insight
        {
            type = _addon.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = _addon.SCHOOL_MASK.FIRE + _addon.SCHOOL_MASK.FROST +
                _addon.SCHOOL_MASK.NATURE + _addon.SCHOOL_MASK.SHADOW +
                _addon.SCHOOL_MASK.ARCANE,
            value = 100
        }
    },

    [30880] = { -- Echoes of Lordaeron H 1
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 1
        }
    },
    [30683] = { -- Echoes of Lordaeron H 2
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 2
        }
    },
    [30682] = { -- Echoes of Lordaeron H 3
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 3
        }
    },
    [29520] = { -- Echoes of Lordaeron H 4
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 5
        }
    },

    [11413] = { -- Echoes of Lordaeron A 1
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 1
        }
    },
    [11414] = { -- Echoes of Lordaeron A 2
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 2
        }
    },
    [11415] = { -- Echoes of Lordaeron A 3
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 3
        }
    },
    [1386] = { -- Echoes of Lordaeron A 4
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD +
                _addon.CREATURE_TYPE_MASK.DEMON,
            value = 5
        }
    },
    [33377] = { -- Blessing of Auchindoun
        {
            type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [32071] = { -- Hellfire Superiority A
        {
            type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [32049] = { -- Hellfire Superiority H
        {
            type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [33795] = { -- Strength of the Halaani
        {
            type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [20218] = { -- Sanctity Aura
        {
            type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = _addon.SCHOOL_MASK.HOLY,
            value = 10
        }
    },
    [30708] = { -- Totem of Wrath
        {type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 3}
    },
    [28488] = { -- Scourgebane Infusion
        {
            type = _addon.EFFECT_TYPE.VERSUSMOD_FLAT_SPELLPOWER,
            affectMask = _addon.CREATURE_TYPE_MASK.UNDEAD,
            value = 15
        }
    },
    -- 28486 "Scourgebane Draught" 30 AP vs undead
    [6562] = { -- Heroic Presence
        {type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE, value = 1},
        {type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 1}
    },
    [28878] = { -- Inspiring Presence
        {type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE, value = 1},
        {type = _addon.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 1}
    },
    [49016] = { -- Hysteria
        {
            type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = _addon.SCHOOL_MASK.PHYSICAL,
            value = 20
        }
    },
    [57933] = { -- TotT
        {
            type = _addon.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 15
        }
    }
};

local acidSpit = { -- Acid Spit
    {
        type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
        affectMask = _addon.SCHOOL_MASK.PHYSICAL,
        value = -10,
        hasStacks = true,
        debuffCategory = _addon.DEBUFF_CATEGORY.ARMOR_MAJOR
    }
}

local minorArmorDebuff = {
    {
        type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
        affectMask = _addon.SCHOOL_MASK.PHYSICAL,
        value = -5,
        debuffCategory = _addon.DEBUFF_CATEGORY.ARMOR_MINOR
    }
}

-- Buffs and debuffs the target can have.
_addon.aurasTarget = {
    -----------------------
    -- Armor Major
    -----------------------
    [58567] = { -- Sunder Armor
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = _addon.SCHOOL_MASK.PHYSICAL,
            value = -4,
            hasStacks = true,
            debuffCategory = _addon.DEBUFF_CATEGORY.ARMOR_MAJOR
        }
    },
    [8647] = { -- Expose Armor
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = _addon.SCHOOL_MASK.PHYSICAL,
            value = -20,
            debuffCategory = _addon.DEBUFF_CATEGORY.ARMOR_MAJOR
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
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 4,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [60432] = { -- Earth and Moon 2
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 9,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [60433] = { -- Earth and Moon 3
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 13,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },

    [1490] = { -- Curse of Elements 1
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 6,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [11721] = { -- Curse of Elements 2
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 8,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [11722] = { -- Curse of Elements 3
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 10,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [27228] = { -- Curse of Elements 4
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 11,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },
    [47865] = { -- Curse of Elements 5
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 13,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        }
    },

    [51726] = { -- Ebon Plague 1
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 4,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        },
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.INFECTED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    [51734] = { -- Ebon Plague 2
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 9,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        },
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.INFECTED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    [51735] = { -- Ebon Plague 3
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 13,
            debuffCategory = _addon.DEBUFF_CATEGORY.SPELL_DAMAGE
        },
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.INFECTED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    -----------------------
    -- Disease
    -----------------------
    [50508] = { -- Crypt Fever 1
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.INFECTED,
            value = 10,
            debuffCategory = _addon.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    [50509] = { -- Crypt Fever 2
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.INFECTED,
            value = 20,
            debuffCategory = _addon.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    [50510] = { -- Crypt Fever 3
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.INFECTED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.DISEASE_DAMAGE
        }
    },
    -----------------------
    -- Bleed
    -----------------------
    [46856] = { -- Trauma 1
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 15,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [46857] = { -- Trauma 2
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },

    [33876] = { -- Mangle (Cat) 1
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [33982] = { -- Mangle (Cat) 2
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [33983] = { -- Mangle (Cat) 3
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [48565] = { -- Mangle (Cat) 4
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [48566] = { -- Mangle (Cat) 5
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },

    [33878] = { -- Mangle (Bear) 1
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [33986] = { -- Mangle (Bear) 2
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [33987] = { -- Mangle (Bear) 3
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [48563] = { -- Mangle (Bear) 4
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    [48564] = { -- Mangle (Bear) 5
        {
            type = _addon.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            affectSpell = _addon.SPELL_MECHANIC.BLEED,
            value = 30,
            debuffCategory = _addon.DEBUFF_CATEGORY.BLEED_DAMAGE
        }
    },
    -----------------------
    -- Physical dmg taken
    -----------------------
    [30069] = { -- Blood Frenzy 1
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.PHYSICAL,
            value = 2,
            debuffCategory = _addon.DEBUFF_CATEGORY.PHYSICAL_DAMAGE
        }
    },
    [30070] = { -- Blood Frenzy 2
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.PHYSICAL,
            value = 4,
            debuffCategory = _addon.DEBUFF_CATEGORY.PHYSICAL_DAMAGE
        }
    },
    [58684] = { -- Savage Combat 1
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.PHYSICAL,
            value = 2,
            debuffCategory = _addon.DEBUFF_CATEGORY.PHYSICAL_DAMAGE
        }
    },
    [58683] = { -- Savage Combat 2
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = _addon.SCHOOL_MASK.PHYSICAL,
            value = 4,
            debuffCategory = _addon.DEBUFF_CATEGORY.PHYSICAL_DAMAGE
        }
    },
    -----------------------
    -- Crit all
    -----------------------
    [30708] = { -- Totem of Wrath
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 3,
            debuffCategory = _addon.DEBUFF_CATEGORY.CRIT_ALL
        }
    },
    [21183] = { -- Heart of the Crusader 1
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 1,
            debuffCategory = _addon.DEBUFF_CATEGORY.CRIT_ALL
        }
    },
    [54498] = { -- Heart of the Crusader 2
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 2,
            debuffCategory = _addon.DEBUFF_CATEGORY.CRIT_ALL
        }
    },
    [54499] = { -- Heart of the Crusader 3
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL,
            value = 3,
            debuffCategory = _addon.DEBUFF_CATEGORY.CRIT_ALL
        }
    },
    -----------------------
    -- Crit spell
    -----------------------
    [12579] = { -- Winter's Chill
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            hasStacks = true,
            value = 1,
            debuffCategory = _addon.DEBUFF_CATEGORY.CRIT_SPELL
        }
    },
    [22959] = { -- Improved Scorch
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 5,
            debuffCategory = _addon.DEBUFF_CATEGORY.CRIT_SPELL
        }
    },
    [17800] = { -- Shadow Mastery (Imp. SB)
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 5,
            debuffCategory = _addon.DEBUFF_CATEGORY.CRIT_SPELL
        }
    },
    -----------------------
    -- Hit spell
    -----------------------
    [33196] = { -- Misery 1
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_HIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 1,
            debuffCategory = _addon.DEBUFF_CATEGORY.HIT_SPELL
        }
    },
    [33197] = { -- Misery 2
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_HIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 2,
            debuffCategory = _addon.DEBUFF_CATEGORY.HIT_SPELL
        }
    },
    [33198] = { -- Misery 3
        {
            type = _addon.EFFECT_TYPE.TARGET_SCHOOLMOD_HIT_CHANCE_FLAT,
            affectMask = _addon.SCHOOL_MASK.ALL_SPELL,
            value = 3,
            debuffCategory = _addon.DEBUFF_CATEGORY.HIT_SPELL
        }
    },
    -----------------------
    -- Healing Recieved
    -----------------------
    [34123] = { -- Tree of Life
        {
            type = _addon.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = 6,
            debuffCategory = _addon.DEBUFF_CATEGORY.HEALING_RECIEVED_POSITIVE
        }
    },
};
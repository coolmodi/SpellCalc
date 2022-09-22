-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {
    [324] = { -- Lightning Shield(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 13,
                valueRange = 0,
                triggeredSpell = 26364,
                coef = 0.147,
                coefAP = 0,
            },
        }
    },
    [325] = { -- Lightning Shield(Rank 2)
        spellLevel = 16,
        maxLevel = 0,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 29,
                valueRange = 0,
                triggeredSpell = 26365,
                coef = 0.227,
                coefAP = 0,
            },
        }
    },
    [331] = { -- Healing Wave(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCostPct = 13,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 34,
                valueRange = 10,
                valuePerLevel = 0.7,
                coef = 0.231,
                coefAP = 0,
            },
        }
    },
    [332] = { -- Healing Wave(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 64,
                valueRange = 14,
                valuePerLevel = 1,
                coef = 0.51,
                coefAP = 0,
            },
        }
    },
    [403] = { -- Lightning Bolt(Rank 1)
        spellLevel = 1,
        maxLevel = 6,
        baseCostPct = 6,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 2,
                valuePerLevel = 0.4,
                coef = 0.125,
                coefAP = 0,
            },
        }
    },
    [421] = { -- Chain Lightning(Rank 1)
        spellLevel = 32,
        maxLevel = 37,
        baseCostPct = 26,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 191,
                valueRange = 26,
                valuePerLevel = 1.9,
                coef = 0.571,
                coefAP = 0,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [529] = { -- Lightning Bolt(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 26,
                valueRange = 4,
                valuePerLevel = 0.5,
                coef = 0.317,
                coefAP = 0,
            },
        }
    },
    [547] = { -- Healing Wave(Rank 3)
        spellLevel = 12,
        maxLevel = 17,
        baseCostPct = 21,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 129,
                valueRange = 26,
                valuePerLevel = 1.5,
                coef = 0.94,
                coefAP = 0,
            },
        }
    },
    [548] = { -- Lightning Bolt(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 45,
                valueRange = 8,
                valuePerLevel = 0.7,
                coef = 0.561,
                coefAP = 0,
            },
        }
    },
    [905] = { -- Lightning Shield(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 51,
                valueRange = 0,
                triggeredSpell = 26366,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [913] = { -- Healing Wave(Rank 4)
        spellLevel = 18,
        maxLevel = 23,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 268,
                valueRange = 48,
                valuePerLevel = 2.3,
                coef = 1.491,
                coefAP = 0,
            },
        }
    },
    [915] = { -- Lightning Bolt(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 83,
                valueRange = 12,
                valuePerLevel = 1,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [930] = { -- Chain Lightning(Rank 2)
        spellLevel = 40,
        maxLevel = 45,
        baseCostPct = 26,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 277,
                valueRange = 34,
                valuePerLevel = 2.3,
                coef = 0.571,
                coefAP = 0,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [939] = { -- Healing Wave(Rank 5)
        spellLevel = 24,
        maxLevel = 29,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 376,
                valueRange = 64,
                valuePerLevel = 2.7,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [943] = { -- Lightning Bolt(Rank 5)
        spellLevel = 26,
        maxLevel = 31,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 125,
                valueRange = 18,
                valuePerLevel = 1.2,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [945] = { -- Lightning Shield(Rank 4)
        spellLevel = 32,
        maxLevel = 0,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 80,
                valueRange = 0,
                triggeredSpell = 26367,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [959] = { -- Healing Wave(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 536,
                valueRange = 86,
                valuePerLevel = 3.3,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [974] = { -- Earth Shield(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 600,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        forceHeal = true,
        charges = 6,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 150,
                valueRange = 0,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [1064] = { -- Chain Heal(Rank 1)
        spellLevel = 40,
        maxLevel = 45,
        baseCostPct = 19,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 320,
                valueRange = 48,
                valuePerLevel = 2.5,
                coef = 1.343,
                coefAP = 0,
                chains = 3,
                chainMult = 0.6,
            },
        }
    },
    [1535] = { -- Fire Nova(Rank 1)
        spellLevel = 12,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 8349,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [2860] = { -- Chain Lightning(Rank 3)
        spellLevel = 48,
        maxLevel = 53,
        baseCostPct = 26,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 378,
                valueRange = 46,
                valuePerLevel = 2.7,
                coef = 0.571,
                coefAP = 0,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [3599] = { -- Searing Totem(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 30,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 3606,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [3606] = { -- Attack(Rank 1)
        spellLevel = 10,
        maxLevel = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 9,
                valueRange = 2,
                coef = 0.104,
                coefAP = 0,
            },
        }
    },
    [5394] = { -- Healing Stream Totem(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 52041,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [6041] = { -- Lightning Bolt(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 172,
                valueRange = 22,
                valuePerLevel = 1.5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [6350] = { -- Attack(Rank 2)
        spellLevel = 20,
        maxLevel = 29,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 4,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [6351] = { -- Attack(Rank 3)
        spellLevel = 30,
        maxLevel = 39,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 19,
                valueRange = 6,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [6352] = { -- Attack(Rank 4)
        spellLevel = 40,
        maxLevel = 49,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 26,
                valueRange = 8,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [6363] = { -- Searing Totem(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 35,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 6350,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6364] = { -- Searing Totem(Rank 3)
        spellLevel = 30,
        maxLevel = 0,
        duration = 40,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 6351,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6365] = { -- Searing Totem(Rank 4)
        spellLevel = 40,
        maxLevel = 0,
        duration = 45,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 6352,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6375] = { -- Healing Stream Totem(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 52046,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [6377] = { -- Healing Stream Totem(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 52047,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [8004] = { -- Lesser Healing Wave(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 162,
                valueRange = 24,
                valuePerLevel = 1.7,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [8005] = { -- Healing Wave(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 740,
                valueRange = 114,
                valuePerLevel = 3.9,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [8008] = { -- Lesser Healing Wave(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 247,
                valueRange = 34,
                valuePerLevel = 2.1,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [8010] = { -- Lesser Healing Wave(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 337,
                valueRange = 44,
                valuePerLevel = 2.5,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [8042] = { -- Earth Shock(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 17,
                valueRange = 2,
                valuePerLevel = 0.5,
                coef = 0.154,
                coefAP = 0,
            },
        }
    },
    [8044] = { -- Earth Shock(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 32,
                valueRange = 2,
                valuePerLevel = 0.7,
                coef = 0.212,
                coefAP = 0,
            },
        }
    },
    [8045] = { -- Earth Shock(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 60,
                valueRange = 4,
                valuePerLevel = 1,
                coef = 0.299,
                coefAP = 0,
            },
        }
    },
    [8046] = { -- Earth Shock(Rank 4)
        spellLevel = 24,
        maxLevel = 29,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 119,
                valueRange = 8,
                valuePerLevel = 1.4,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [8050] = { -- Flame Shock(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 21,
                valueRange = 0,
                valuePerLevel = 0.8,
                coef = 0.134,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 7,
                valueRange = 0,
                coef = 0.063,
                coefAP = 0,
            },
        }
    },
    [8052] = { -- Flame Shock(Rank 2)
        spellLevel = 18,
        maxLevel = 23,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 45,
                valueRange = 0,
                valuePerLevel = 1.2,
                coef = 0.198,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 12,
                valueRange = 0,
                coef = 0.093,
                coefAP = 0,
            },
        }
    },
    [8053] = { -- Flame Shock(Rank 3)
        spellLevel = 28,
        maxLevel = 33,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 86,
                valueRange = 0,
                valuePerLevel = 1.7,
                coef = 0.214,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 24,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [8056] = { -- Frost Shock(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCostPct = 18,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 89,
                valueRange = 6,
                valuePerLevel = 1.2,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [8058] = { -- Frost Shock(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        baseCostPct = 18,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 206,
                valueRange = 14,
                valuePerLevel = 1.9,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [8134] = { -- Lightning Shield(Rank 5)
        spellLevel = 40,
        maxLevel = 0,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 114,
                valueRange = 0,
                triggeredSpell = 26369,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [8187] = { -- Magma Totem(Rank 1)
        spellLevel = 26,
        maxLevel = 35,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 38,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [8190] = { -- Magma Totem(Rank 1)
        spellLevel = 26,
        maxLevel = 0,
        duration = 20,
        baseCostPct = 27,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 8187,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8349] = { -- Fire Nova(Rank 1)
        spellLevel = 12,
        maxLevel = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 48,
                valueRange = 8,
                valuePerLevel = 1.1,
                coef = 0.15,
                coefAP = 0,
            },
        }
    },
    [8498] = { -- Fire Nova(Rank 2)
        spellLevel = 22,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 8502,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8499] = { -- Fire Nova(Rank 3)
        spellLevel = 32,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 8503,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8502] = { -- Fire Nova(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 102,
                valueRange = 14,
                valuePerLevel = 1.6,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [8503] = { -- Fire Nova(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 184,
                valueRange = 24,
                valuePerLevel = 2.2,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [10391] = { -- Lightning Bolt(Rank 7)
        spellLevel = 38,
        maxLevel = 43,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 227,
                valueRange = 28,
                valuePerLevel = 1.7,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [10392] = { -- Lightning Bolt(Rank 8)
        spellLevel = 44,
        maxLevel = 49,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 282,
                valueRange = 34,
                valuePerLevel = 1.9,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [10395] = { -- Healing Wave(Rank 8)
        spellLevel = 48,
        maxLevel = 53,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1017,
                valueRange = 150,
                valuePerLevel = 4.7,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [10396] = { -- Healing Wave(Rank 9)
        spellLevel = 56,
        maxLevel = 61,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1367,
                valueRange = 194,
                valuePerLevel = 5.5,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [10412] = { -- Earth Shock(Rank 5)
        spellLevel = 36,
        maxLevel = 41,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 225,
                valueRange = 14,
                valuePerLevel = 2,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [10413] = { -- Earth Shock(Rank 6)
        spellLevel = 48,
        maxLevel = 53,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 359,
                valueRange = 22,
                valuePerLevel = 2.6,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [10414] = { -- Earth Shock(Rank 7)
        spellLevel = 60,
        maxLevel = 65,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 517,
                valueRange = 28,
                valuePerLevel = 3.1,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [10431] = { -- Lightning Shield(Rank 6)
        spellLevel = 48,
        maxLevel = 0,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 154,
                valueRange = 0,
                triggeredSpell = 26370,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [10432] = { -- Lightning Shield(Rank 7)
        spellLevel = 56,
        maxLevel = 0,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 198,
                valueRange = 0,
                triggeredSpell = 26363,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [10435] = { -- Attack(Rank 5)
        spellLevel = 50,
        maxLevel = 59,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 33,
                valueRange = 12,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [10436] = { -- Attack(Rank 6)
        spellLevel = 60,
        maxLevel = 68,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 40,
                valueRange = 14,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [10437] = { -- Searing Totem(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        duration = 50,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10435,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10438] = { -- Searing Totem(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 55,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10436,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10447] = { -- Flame Shock(Rank 4)
        spellLevel = 40,
        maxLevel = 45,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 152,
                valueRange = 0,
                valuePerLevel = 2.3,
                coef = 0.214,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 42,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10448] = { -- Flame Shock(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 230,
                valueRange = 0,
                valuePerLevel = 2.9,
                coef = 0.214,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 64,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10462] = { -- Healing Stream Totem(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 5,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 52048,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [10463] = { -- Healing Stream Totem(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 5,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 52049,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [10466] = { -- Lesser Healing Wave(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 458,
                valueRange = 56,
                valuePerLevel = 3,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [10467] = { -- Lesser Healing Wave(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 631,
                valueRange = 74,
                valuePerLevel = 3.6,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [10468] = { -- Lesser Healing Wave(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 832,
                valueRange = 96,
                valuePerLevel = 4.2,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [10472] = { -- Frost Shock(Rank 3)
        spellLevel = 46,
        maxLevel = 51,
        duration = 8,
        baseCostPct = 18,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 333,
                valueRange = 20,
                valuePerLevel = 2.5,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [10473] = { -- Frost Shock(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCostPct = 18,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 486,
                valueRange = 28,
                valuePerLevel = 3,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [10579] = { -- Magma Totem(Rank 2)
        spellLevel = 36,
        maxLevel = 45,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 64,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10580] = { -- Magma Totem(Rank 3)
        spellLevel = 46,
        maxLevel = 55,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 94,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10581] = { -- Magma Totem(Rank 4)
        spellLevel = 56,
        maxLevel = 64,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 131,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10585] = { -- Magma Totem(Rank 2)
        spellLevel = 36,
        maxLevel = 0,
        duration = 20,
        baseCostPct = 27,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10579,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10586] = { -- Magma Totem(Rank 3)
        spellLevel = 46,
        maxLevel = 0,
        duration = 20,
        baseCostPct = 27,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10580,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10587] = { -- Magma Totem(Rank 4)
        spellLevel = 56,
        maxLevel = 0,
        duration = 20,
        baseCostPct = 27,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10581,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10605] = { -- Chain Lightning(Rank 4)
        spellLevel = 56,
        maxLevel = 61,
        baseCostPct = 26,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 493,
                valueRange = 58,
                valuePerLevel = 3.1,
                coef = 0.571,
                coefAP = 0,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [10622] = { -- Chain Heal(Rank 2)
        spellLevel = 46,
        maxLevel = 51,
        baseCostPct = 19,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 405,
                valueRange = 60,
                valuePerLevel = 2.8,
                coef = 1.343,
                coefAP = 0,
                chains = 3,
                chainMult = 0.6,
            },
        }
    },
    [10623] = { -- Chain Heal(Rank 3)
        spellLevel = 54,
        maxLevel = 59,
        baseCostPct = 19,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 551,
                valueRange = 78,
                valuePerLevel = 3.3,
                coef = 1.343,
                coefAP = 0,
                chains = 3,
                chainMult = 0.6,
            },
        }
    },
    [11306] = { -- Fire Nova(Rank 4)
        spellLevel = 42,
        maxLevel = 47,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 281,
                valueRange = 36,
                valuePerLevel = 2.8,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [11307] = { -- Fire Nova(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 396,
                valueRange = 46,
                valuePerLevel = 3.4,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [11314] = { -- Fire Nova(Rank 4)
        spellLevel = 42,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 11306,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [11315] = { -- Fire Nova(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 11307,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [15207] = { -- Lightning Bolt(Rank 9)
        spellLevel = 50,
        maxLevel = 55,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 347,
                valueRange = 42,
                valuePerLevel = 2.1,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [15208] = { -- Lightning Bolt(Rank 10)
        spellLevel = 56,
        maxLevel = 61,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 419,
                valueRange = 48,
                valuePerLevel = 2.4,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [17364] = { -- Stormstrike
        spellLevel = 40,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 8,
        school = 1,
        defType = 2,
        equippedWeaponMask = 173555,
        charges = 4,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 32175,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 32176,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25357] = { -- Healing Wave(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1620,
                valueRange = 230,
                valuePerLevel = 5.5,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [25391] = { -- Healing Wave(Rank 11)
        spellLevel = 63,
        maxLevel = 68,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1725,
                valueRange = 244,
                valuePerLevel = 6.3,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [25396] = { -- Healing Wave(Rank 12)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2134,
                valueRange = 302,
                valuePerLevel = 7.1,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [25420] = { -- Lesser Healing Wave(Rank 7)
        spellLevel = 66,
        maxLevel = 70,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1039,
                valueRange = 146,
                valuePerLevel = 4.2,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [25422] = { -- Chain Heal(Rank 4)
        spellLevel = 61,
        maxLevel = 66,
        baseCostPct = 19,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 605,
                valueRange = 86,
                valuePerLevel = 3.8,
                coef = 1.343,
                coefAP = 0,
                chains = 3,
                chainMult = 0.6,
            },
        }
    },
    [25423] = { -- Chain Heal(Rank 5)
        spellLevel = 68,
        maxLevel = 73,
        baseCostPct = 19,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 826,
                valueRange = 116,
                valuePerLevel = 3.8,
                coef = 1.343,
                coefAP = 0,
                chains = 3,
                chainMult = 0.6,
            },
        }
    },
    [25439] = { -- Chain Lightning(Rank 5)
        spellLevel = 63,
        maxLevel = 68,
        baseCostPct = 26,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 603,
                valueRange = 84,
                valuePerLevel = 3.5,
                coef = 0.571,
                coefAP = 0,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [25442] = { -- Chain Lightning(Rank 6)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 26,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 734,
                valueRange = 104,
                valuePerLevel = 3.9,
                coef = 0.571,
                coefAP = 0,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [25448] = { -- Lightning Bolt(Rank 11)
        spellLevel = 62,
        maxLevel = 66,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 495,
                valueRange = 70,
                valuePerLevel = 2.6,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [25449] = { -- Lightning Bolt(Rank 12)
        spellLevel = 67,
        maxLevel = 71,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 563,
                valueRange = 80,
                valuePerLevel = 2.8,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [25454] = { -- Earth Shock(Rank 8)
        spellLevel = 69,
        maxLevel = 73,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 658,
                valueRange = 34,
                valuePerLevel = 3.6,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [25457] = { -- Flame Shock(Rank 7)
        spellLevel = 70,
        maxLevel = 74,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 377,
                valueRange = 0,
                valuePerLevel = 3.8,
                coef = 0.214,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 105,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [25464] = { -- Frost Shock(Rank 5)
        spellLevel = 68,
        maxLevel = 72,
        duration = 8,
        baseCostPct = 18,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 640,
                valueRange = 36,
                valuePerLevel = 3.5,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [25469] = { -- Lightning Shield(Rank 8)
        spellLevel = 63,
        maxLevel = 68,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 232,
                valueRange = 0,
                triggeredSpell = 26371,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [25472] = { -- Lightning Shield(Rank 9)
        spellLevel = 70,
        maxLevel = 74,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 287,
                valueRange = 0,
                triggeredSpell = 26372,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [25530] = { -- Attack(Rank 7)
        spellLevel = 69,
        maxLevel = 74,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 56,
                valueRange = 18,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [25533] = { -- Searing Totem(Rank 7)
        spellLevel = 69,
        maxLevel = 0,
        duration = 60,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 25530,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25535] = { -- Fire Nova(Rank 6)
        spellLevel = 61,
        maxLevel = 66,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 518,
                valueRange = 60,
                valuePerLevel = 3.9,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [25537] = { -- Fire Nova(Rank 7)
        spellLevel = 70,
        maxLevel = 75,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 727,
                valueRange = 86,
                valuePerLevel = 4.5,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [25546] = { -- Fire Nova(Rank 6)
        spellLevel = 61,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25535,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25547] = { -- Fire Nova(Rank 7)
        spellLevel = 70,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25537,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25550] = { -- Magma Totem(Rank 5)
        spellLevel = 65,
        maxLevel = 72,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 180,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [25552] = { -- Magma Totem(Rank 5)
        spellLevel = 65,
        maxLevel = 0,
        duration = 20,
        baseCostPct = 27,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 25550,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25567] = { -- Healing Stream Totem(Rank 6)
        spellLevel = 69,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 5,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 52050,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [26363] = { -- Lightning Shield(Rank 7)
        spellLevel = 56,
        maxLevel = 62,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 198,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [26364] = { -- Lightning Shield(Rank 1)
        spellLevel = 8,
        maxLevel = 15,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 0,
                coef = 0.147,
                coefAP = 0,
            },
        }
    },
    [26365] = { -- Lightning Shield(Rank 2)
        spellLevel = 16,
        maxLevel = 23,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 29,
                valueRange = 0,
                coef = 0.227,
                coefAP = 0,
            },
        }
    },
    [26366] = { -- Lightning Shield(Rank 3)
        spellLevel = 24,
        maxLevel = 31,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 51,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [26367] = { -- Lightning Shield(Rank 4)
        spellLevel = 32,
        maxLevel = 39,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 80,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [26369] = { -- Lightning Shield(Rank 5)
        spellLevel = 40,
        maxLevel = 47,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 114,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [26370] = { -- Lightning Shield(Rank 6)
        spellLevel = 48,
        maxLevel = 55,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 154,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [26371] = { -- Lightning Shield(Rank 8)
        spellLevel = 63,
        maxLevel = 69,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 232,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [26372] = { -- Lightning Shield(Rank 9)
        spellLevel = 70,
        maxLevel = 74,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 287,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [29228] = { -- Flame Shock(Rank 6)
        spellLevel = 60,
        maxLevel = 67,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 309,
                valueRange = 0,
                valuePerLevel = 3.5,
                coef = 0.214,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 86,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [32175] = { -- Stormstrike
        spellLevel = 40,
        maxLevel = 0,
        school = 1,
        defType = 2,
        cantDogeParryBlock = true,
        equippedWeaponMask = 173555,
        charges = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 0,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [32176] = { -- Stormstrike
        spellLevel = 40,
        maxLevel = 0,
        school = 1,
        defType = 2,
        cantDogeParryBlock = true,
        equippedWeaponMask = 173555,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 0,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [32593] = { -- Earth Shield(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 600,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        forceHeal = true,
        charges = 6,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 205,
                valueRange = 0,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [32594] = { -- Earth Shield(Rank 3)
        spellLevel = 70,
        maxLevel = 74,
        duration = 600,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        forceHeal = true,
        charges = 6,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 270,
                valueRange = 0,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [49230] = { -- Earth Shock(Rank 9)
        spellLevel = 74,
        maxLevel = 78,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 723,
                valueRange = 38,
                valuePerLevel = 4,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [49231] = { -- Earth Shock(Rank 10)
        spellLevel = 79,
        maxLevel = 83,
        duration = 8,
        baseCostPct = 18,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 849,
                valueRange = 46,
                valuePerLevel = 5,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [49232] = { -- Flame Shock(Rank 8)
        spellLevel = 75,
        maxLevel = 79,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 425,
                valueRange = 0,
                valuePerLevel = 4,
                coef = 0.214,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 119,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [49233] = { -- Flame Shock(Rank 9)
        spellLevel = 80,
        maxLevel = 84,
        duration = 18,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 500,
                valueRange = 0,
                valuePerLevel = 5,
                coef = 0.214,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 139,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [49235] = { -- Frost Shock(Rank 6)
        spellLevel = 73,
        maxLevel = 77,
        duration = 8,
        baseCostPct = 18,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 681,
                valueRange = 38,
                valuePerLevel = 4,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [49236] = { -- Frost Shock(Rank 7)
        spellLevel = 78,
        maxLevel = 82,
        duration = 8,
        baseCostPct = 18,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 802,
                valueRange = 46,
                valuePerLevel = 5,
                coef = 0.386,
                coefAP = 0,
            },
        }
    },
    [49237] = { -- Lightning Bolt(Rank 13)
        spellLevel = 73,
        maxLevel = 77,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 595,
                valueRange = 84,
                valuePerLevel = 3,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [49238] = { -- Lightning Bolt(Rank 14)
        spellLevel = 79,
        maxLevel = 83,
        baseCostPct = 10,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 715,
                valueRange = 100,
                valuePerLevel = 4,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [49270] = { -- Chain Lightning(Rank 7)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 26,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 806,
                valueRange = 114,
                valuePerLevel = 4,
                coef = 0.571,
                coefAP = 0,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [49271] = { -- Chain Lightning(Rank 8)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 26,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 973,
                valueRange = 138,
                valuePerLevel = 5,
                coef = 0.571,
                coefAP = 0,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [49272] = { -- Healing Wave(Rank 13)
        spellLevel = 75,
        maxLevel = 79,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2624,
                valueRange = 372,
                valuePerLevel = 8,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [49273] = { -- Healing Wave(Rank 14)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3034,
                valueRange = 432,
                valuePerLevel = 9,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [49275] = { -- Lesser Healing Wave(Rank 8)
        spellLevel = 72,
        maxLevel = 76,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1382,
                valueRange = 196,
                valuePerLevel = 5,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [49276] = { -- Lesser Healing Wave(Rank 9)
        spellLevel = 77,
        maxLevel = 81,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1606,
                valueRange = 228,
                valuePerLevel = 6,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [49278] = { -- Lightning Shield(Rank 10)
        spellLevel = 75,
        maxLevel = 79,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 325,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [49279] = { -- Lightning Shield(Rank 11)
        spellLevel = 80,
        maxLevel = 84,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 380,
                valueRange = 0,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [49280] = { -- Lightning Shield(Rank 10)
        spellLevel = 75,
        maxLevel = 79,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 325,
                valueRange = 0,
                triggeredSpell = 49278,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [49281] = { -- Lightning Shield(Rank 11)
        spellLevel = 80,
        maxLevel = 84,
        duration = 600,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 380,
                valueRange = 0,
                triggeredSpell = 49279,
                coef = 0.267,
                coefAP = 0,
            },
        }
    },
    [49283] = { -- Earth Shield(Rank 4)
        spellLevel = 75,
        maxLevel = 79,
        duration = 600,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        forceHeal = true,
        charges = 6,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 300,
                valueRange = 0,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [49284] = { -- Earth Shield(Rank 5)
        spellLevel = 80,
        maxLevel = 84,
        duration = 600,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        forceHeal = true,
        charges = 6,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 337,
                valueRange = 0,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [51490] = { -- Thunderstorm(Rank 1)
        spellLevel = 60,
        maxLevel = 65,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 551,
                valueRange = 78,
                valuePerLevel = 3,
                coef = 0.172,
                coefAP = 0,
            },
            [2] = {
                effectType = 137,
                valueBase = 8,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [51505] = { -- Lava Burst(Rank 1)
        spellLevel = 75,
        maxLevel = 80,
        baseCostPct = 10,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1012,
                valueRange = 278,
                valuePerLevel = 5.2,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [52041] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 6,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [52046] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 8,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [52047] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 10,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [52048] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 12,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [52049] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 14,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [52050] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 18,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [55458] = { -- Chain Heal(Rank 6)
        spellLevel = 74,
        maxLevel = 79,
        baseCostPct = 19,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 906,
                valueRange = 128,
                valuePerLevel = 3.8,
                coef = 1.343,
                coefAP = 0,
                chains = 3,
                chainMult = 0.6,
            },
        }
    },
    [55459] = { -- Chain Heal(Rank 7)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 19,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1055,
                valueRange = 150,
                valuePerLevel = 3.8,
                coef = 1.343,
                coefAP = 0,
                chains = 3,
                chainMult = 0.6,
            },
        }
    },
    [58699] = { -- Searing Totem(Rank 8)
        spellLevel = 71,
        maxLevel = 0,
        duration = 60,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 58700,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [58700] = { -- Attack(Rank 8)
        spellLevel = 71,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 68,
                valueRange = 24,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [58701] = { -- Attack(Rank 9)
        spellLevel = 75,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 77,
                valueRange = 26,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [58702] = { -- Attack(Rank 10)
        spellLevel = 80,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 90,
                valueRange = 30,
                coef = 0.167,
                coefAP = 0,
            },
        }
    },
    [58703] = { -- Searing Totem(Rank 9)
        spellLevel = 75,
        maxLevel = 0,
        duration = 60,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 58701,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [58704] = { -- Searing Totem(Rank 10)
        spellLevel = 80,
        maxLevel = 0,
        duration = 60,
        baseCostPct = 7,
        school = 1,
        GCD = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 58702,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [58731] = { -- Magma Totem(Rank 6)
        spellLevel = 73,
        maxLevel = 0,
        duration = 20,
        baseCostPct = 27,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 58732,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [58732] = { -- Magma Totem(Rank 6)
        spellLevel = 73,
        maxLevel = 77,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 314,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [58734] = { -- Magma Totem(Rank 7)
        spellLevel = 78,
        maxLevel = 0,
        duration = 20,
        baseCostPct = 27,
        school = 1,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 58735,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [58735] = { -- Magma Totem(Rank 7)
        spellLevel = 78,
        maxLevel = 82,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 371,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [58755] = { -- Healing Stream Totem(Rank 7)
        spellLevel = 71,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 5,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 58759,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [58756] = { -- Healing Stream Totem(Rank 8)
        spellLevel = 76,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 5,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 58760,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [58757] = { -- Healing Stream Totem(Rank 9)
        spellLevel = 80,
        maxLevel = 0,
        duration = 300,
        baseCostPct = 3,
        school = 5,
        GCD = 1,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 58761,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [58759] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 20,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [58760] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 23,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [58761] = { -- Healing Stream Totem
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 0,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 25,
                valueRange = 0,
                coef = 0.0825,
                coefAP = 0,
            },
        }
    },
    [59156] = { -- Thunderstorm(Rank 2)
        spellLevel = 70,
        maxLevel = 75,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1074,
                valueRange = 152,
                valuePerLevel = 3,
                coef = 0.172,
                coefAP = 0,
            },
            [2] = {
                effectType = 137,
                valueBase = 8,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [59158] = { -- Thunderstorm(Rank 3)
        spellLevel = 75,
        maxLevel = 80,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1226,
                valueRange = 174,
                valuePerLevel = 3,
                coef = 0.172,
                coefAP = 0,
            },
            [2] = {
                effectType = 137,
                valueBase = 8,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [59159] = { -- Thunderstorm(Rank 4)
        spellLevel = 80,
        maxLevel = 85,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1450,
                valueRange = 206,
                valuePerLevel = 3,
                coef = 0.172,
                coefAP = 0,
            },
            [2] = {
                effectType = 137,
                valueBase = 8,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [60043] = { -- Lava Burst(Rank 2)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 10,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1192,
                valueRange = 326,
                valuePerLevel = 6.5,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [60103] = { -- Lava Lash(Rank 1)
        spellLevel = 41,
        maxLevel = 0,
        baseCostPct = 4,
        school = 3,
        defType = 2,
        equippedWeaponMask = 173555,
        effects = {
            [1] = {
                effectType = 31,
                weaponCoef = 1,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [61295] = { -- Riptide(Rank 1)
        spellLevel = 60,
        maxLevel = 69,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 639,
                valueRange = 52,
                coef = 0.402,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 133,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [61299] = { -- Riptide(Rank 2)
        spellLevel = 70,
        maxLevel = 74,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 849,
                valueRange = 70,
                coef = 0.402,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 177,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [61300] = { -- Riptide(Rank 3)
        spellLevel = 75,
        maxLevel = 79,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1378,
                valueRange = 114,
                coef = 0.402,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 287,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [61301] = { -- Riptide(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1604,
                valueRange = 132,
                coef = 0.402,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 334,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [61649] = { -- Fire Nova(Rank 8)
        spellLevel = 75,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 61650,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [61650] = { -- Fire Nova(Rank 8)
        spellLevel = 75,
        maxLevel = 80,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 755,
                valueRange = 88,
                valuePerLevel = 4.5,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [61654] = { -- Fire Nova(Rank 9)
        spellLevel = 80,
        maxLevel = 85,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 893,
                valueRange = 104,
                valuePerLevel = 4.5,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [61657] = { -- Fire Nova(Rank 9)
        spellLevel = 80,
        maxLevel = 0,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 61654,
                coef = 0,
                coefAP = 0,
            },
        }
    },
};

---@type SpellClassSet
_addon.spellClassSet = {
    [1] = {
        [1] = {
            403, -- Lightning Bolt(Rank 1)
            529, -- Lightning Bolt(Rank 2)
            548, -- Lightning Bolt(Rank 3)
            915, -- Lightning Bolt(Rank 4)
            943, -- Lightning Bolt(Rank 5)
            6041, -- Lightning Bolt(Rank 6)
            10391, -- Lightning Bolt(Rank 7)
            10392, -- Lightning Bolt(Rank 8)
            15207, -- Lightning Bolt(Rank 9)
            15208, -- Lightning Bolt(Rank 10)
            25448, -- Lightning Bolt(Rank 11)
            25449, -- Lightning Bolt(Rank 12)
            45284, -- Lightning Bolt(Rank 1)
            45286, -- Lightning Bolt(Rank 2)
            45287, -- Lightning Bolt(Rank 3)
            45288, -- Lightning Bolt(Rank 4)
            45289, -- Lightning Bolt(Rank 5)
            45290, -- Lightning Bolt(Rank 6)
            45291, -- Lightning Bolt(Rank 7)
            45292, -- Lightning Bolt(Rank 8)
            45293, -- Lightning Bolt(Rank 9)
            45294, -- Lightning Bolt(Rank 10)
            45295, -- Lightning Bolt(Rank 11)
            45296, -- Lightning Bolt(Rank 12)
            49237, -- Lightning Bolt(Rank 13)
            49238, -- Lightning Bolt(Rank 14)
            49239, -- Lightning Bolt(Rank 13)
            49240, -- Lightning Bolt(Rank 14)
            55277, -- Stoneclaw Totem
            57781, -- Lightning Bolt
            60009, -- Lightning Bolt
            71934, -- Lightning Bolt
        },
        [2] = {
            421, -- Chain Lightning(Rank 1)
            930, -- Chain Lightning(Rank 2)
            2860, -- Chain Lightning(Rank 3)
            10605, -- Chain Lightning(Rank 4)
            25439, -- Chain Lightning(Rank 5)
            25442, -- Chain Lightning(Rank 6)
            45297, -- Chain Lightning(Rank 1)
            45298, -- Chain Lightning(Rank 2)
            45299, -- Chain Lightning(Rank 3)
            45300, -- Chain Lightning(Rank 4)
            45301, -- Chain Lightning(Rank 5)
            45302, -- Chain Lightning(Rank 6)
            49268, -- Chain Lightning(Rank 7)
            49269, -- Chain Lightning(Rank 8)
            49270, -- Chain Lightning(Rank 7)
            49271, -- Chain Lightning(Rank 8)
            55864, -- Thunderblade
            59199, -- Lightning Bolt
        },
        [4] = {
            8187, -- Magma Totem(Rank 1)
            10579, -- Magma Totem(Rank 2)
            10580, -- Magma Totem(Rank 3)
            10581, -- Magma Totem(Rank 4)
            17012, -- Devour Magic
            25550, -- Magma Totem(Rank 5)
            58732, -- Magma Totem(Rank 6)
            58735, -- Magma Totem(Rank 7)
            61905, -- Magma Totem Test Effect
        },
        [8] = {
            5730, -- Stoneclaw Totem(Rank 1)
            6390, -- Stoneclaw Totem(Rank 2)
            6391, -- Stoneclaw Totem(Rank 3)
            6392, -- Stoneclaw Totem(Rank 4)
            10427, -- Stoneclaw Totem(Rank 5)
            10428, -- Stoneclaw Totem(Rank 6)
            25525, -- Stoneclaw Totem(Rank 7)
            58580, -- Stoneclaw Totem(Rank 8)
            58581, -- Stoneclaw Totem(Rank 9)
            58582, -- Stoneclaw Totem(Rank 10)
        },
        [16] = {
            3599, -- Searing Totem(Rank 1)
            6363, -- Searing Totem(Rank 2)
            6364, -- Searing Totem(Rank 3)
            6365, -- Searing Totem(Rank 4)
            10437, -- Searing Totem(Rank 5)
            10438, -- Searing Totem(Rank 6)
            25533, -- Searing Totem(Rank 7)
            38116, -- Searing Totem(Rank 2)
            38581, -- Corrupted Searing Totem
            39588, -- Searing Totem
            39589, -- Cyclone Totem
            39591, -- Searing Totem
            58699, -- Searing Totem(Rank 8)
            58703, -- Searing Totem(Rank 9)
            58704, -- Searing Totem(Rank 10)
            68835, -- Unstable Searing Totem
        },
        [64] = {
            331, -- Healing Wave(Rank 1)
            332, -- Healing Wave(Rank 2)
            547, -- Healing Wave(Rank 3)
            913, -- Healing Wave(Rank 4)
            939, -- Healing Wave(Rank 5)
            959, -- Healing Wave(Rank 6)
            8005, -- Healing Wave(Rank 7)
            10395, -- Healing Wave(Rank 8)
            10396, -- Healing Wave(Rank 9)
            25357, -- Healing Wave(Rank 10)
            25391, -- Healing Wave(Rank 11)
            25396, -- Healing Wave(Rank 12)
            49272, -- Healing Wave(Rank 13)
            49273, -- Healing Wave(Rank 14)
        },
        [128] = {
            8004, -- Lesser Healing Wave(Rank 1)
            8008, -- Lesser Healing Wave(Rank 2)
            8010, -- Lesser Healing Wave(Rank 3)
            10466, -- Lesser Healing Wave(Rank 4)
            10467, -- Lesser Healing Wave(Rank 5)
            10468, -- Lesser Healing Wave(Rank 6)
            25420, -- Lesser Healing Wave(Rank 7)
            27624, -- Lesser Healing Wave(Rank 6)
            44256, -- Lesser Healing Wave
            46181, -- Lesser Healing Wave
            49275, -- Lesser Healing Wave(Rank 8)
            49276, -- Lesser Healing Wave(Rank 9)
            49309, -- Lesser Healing Wave
            60559, -- LK Arena 4 Totem of the Third Wind
            75366, -- Lesser Healing Wave
        },
        [256] = {
            1064, -- Chain Heal(Rank 1)
            10622, -- Chain Heal(Rank 2)
            10623, -- Chain Heal(Rank 3)
            25422, -- Chain Heal(Rank 4)
            25423, -- Chain Heal(Rank 5)
            55458, -- Chain Heal(Rank 6)
            55459, -- Chain Heal(Rank 7)
        },
        [512] = {
            20608, -- Reincarnation(Passive)
            21169, -- Reincarnation
            23683, -- Twisting Nether
            27740, -- Reincarnation
        },
        [1024] = {
            324, -- Lightning Shield(Rank 1)
            325, -- Lightning Shield(Rank 2)
            905, -- Lightning Shield(Rank 3)
            945, -- Lightning Shield(Rank 4)
            8134, -- Lightning Shield(Rank 5)
            10431, -- Lightning Shield(Rank 6)
            10432, -- Lightning Shield(Rank 7)
            25469, -- Lightning Shield(Rank 8)
            25472, -- Lightning Shield(Rank 9)
            26363, -- Lightning Shield(Rank 7)
            26364, -- Lightning Shield(Rank 1)
            26365, -- Lightning Shield(Rank 2)
            26366, -- Lightning Shield(Rank 3)
            26367, -- Lightning Shield(Rank 4)
            26369, -- Lightning Shield(Rank 5)
            26370, -- Lightning Shield(Rank 6)
            26371, -- Lightning Shield(Rank 8)
            26372, -- Lightning Shield(Rank 9)
            27635, -- Lightning Shield
            32642, -- Spore Cloud
            34828, -- Water Shield
            35320, -- Electric Skin
            49278, -- Lightning Shield(Rank 10)
            49279, -- Lightning Shield(Rank 11)
            49280, -- Lightning Shield(Rank 10)
            49281, -- Lightning Shield(Rank 11)
        },
        [2048] = {
            2645, -- Ghost Wolf
            45528, -- Ghost Wolf
        },
        [4096] = {
            8190, -- Magma Totem(Rank 1)
            10585, -- Magma Totem(Rank 2)
            10586, -- Magma Totem(Rank 3)
            10587, -- Magma Totem(Rank 4)
            25552, -- Magma Totem(Rank 5)
            58731, -- Magma Totem(Rank 6)
            58734, -- Magma Totem(Rank 7)
        },
        [8192] = {
            5672, -- Healing Stream(Rank 1)
            6371, -- Healing Stream(Rank 2)
            6372, -- Healing Stream(Rank 3)
            10460, -- Healing Stream(Rank 4)
            10461, -- Healing Stream(Rank 5)
            25566, -- Healing Stream(Rank 6)
            32136, -- Corrupted Healing Stream
            51847, -- The Brewmaiden's Blessing(Rank 6)
            52041, -- Healing Stream Totem
            52046, -- Healing Stream Totem
            52047, -- Healing Stream Totem
            52048, -- Healing Stream Totem
            52049, -- Healing Stream Totem
            52050, -- Healing Stream Totem
            58759, -- Healing Stream Totem
            58760, -- Healing Stream Totem
            58761, -- Healing Stream Totem
            58763, -- Healing Stream(Rank 7)
            58764, -- Healing Stream(Rank 8)
            58765, -- Healing Stream(Rank 9)
            68269, -- The Brewmaiden's Blessing(Rank 6)
        },
        [16384] = {
            5677, -- Mana Spring(Rank 1)
            10491, -- Mana Spring(Rank 2)
            10493, -- Mana Spring(Rank 3)
            10494, -- Mana Spring(Rank 4)
            24853, -- Mana Spring
            25569, -- Mana Spring(Rank 5)
            52031, -- Mana Spring Totem
            52033, -- Mana Spring Totem
            52034, -- Mana Spring Totem
            52035, -- Mana Spring Totem
            52036, -- Mana Spring Totem
            58775, -- Mana Spring(Rank 6)
            58776, -- Mana Spring(Rank 7)
            58777, -- Mana Spring(Rank 8)
            58778, -- Mana Spring Totem
            58779, -- Mana Spring Totem
            58780, -- Mana Spring Totem
        },
        [32768] = {
            8072, -- Stoneskin(Rank 1)
            8156, -- Stoneskin(Rank 2)
            8157, -- Stoneskin(Rank 3)
            10403, -- Stoneskin(Rank 4)
            10404, -- Stoneskin(Rank 5)
            10405, -- Stoneskin(Rank 6)
            25506, -- Stoneskin(Rank 7)
            25507, -- Stoneskin(Rank 8)
            31986, -- Stoneskin
            58752, -- Stoneskin(Rank 9)
            58754, -- Stoneskin(Rank 10)
            68893, -- Stoneskin(Rank 10)
        },
        [65536] = {
            8076, -- Strength of Earth(Rank 1)
            8162, -- Strength of Earth(Rank 2)
            8163, -- Strength of Earth(Rank 3)
            10441, -- Strength of Earth(Rank 4)
            25362, -- Strength of Earth(Rank 5)
            25527, -- Strength of Earth(Rank 6)
            31634, -- Strength of Earth(Rank 1)
            32729, -- Strength of the Mag'halar(Rank 1)
            33571, -- Strength of the Storm
            57621, -- Strength of Earth(Rank 7)
            58646, -- Strength of Earth(Rank 8)
        },
        [131072] = {
            32138, -- Corrupted Air
            32662, -- Shadow Totem
        },
        [262144] = {
            8177, -- Grounding Totem
            34079, -- Grounding Totem
        },
        [524288] = {
            5394, -- Healing Stream Totem(Rank 1)
            5675, -- Mana Spring Totem(Rank 1)
            6375, -- Healing Stream Totem(Rank 2)
            6377, -- Healing Stream Totem(Rank 3)
            10462, -- Healing Stream Totem(Rank 4)
            10463, -- Healing Stream Totem(Rank 5)
            10495, -- Mana Spring Totem(Rank 2)
            10496, -- Mana Spring Totem(Rank 3)
            10497, -- Mana Spring Totem(Rank 4)
            23422, -- Corrupted Healing Stream Totem(Rank 5)
            24854, -- Mana Spring Totem
            25567, -- Healing Stream Totem(Rank 6)
            25570, -- Mana Spring Totem(Rank 5)
            32135, -- Corrupted Healing Stream Totem
            32137, -- Corrupted Air Totem
            35199, -- Healing Stream Totem
            58755, -- Healing Stream Totem(Rank 7)
            58756, -- Healing Stream Totem(Rank 8)
            58757, -- Healing Stream Totem(Rank 9)
            58771, -- Mana Spring Totem(Rank 6)
            58773, -- Mana Spring Totem(Rank 7)
            58774, -- Mana Spring Totem(Rank 8)
            62699, -- Rejuvinating Totem(Rank 1)
            70517, -- Healing Stream Totem
            75368, -- Healing Stream Totem
        },
        [1048576] = {
            8042, -- Earth Shock(Rank 1)
            8044, -- Earth Shock(Rank 2)
            8045, -- Earth Shock(Rank 3)
            8046, -- Earth Shock(Rank 4)
            10412, -- Earth Shock(Rank 5)
            10413, -- Earth Shock(Rank 6)
            10414, -- Earth Shock(Rank 7)
            25454, -- Earth Shock(Rank 8)
            49230, -- Earth Shock(Rank 9)
            49231, -- Earth Shock(Rank 10)
            60573, -- LK Arena 4 Gladiator's Totem of Survival
        },
        [2097152] = {
            8026, -- Flametongue Weapon Proc(Rank 1)
            8028, -- Flametongue Weapon Proc(Rank 2)
            8029, -- Flametongue Weapon Proc(Rank 3)
            10400, -- Flametongue Weapon (Passive)(Rank 1)
            10444, -- Flametongue Attack
            10445, -- Flametongue Weapon Proc(Rank 4)
            15567, -- Flametongue Weapon (Passive)(Rank 2)
            15568, -- Flametongue Weapon (Passive)(Rank 3)
            15569, -- Flametongue Weapon (Passive)(Rank 4)
            16311, -- Flametongue Weapon (Passive)(Rank 5)
            16312, -- Flametongue Weapon (Passive)(Rank 6)
            16313, -- Flametongue Weapon (Passive)(Rank 7)
            16343, -- Flametongue Weapon Proc(Rank 5)
            16344, -- Flametongue Weapon Proc(Rank 6)
            25488, -- Flametongue Weapon Proc(Rank 7)
            51385, -- Frozen Rune Weapon 2(Rank 2)
            51386, -- Frozen Rune Weapon 3(Rank 2)
            51387, -- Frozen Rune Weapon 4(Rank 4)
            51388, -- Frozen Rune Weapon 5(Rank 5)
            58784, -- Flametongue Weapon (Passive)(Rank 8)
            58786, -- Flametongue Weapon Proc(Rank 8)
            58787, -- Flametongue Weapon Proc(Rank 9)
            58788, -- Flametongue Weapon Proc(Rank 10)
            58791, -- Flametongue Weapon (Passive)(Rank 9)
            58792, -- Flametongue Weapon (Passive)(Rank 10)
        },
        [4194304] = {
            8017, -- Rockbiter Weapon(Rank 1)
            8018, -- Rockbiter Weapon(Rank 2)
            8019, -- Rockbiter Weapon(Rank 3)
            10399, -- Rockbiter Weapon(Rank 4)
        },
        [8388608] = {
            25504, -- Windfury Attack
            32910, -- Windfury
            33750, -- Windfury Attack
        },
        [16777216] = {
            8034, -- Frostbrand Attack(Rank 1)
            8037, -- Frostbrand Attack(Rank 2)
            10458, -- Frostbrand Attack(Rank 3)
            16352, -- Frostbrand Attack(Rank 4)
            16353, -- Frostbrand Attack(Rank 5)
            25501, -- Frostbrand Attack(Rank 6)
            38617, -- Frostbrand Attack
            58797, -- Frostbrand Attack(Rank 7)
            58798, -- Frostbrand Attack(Rank 8)
            58799, -- Frostbrand Attack(Rank 9)
            64186, -- Frostbrand Attack(Rank 9)
        },
        [33554432] = {
            52109, -- Flametongue Totem(Rank 1)
            52110, -- Flametongue Totem(Rank 2)
            52111, -- Flametongue Totem(Rank 3)
            52112, -- Flametongue Totem(Rank 4)
            52113, -- Flametongue Totem(Rank 5)
            58651, -- Flametongue Totem(Rank 6)
            58654, -- Flametongue Totem(Rank 7)
            58655, -- Flametongue Totem(Rank 8)
        },
        [67108864] = {
            8146, -- Tremor Totem Effect
            8171, -- Cleansing Totem Pulse
            8178, -- Grounding Totem Effect(Rank 1)
            8182, -- Frost Resistance(Rank 1)
            8185, -- Fire Resistance(Rank 1)
            10476, -- Frost Resistance(Rank 2)
            10477, -- Frost Resistance(Rank 3)
            10534, -- Fire Resistance(Rank 2)
            10535, -- Fire Resistance(Rank 3)
            10596, -- Nature Resistance(Rank 1)
            10598, -- Nature Resistance(Rank 2)
            10599, -- Nature Resistance(Rank 3)
            16191, -- Mana Tide
            25559, -- Frost Resistance(Rank 4)
            25562, -- Fire Resistance(Rank 4)
            25573, -- Nature Resistance(Rank 4)
            30039, -- Transference
            30107, -- Transference
            30708, -- Totem of Wrath
            38857, -- Spell Ground
            39610, -- Mana Tide Totem
            52025, -- Cleansing Totem Effect
            52031, -- Mana Spring Totem
            52033, -- Mana Spring Totem
            52034, -- Mana Spring Totem
            52035, -- Mana Spring Totem
            52036, -- Mana Spring Totem
            52041, -- Healing Stream Totem
            52046, -- Healing Stream Totem
            52047, -- Healing Stream Totem
            52048, -- Healing Stream Totem
            52049, -- Healing Stream Totem
            52050, -- Healing Stream Totem
            54061, -- Spell Redirection
            57658, -- Totem of Wrath
            57660, -- Totem of Wrath
            57662, -- Totem of Wrath
            57663, -- Totem of Wrath
            58738, -- Fire Resistance(Rank 5)
            58740, -- Fire Resistance(Rank 6)
            58742, -- Frost Resistance(Rank 5)
            58744, -- Frost Resistance(Rank 6)
            58748, -- Nature Resistance(Rank 5)
            58750, -- Nature Resistance(Rank 6)
            58759, -- Healing Stream Totem
            58760, -- Healing Stream Totem
            58761, -- Healing Stream Totem
            58778, -- Mana Spring Totem
            58779, -- Mana Spring Totem
            58780, -- Mana Spring Totem
            63283, -- Totem of Wrath
        },
        [134217728] = {
            1535, -- Fire Nova(Rank 1)
            8498, -- Fire Nova(Rank 2)
            8499, -- Fire Nova(Rank 3)
            11314, -- Fire Nova(Rank 4)
            11315, -- Fire Nova(Rank 5)
            23419, -- Corrupted Fire Nova Totem
            25546, -- Fire Nova(Rank 6)
            25547, -- Fire Nova(Rank 7)
            27623, -- Fire Nova Totem(Rank 5)
            32062, -- Fire Nova Totem
            38624, -- Water Elemental Totem
            44130, -- Earth Elemental Totem
            44257, -- Fire Nova Totem
            61649, -- Fire Nova(Rank 8)
            61657, -- Fire Nova(Rank 9)
        },
        [268435456] = {
            8050, -- Flame Shock(Rank 1)
            8052, -- Flame Shock(Rank 2)
            8053, -- Flame Shock(Rank 3)
            10447, -- Flame Shock(Rank 4)
            10448, -- Flame Shock(Rank 5)
            25457, -- Flame Shock(Rank 7)
            29228, -- Flame Shock(Rank 6)
            49232, -- Flame Shock(Rank 8)
            49233, -- Flame Shock(Rank 9)
            55613, -- Flame Shock
            58971, -- Flame Shock
            60573, -- LK Arena 4 Gladiator's Totem of Survival
        },
        [536870912] = {
            2062, -- Earth Elemental Totem
            2484, -- Earthbind Totem
            2894, -- Fire Elemental Totem
            3738, -- Wrath of Air Totem
            6495, -- Sentry Totem
            8071, -- Stoneskin Totem(Rank 1)
            8075, -- Strength of Earth Totem(Rank 1)
            8143, -- Tremor Totem
            8154, -- Stoneskin Totem(Rank 2)
            8155, -- Stoneskin Totem(Rank 3)
            8160, -- Strength of Earth Totem(Rank 2)
            8161, -- Strength of Earth Totem(Rank 3)
            8170, -- Cleansing Totem
            8177, -- Grounding Totem
            8181, -- Frost Resistance Totem(Rank 1)
            8184, -- Fire Resistance Totem(Rank 1)
            8227, -- Flametongue Totem(Rank 1)
            8249, -- Flametongue Totem(Rank 2)
            8512, -- Windfury Totem
            10406, -- Stoneskin Totem(Rank 4)
            10407, -- Stoneskin Totem(Rank 5)
            10408, -- Stoneskin Totem(Rank 6)
            10442, -- Strength of Earth Totem(Rank 4)
            10478, -- Frost Resistance Totem(Rank 2)
            10479, -- Frost Resistance Totem(Rank 3)
            10526, -- Flametongue Totem(Rank 3)
            10537, -- Fire Resistance Totem(Rank 2)
            10538, -- Fire Resistance Totem(Rank 3)
            10595, -- Nature Resistance Totem(Rank 1)
            10600, -- Nature Resistance Totem(Rank 2)
            10601, -- Nature Resistance Totem(Rank 3)
            16190, -- Mana Tide Totem
            16387, -- Flametongue Totem(Rank 4)
            23419, -- Corrupted Fire Nova Totem
            23420, -- Corrupted Stoneskin Totem
            23423, -- Corrupted Windfury Totem
            25001, -- Spirit Totem
            25361, -- Strength of Earth Totem(Rank 5)
            25508, -- Stoneskin Totem(Rank 7)
            25509, -- Stoneskin Totem(Rank 8)
            25528, -- Strength of Earth Totem(Rank 6)
            25557, -- Flametongue Totem(Rank 5)
            25560, -- Frost Resistance Totem(Rank 4)
            25563, -- Fire Resistance Totem(Rank 4)
            25574, -- Nature Resistance Totem(Rank 4)
            27621, -- Windfury Totem(Rank 3)
            27623, -- Fire Nova Totem(Rank 5)
            30706, -- Totem of Wrath(Rank 1)
            31633, -- Strength of Earth Totem(Rank 1)
            31985, -- Tainted Stoneskin Totem
            32062, -- Fire Nova Totem
            33570, -- Strength of the Storm Totem(Rank 1)
            34079, -- Grounding Totem
            35197, -- Terror Totem
            38115, -- Stoneskin Totem(Rank 2)
            38624, -- Water Elemental Totem
            39586, -- Summon Windfury Totem
            44130, -- Earth Elemental Totem
            44257, -- Fire Nova Totem
            57622, -- Strength of Earth Totem(Rank 7)
            57720, -- Totem of Wrath(Rank 2)
            57721, -- Totem of Wrath(Rank 3)
            57722, -- Totem of Wrath(Rank 4)
            58643, -- Strength of Earth Totem(Rank 8)
            58649, -- Flametongue Totem(Rank 6)
            58652, -- Flametongue Totem(Rank 7)
            58656, -- Flametongue Totem(Rank 8)
            58737, -- Fire Resistance Totem(Rank 5)
            58739, -- Fire Resistance Totem(Rank 6)
            58741, -- Frost Resistance Totem(Rank 5)
            58745, -- Frost Resistance Totem(Rank 6)
            58746, -- Nature Resistance Totem(Rank 5)
            58749, -- Nature Resistance Totem(Rank 6)
            58751, -- Stoneskin Totem(Rank 9)
            58753, -- Stoneskin Totem(Rank 10)
        },
        [1073741824] = {
            3606, -- Attack(Rank 1)
            6350, -- Attack(Rank 2)
            6351, -- Attack(Rank 3)
            6352, -- Attack(Rank 4)
            8187, -- Magma Totem(Rank 1)
            10435, -- Attack(Rank 5)
            10436, -- Attack(Rank 6)
            10579, -- Magma Totem(Rank 2)
            10580, -- Magma Totem(Rank 3)
            10581, -- Magma Totem(Rank 4)
            25002, -- Spirit Disruption
            25530, -- Attack(Rank 7)
            25550, -- Magma Totem(Rank 5)
            30624, -- Fel Miasma
            38584, -- Attack
            39592, -- Attack
            39593, -- Attack
            58700, -- Attack(Rank 8)
            58701, -- Attack(Rank 9)
            58702, -- Attack(Rank 10)
            58732, -- Magma Totem(Rank 6)
            58735, -- Magma Totem(Rank 7)
            61655, -- Fire Nova(Rank 9)
            61905, -- Magma Totem Test Effect
            68866, -- Attack
        },
        [2147483648] = {
            8056, -- Frost Shock(Rank 1)
            8058, -- Frost Shock(Rank 2)
            10472, -- Frost Shock(Rank 3)
            10473, -- Frost Shock(Rank 4)
            25464, -- Frost Shock(Rank 5)
            49235, -- Frost Shock(Rank 6)
            49236, -- Frost Shock(Rank 7)
            60573, -- LK Arena 4 Gladiator's Totem of Survival
        },
    },
    [2] = {
        [1] = {
            3600, -- Earthbind
            59566, -- Earthen Power
            62287, -- Tar
            63532, -- Earthen Power
        },
        [2] = {
            51528, -- Maelstrom Weapon(Rank 1)
        },
        [8] = {
            526, -- Cure Toxins
            51886, -- Cleanse Spirit
        },
        [16] = {
            17364, -- Stormstrike
            32175, -- Stormstrike
            32176, -- Stormstrike
        },
        [32] = {
            23575, -- Water Shield
            24398, -- Water Shield(Rank 7)
            33736, -- Water Shield(Rank 8)
            33737, -- Water Shield
            52127, -- Water Shield(Rank 1)
            52128, -- Water Shield
            52129, -- Water Shield(Rank 2)
            52130, -- Water Shield
            52131, -- Water Shield(Rank 3)
            52132, -- Water Shield
            52133, -- Water Shield
            52134, -- Water Shield(Rank 4)
            52135, -- Water Shield
            52136, -- Water Shield(Rank 5)
            52137, -- Water Shield
            52138, -- Water Shield(Rank 6)
            57960, -- Water Shield(Rank 9)
            57961, -- Water Shield
        },
        [64] = {
            2825, -- Bloodlust
            32182, -- Heroism
        },
        [128] = {
            16188, -- Nature's Swiftness
            38466, -- Nature's Swiftness Cooldown Reduction
            38499, -- Nature's Swiftness Cooldown Reduction
        },
        [256] = {
            2895, -- Wrath of Air Totem
            68933, -- Wrath of Air Totem
        },
        [512] = {
            16257, -- Flurry(Rank 1)
            16277, -- Flurry(Rank 2)
            16278, -- Flurry(Rank 3)
            16279, -- Flurry(Rank 4)
            16280, -- Flurry(Rank 5)
        },
        [1024] = {
            974, -- Earth Shield(Rank 1)
            32593, -- Earth Shield(Rank 2)
            32594, -- Earth Shield(Rank 3)
            49283, -- Earth Shield(Rank 4)
            49284, -- Earth Shield(Rank 5)
        },
        [2048] = {
            131, -- Water Breathing
            370, -- Purge(Rank 1)
            546, -- Water Walking
            8012, -- Purge(Rank 2)
            8024, -- Flametongue Weapon(Rank 1)
            8027, -- Flametongue Weapon(Rank 2)
            8030, -- Flametongue Weapon(Rank 3)
            8033, -- Frostbrand Weapon(Rank 1)
            8038, -- Frostbrand Weapon(Rank 2)
            8232, -- Windfury Weapon(Rank 1)
            8235, -- Windfury Weapon(Rank 2)
            10456, -- Frostbrand Weapon(Rank 3)
            10486, -- Windfury Weapon(Rank 3)
            16339, -- Flametongue Weapon(Rank 4)
            16341, -- Flametongue Weapon(Rank 5)
            16342, -- Flametongue Weapon(Rank 6)
            16355, -- Frostbrand Weapon(Rank 4)
            16356, -- Frostbrand Weapon(Rank 5)
            16362, -- Windfury Weapon(Rank 4)
            25489, -- Flametongue Weapon(Rank 7)
            25500, -- Frostbrand Weapon(Rank 6)
            25505, -- Windfury Weapon(Rank 5)
            51730, -- Earthliving Weapon(Rank 1)
            51988, -- Earthliving Weapon(Rank 2)
            51991, -- Earthliving Weapon(Rank 3)
            51992, -- Earthliving Weapon(Rank 4)
            51993, -- Earthliving Weapon(Rank 5)
            51994, -- Earthliving Weapon(Rank 6)
            57994, -- Wind Shear
            58785, -- Flametongue Weapon(Rank 8)
            58789, -- Flametongue Weapon(Rank 9)
            58790, -- Flametongue Weapon(Rank 10)
            58794, -- Frostbrand Weapon(Rank 7)
            58795, -- Frostbrand Weapon(Rank 8)
            58796, -- Frostbrand Weapon(Rank 9)
            58801, -- Windfury Weapon(Rank 6)
            58803, -- Windfury Weapon(Rank 7)
            58804, -- Windfury Weapon(Rank 8)
        },
        [4096] = {
            51505, -- Lava Burst(Rank 1)
            53814, -- Maelstrom Weapon
            53816, -- Maelstrom Weapon
            53819, -- Maelstrom Weapon
            55166, -- Tidal Force
            60043, -- Lava Burst(Rank 2)
        },
        [8192] = {
            51490, -- Thunderstorm(Rank 1)
            59156, -- Thunderstorm(Rank 2)
            59158, -- Thunderstorm(Rank 3)
            59159, -- Thunderstorm(Rank 4)
        },
        [16384] = {
            16166, -- Elemental Mastery
            16246, -- Clearcasting
        },
        [32768] = {
            51514, -- Hex
        },
        [65536] = {
            51533, -- Feral Spirit
            52120, -- Feral Spirit
            52123, -- Copy of Feral Spirit
        },
        [131072] = {
            30823, -- Shamanistic Rage
        },
        [262144] = {
            8349, -- Fire Nova(Rank 1)
            8502, -- Fire Nova(Rank 2)
            8503, -- Fire Nova(Rank 3)
            11306, -- Fire Nova(Rank 4)
            11307, -- Fire Nova(Rank 5)
            25535, -- Fire Nova(Rank 6)
            25537, -- Fire Nova(Rank 7)
            61650, -- Fire Nova(Rank 8)
            61654, -- Fire Nova(Rank 9)
            61655, -- Fire Nova(Rank 9)
        },
        [524288] = {
            51945, -- Earthliving(Rank 1)
            51990, -- Earthliving(Rank 2)
            51997, -- Earthliving(Rank 3)
            51998, -- Earthliving(Rank 4)
            51999, -- Earthliving(Rank 5)
            52000, -- Earthliving(Rank 6)
        },
        [1048576] = {
            51940, -- Earthliving Weapon (Passive)(Rank 1)
            51989, -- Earthliving Weapon (Passive)(Rank 2)
            52004, -- Earthliving Weapon (Passive)(Rank 3)
            52005, -- Earthliving Weapon (Passive)(Rank 4)
            52007, -- Earthliving Weapon (Passive)(Rank 5)
            52008, -- Earthliving Weapon (Passive)(Rank 6)
        },
        [2097152] = {
            8515, -- Windfury Totem(Rank 1)
        },
        [4194304] = {
            2062, -- Earth Elemental Totem
        },
        [8388608] = {
            2894, -- Fire Elemental Totem
        },
        [16777216] = {
            17364, -- Stormstrike
        },
        [33554432] = {
            30708, -- Totem of Wrath
            57658, -- Totem of Wrath
            57660, -- Totem of Wrath
            57662, -- Totem of Wrath
            57663, -- Totem of Wrath
            63283, -- Totem of Wrath
        },
        [67108864] = {
            16177, -- Ancestral Fortitude(Rank 1)
            16236, -- Ancestral Fortitude(Rank 2)
            16237, -- Ancestral Fortitude(Rank 3)
            53390, -- Tidal Waves
        },
        [134217728] = {
            57994, -- Wind Shear
        },
        [268435456] = {
            131, -- Water Breathing
        },
        [536870912] = {
            546, -- Water Walking
        },
        [1073741824] = {
            556, -- Astral Recall
        },
        [2147483648] = {
            8349, -- Fire Nova(Rank 1)
            8502, -- Fire Nova(Rank 2)
            8503, -- Fire Nova(Rank 3)
            11306, -- Fire Nova(Rank 4)
            11307, -- Fire Nova(Rank 5)
            25535, -- Fire Nova(Rank 6)
            25537, -- Fire Nova(Rank 7)
            61650, -- Fire Nova(Rank 8)
            61654, -- Fire Nova(Rank 9)
            61655, -- Fire Nova(Rank 9)
        },
    },
    [3] = {
        [1] = {
            55166, -- Tidal Force
            55198, -- Tidal Force
        },
        [2] = {
            58855, -- Growl
            58857, -- Twin Howl
            58859, -- Spirit Bite
            58861, -- Bash(Rank 1)
            58875, -- Spirit Walk
            58877, -- Spirit Hunt
            58879, -- Spirit Hunt
        },
        [4] = {
            60103, -- Lava Lash(Rank 1)
        },
        [8] = {
            16287, -- Improved Ghost Wolf(Rank 2)
        },
        [16] = {
            61295, -- Riptide(Rank 1)
            61299, -- Riptide(Rank 2)
            61300, -- Riptide(Rank 3)
            61301, -- Riptide(Rank 4)
        },
        [32] = {
            2484, -- Earthbind Totem
        },
        [64] = {
            379, -- Earth Shield
            16194, -- Tidal Mastery(Rank 1)
            16218, -- Tidal Mastery(Rank 2)
            16219, -- Tidal Mastery(Rank 3)
        },
        [256] = {
            33757, -- Windfury Weapon (Passive)(Rank 1)
        },
        [512] = {
            51528, -- Maelstrom Weapon(Rank 1)
            51529, -- Maelstrom Weapon(Rank 2)
            51530, -- Maelstrom Weapon(Rank 3)
            51531, -- Maelstrom Weapon(Rank 4)
            51532, -- Maelstrom Weapon(Rank 5)
            53814, -- Maelstrom Weapon
            53816, -- Maelstrom Weapon
            53817, -- Maelstrom Weapon
            53818, -- Maelstrom Weapon
            53819, -- Maelstrom Weapon
        },
        [1024] = {
            32175, -- Stormstrike
            32176, -- Stormstrike
        },
        [2048] = {
            65223, -- Command
        },
        [4096] = {
            32175, -- Stormstrike
            32176, -- Stormstrike
        },
        [8192] = {
            51525, -- Static Shock(Rank 1)
            51526, -- Static Shock(Rank 2)
            51527, -- Static Shock(Rank 3)
        },
        [16384] = {
            64695, -- Earthgrab
        },
        [2147483648] = {
            59547, -- Gift of the Naaru(Racial)
        },
    },
    [4] = {
    },
};

---@type ClassGlyphs
_addon.classGlyphs = {
    [55454] = { -- Glyph of Lava
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_SPELL_SCALE,
            affectSpell = {0, 4096, 0, 0},
            value = 10,
        },
    },
    [55442] = { -- Glyph of Shocking
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {-1877999616, 134217728, 0, 0},
            value = -499,
        },
    },
    [55447] = { -- Glyph of Flame Shock
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
            affectSpell = {268435456, 0, 0, 0},
            value = 60,
        },
    },
    [55443] = { -- Glyph of Frost Shock
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {-2147483648, 0, 0, 0},
            value = 2000,
        },
    },
    [55448] = { -- Glyph of Lightning Shield
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1024, 0, 0, 0},
            value = 20,
        },
    },
    [55453] = { -- Glyph of Lightning Bolt
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1, 0, 0, 0},
            value = 4,
        },
    },
    [58063] = { -- Glyph of Water Shield
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_CHARGES,
            affectSpell = {0, 32, 0, 0},
            value = 1,
        },
    },
    [63273] = { -- Glyph of Riptide
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {0, 0, 16, 0},
            value = 6000,
        },
    },
};


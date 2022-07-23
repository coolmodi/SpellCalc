-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.spellRankInfo = {
    [339] = { -- Entangling Roots(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 7,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 5,
                valueRange = 0,
                coef = 0.055,
                coefAP = 0,
            },
        }
    },
    [467] = { -- Thorns(Rank 1)
        spellLevel = 6,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 3,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [740] = { -- Tranquility(Rank 1)
        spellLevel = 30,
        maxLevel = 36,
        duration = 8,
        baseCostPct = 70,
        school = 4,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 44203,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [774] = { -- Rejuvenation(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 8,
                valueRange = 0,
                coef = 0.15,
                coefAP = 0,
            },
        }
    },
    [782] = { -- Thorns(Rank 2)
        spellLevel = 14,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 6,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [1058] = { -- Rejuvenation(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 14,
                valueRange = 0,
                coef = 0.235,
                coefAP = 0,
            },
        }
    },
    [1062] = { -- Entangling Roots(Rank 2)
        spellLevel = 18,
        maxLevel = 0,
        duration = 15,
        baseCostPct = 7,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 10,
                valueRange = 0,
                coef = 0.093,
                coefAP = 0,
            },
        }
    },
    [1075] = { -- Thorns(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 9,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [1430] = { -- Rejuvenation(Rank 3)
        spellLevel = 16,
        maxLevel = 21,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 29,
                valueRange = 0,
                coef = 0.32,
                coefAP = 0,
            },
        }
    },
    [2090] = { -- Rejuvenation(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 45,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [2091] = { -- Rejuvenation(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 61,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [2912] = { -- Starfire(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 121,
                valueRange = 28,
                valuePerLevel = 1.2,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [3627] = { -- Rejuvenation(Rank 6)
        spellLevel = 34,
        maxLevel = 39,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 76,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [5176] = { -- Wrath(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 17,
                valueRange = 2,
                valuePerLevel = 0.4,
                coef = 0.123,
                coefAP = 0,
            },
        }
    },
    [5177] = { -- Wrath(Rank 2)
        spellLevel = 6,
        maxLevel = 12,
        baseCostPct = 9,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 32,
                valueRange = 4,
                valuePerLevel = 0.6,
                coef = 0.231,
                coefAP = 0,
            },
        }
    },
    [5178] = { -- Wrath(Rank 3)
        spellLevel = 14,
        maxLevel = 20,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 49,
                valueRange = 8,
                valuePerLevel = 0.8,
                coef = 0.443,
                coefAP = 0,
            },
        }
    },
    [5179] = { -- Wrath(Rank 4)
        spellLevel = 22,
        maxLevel = 28,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 68,
                valueRange = 10,
                valuePerLevel = 1,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [5180] = { -- Wrath(Rank 5)
        spellLevel = 30,
        maxLevel = 36,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 130,
                valueRange = 18,
                valuePerLevel = 1.3,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [5185] = { -- Healing Touch(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 37,
                valueRange = 14,
                valuePerLevel = 0.8,
                coef = 0.231,
                coefAP = 0,
            },
        }
    },
    [5186] = { -- Healing Touch(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        baseCostPct = 22,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 88,
                valueRange = 24,
                valuePerLevel = 1.3,
                coef = 0.59,
                coefAP = 0,
            },
        }
    },
    [5187] = { -- Healing Touch(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCostPct = 28,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 195,
                valueRange = 48,
                valuePerLevel = 1.9,
                coef = 1.042,
                coefAP = 0,
            },
        }
    },
    [5188] = { -- Healing Touch(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 363,
                valueRange = 82,
                valuePerLevel = 2.7,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [5189] = { -- Healing Touch(Rank 5)
        spellLevel = 26,
        maxLevel = 31,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 490,
                valueRange = 104,
                valuePerLevel = 3,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [5195] = { -- Entangling Roots(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 18,
        baseCostPct = 7,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 15,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [5196] = { -- Entangling Roots(Rank 4)
        spellLevel = 38,
        maxLevel = 0,
        duration = 21,
        baseCostPct = 7,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [5570] = { -- Insect Swarm(Rank 1)
        spellLevel = 20,
        maxLevel = 29,
        duration = 12,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 24,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [6778] = { -- Healing Touch(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 636,
                valueRange = 130,
                valuePerLevel = 3.4,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [6780] = { -- Wrath(Rank 6)
        spellLevel = 38,
        maxLevel = 44,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 169,
                valueRange = 22,
                valuePerLevel = 1.6,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [8903] = { -- Healing Touch(Rank 7)
        spellLevel = 38,
        maxLevel = 43,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 802,
                valueRange = 158,
                valuePerLevel = 3.9,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [8905] = { -- Wrath(Rank 7)
        spellLevel = 46,
        maxLevel = 52,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 215,
                valueRange = 26,
                valuePerLevel = 1.8,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [8910] = { -- Rejuvenation(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 97,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [8914] = { -- Thorns(Rank 4)
        spellLevel = 34,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 12,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8918] = { -- Tranquility(Rank 2)
        spellLevel = 40,
        maxLevel = 46,
        duration = 8,
        baseCostPct = 70,
        school = 4,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 44205,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8921] = { -- Moonfire(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 9,
        baseCostPct = 18,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 7,
                valueRange = 2,
                valuePerLevel = 0.5,
                coef = 0.06,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 4,
                valueRange = 0,
                coef = 0.052,
                coefAP = 0,
            },
        }
    },
    [8924] = { -- Moonfire(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 4,
                valuePerLevel = 0.8,
                coef = 0.094,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 8,
                valueRange = 0,
                coef = 0.081,
                coefAP = 0,
            },
        }
    },
    [8925] = { -- Moonfire(Rank 3)
        spellLevel = 16,
        maxLevel = 21,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 6,
                valuePerLevel = 1.1,
                coef = 0.128,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 13,
                valueRange = 0,
                coef = 0.111,
                coefAP = 0,
            },
        }
    },
    [8926] = { -- Moonfire(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 40,
                valueRange = 8,
                valuePerLevel = 1.4,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [8927] = { -- Moonfire(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 61,
                valueRange = 12,
                valuePerLevel = 1.8,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 31,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [8928] = { -- Moonfire(Rank 6)
        spellLevel = 34,
        maxLevel = 39,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 81,
                valueRange = 16,
                valuePerLevel = 2.1,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 41,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [8929] = { -- Moonfire(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 105,
                valueRange = 20,
                valuePerLevel = 2.4,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 53,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [8936] = { -- Regrowth(Rank 1)
        spellLevel = 12,
        maxLevel = 17,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 84,
                valueRange = 14,
                valuePerLevel = 1.8,
                coef = 0.376,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 14,
                valueRange = 0,
                coef = 0.132,
                coefAP = 0,
            },
        }
    },
    [8938] = { -- Regrowth(Rank 2)
        spellLevel = 18,
        maxLevel = 23,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 164,
                valueRange = 24,
                valuePerLevel = 2.5,
                coef = 0.496,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 25,
                valueRange = 0,
                coef = 0.175,
                coefAP = 0,
            },
        }
    },
    [8939] = { -- Regrowth(Rank 3)
        spellLevel = 24,
        maxLevel = 29,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 240,
                valueRange = 34,
                valuePerLevel = 3.1,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 37,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [8940] = { -- Regrowth(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 318,
                valueRange = 42,
                valuePerLevel = 3.6,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 49,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [8941] = { -- Regrowth(Rank 5)
        spellLevel = 36,
        maxLevel = 41,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 405,
                valueRange = 52,
                valuePerLevel = 4.1,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 61,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [8949] = { -- Starfire(Rank 2)
        spellLevel = 26,
        maxLevel = 32,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 189,
                valueRange = 42,
                valuePerLevel = 1.6,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [8950] = { -- Starfire(Rank 3)
        spellLevel = 34,
        maxLevel = 40,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 272,
                valueRange = 56,
                valuePerLevel = 1.9,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [8951] = { -- Starfire(Rank 4)
        spellLevel = 42,
        maxLevel = 48,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 370,
                valueRange = 72,
                valuePerLevel = 2.3,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9750] = { -- Regrowth(Rank 6)
        spellLevel = 42,
        maxLevel = 47,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 511,
                valueRange = 64,
                valuePerLevel = 4.7,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 78,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [9756] = { -- Thorns(Rank 5)
        spellLevel = 44,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 15,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9758] = { -- Healing Touch(Rank 8)
        spellLevel = 44,
        maxLevel = 49,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1199,
                valueRange = 228,
                valuePerLevel = 4.5,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [9833] = { -- Moonfire(Rank 8)
        spellLevel = 46,
        maxLevel = 51,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 130,
                valueRange = 24,
                valuePerLevel = 2.7,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 66,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [9834] = { -- Moonfire(Rank 9)
        spellLevel = 52,
        maxLevel = 57,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 157,
                valueRange = 28,
                valuePerLevel = 3,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 80,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [9835] = { -- Moonfire(Rank 10)
        spellLevel = 58,
        maxLevel = 63,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 189,
                valueRange = 32,
                valuePerLevel = 3.3,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 96,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [9839] = { -- Rejuvenation(Rank 8)
        spellLevel = 46,
        maxLevel = 51,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 122,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [9840] = { -- Rejuvenation(Rank 9)
        spellLevel = 52,
        maxLevel = 57,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 152,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [9841] = { -- Rejuvenation(Rank 10)
        spellLevel = 58,
        maxLevel = 63,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 189,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [9852] = { -- Entangling Roots(Rank 5)
        spellLevel = 48,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 7,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 25,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [9853] = { -- Entangling Roots(Rank 6)
        spellLevel = 58,
        maxLevel = 0,
        duration = 27,
        baseCostPct = 7,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 30,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [9856] = { -- Regrowth(Rank 7)
        spellLevel = 48,
        maxLevel = 53,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 646,
                valueRange = 78,
                valuePerLevel = 5.3,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 98,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [9857] = { -- Regrowth(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 809,
                valueRange = 96,
                valuePerLevel = 6,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 123,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [9858] = { -- Regrowth(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1003,
                valueRange = 116,
                valuePerLevel = 6.8,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 152,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [9862] = { -- Tranquility(Rank 3)
        spellLevel = 50,
        maxLevel = 56,
        duration = 8,
        baseCostPct = 70,
        school = 4,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 44206,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9863] = { -- Tranquility(Rank 4)
        spellLevel = 60,
        maxLevel = 66,
        duration = 8,
        baseCostPct = 70,
        school = 4,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 44207,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9875] = { -- Starfire(Rank 5)
        spellLevel = 50,
        maxLevel = 56,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 485,
                valueRange = 90,
                valuePerLevel = 2.7,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9876] = { -- Starfire(Rank 6)
        spellLevel = 58,
        maxLevel = 64,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 615,
                valueRange = 110,
                valuePerLevel = 3,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9888] = { -- Healing Touch(Rank 9)
        spellLevel = 50,
        maxLevel = 55,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1299,
                valueRange = 240,
                valuePerLevel = 5.1,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [9889] = { -- Healing Touch(Rank 10)
        spellLevel = 56,
        maxLevel = 61,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1620,
                valueRange = 292,
                valuePerLevel = 5.7,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [9910] = { -- Thorns(Rank 6)
        spellLevel = 54,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 18,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9912] = { -- Wrath(Rank 8)
        spellLevel = 54,
        maxLevel = 60,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 306,
                valueRange = 38,
                valuePerLevel = 2.1,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [16914] = { -- Hurricane(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        duration = 10,
        baseCostPct = 81,
        school = 4,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 42231,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [17401] = { -- Hurricane(Rank 2)
        spellLevel = 50,
        maxLevel = 56,
        duration = 10,
        baseCostPct = 81,
        school = 4,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 42232,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [17402] = { -- Hurricane(Rank 3)
        spellLevel = 60,
        maxLevel = 66,
        duration = 10,
        baseCostPct = 81,
        school = 4,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 42233,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [24974] = { -- Insect Swarm(Rank 2)
        spellLevel = 30,
        maxLevel = 39,
        duration = 12,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 39,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [24975] = { -- Insect Swarm(Rank 3)
        spellLevel = 40,
        maxLevel = 49,
        duration = 12,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 62,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [24976] = { -- Insect Swarm(Rank 4)
        spellLevel = 50,
        maxLevel = 59,
        duration = 12,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 90,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [24977] = { -- Insect Swarm(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        duration = 12,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 124,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [25297] = { -- Healing Touch(Rank 11)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1944,
                valueRange = 350,
                valuePerLevel = 6.2,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [25298] = { -- Starfire(Rank 7)
        spellLevel = 60,
        maxLevel = 66,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 693,
                valueRange = 124,
                valuePerLevel = 3.1,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [25299] = { -- Rejuvenation(Rank 11)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 222,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [26978] = { -- Healing Touch(Rank 12)
        spellLevel = 62,
        maxLevel = 67,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2026,
                valueRange = 366,
                valuePerLevel = 6.3,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [26979] = { -- Healing Touch(Rank 13)
        spellLevel = 69,
        maxLevel = 73,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2321,
                valueRange = 418,
                valuePerLevel = 7,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [26980] = { -- Regrowth(Rank 10)
        spellLevel = 65,
        maxLevel = 70,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1215,
                valueRange = 140,
                valuePerLevel = 7.7,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 182,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [26981] = { -- Rejuvenation(Rank 12)
        spellLevel = 63,
        maxLevel = 68,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 233,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [26982] = { -- Rejuvenation(Rank 13)
        spellLevel = 69,
        maxLevel = 73,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 265,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [26983] = { -- Tranquility(Rank 5)
        spellLevel = 70,
        maxLevel = 74,
        duration = 8,
        baseCostPct = 70,
        school = 4,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 44208,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [26984] = { -- Wrath(Rank 9)
        spellLevel = 61,
        maxLevel = 67,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 397,
                valueRange = 50,
                valuePerLevel = 2.4,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [26985] = { -- Wrath(Rank 10)
        spellLevel = 69,
        maxLevel = 73,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 431,
                valueRange = 54,
                valuePerLevel = 2.7,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [26986] = { -- Starfire(Rank 8)
        spellLevel = 67,
        maxLevel = 71,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 818,
                valueRange = 146,
                valuePerLevel = 3.4,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [26987] = { -- Moonfire(Rank 11)
        spellLevel = 63,
        maxLevel = 68,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 220,
                valueRange = 38,
                valuePerLevel = 3.6,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 111,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [26988] = { -- Moonfire(Rank 12)
        spellLevel = 70,
        maxLevel = 74,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 305,
                valueRange = 52,
                valuePerLevel = 3.9,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 150,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [26989] = { -- Entangling Roots(Rank 7)
        spellLevel = 68,
        maxLevel = 77,
        duration = 27,
        baseCostPct = 7,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 39,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [26992] = { -- Thorns(Rank 7)
        spellLevel = 64,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 25,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27012] = { -- Hurricane(Rank 4)
        spellLevel = 70,
        maxLevel = 76,
        duration = 10,
        baseCostPct = 81,
        school = 4,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 42230,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27013] = { -- Insect Swarm(Rank 6)
        spellLevel = 70,
        maxLevel = 79,
        duration = 12,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 172,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [33763] = { -- Lifebloom(Rank 1)
        spellLevel = 64,
        maxLevel = 71,
        duration = 7,
        baseCostPct = 28,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 32,
                valueRange = 0,
                coef = 0.0952,
                coefAP = 0,
                auraStacks = 3,
            },
            [2] = {
                effectType = 10,
                valueBase = 480,
                valueRange = 0,
                coef = 0.3429,
                coefAP = 0,
            },
        }
    },
    [42230] = { -- Hurricane(Rank 4)
        spellLevel = 70,
        maxLevel = 76,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 303,
                valueRange = 0,
                valuePerLevel = 0.4,
                coef = 0.129,
                coefAP = 0,
            },
        }
    },
    [42231] = { -- Hurricane(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 100,
                valueRange = 0,
                valuePerLevel = 0.2,
                coef = 0.129,
                coefAP = 0,
            },
        }
    },
    [42232] = { -- Hurricane(Rank 2)
        spellLevel = 50,
        maxLevel = 56,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 142,
                valueRange = 0,
                valuePerLevel = 0.2,
                coef = 0.129,
                coefAP = 0,
            },
        }
    },
    [42233] = { -- Hurricane(Rank 3)
        spellLevel = 60,
        maxLevel = 66,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 190,
                valueRange = 0,
                valuePerLevel = 0.3,
                coef = 0.129,
                coefAP = 0,
            },
        }
    },
    [44203] = { -- Tranquility(Rank 1)
        spellLevel = 30,
        maxLevel = 36,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 351,
                valueRange = 0,
                valuePerLevel = 2.2,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [44205] = { -- Tranquility(Rank 2)
        spellLevel = 40,
        maxLevel = 46,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 515,
                valueRange = 0,
                valuePerLevel = 2.6,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [44206] = { -- Tranquility(Rank 3)
        spellLevel = 50,
        maxLevel = 56,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 765,
                valueRange = 0,
                valuePerLevel = 3.4,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [44207] = { -- Tranquility(Rank 4)
        spellLevel = 60,
        maxLevel = 66,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1097,
                valueRange = 0,
                valuePerLevel = 3.7,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [44208] = { -- Tranquility(Rank 5)
        spellLevel = 70,
        maxLevel = 74,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1518,
                valueRange = 0,
                valuePerLevel = 4.5,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [48377] = { -- Healing Touch(Rank 14)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3223,
                valueRange = 582,
                valuePerLevel = 9.8,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [48378] = { -- Healing Touch(Rank 15)
        spellLevel = 79,
        maxLevel = 83,
        baseCostPct = 33,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3750,
                valueRange = 678,
                valuePerLevel = 11.4,
                coef = 1.61,
                coefAP = 0,
            },
        }
    },
    [48438] = { -- Wild Growth(Rank 1)
        spellLevel = 60,
        maxLevel = 69,
        duration = 7,
        baseCostPct = 23,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 98,
                valueRange = 0,
                coef = 0.115,
                coefAP = 0,
            },
        }
    },
    [48440] = { -- Rejuvenation(Rank 14)
        spellLevel = 75,
        maxLevel = 79,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 298,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [48441] = { -- Rejuvenation(Rank 15)
        spellLevel = 80,
        maxLevel = 84,
        duration = 15,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 338,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [48442] = { -- Regrowth(Rank 11)
        spellLevel = 71,
        maxLevel = 76,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1710,
                valueRange = 198,
                valuePerLevel = 10.8,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 256,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [48443] = { -- Regrowth(Rank 12)
        spellLevel = 77,
        maxLevel = 81,
        duration = 21,
        baseCostPct = 29,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2234,
                valueRange = 260,
                valuePerLevel = 7.7,
                coef = 0.538,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 335,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
    [48444] = { -- Tranquility(Rank 6)
        spellLevel = 75,
        maxLevel = 79,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2598,
                valueRange = 0,
                valuePerLevel = 4.5,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [48445] = { -- Tranquility(Rank 7)
        spellLevel = 80,
        maxLevel = 84,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3035,
                valueRange = 0,
                valuePerLevel = 4.5,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [48446] = { -- Tranquility(Rank 6)
        spellLevel = 75,
        maxLevel = 79,
        duration = 8,
        baseCostPct = 70,
        school = 4,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 48444,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48447] = { -- Tranquility(Rank 7)
        spellLevel = 80,
        maxLevel = 84,
        duration = 8,
        baseCostPct = 70,
        school = 4,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 48445,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48450] = { -- Lifebloom(Rank 2)
        spellLevel = 72,
        maxLevel = 79,
        duration = 7,
        baseCostPct = 28,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 41,
                valueRange = 0,
                coef = 0.0952,
                coefAP = 0,
                auraStacks = 3,
            },
            [2] = {
                effectType = 10,
                valueBase = 616,
                valueRange = 0,
                coef = 0.3429,
                coefAP = 0,
            },
        }
    },
    [48451] = { -- Lifebloom(Rank 3)
        spellLevel = 80,
        maxLevel = 84,
        duration = 7,
        baseCostPct = 28,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 53,
                valueRange = 0,
                coef = 0.0952,
                coefAP = 0,
                auraStacks = 3,
            },
            [2] = {
                effectType = 10,
                valueBase = 776,
                valueRange = 0,
                coef = 0.3429,
                coefAP = 0,
            },
        }
    },
    [48459] = { -- Wrath(Rank 11)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 504,
                valueRange = 64,
                valuePerLevel = 3,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [48461] = { -- Wrath(Rank 12)
        spellLevel = 79,
        maxLevel = 83,
        baseCostPct = 11,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 553,
                valueRange = 70,
                valuePerLevel = 4,
                coef = 0.571,
                coefAP = 0,
            },
        }
    },
    [48462] = { -- Moonfire(Rank 13)
        spellLevel = 75,
        maxLevel = 79,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 347,
                valueRange = 60,
                valuePerLevel = 5,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 171,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [48463] = { -- Moonfire(Rank 14)
        spellLevel = 80,
        maxLevel = 84,
        duration = 12,
        baseCostPct = 21,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 406,
                valueRange = 70,
                valuePerLevel = 6,
                coef = 0.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 200,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0,
            },
        }
    },
    [48464] = { -- Starfire(Rank 9)
        spellLevel = 72,
        maxLevel = 76,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 854,
                valueRange = 152,
                valuePerLevel = 4,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [48465] = { -- Starfire(Rank 10)
        spellLevel = 78,
        maxLevel = 82,
        baseCostPct = 16,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1028,
                valueRange = 184,
                valuePerLevel = 5,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [48466] = { -- Hurricane(Rank 5)
        spellLevel = 80,
        maxLevel = 86,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 451,
                valueRange = 0,
                valuePerLevel = 0.5,
                coef = 0.129,
                coefAP = 0,
            },
        }
    },
    [48467] = { -- Hurricane(Rank 5)
        spellLevel = 80,
        maxLevel = 86,
        duration = 10,
        baseCostPct = 81,
        school = 4,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 48466,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48468] = { -- Insect Swarm(Rank 7)
        spellLevel = 80,
        maxLevel = 89,
        duration = 12,
        baseCostPct = 8,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 215,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [48505] = { -- Starfall(Rank 1)
        spellLevel = 60,
        maxLevel = 69,
        duration = 10,
        baseCostPct = 35,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 3,
                valueBase = 145,
                valueRange = 22,
                valuePerLevel = 26,
                coef = 0.3,
                coefAP = 0.127,
            },
        }
    },
    [50464] = { -- Nourish(Rank 1)
        spellLevel = 80,
        maxLevel = 85,
        baseCostPct = 18,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1883,
                valueRange = 304,
                valuePerLevel = 9.7,
                coef = 0.672,
                coefAP = 0,
            },
        }
    },
    [50516] = { -- Typhoon(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 61391,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53199] = { -- Starfall(Rank 2)
        spellLevel = 70,
        maxLevel = 74,
        duration = 10,
        baseCostPct = 35,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 3,
                valueBase = 325,
                valueRange = 52,
                valuePerLevel = 58,
                coef = 0.3,
                coefAP = 0.127,
            },
        }
    },
    [53200] = { -- Starfall(Rank 3)
        spellLevel = 75,
        maxLevel = 79,
        duration = 10,
        baseCostPct = 35,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 3,
                valueBase = 475,
                valueRange = 76,
                valuePerLevel = 85,
                coef = 0.3,
                coefAP = 0.127,
            },
        }
    },
    [53201] = { -- Starfall(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        duration = 10,
        baseCostPct = 35,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 3,
                valueBase = 563,
                valueRange = 90,
                valuePerLevel = 101,
                coef = 0.3,
                coefAP = 0.127,
            },
        }
    },
    [53223] = { -- Typhoon(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 61390,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53225] = { -- Typhoon(Rank 3)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 61388,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53226] = { -- Typhoon(Rank 4)
        spellLevel = 75,
        maxLevel = 79,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 61387,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53227] = { -- Typhoon(Rank 5)
        spellLevel = 80,
        maxLevel = 84,
        duration = 6,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1190,
                valueRange = 0,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [53248] = { -- Wild Growth(Rank 2)
        spellLevel = 70,
        maxLevel = 74,
        duration = 7,
        baseCostPct = 23,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 123,
                valueRange = 0,
                coef = 0.115,
                coefAP = 0,
            },
        }
    },
    [53249] = { -- Wild Growth(Rank 3)
        spellLevel = 75,
        maxLevel = 79,
        duration = 7,
        baseCostPct = 23,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 177,
                valueRange = 0,
                coef = 0.115,
                coefAP = 0,
            },
        }
    },
    [53251] = { -- Wild Growth(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        duration = 7,
        baseCostPct = 23,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 206,
                valueRange = 0,
                coef = 0.115,
                coefAP = 0,
            },
        }
    },
    [53307] = { -- Thorns(Rank 8)
        spellLevel = 74,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 17,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 73,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53308] = { -- Entangling Roots(Rank 8)
        spellLevel = 78,
        maxLevel = 87,
        duration = 27,
        baseCostPct = 7,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 47,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [61384] = { -- Typhoon(Rank 5)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 53227,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [61387] = { -- Typhoon(Rank 4)
        spellLevel = 75,
        maxLevel = 79,
        duration = 6,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1010,
                valueRange = 0,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [61388] = { -- Typhoon(Rank 3)
        spellLevel = 70,
        maxLevel = 74,
        duration = 6,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 735,
                valueRange = 0,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [61390] = { -- Typhoon(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 6,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 550,
                valueRange = 0,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [61391] = { -- Typhoon(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 6,
        school = 4,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 400,
                valueRange = 0,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [64801] = { -- Rejuvenation
        spellLevel = 80,
        maxLevel = 84,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1,
                valueRange = 0,
                coef = 0.188,
                coefAP = 0,
            },
        }
    },
};

_addon.spellClassSet = {
    [1] = {
        [1] = {
            5176, -- Wrath(Rank 1)
            5177, -- Wrath(Rank 2)
            5178, -- Wrath(Rank 3)
            5179, -- Wrath(Rank 4)
            5180, -- Wrath(Rank 5)
            6780, -- Wrath(Rank 6)
            8905, -- Wrath(Rank 7)
            9912, -- Wrath(Rank 8)
            26984, -- Wrath(Rank 9)
            26985, -- Wrath(Rank 10)
            48459, -- Wrath(Rank 11)
            48461, -- Wrath(Rank 12)
        },
        [2] = {
            8921, -- Moonfire(Rank 1)
            8924, -- Moonfire(Rank 2)
            8925, -- Moonfire(Rank 3)
            8926, -- Moonfire(Rank 4)
            8927, -- Moonfire(Rank 5)
            8928, -- Moonfire(Rank 6)
            8929, -- Moonfire(Rank 7)
            9833, -- Moonfire(Rank 8)
            9834, -- Moonfire(Rank 9)
            9835, -- Moonfire(Rank 10)
            20690, -- Moonfire
            21669, -- Moonfire
            26987, -- Moonfire(Rank 11)
            26988, -- Moonfire(Rank 12)
            48462, -- Moonfire(Rank 13)
            48463, -- Moonfire(Rank 14)
            75329, -- Moonfire
        },
        [4] = {
            2912, -- Starfire(Rank 1)
            8949, -- Starfire(Rank 2)
            8950, -- Starfire(Rank 3)
            8951, -- Starfire(Rank 4)
            9875, -- Starfire(Rank 5)
            9876, -- Starfire(Rank 6)
            20687, -- Starfall
            21668, -- Starfire
            25298, -- Starfire(Rank 7)
            26986, -- Starfire(Rank 8)
            35243, -- Starfire
            37124, -- Starfall
            38935, -- Starfire
            40344, -- Starfire
            41349, -- L4 Arcane Charge
            41357, -- L1 Arcane Charge
            41360, -- L5 Arcane Charge
            48464, -- Starfire(Rank 9)
            48465, -- Starfire(Rank 10)
        },
        [8] = {
            99, -- Demoralizing Roar(Rank 1)
            1735, -- Demoralizing Roar(Rank 2)
            9490, -- Demoralizing Roar(Rank 3)
            9747, -- Demoralizing Roar(Rank 4)
            9898, -- Demoralizing Roar(Rank 5)
            26998, -- Demoralizing Roar(Rank 6)
            48559, -- Demoralizing Roar(Rank 7)
            48560, -- Demoralizing Roar(Rank 8)
        },
        [16] = {
            774, -- Rejuvenation(Rank 1)
            1058, -- Rejuvenation(Rank 2)
            1430, -- Rejuvenation(Rank 3)
            2090, -- Rejuvenation(Rank 4)
            2091, -- Rejuvenation(Rank 5)
            3627, -- Rejuvenation(Rank 6)
            8910, -- Rejuvenation(Rank 7)
            9839, -- Rejuvenation(Rank 8)
            9840, -- Rejuvenation(Rank 9)
            9841, -- Rejuvenation(Rank 10)
            25299, -- Rejuvenation(Rank 11)
            26981, -- Rejuvenation(Rank 12)
            26982, -- Rejuvenation(Rank 13)
            48440, -- Rejuvenation(Rank 14)
            48441, -- Rejuvenation(Rank 15)
            64801, -- Rejuvenation
            70691, -- Rejuvenation
        },
        [32] = {
            5185, -- Healing Touch(Rank 1)
            5186, -- Healing Touch(Rank 2)
            5187, -- Healing Touch(Rank 3)
            5188, -- Healing Touch(Rank 4)
            5189, -- Healing Touch(Rank 5)
            6778, -- Healing Touch(Rank 6)
            8903, -- Healing Touch(Rank 7)
            9758, -- Healing Touch(Rank 8)
            9888, -- Healing Touch(Rank 9)
            9889, -- Healing Touch(Rank 10)
            25297, -- Healing Touch(Rank 11)
            26978, -- Healing Touch(Rank 12)
            26979, -- Healing Touch(Rank 13)
            48377, -- Healing Touch(Rank 14)
            48378, -- Healing Touch(Rank 15)
        },
        [64] = {
            8936, -- Regrowth(Rank 1)
            8938, -- Regrowth(Rank 2)
            8939, -- Regrowth(Rank 3)
            8940, -- Regrowth(Rank 4)
            8941, -- Regrowth(Rank 5)
            9750, -- Regrowth(Rank 6)
            9856, -- Regrowth(Rank 7)
            9857, -- Regrowth(Rank 8)
            9858, -- Regrowth(Rank 9)
            26980, -- Regrowth(Rank 10)
            48442, -- Regrowth(Rank 11)
            48443, -- Regrowth(Rank 12)
        },
        [128] = {
            740, -- Tranquility(Rank 1)
            8918, -- Tranquility(Rank 2)
            9862, -- Tranquility(Rank 3)
            9863, -- Tranquility(Rank 4)
            21791, -- Tranquility
            21793, -- Twisted Tranquility
            25817, -- Tranquility
            26983, -- Tranquility(Rank 5)
            34550, -- Tranquility
            38659, -- Tranquility
            40128, -- Morthis Tranquility Channel
            44203, -- Tranquility(Rank 1)
            44205, -- Tranquility(Rank 2)
            44206, -- Tranquility(Rank 3)
            44207, -- Tranquility(Rank 4)
            44208, -- Tranquility(Rank 5)
            48444, -- Tranquility(Rank 6)
            48445, -- Tranquility(Rank 7)
            48446, -- Tranquility(Rank 6)
            48447, -- Tranquility(Rank 7)
            51972, -- Tranquility
            57054, -- Tranquility
            63241, -- Tranquility
            63554, -- Tranquility
            71956, -- Replenishing Rains
        },
        [256] = {
            467, -- Thorns(Rank 1)
            782, -- Thorns(Rank 2)
            1075, -- Thorns(Rank 3)
            8914, -- Thorns(Rank 4)
            9756, -- Thorns(Rank 5)
            9910, -- Thorns(Rank 6)
            16877, -- Thorns(Rank 6)
            21335, -- Thorns
            21337, -- Thorns
            22128, -- Thorns
            22696, -- Thorns
            22781, -- Thornling
            25059, -- Dmg Shield
            25640, -- Thorns
            25777, -- Thorns
            26666, -- Dmg Shield2
            26992, -- Thorns(Rank 7)
            31271, -- Thorns
            32740, -- Spikes
            33907, -- Thorns
            33908, -- Burning Spikes
            34343, -- Thorns
            34663, -- Thorns
            35361, -- Thorns
            50412, -- Copy of Thorns(Rank 8)
            50419, -- Brambles
            51439, -- Backlash
            53307, -- Thorns(Rank 8)
            64522, -- Dmg Shield2
            69187, -- Frost Spiked Armor
        },
        [512] = {
            339, -- Entangling Roots(Rank 1)
            1062, -- Entangling Roots(Rank 2)
            5195, -- Entangling Roots(Rank 3)
            5196, -- Entangling Roots(Rank 4)
            9852, -- Entangling Roots(Rank 5)
            9853, -- Entangling Roots(Rank 6)
            19970, -- Entangling Roots(Rank 6)
            19971, -- Entangling Roots(Rank 5)
            19972, -- Entangling Roots(Rank 4)
            19973, -- Entangling Roots(Rank 3)
            19974, -- Entangling Roots(Rank 2)
            19975, -- Entangling Roots(Rank 1)
            26989, -- Entangling Roots(Rank 7)
            27010, -- Entangling Roots(Rank 7)
            40363, -- Entangling Roots
            53308, -- Entangling Roots(Rank 8)
            53313, -- Entangling Roots(Rank 8)
            66070, -- Entangling Roots(Rank 8)
        },
        [1024] = {
            770, -- Faerie Fire
            16857, -- Faerie Fire (Feral)
        },
        [2048] = {
            6807, -- Maul(Rank 1)
            6808, -- Maul(Rank 2)
            6809, -- Maul(Rank 3)
            8972, -- Maul(Rank 4)
            9745, -- Maul(Rank 5)
            9880, -- Maul(Rank 6)
            9881, -- Maul(Rank 7)
            26996, -- Maul(Rank 8)
            27554, -- Swipe
            31279, -- Swipe
            39449, -- Pounce
            48479, -- Maul(Rank 9)
            48480, -- Maul(Rank 10)
            53498, -- Swipe
        },
        [4096] = {
            1822, -- Rake(Rank 1)
            1823, -- Rake(Rank 2)
            1824, -- Rake(Rank 3)
            9904, -- Rake(Rank 4)
            24187, -- Claw
            24331, -- Rake
            24332, -- Rake
            27003, -- Rake(Rank 5)
            27555, -- Shred
            27556, -- Rake
            27638, -- Rake
            31041, -- Mangle
            31289, -- Claw
            36332, -- Rake
            48573, -- Rake(Rank 6)
            48574, -- Rake(Rank 7)
            51772, -- Claw
        },
        [8192] = {
            5211, -- Bash(Rank 1)
            6798, -- Bash(Rank 2)
            8983, -- Bash(Rank 3)
        },
        [16384] = {
            5215, -- Prowl
            6783, -- Prowl(Rank 2)
            9913, -- Prowl(Rank 3)
        },
        [32768] = {
            5221, -- Shred(Rank 1)
            6800, -- Shred(Rank 2)
            8992, -- Shred(Rank 3)
            9829, -- Shred(Rank 4)
            9830, -- Shred(Rank 5)
            27001, -- Shred(Rank 6)
            27002, -- Shred(Rank 7)
            48571, -- Shred(Rank 8)
            48572, -- Shred(Rank 9)
        },
        [65536] = {
            6785, -- Ravage(Rank 1)
            6787, -- Ravage(Rank 2)
            9866, -- Ravage(Rank 3)
            9867, -- Ravage(Rank 4)
            27005, -- Ravage(Rank 5)
            48578, -- Ravage(Rank 6)
            48579, -- Ravage(Rank 7)
        },
        [131072] = {
            9005, -- Pounce(Rank 1)
            9823, -- Pounce(Rank 2)
            9827, -- Pounce(Rank 3)
            27006, -- Pounce(Rank 4)
            40803, -- Ron's Test Buff
            49803, -- Pounce(Rank 5)
        },
        [262144] = {
            1126, -- Mark of the Wild(Rank 1)
            5232, -- Mark of the Wild(Rank 2)
            5234, -- Mark of the Wild(Rank 4)
            6756, -- Mark of the Wild(Rank 3)
            8907, -- Mark of the Wild(Rank 5)
            9884, -- Mark of the Wild(Rank 6)
            9885, -- Mark of the Wild(Rank 7)
            21187, -- Stormpike Reputation +5
            21849, -- Gift of the Wild(Rank 1)
            21850, -- Gift of the Wild(Rank 2)
            24752, -- Mark of the Wild(Rank 7)
            26990, -- Mark of the Wild(Rank 8)
            26991, -- Gift of the Wild(Rank 3)
            34906, -- Mark of Bite
            35336, -- Energizing Spores
            39233, -- Mark of the Wild(Rank 8)
            48469, -- Mark of the Wild(Rank 9)
            48470, -- Gift of the Wild(Rank 4)
        },
        [524288] = {
            5229, -- Enrage
        },
        [1048576] = {
            16689, -- Nature's Grasp(Rank 1)
            16810, -- Nature's Grasp(Rank 2)
            16811, -- Nature's Grasp(Rank 3)
            16812, -- Nature's Grasp(Rank 4)
            16813, -- Nature's Grasp(Rank 5)
            17329, -- Nature's Grasp(Rank 6)
            27009, -- Nature's Grasp(Rank 7)
            53312, -- Nature's Grasp(Rank 8)
            60719, -- Deadly Gladiator's Idol of Steadfastness
        },
        [2097152] = {
            5570, -- Insect Swarm(Rank 1)
            24974, -- Insect Swarm(Rank 2)
            24975, -- Insect Swarm(Rank 3)
            24976, -- Insect Swarm(Rank 4)
            24977, -- Insect Swarm(Rank 5)
            27013, -- Insect Swarm(Rank 6)
            48468, -- Insect Swarm(Rank 7)
        },
        [4194304] = {
            16914, -- Hurricane(Rank 1)
            17401, -- Hurricane(Rank 2)
            17402, -- Hurricane(Rank 3)
            27012, -- Hurricane(Rank 4)
            27530, -- Hurricane
            32087, -- Putrid Cloud
            32134, -- Putrid Cloud
            32717, -- Hurricane
            34378, -- Thrall Calls Thunder
            40090, -- Hurricane
            42230, -- Hurricane(Rank 4)
            42231, -- Hurricane(Rank 1)
            42232, -- Hurricane(Rank 2)
            42233, -- Hurricane(Rank 3)
            48466, -- Hurricane(Rank 5)
            48467, -- Hurricane(Rank 5)
            50105, -- Violent Hurricane
            55881, -- Hurricane
        },
        [8388608] = {
            1079, -- Rip(Rank 1)
            9492, -- Rip(Rank 2)
            9493, -- Rip(Rank 3)
            9752, -- Rip(Rank 4)
            9894, -- Rip(Rank 5)
            9896, -- Rip(Rank 6)
            22568, -- Ferocious Bite(Rank 1)
            22827, -- Ferocious Bite(Rank 2)
            22828, -- Ferocious Bite(Rank 3)
            22829, -- Ferocious Bite(Rank 4)
            24248, -- Ferocious Bite(Rank 6)
            27008, -- Rip(Rank 7)
            27557, -- Ferocious Bite
            31018, -- Ferocious Bite(Rank 5)
            48576, -- Ferocious Bite(Rank 7)
            48577, -- Ferocious Bite(Rank 8)
            49799, -- Rip(Rank 8)
            49800, -- Rip(Rank 9)
        },
        [16777216] = {
            2637, -- Hibernate(Rank 1)
            2908, -- Soothe Animal(Rank 1)
            8955, -- Soothe Animal(Rank 2)
            9901, -- Soothe Animal(Rank 3)
            18657, -- Hibernate(Rank 2)
            18658, -- Hibernate(Rank 3)
            20484, -- Rebirth(Rank 1)
            20739, -- Rebirth(Rank 2)
            20742, -- Rebirth(Rank 3)
            20747, -- Rebirth(Rank 4)
            20748, -- Rebirth(Rank 5)
            26994, -- Rebirth(Rank 6)
            48477, -- Rebirth(Rank 7)
        },
        [33554432] = {
            21178, -- Bear Form (Passive2)(Passive)
        },
        [134217728] = {
            3025, -- Cat Form (Passive)(Passive)
            48629, -- Cat Form (Passive)(Passive)
        },
        [268435456] = {
            20484, -- Rebirth(Rank 1)
            20739, -- Rebirth(Rank 2)
            20742, -- Rebirth(Rank 3)
            20747, -- Rebirth(Rank 4)
            20748, -- Rebirth(Rank 5)
            26994, -- Rebirth(Rank 6)
            48477, -- Rebirth(Rank 7)
        },
        [536870912] = {
            1066, -- Aquatic Form(Shapeshift)
            27546, -- Faerie Dragon Form
        },
        [1073741824] = {
            5487, -- Bear Form(Shapeshift)
            9634, -- Dire Bear Form(Shapeshift)
            42363, -- Dan's Steam Tank Form(Shapeshift)
            42387, -- Dan's Steam Tank Form (Self)(Shapeshift)
        },
        [2147483648] = {
            768, -- Cat Form(Shapeshift)
            40803, -- Ron's Test Buff
            57655, -- Cat Form
        },
    },
    [2] = {
        [1] = {
            16979, -- Feral Charge - Bear
        },
        [2] = {
            18562, -- Swiftmend
        },
        [4] = {
            2893, -- Abolish Poison
            8946, -- Cure Poison
        },
        [8] = {
            6795, -- Growl
            39270, -- Growl
        },
        [16] = {
            33763, -- Lifebloom(Rank 1)
            48450, -- Lifebloom(Rank 2)
            48451, -- Lifebloom(Rank 3)
        },
        [32] = {
            33786, -- Cyclone
        },
        [64] = {
            33878, -- Mangle (Bear)(Rank 1)
            33986, -- Mangle (Bear)(Rank 2)
            33987, -- Mangle (Bear)(Rank 3)
            48563, -- Mangle (Bear)(Rank 4)
            48564, -- Mangle (Bear)(Rank 5)
        },
        [128] = {
            22570, -- Maim(Rank 1)
            49802, -- Maim(Rank 2)
        },
        [256] = {
            33745, -- Lacerate(Rank 1)
            48567, -- Lacerate(Rank 2)
            48568, -- Lacerate(Rank 3)
        },
        [512] = {
            33831, -- Force of Nature
        },
        [1024] = {
            33876, -- Mangle (Cat)(Rank 1)
            33982, -- Mangle (Cat)(Rank 2)
            33983, -- Mangle (Cat)(Rank 3)
            48565, -- Mangle (Cat)(Rank 4)
            48566, -- Mangle (Cat)(Rank 5)
            57657, -- Mangle
            59988, -- Mangle
            71925, -- Mangle
        },
        [2048] = {
            24932, -- Leader of the Pack
            52507, -- Ragepaw's Presence
        },
        [4096] = {
            29166, -- Innervate
            49307, -- Full Mana Regen
        },
        [8192] = {
            24858, -- Moonkin Form(Shapeshift)
            24907, -- Moonkin Aura
        },
        [16384] = {
            783, -- Travel Form(Shapeshift)
        },
        [32768] = {
            33943, -- Flight Form(Shapeshift)
            40120, -- Swift Flight Form(Shapeshift)
            43343, -- Ragged Flying Carpet(Shapeshift)
        },
        [65536] = {
            33891, -- Tree of Life(Shapeshift)
        },
        [131072] = {
            2637, -- Hibernate(Rank 1)
            2908, -- Soothe Animal(Rank 1)
            8955, -- Soothe Animal(Rank 2)
            9901, -- Soothe Animal(Rank 3)
            18657, -- Hibernate(Rank 2)
            18658, -- Hibernate(Rank 3)
            26995, -- Soothe Animal(Rank 4)
        },
        [262144] = {
            22812, -- Barkskin
        },
        [524288] = {
            17116, -- Nature's Swiftness
            64823, -- Elune's Wrath
            69369, -- Predator's Swiftness
        },
        [1048576] = {
            769, -- Swipe (Bear)(Rank 3)
            779, -- Swipe (Bear)(Rank 1)
            780, -- Swipe (Bear)(Rank 2)
            9754, -- Swipe (Bear)(Rank 4)
            9908, -- Swipe (Bear)(Rank 5)
            26997, -- Swipe (Bear)(Rank 6)
            48561, -- Swipe (Bear)(Rank 7)
            48562, -- Swipe (Bear)(Rank 8)
        },
        [2097152] = {
            16864, -- Omen of Clarity
            16870, -- Clearcasting
            16886, -- Nature's Grace
            45281, -- Natural Perfection(Rank 1)
            45282, -- Natural Perfection(Rank 2)
            45283, -- Natural Perfection(Rank 3)
        },
        [4194304] = {
            2782, -- Remove Curse
        },
        [8388608] = {
            48505, -- Starfall(Rank 1)
            50288, -- Starfall(Rank 1)
            50294, -- Starfall(Rank 1)
            53188, -- Starfall(Rank 2)
            53189, -- Starfall(Rank 3)
            53190, -- Starfall(Rank 4)
            53191, -- Starfall(Rank 2)
            53194, -- Starfall(Rank 3)
            53195, -- Starfall(Rank 4)
            53199, -- Starfall(Rank 2)
            53200, -- Starfall(Rank 3)
            53201, -- Starfall(Rank 4)
        },
        [16777216] = {
            50516, -- Typhoon(Rank 1)
            53223, -- Typhoon(Rank 2)
            53225, -- Typhoon(Rank 3)
            53226, -- Typhoon(Rank 4)
            53227, -- Typhoon(Rank 5)
            61384, -- Typhoon(Rank 5)
            61387, -- Typhoon(Rank 4)
            61388, -- Typhoon(Rank 3)
            61390, -- Typhoon(Rank 2)
            61391, -- Typhoon(Rank 1)
        },
        [33554432] = {
            50464, -- Nourish(Rank 1)
        },
        [67108864] = {
            48438, -- Wild Growth(Rank 1)
            53248, -- Wild Growth(Rank 2)
            53249, -- Wild Growth(Rank 3)
            53251, -- Wild Growth(Rank 4)
        },
        [134217728] = {
            5420, -- Tree of Life(Passive)
        },
        [268435456] = {
            48628, -- Lock Jaw(Rank 1)
            52610, -- Savage Roar(Rank 1)
        },
        [536870912] = {
            8998, -- Cower(Rank 1)
            9000, -- Cower(Rank 2)
            9892, -- Cower(Rank 3)
            27004, -- Cower(Rank 5)
            31709, -- Cower(Rank 4)
            48575, -- Cower(Rank 6)
        },
        [1073741824] = {
            22842, -- Frenzied Regeneration
        },
        [2147483648] = {
            5421, -- Aquatic Form (Passive)(Passive)
        },
    },
    [3] = {
        [1] = {
            5209, -- Challenging Roar
        },
        [2] = {
            1178, -- Bear Form (Passive)(Passive)
            9635, -- Dire Bear Form (Passive)(Passive)
            21178, -- Bear Form (Passive2)(Passive)
            66530, -- Improved Barkskin (Passive)(Passive)
        },
        [4] = {
            24905, -- Moonkin Form (Passive)(Passive)
            69366, -- Moonkin Form (Passive)(Passive)
        },
        [8] = {
            1850, -- Dash(Rank 1)
            9821, -- Dash(Rank 2)
            33357, -- Dash(Rank 3)
        },
        [16] = {
            16979, -- Feral Charge - Bear
        },
        [32] = {
            49376, -- Feral Charge - Cat
            61132, -- Feral Charge - Cat
            61138, -- Feral Charge - Cat
        },
        [64] = {
            50334, -- Berserk
            58923, -- Berserk
        },
        [128] = {
            50322, -- Survival Instincts
            61336, -- Survival Instincts
            63087, -- Raptor Strike
        },
        [256] = {
            50286, -- Starfall(Rank 1)
            53196, -- Starfall(Rank 2)
            53197, -- Starfall(Rank 3)
            53198, -- Starfall(Rank 4)
        },
        [512] = {
            50763, -- Revive(Rank 7)
            50764, -- Revive(Rank 6)
            50765, -- Revive(Rank 5)
            50766, -- Revive(Rank 4)
            50767, -- Revive(Rank 3)
            50768, -- Revive(Rank 2)
            50769, -- Revive(Rank 1)
        },
        [1024] = {
            62078, -- Swipe (Cat)(Rank 1)
        },
        [2048] = {
            5217, -- Tiger's Fury(Rank 1)
            6793, -- Tiger's Fury(Rank 2)
            9845, -- Tiger's Fury(Rank 3)
            9846, -- Tiger's Fury(Rank 4)
            50212, -- Tiger's Fury(Rank 5)
            50213, -- Tiger's Fury(Rank 6)
        },
        [4096] = {
            16689, -- Nature's Grasp(Rank 1)
            16810, -- Nature's Grasp(Rank 2)
            16811, -- Nature's Grasp(Rank 3)
            16812, -- Nature's Grasp(Rank 4)
            16813, -- Nature's Grasp(Rank 5)
            17329, -- Nature's Grasp(Rank 6)
            27009, -- Nature's Grasp(Rank 7)
            53312, -- Nature's Grasp(Rank 8)
        },
        [8192] = {
            2908, -- Soothe Animal(Rank 1)
            8955, -- Soothe Animal(Rank 2)
            9901, -- Soothe Animal(Rank 3)
            17118, -- Subtlety(Rank 1)
            17119, -- Subtlety(Rank 2)
            26995, -- Soothe Animal(Rank 4)
        },
        [16384] = {
            48517, -- Eclipse (Solar)
            48518, -- Eclipse (Lunar)
        },
        [32768] = {
            2637, -- Hibernate(Rank 1)
            18657, -- Hibernate(Rank 2)
            18658, -- Hibernate(Rank 3)
        },
        [65536] = {
            62071, -- Savage Roar
        },
        [131072] = {
            66530, -- Improved Barkskin (Passive)(Passive)
        },
        [262144] = {
            1082, -- Claw(Rank 1)
            3029, -- Claw(Rank 2)
            5201, -- Claw(Rank 3)
            9849, -- Claw(Rank 4)
            9850, -- Claw(Rank 5)
            27000, -- Claw(Rank 6)
            48569, -- Claw(Rank 7)
            48570, -- Claw(Rank 8)
        },
        [524288] = {
            40121, -- Swift Flight Form (Passive)(Passive)
        },
        [1048576] = {
            48516, -- Eclipse(Rank 1)
            48521, -- Eclipse(Rank 2)
            48525, -- Eclipse(Rank 3)
        },
        [2097152] = {
            1079, -- Rip(Rank 1)
            9492, -- Rip(Rank 2)
            9493, -- Rip(Rank 3)
            9752, -- Rip(Rank 4)
            9894, -- Rip(Rank 5)
            9896, -- Rip(Rank 6)
            27008, -- Rip(Rank 7)
            49799, -- Rip(Rank 8)
            49800, -- Rip(Rank 9)
        },
    },
    [4] = {
    },
};

_addon.classGlyphs = {
    [54813] = { -- Glyph of Mangle
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 1088, 0, 0},
            value = 10,
        },
    },
    [54818] = { -- Glyph of Rip
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {8388608, 0, 0, 0},
            value = 4,
        },
    },
    [54825] = { -- Glyph of Healing Touch
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {32, 0, 0, 0},
            value = -50,
        },
    },
    [54826] = { -- Glyph of Lifebloom
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {0, 16, 0, 0},
            value = 1,
        },
    },
    [54830] = { -- Glyph of Insect Swarm
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {2097152, 0, 0, 0},
            value = 30,
        },
    },
    [54831] = { -- Glyph of Hurricane
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {2097152, 0, 0, 0},
            value = 30,
        },
    },
    [54829] = { -- Glyph of Moonfire
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {2, 0, 0, 0},
            value = -90,
        },
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {2, 0, 0, 0},
            value = 75,
        },
    },
    [62080] = { -- Glyph of Focus
        {
            type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 8388608, 0, 0},
            value = 10,
        },
    },
};


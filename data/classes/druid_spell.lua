-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(5176)] = { -- Wrath
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(5185)] = { -- Healing Touch
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(774)] = { -- Rejuvenation
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(8921)] = { -- Moonfire
        school = 7,
        defType = 1,
    },
    [GetSpellInfo(467)] = { -- Thorns
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(339)] = { -- Entangling Roots
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(8936)] = { -- Regrowth
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(2912)] = { -- Starfire
        school = 7,
        defType = 1,
    },
    [GetSpellInfo(18562)] = { -- Swiftmend
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(740)] = { -- Tranquility
        school = 4,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(5570)] = { -- Insect Swarm
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(16914)] = { -- Hurricane
        school = 4,
        isChannel = true,
        defType = 1,
    },
};

_addon.spellRankInfo = {
    [339] = { -- Entangling Roots(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 12,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 5,
                coef = 0.033,
            },
        }
    },
    [467] = { -- Thorns(Rank 1)
        spellLevel = 6,
        maxLevel = 0,
        duration = 600,
        baseCost = 35,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                charges = -1,
                min = 3,
                coef = 0,
            },
        }
    },
    [740] = { -- Tranquility(Rank 1)
        spellLevel = 30,
        maxLevel = 36,
        duration = 10,
        baseCost = 375,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 94,
                perLevel = 0.6,
                coef = 0.067,
            },
        }
    },
    [774] = { -- Rejuvenation(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 12,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 8,
                coef = 0.08,
            },
        }
    },
    [782] = { -- Thorns(Rank 2)
        spellLevel = 14,
        maxLevel = 0,
        duration = 600,
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                charges = -1,
                min = 6,
                coef = 0,
            },
        }
    },
    [1058] = { -- Rejuvenation(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 14,
                coef = 0.125,
            },
        }
    },
    [1062] = { -- Entangling Roots(Rank 2)
        spellLevel = 18,
        maxLevel = 0,
        duration = 15,
        baseCost = 65,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 10,
                coef = 0.056,
            },
        }
    },
    [1075] = { -- Thorns(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        duration = 600,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                charges = -1,
                min = 9,
                coef = 0,
            },
        }
    },
    [1430] = { -- Rejuvenation(Rank 3)
        spellLevel = 16,
        maxLevel = 21,
        duration = 12,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 29,
                coef = 0.17,
            },
        }
    },
    [2090] = { -- Rejuvenation(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        duration = 12,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 45,
                coef = 0.2,
            },
        }
    },
    [2091] = { -- Rejuvenation(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        duration = 12,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 61,
                coef = 0.2,
            },
        }
    },
    [2912] = { -- Starfire(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
                min = 89,
                max = 110,
                perLevel = 1.2,
                coef = 1,
            },
        }
    },
    [3627] = { -- Rejuvenation(Rank 6)
        spellLevel = 34,
        maxLevel = 39,
        duration = 12,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 76,
                coef = 0.2,
            },
        }
    },
    [5176] = { -- Wrath(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 20,
        effects = {
            [1] = {
                effectType = 2,
                min = 12,
                max = 15,
                perLevel = 0.4,
                coef = 0.123,
            },
        }
    },
    [5177] = { -- Wrath(Rank 2)
        spellLevel = 6,
        maxLevel = 12,
        baseCost = 35,
        effects = {
            [1] = {
                effectType = 2,
                min = 25,
                max = 30,
                perLevel = 0.6,
                coef = 0.231,
            },
        }
    },
    [5178] = { -- Wrath(Rank 3)
        spellLevel = 14,
        maxLevel = 20,
        baseCost = 55,
        effects = {
            [1] = {
                effectType = 2,
                min = 44,
                max = 53,
                perLevel = 0.8,
                coef = 0.443,
            },
        }
    },
    [5179] = { -- Wrath(Rank 4)
        spellLevel = 22,
        maxLevel = 28,
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 2,
                min = 63,
                max = 74,
                perLevel = 1,
                coef = 0.571,
            },
        }
    },
    [5180] = { -- Wrath(Rank 5)
        spellLevel = 30,
        maxLevel = 36,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 2,
                min = 101,
                max = 116,
                perLevel = 1.3,
                coef = 0.571,
            },
        }
    },
    [5185] = { -- Healing Touch(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 10,
                min = 37,
                max = 52,
                perLevel = 0.8,
                coef = 0.123,
            },
        }
    },
    [5186] = { -- Healing Touch(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        baseCost = 55,
        effects = {
            [1] = {
                effectType = 10,
                min = 88,
                max = 113,
                perLevel = 1.3,
                coef = 0.314,
            },
        }
    },
    [5187] = { -- Healing Touch(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 10,
                min = 195,
                max = 244,
                perLevel = 1.9,
                coef = 0.554,
            },
        }
    },
    [5188] = { -- Healing Touch(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 10,
                min = 363,
                max = 446,
                perLevel = 2.7,
                coef = 0.857,
            },
        }
    },
    [5189] = { -- Healing Touch(Rank 5)
        spellLevel = 26,
        maxLevel = 31,
        baseCost = 270,
        effects = {
            [1] = {
                effectType = 10,
                min = 572,
                max = 695,
                perLevel = 3.5,
                coef = 1,
            },
        }
    },
    [5195] = { -- Entangling Roots(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 18,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 15,
                coef = 0.05,
            },
        }
    },
    [5196] = { -- Entangling Roots(Rank 4)
        spellLevel = 38,
        maxLevel = 0,
        duration = 21,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 20,
                coef = 0.043,
            },
        }
    },
    [5570] = { -- Insect Swarm(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 12,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 11,
                coef = 0.158,
            },
        }
    },
    [6603] = { -- Attack
        spellLevel = 0,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 78,
                min = 0,
                coef = 0,
            },
        }
    },
    [6778] = { -- Healing Touch(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 335,
        effects = {
            [1] = {
                effectType = 10,
                min = 742,
                max = 895,
                perLevel = 4,
                coef = 1,
            },
        }
    },
    [6780] = { -- Wrath(Rank 6)
        spellLevel = 38,
        maxLevel = 44,
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 2,
                min = 139,
                max = 158,
                perLevel = 1.6,
                coef = 0.571,
            },
        }
    },
    [8903] = { -- Healing Touch(Rank 7)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 405,
        effects = {
            [1] = {
                effectType = 10,
                min = 936,
                max = 1121,
                perLevel = 4.5,
                coef = 1,
            },
        }
    },
    [8905] = { -- Wrath(Rank 7)
        spellLevel = 46,
        maxLevel = 52,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 2,
                min = 188,
                max = 211,
                perLevel = 1.8,
                coef = 0.571,
            },
        }
    },
    [8910] = { -- Rejuvenation(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        duration = 12,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 97,
                coef = 0.2,
            },
        }
    },
    [8914] = { -- Thorns(Rank 4)
        spellLevel = 34,
        maxLevel = 0,
        duration = 600,
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                charges = -1,
                min = 12,
                coef = 0,
            },
        }
    },
    [8918] = { -- Tranquility(Rank 2)
        spellLevel = 40,
        maxLevel = 46,
        duration = 10,
        baseCost = 505,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 138,
                perLevel = 0.7,
                coef = 0.067,
            },
        }
    },
    [8921] = { -- Moonfire(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 9,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 2,
                min = 7,
                max = 10,
                perLevel = 0.5,
                coef = 0.06,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 4,
                coef = 0.052,
            },
        }
    },
    [8924] = { -- Moonfire(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 2,
                min = 13,
                max = 18,
                perLevel = 0.8,
                coef = 0.094,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 8,
                coef = 0.081,
            },
        }
    },
    [8925] = { -- Moonfire(Rank 3)
        spellLevel = 16,
        maxLevel = 21,
        duration = 12,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 2,
                min = 25,
                max = 32,
                perLevel = 1.1,
                coef = 0.128,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 13,
                coef = 0.111,
            },
        }
    },
    [8926] = { -- Moonfire(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        duration = 12,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 2,
                min = 40,
                max = 49,
                perLevel = 1.4,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 20,
                coef = 0.13,
            },
        }
    },
    [8927] = { -- Moonfire(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        duration = 12,
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 2,
                min = 61,
                max = 74,
                perLevel = 1.8,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 31,
                coef = 0.13,
            },
        }
    },
    [8928] = { -- Moonfire(Rank 6)
        spellLevel = 34,
        maxLevel = 39,
        duration = 12,
        baseCost = 190,
        effects = {
            [1] = {
                effectType = 2,
                min = 81,
                max = 98,
                perLevel = 2.1,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 41,
                coef = 0.13,
            },
        }
    },
    [8929] = { -- Moonfire(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        duration = 12,
        baseCost = 235,
        effects = {
            [1] = {
                effectType = 2,
                min = 105,
                max = 126,
                perLevel = 2.4,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 53,
                coef = 0.13,
            },
        }
    },
    [8936] = { -- Regrowth(Rank 1)
        spellLevel = 12,
        maxLevel = 17,
        duration = 21,
        baseCost = 120,
        effects = {
            [1] = {
                effectType = 10,
                min = 84,
                max = 99,
                perLevel = 1.8,
                coef = 0.2,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 14,
                coef = 0.05,
            },
        }
    },
    [8938] = { -- Regrowth(Rank 2)
        spellLevel = 18,
        maxLevel = 23,
        duration = 21,
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 10,
                min = 164,
                max = 189,
                perLevel = 2.5,
                coef = 0.264,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 25,
                coef = 0.066,
            },
        }
    },
    [8939] = { -- Regrowth(Rank 3)
        spellLevel = 24,
        maxLevel = 29,
        duration = 21,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 10,
                min = 240,
                max = 275,
                perLevel = 3.1,
                coef = 0.286,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 37,
                coef = 0.071,
            },
        }
    },
    [8940] = { -- Regrowth(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        duration = 21,
        baseCost = 350,
        effects = {
            [1] = {
                effectType = 10,
                min = 318,
                max = 361,
                perLevel = 3.6,
                coef = 0.286,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 49,
                coef = 0.071,
            },
        }
    },
    [8941] = { -- Regrowth(Rank 5)
        spellLevel = 36,
        maxLevel = 41,
        duration = 21,
        baseCost = 420,
        effects = {
            [1] = {
                effectType = 10,
                min = 405,
                max = 458,
                perLevel = 4.1,
                coef = 0.286,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 61,
                coef = 0.071,
            },
        }
    },
    [8949] = { -- Starfire(Rank 2)
        spellLevel = 26,
        maxLevel = 32,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 2,
                min = 137,
                max = 168,
                perLevel = 1.6,
                coef = 1,
            },
        }
    },
    [8950] = { -- Starfire(Rank 3)
        spellLevel = 34,
        maxLevel = 40,
        baseCost = 180,
        effects = {
            [1] = {
                effectType = 2,
                min = 201,
                max = 242,
                perLevel = 1.9,
                coef = 1,
            },
        }
    },
    [8951] = { -- Starfire(Rank 4)
        spellLevel = 42,
        maxLevel = 48,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 2,
                min = 280,
                max = 335,
                perLevel = 2.3,
                coef = 1,
            },
        }
    },
    [9750] = { -- Regrowth(Rank 6)
        spellLevel = 42,
        maxLevel = 47,
        duration = 21,
        baseCost = 510,
        effects = {
            [1] = {
                effectType = 10,
                min = 511,
                max = 576,
                perLevel = 4.7,
                coef = 0.286,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 78,
                coef = 0.071,
            },
        }
    },
    [9756] = { -- Thorns(Rank 5)
        spellLevel = 44,
        maxLevel = 0,
        duration = 600,
        baseCost = 240,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                charges = -1,
                min = 15,
                coef = 0,
            },
        }
    },
    [9758] = { -- Healing Touch(Rank 8)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 495,
        effects = {
            [1] = {
                effectType = 10,
                min = 1199,
                max = 1428,
                perLevel = 5.2,
                coef = 1,
            },
        }
    },
    [9833] = { -- Moonfire(Rank 8)
        spellLevel = 46,
        maxLevel = 51,
        duration = 12,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 2,
                min = 130,
                max = 155,
                perLevel = 2.7,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 66,
                coef = 0.13,
            },
        }
    },
    [9834] = { -- Moonfire(Rank 9)
        spellLevel = 52,
        maxLevel = 57,
        duration = 12,
        baseCost = 325,
        effects = {
            [1] = {
                effectType = 2,
                min = 157,
                max = 186,
                perLevel = 3,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 80,
                coef = 0.13,
            },
        }
    },
    [9835] = { -- Moonfire(Rank 10)
        spellLevel = 58,
        maxLevel = 63,
        duration = 12,
        baseCost = 375,
        effects = {
            [1] = {
                effectType = 2,
                min = 189,
                max = 222,
                perLevel = 3.3,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 96,
                coef = 0.13,
            },
        }
    },
    [9839] = { -- Rejuvenation(Rank 8)
        spellLevel = 46,
        maxLevel = 51,
        duration = 12,
        baseCost = 235,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 122,
                coef = 0.2,
            },
        }
    },
    [9840] = { -- Rejuvenation(Rank 9)
        spellLevel = 52,
        maxLevel = 57,
        duration = 12,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 152,
                coef = 0.2,
            },
        }
    },
    [9841] = { -- Rejuvenation(Rank 10)
        spellLevel = 58,
        maxLevel = 63,
        duration = 12,
        baseCost = 335,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 189,
                coef = 0.2,
            },
        }
    },
    [9852] = { -- Entangling Roots(Rank 5)
        spellLevel = 48,
        maxLevel = 0,
        duration = 24,
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 25,
                coef = 0.038,
            },
        }
    },
    [9853] = { -- Entangling Roots(Rank 6)
        spellLevel = 58,
        maxLevel = 0,
        duration = 27,
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 30,
                coef = 0.033,
            },
        }
    },
    [9856] = { -- Regrowth(Rank 7)
        spellLevel = 48,
        maxLevel = 53,
        duration = 21,
        baseCost = 615,
        effects = {
            [1] = {
                effectType = 10,
                min = 646,
                max = 725,
                perLevel = 5.3,
                coef = 0.286,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 98,
                coef = 0.071,
            },
        }
    },
    [9857] = { -- Regrowth(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        duration = 21,
        baseCost = 740,
        effects = {
            [1] = {
                effectType = 10,
                min = 809,
                max = 906,
                perLevel = 6,
                coef = 0.286,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 123,
                coef = 0.071,
            },
        }
    },
    [9858] = { -- Regrowth(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        duration = 21,
        baseCost = 880,
        effects = {
            [1] = {
                effectType = 10,
                min = 1003,
                max = 1120,
                perLevel = 6.8,
                coef = 0.286,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 152,
                coef = 0.071,
            },
        }
    },
    [9862] = { -- Tranquility(Rank 3)
        spellLevel = 50,
        maxLevel = 56,
        duration = 10,
        baseCost = 695,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 205,
                perLevel = 0.9,
                coef = 0.067,
            },
        }
    },
    [9863] = { -- Tranquility(Rank 4)
        spellLevel = 60,
        maxLevel = 66,
        duration = 10,
        baseCost = 925,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 294,
                perLevel = 1,
                coef = 0.067,
            },
        }
    },
    [9875] = { -- Starfire(Rank 5)
        spellLevel = 50,
        maxLevel = 56,
        baseCost = 275,
        effects = {
            [1] = {
                effectType = 2,
                min = 362,
                max = 429,
                perLevel = 2.7,
                coef = 1,
            },
        }
    },
    [9876] = { -- Starfire(Rank 6)
        spellLevel = 58,
        maxLevel = 64,
        baseCost = 315,
        effects = {
            [1] = {
                effectType = 2,
                min = 445,
                max = 526,
                perLevel = 3,
                coef = 1,
            },
        }
    },
    [9888] = { -- Healing Touch(Rank 9)
        spellLevel = 50,
        maxLevel = 55,
        baseCost = 600,
        effects = {
            [1] = {
                effectType = 10,
                min = 1516,
                max = 1797,
                perLevel = 5.9,
                coef = 1,
            },
        }
    },
    [9889] = { -- Healing Touch(Rank 10)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 720,
        effects = {
            [1] = {
                effectType = 10,
                min = 1890,
                max = 2231,
                perLevel = 6.6,
                coef = 1,
            },
        }
    },
    [9910] = { -- Thorns(Rank 6)
        spellLevel = 54,
        maxLevel = 0,
        duration = 600,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                charges = -1,
                min = 18,
                coef = 0,
            },
        }
    },
    [9912] = { -- Wrath(Rank 8)
        spellLevel = 54,
        maxLevel = 60,
        baseCost = 180,
        effects = {
            [1] = {
                effectType = 2,
                min = 236,
                max = 265,
                perLevel = 2.1,
                coef = 0.571,
            },
        }
    },
    [16914] = { -- Hurricane(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        duration = 10,
        baseCost = 880,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 70,
                perLevel = 0.2,
                coef = 0.03,
            },
        }
    },
    [17401] = { -- Hurricane(Rank 2)
        spellLevel = 50,
        maxLevel = 56,
        duration = 10,
        baseCost = 1180,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 100,
                perLevel = 0.2,
                coef = 0.03,
            },
        }
    },
    [17402] = { -- Hurricane(Rank 3)
        spellLevel = 60,
        maxLevel = 66,
        duration = 10,
        baseCost = 1495,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 134,
                perLevel = 0.3,
                coef = 0.03,
            },
        }
    },
    [18562] = { -- Swiftmend
        spellLevel = 1,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 10,
                min = 1,
                coef = 0,
            },
        }
    },
    [24974] = { -- Insect Swarm(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 12,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 23,
                coef = 0.158,
            },
        }
    },
    [24975] = { -- Insect Swarm(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 12,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 29,
                coef = 0.158,
            },
        }
    },
    [24976] = { -- Insect Swarm(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 12,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 44,
                coef = 0.158,
            },
        }
    },
    [24977] = { -- Insect Swarm(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 12,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 54,
                coef = 0.158,
            },
        }
    },
    [25297] = { -- Healing Touch(Rank 11)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 800,
        effects = {
            [1] = {
                effectType = 10,
                min = 2267,
                max = 2678,
                perLevel = 7.3,
                coef = 1,
            },
        }
    },
    [25298] = { -- Starfire(Rank 7)
        spellLevel = 60,
        maxLevel = 66,
        baseCost = 340,
        effects = {
            [1] = {
                effectType = 2,
                min = 496,
                max = 585,
                perLevel = 3.1,
                coef = 1,
            },
        }
    },
    [25299] = { -- Rejuvenation(Rank 11)
        spellLevel = 60,
        maxLevel = 65,
        duration = 12,
        baseCost = 360,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 222,
                coef = 0.2,
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
        },
        [8] = {
            99, -- Demoralizing Roar(Rank 1)
            1735, -- Demoralizing Roar(Rank 2)
            9490, -- Demoralizing Roar(Rank 3)
            9747, -- Demoralizing Roar(Rank 4)
            9898, -- Demoralizing Roar(Rank 5)
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
            27813, -- Blessed Recovery(Rank 1)
            27817, -- Blessed Recovery(Rank 2)
            27818, -- Blessed Recovery(Rank 3)
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
        },
        [128] = {
            740, -- Tranquility(Rank 1)
            8918, -- Tranquility(Rank 2)
            9862, -- Tranquility(Rank 3)
            9863, -- Tranquility(Rank 4)
            21791, -- Tranquility
            21793, -- Twisted Tranquility
            25817, -- Tranquility
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
        },
        [1024] = {
            770, -- Faerie Fire(Rank 1)
            778, -- Faerie Fire(Rank 2)
            9749, -- Faerie Fire(Rank 3)
            9907, -- Faerie Fire(Rank 4)
            16857, -- Faerie Fire (Feral)(Rank 1)
            17390, -- Faerie Fire (Feral)(Rank 2)
            17391, -- Faerie Fire (Feral)(Rank 3)
            17392, -- Faerie Fire (Feral)(Rank 4)
        },
        [2048] = {
            769, -- Swipe(Rank 3)
            779, -- Swipe(Rank 1)
            780, -- Swipe(Rank 2)
            6807, -- Maul(Rank 1)
            6808, -- Maul(Rank 2)
            6809, -- Maul(Rank 3)
            8972, -- Maul(Rank 4)
            9745, -- Maul(Rank 5)
            9754, -- Swipe(Rank 4)
            9880, -- Maul(Rank 6)
            9881, -- Maul(Rank 7)
            9908, -- Swipe(Rank 5)
            27554, -- Swipe
        },
        [4096] = {
            1082, -- Claw(Rank 1)
            1822, -- Rake(Rank 1)
            1823, -- Rake(Rank 2)
            1824, -- Rake(Rank 3)
            3029, -- Claw(Rank 2)
            5201, -- Claw(Rank 3)
            9849, -- Claw(Rank 4)
            9850, -- Claw(Rank 5)
            9904, -- Rake(Rank 4)
            24187, -- Claw
            24331, -- Rake
            24332, -- Rake
            27555, -- Shred
            27556, -- Rake
            27638, -- Rake
        },
        [8192] = {
            5211, -- Bash(Rank 1)
            6798, -- Bash(Rank 2)
            8983, -- Bash(Rank 3)
        },
        [16384] = {
            5215, -- Prowl(Rank 1)
            6783, -- Prowl(Rank 2)
            9913, -- Prowl(Rank 3)
        },
        [32768] = {
            5221, -- Shred(Rank 1)
            6800, -- Shred(Rank 2)
            8992, -- Shred(Rank 3)
            9829, -- Shred(Rank 4)
            9830, -- Shred(Rank 5)
        },
        [65536] = {
            6785, -- Ravage(Rank 1)
            6787, -- Ravage(Rank 2)
            9866, -- Ravage(Rank 3)
            9867, -- Ravage(Rank 4)
        },
        [131072] = {
            9005, -- Pounce(Rank 1)
            9823, -- Pounce(Rank 2)
            9827, -- Pounce(Rank 3)
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
        },
        [524288] = {
            5229, -- Enrage
            25503, -- Enrage
        },
        [1048576] = {
            16689, -- Nature's Grasp(Rank 1)
            16810, -- Nature's Grasp(Rank 2)
            16811, -- Nature's Grasp(Rank 3)
            16812, -- Nature's Grasp(Rank 4)
            16813, -- Nature's Grasp(Rank 5)
            17329, -- Nature's Grasp(Rank 6)
        },
        [2097152] = {
            5570, -- Insect Swarm(Rank 1)
            24974, -- Insect Swarm(Rank 2)
            24975, -- Insect Swarm(Rank 3)
            24976, -- Insect Swarm(Rank 4)
            24977, -- Insect Swarm(Rank 5)
        },
        [4194304] = {
            16914, -- Hurricane(Rank 1)
            17401, -- Hurricane(Rank 2)
            17402, -- Hurricane(Rank 3)
            27530, -- Hurricane
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
            27557, -- Ferocious Bite
            31018, -- Ferocious Bite(Rank 5)
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
        },
        [33554432] = {
            775, -- Tree Form(Shapeshift)
            21178, -- Bear Form (Passive2)(Passive)
        },
        [67108864] = {
            9033, -- Shapeshift Form Effect
        },
        [134217728] = {
            3025, -- Cat Form (Passive)(Passive)
            24868, -- Predatory Strikes
        },
        [268435456] = {
            20484, -- Rebirth(Rank 1)
            20739, -- Rebirth(Rank 2)
            20742, -- Rebirth(Rank 3)
            20747, -- Rebirth(Rank 4)
            20748, -- Rebirth(Rank 5)
        },
        [536870912] = {
            783, -- Travel Form(Shapeshift)
            1066, -- Aquatic Form(Shapeshift)
            24858, -- Moonkin Form(Shapeshift)
            27546, -- Faerie Dragon Form
        },
        [1073741824] = {
            5487, -- Bear Form(Shapeshift)
            9634, -- Dire Bear Form(Shapeshift)
        },
        [2147483648] = {
            768, -- Cat Form(Shapeshift)
        },
    },
    [2] = {
        [1] = {
            16979, -- Feral Charge
        },
        [2] = {
            18562, -- Swiftmend
        },
        [4] = {
            2782, -- Remove Curse
            2893, -- Abolish Poison
            8946, -- Cure Poison
        },
        [8] = {
            6795, -- Growl
        },
    },
    [3] = {
    },
    [4] = {
    },
};


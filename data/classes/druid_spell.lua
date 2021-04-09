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
        noCrit = true,
        forceHeal = true,
    },
    [GetSpellInfo(5570)] = { -- Insect Swarm
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(16914)] = { -- Hurricane
        school = 4,
        isChannel = true,
        defType = 1,
        noCrit = true,
    },
    [GetSpellInfo(33763)] = { -- Lifebloom
        school = 4,
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
                coef = 0.055,
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
        duration = 8,
        baseCost = 525,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 351,
                perLevel = 2.2,
                coef = 0.286,
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
                coef = 0.093,
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
                coef = 0.1,
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
                coef = 0.1,
            },
        }
    },
    [5570] = { -- Insect Swarm(Rank 1)
        spellLevel = 20,
        maxLevel = 29,
        duration = 12,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 18,
                coef = 0.127,
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
        duration = 8,
        baseCost = 705,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 515,
                perLevel = 2.6,
                coef = 0.286,
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
        baseCost = 80,
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
                coef = 0.07,
            },
        }
    },
    [8938] = { -- Regrowth(Rank 2)
        spellLevel = 18,
        maxLevel = 23,
        duration = 21,
        baseCost = 135,
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
                coef = 0.093,
            },
        }
    },
    [8939] = { -- Regrowth(Rank 3)
        spellLevel = 24,
        maxLevel = 29,
        duration = 21,
        baseCost = 185,
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
                coef = 0.1,
            },
        }
    },
    [8940] = { -- Regrowth(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        duration = 21,
        baseCost = 230,
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
                coef = 0.1,
            },
        }
    },
    [8941] = { -- Regrowth(Rank 5)
        spellLevel = 36,
        maxLevel = 41,
        duration = 21,
        baseCost = 275,
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
                coef = 0.1,
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
        baseCost = 335,
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
                coef = 0.1,
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
                coef = 0.1,
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
                coef = 0.1,
            },
        }
    },
    [9856] = { -- Regrowth(Rank 7)
        spellLevel = 48,
        maxLevel = 53,
        duration = 21,
        baseCost = 405,
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
                coef = 0.1,
            },
        }
    },
    [9857] = { -- Regrowth(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        duration = 21,
        baseCost = 485,
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
                coef = 0.1,
            },
        }
    },
    [9858] = { -- Regrowth(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        duration = 21,
        baseCost = 575,
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
                coef = 0.1,
            },
        }
    },
    [9862] = { -- Tranquility(Rank 3)
        spellLevel = 50,
        maxLevel = 56,
        duration = 8,
        baseCost = 975,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 765,
                perLevel = 3.4,
                coef = 0.286,
            },
        }
    },
    [9863] = { -- Tranquility(Rank 4)
        spellLevel = 60,
        maxLevel = 66,
        duration = 8,
        baseCost = 1295,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 1097,
                perLevel = 3.7,
                coef = 0.286,
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
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 70,
                perLevel = 0.2,
                coef = 0.129,
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
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 100,
                perLevel = 0.2,
                coef = 0.129,
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
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 134,
                perLevel = 0.3,
                coef = 0.129,
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
        maxLevel = 39,
        duration = 12,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 32,
                coef = 0.127,
            },
        }
    },
    [24975] = { -- Insect Swarm(Rank 3)
        spellLevel = 40,
        maxLevel = 49,
        duration = 12,
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 50,
                coef = 0.127,
            },
        }
    },
    [24976] = { -- Insect Swarm(Rank 4)
        spellLevel = 50,
        maxLevel = 59,
        duration = 12,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 72,
                coef = 0.127,
            },
        }
    },
    [24977] = { -- Insect Swarm(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        duration = 12,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 99,
                coef = 0.127,
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
    [26978] = { -- Healing Touch(Rank 12)
        spellLevel = 62,
        maxLevel = 67,
        baseCost = 820,
        effects = {
            [1] = {
                effectType = 10,
                min = 2364,
                max = 2791,
                perLevel = 7.4,
                coef = 1,
            },
        }
    },
    [26979] = { -- Healing Touch(Rank 13)
        spellLevel = 69,
        maxLevel = 74,
        baseCost = 935,
        effects = {
            [1] = {
                effectType = 10,
                min = 2707,
                max = 3198,
                perLevel = 8.2,
                coef = 1,
            },
        }
    },
    [26980] = { -- Regrowth(Rank 10)
        spellLevel = 65,
        maxLevel = 70,
        duration = 21,
        baseCost = 675,
        effects = {
            [1] = {
                effectType = 10,
                min = 1215,
                max = 1356,
                perLevel = 7.7,
                coef = 0.286,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 182,
                coef = 0.1,
            },
        }
    },
    [26981] = { -- Rejuvenation(Rank 12)
        spellLevel = 63,
        maxLevel = 68,
        duration = 12,
        baseCost = 370,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 233,
                coef = 0.2,
            },
        }
    },
    [26982] = { -- Rejuvenation(Rank 13)
        spellLevel = 69,
        maxLevel = 74,
        duration = 12,
        baseCost = 415,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 265,
                coef = 0.2,
            },
        }
    },
    [26983] = { -- Tranquility(Rank 5)
        spellLevel = 70,
        maxLevel = 76,
        duration = 8,
        baseCost = 1650,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 1518,
                perLevel = 4.5,
                coef = 0.286,
            },
        }
    },
    [26984] = { -- Wrath(Rank 9)
        spellLevel = 61,
        maxLevel = 67,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 2,
                min = 278,
                max = 313,
                perLevel = 2.4,
                coef = 0.571,
            },
        }
    },
    [26985] = { -- Wrath(Rank 10)
        spellLevel = 69,
        maxLevel = 75,
        baseCost = 255,
        effects = {
            [1] = {
                effectType = 2,
                min = 381,
                max = 430,
                perLevel = 2.7,
                coef = 0.571,
            },
        }
    },
    [26986] = { -- Starfire(Rank 8)
        spellLevel = 67,
        maxLevel = 73,
        baseCost = 370,
        effects = {
            [1] = {
                effectType = 2,
                min = 540,
                max = 637,
                perLevel = 3.4,
                coef = 1,
            },
        }
    },
    [26987] = { -- Moonfire(Rank 11)
        spellLevel = 63,
        maxLevel = 68,
        duration = 12,
        baseCost = 430,
        effects = {
            [1] = {
                effectType = 2,
                min = 220,
                max = 259,
                perLevel = 3.6,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 111,
                coef = 0.13,
            },
        }
    },
    [26988] = { -- Moonfire(Rank 12)
        spellLevel = 70,
        maxLevel = 75,
        duration = 12,
        baseCost = 495,
        effects = {
            [1] = {
                effectType = 2,
                min = 305,
                max = 358,
                perLevel = 3.9,
                coef = 0.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 150,
                coef = 0.13,
            },
        }
    },
    [26989] = { -- Entangling Roots(Rank 7)
        spellLevel = 68,
        maxLevel = 77,
        duration = 27,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 39,
                coef = 0.1,
            },
        }
    },
    [26992] = { -- Thorns(Rank 7)
        spellLevel = 64,
        maxLevel = 0,
        duration = 600,
        baseCost = 400,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                charges = -1,
                min = 25,
                coef = 0,
            },
        }
    },
    [27012] = { -- Hurricane(Rank 4)
        spellLevel = 70,
        maxLevel = 76,
        duration = 10,
        baseCost = 1905,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 206,
                perLevel = 0.4,
                coef = 0.129,
            },
        }
    },
    [27013] = { -- Insect Swarm(Rank 6)
        spellLevel = 70,
        maxLevel = 79,
        duration = 12,
        baseCost = 175,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 132,
                coef = 0.127,
            },
        }
    },
    [33763] = { -- Lifebloom(Rank 1)
        spellLevel = 64,
        maxLevel = 69,
        duration = 7,
        baseCost = 220,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 39,
                coef = 0.0742,
            },
            [2] = {
                effectType = 10,
                min = 600,
                coef = 0.3429,
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
        },
        [8] = {
            99, -- Demoralizing Roar(Rank 1)
            1735, -- Demoralizing Roar(Rank 2)
            9490, -- Demoralizing Roar(Rank 3)
            9747, -- Demoralizing Roar(Rank 4)
            9898, -- Demoralizing Roar(Rank 5)
            26998, -- Demoralizing Roar(Rank 6)
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
            44205, -- Tranquility(Rank 1)
            44206, -- Tranquility(Rank 1)
            44207, -- Tranquility(Rank 1)
            44208, -- Tranquility(Rank 1)
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
            26993, -- Faerie Fire(Rank 5)
            27011, -- Faerie Fire (Feral)(Rank 5)
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
            27000, -- Claw(Rank 6)
            27003, -- Rake(Rank 5)
            27555, -- Shred
            27556, -- Rake
            27638, -- Rake
            31041, -- Mangle
            31289, -- Claw
            36332, -- Rake
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
            27001, -- Shred(Rank 6)
            27002, -- Shred(Rank 7)
        },
        [65536] = {
            6785, -- Ravage(Rank 1)
            6787, -- Ravage(Rank 2)
            9866, -- Ravage(Rank 3)
            9867, -- Ravage(Rank 4)
            27005, -- Ravage(Rank 5)
        },
        [131072] = {
            9005, -- Pounce(Rank 1)
            9823, -- Pounce(Rank 2)
            9827, -- Pounce(Rank 3)
            27006, -- Pounce(Rank 4)
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
        },
        [2097152] = {
            5570, -- Insect Swarm(Rank 1)
            24974, -- Insect Swarm(Rank 2)
            24975, -- Insect Swarm(Rank 3)
            24976, -- Insect Swarm(Rank 4)
            24977, -- Insect Swarm(Rank 5)
            27013, -- Insect Swarm(Rank 6)
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
            26995, -- Soothe Animal(Rank 4)
        },
        [33554432] = {
            21178, -- Bear Form (Passive2)(Passive)
        },
        [134217728] = {
            3025, -- Cat Form (Passive)(Passive)
        },
        [268435456] = {
            20484, -- Rebirth(Rank 1)
            20739, -- Rebirth(Rank 2)
            20742, -- Rebirth(Rank 3)
            20747, -- Rebirth(Rank 4)
            20748, -- Rebirth(Rank 5)
            26994, -- Rebirth(Rank 6)
        },
        [536870912] = {
            1066, -- Aquatic Form(Shapeshift)
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
            2893, -- Abolish Poison
            8946, -- Cure Poison
            17122, -- Subtlety(Rank 5)
        },
        [8] = {
            6795, -- Growl
            39270, -- Growl
        },
        [16] = {
            33763, -- Lifebloom(Rank 1)
        },
        [32] = {
            33786, -- Cyclone
        },
        [64] = {
            33878, -- Mangle (Bear)(Rank 1)
            33986, -- Mangle (Bear)(Rank 2)
            33987, -- Mangle (Bear)(Rank 3)
        },
        [128] = {
            22570, -- Maim(Rank 1)
        },
        [256] = {
            33745, -- Lacerate(Rank 1)
        },
        [512] = {
            33831, -- Force of Nature
        },
        [1024] = {
            33876, -- Mangle (Cat)(Rank 1)
            33982, -- Mangle (Cat)(Rank 2)
            33983, -- Mangle (Cat)(Rank 3)
        },
        [2048] = {
            24932, -- Leader of the Pack
        },
        [4096] = {
            29166, -- Innervate
            38549, -- Empowerment
            38688, -- Nether Infusion
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
        },
        [1048576] = {
            769, -- Swipe(Rank 3)
            779, -- Swipe(Rank 1)
            780, -- Swipe(Rank 2)
            9754, -- Swipe(Rank 4)
            9908, -- Swipe(Rank 5)
            26997, -- Swipe(Rank 6)
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
            17122, -- Subtlety(Rank 5)
        },
    },
    [3] = {
    },
    [4] = {
    },
};


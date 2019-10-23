-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(339)] = { -- Entangling Roots
        school = 4,
    },
    [GetSpellInfo(774)] = { -- Rejuvenation
        school = 4,
    },
    [GetSpellInfo(2912)] = { -- Starfire
        school = 7,
    },
    [GetSpellInfo(5176)] = { -- Wrath
        school = 4,
    },
    [GetSpellInfo(5185)] = { -- Healing Touch
        school = 4,
    },
    [GetSpellInfo(5570)] = { -- Insect Swarm
        school = 4,
    },
    [GetSpellInfo(8921)] = { -- Moonfire
        school = 7,
    },
    [GetSpellInfo(8936)] = { -- Regrowth
        school = 4,
    },
    [GetSpellInfo(16914)] = { -- Hurricane
        school = 4,
        isChannel = true,
    },
    [GetSpellInfo(18562)] = { -- Swiftmend
        school = 4,
    },
};

_addon.spellRankInfo = {
    [339] = { -- Entangling Roots(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 12,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 5,
                coef = 0.033,
            },
        }
    },
    [774] = { -- Rejuvenation(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 12,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 8,
                coef = 0.08,
            },
        }
    },
    [1058] = { -- Rejuvenation(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 10,
                coef = 0.056,
            },
        }
    },
    [1430] = { -- Rejuvenation(Rank 3)
        spellLevel = 16,
        maxLevel = 21,
        duration = 12,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 61,
                coef = 0.2,
            },
        }
    },
    [2912] = { -- Starfire(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 76,
                coef = 0.2,
            },
        }
    },
    [5176] = { -- Wrath(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 2,
                min = 11,
                coef = 0.158,
            },
        }
    },
    [6778] = { -- Healing Touch(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 97,
                coef = 0.2,
            },
        }
    },
    [8921] = { -- Moonfire(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 9,
        effects = {
            [1] = {
                min = 7,
                max = 10,
                perLevel = 0.5,
                coef = 0.06,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 13,
                max = 18,
                perLevel = 0.8,
                coef = 0.094,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 25,
                max = 32,
                perLevel = 1.1,
                coef = 0.128,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 40,
                max = 49,
                perLevel = 1.4,
                coef = 0.15,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 61,
                max = 74,
                perLevel = 1.8,
                coef = 0.15,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 81,
                max = 98,
                perLevel = 2.1,
                coef = 0.15,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 105,
                max = 126,
                perLevel = 2.4,
                coef = 0.15,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 84,
                max = 99,
                perLevel = 1.8,
                coef = 0.2,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 164,
                max = 189,
                perLevel = 2.5,
                coef = 0.264,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 240,
                max = 275,
                perLevel = 3.1,
                coef = 0.286,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 318,
                max = 361,
                perLevel = 3.6,
                coef = 0.286,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 405,
                max = 458,
                perLevel = 4.1,
                coef = 0.286,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 61,
                coef = 0.071,
            },
        }
    },
    [8949] = { -- Starfire(Rank 2)
        spellLevel = 26,
        maxLevel = 32,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                min = 511,
                max = 576,
                perLevel = 4.7,
                coef = 0.286,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 78,
                coef = 0.071,
            },
        }
    },
    [9758] = { -- Healing Touch(Rank 8)
        spellLevel = 44,
        maxLevel = 49,
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                min = 130,
                max = 155,
                perLevel = 2.7,
                coef = 0.15,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 157,
                max = 186,
                perLevel = 3,
                coef = 0.15,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 189,
                max = 222,
                perLevel = 3.3,
                coef = 0.15,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 646,
                max = 725,
                perLevel = 5.3,
                coef = 0.286,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 809,
                max = 906,
                perLevel = 6,
                coef = 0.286,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 1003,
                max = 1120,
                perLevel = 6.8,
                coef = 0.286,
            },
            [2] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 152,
                coef = 0.071,
            },
        }
    },
    [9875] = { -- Starfire(Rank 5)
        spellLevel = 50,
        maxLevel = 56,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 1890,
                max = 2231,
                perLevel = 6.6,
                coef = 1,
            },
        }
    },
    [9912] = { -- Wrath(Rank 8)
        spellLevel = 54,
        maxLevel = 60,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
                isHeal = true,
                min = 1,
                coef = 0,
            },
        }
    },
    [24974] = { -- Insect Swarm(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 12,
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 2,
                min = 54,
                coef = 0.158,
            },
        }
    },
    [25297] = { -- Healing Touch(Rank 11)
        spellLevel = 60,
        maxLevel = 65,
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 222,
                coef = 0.2,
            },
        }
    },
};


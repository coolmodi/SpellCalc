-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(774)] = {
        school = 4,
    },
    [GetSpellInfo(5185)] = {
        school = 4,
    },
    [GetSpellInfo(8936)] = {
        school = 4,
    },
    [GetSpellInfo(18562)] = {
        school = 4,
    },
};

_addon.spellRankInfo = {
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


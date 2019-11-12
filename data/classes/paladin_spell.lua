-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(635)] = { -- Holy Light
        school = 2,
    },
    [GetSpellInfo(879)] = { -- Exorcism
        school = 2,
    },
    [GetSpellInfo(2812)] = { -- Holy Wrath
        school = 2,
    },
    [GetSpellInfo(19750)] = { -- Flash of Light
        school = 2,
    },
    [GetSpellInfo(20116)] = { -- Consecration
        school = 2,
    },
    [GetSpellInfo(20473)] = { -- Holy Shock
        school = 2,
    },
    [GetSpellInfo(24239)] = { -- Hammer of Wrath
        school = 2,
    },
};

_addon.spellRankInfo = {
    [635] = { -- Holy Light(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        effects = {
            [1] = {
                isHeal = true,
                min = 39,
                max = 48,
                perLevel = 0.8,
                coef = 0.205,
            },
        }
    },
    [639] = { -- Holy Light(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        effects = {
            [1] = {
                isHeal = true,
                min = 76,
                max = 91,
                perLevel = 1.1,
                coef = 0.339,
            },
        }
    },
    [647] = { -- Holy Light(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        effects = {
            [1] = {
                isHeal = true,
                min = 159,
                max = 188,
                perLevel = 1.7,
                coef = 0.554,
            },
        }
    },
    [879] = { -- Exorcism(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        effects = {
            [1] = {
                min = 84,
                max = 97,
                perLevel = 1.2,
                coef = 0.429,
            },
        }
    },
    [1026] = { -- Holy Light(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        effects = {
            [1] = {
                isHeal = true,
                min = 310,
                max = 357,
                perLevel = 2.4,
                coef = 0.7142857142857143,
            },
        }
    },
    [1042] = { -- Holy Light(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        effects = {
            [1] = {
                isHeal = true,
                min = 491,
                max = 554,
                perLevel = 3.1,
                coef = 0.7142857142857143,
            },
        }
    },
    [2812] = { -- Holy Wrath(Rank 1)
        spellLevel = 50,
        maxLevel = 54,
        effects = {
            [1] = {
                min = 362,
                max = 429,
                perLevel = 1.6,
                coef = 0.19,
            },
        }
    },
    [3472] = { -- Holy Light(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        effects = {
            [1] = {
                isHeal = true,
                min = 698,
                max = 781,
                perLevel = 3.8,
                coef = 0.7142857142857143,
            },
        }
    },
    [5614] = { -- Exorcism(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        effects = {
            [1] = {
                min = 152,
                max = 173,
                perLevel = 1.6,
                coef = 0.429,
            },
        }
    },
    [5615] = { -- Exorcism(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        effects = {
            [1] = {
                min = 217,
                max = 246,
                perLevel = 2,
                coef = 0.429,
            },
        }
    },
    [10312] = { -- Exorcism(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        effects = {
            [1] = {
                min = 304,
                max = 343,
                perLevel = 2.4,
                coef = 0.429,
            },
        }
    },
    [10313] = { -- Exorcism(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        effects = {
            [1] = {
                min = 393,
                max = 440,
                perLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [10314] = { -- Exorcism(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        effects = {
            [1] = {
                min = 505,
                max = 564,
                perLevel = 3.2,
                coef = 0.429,
            },
        }
    },
    [10318] = { -- Holy Wrath(Rank 2)
        spellLevel = 60,
        maxLevel = 64,
        effects = {
            [1] = {
                min = 490,
                max = 577,
                perLevel = 1.9,
                coef = 0.19,
            },
        }
    },
    [10328] = { -- Holy Light(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        effects = {
            [1] = {
                isHeal = true,
                min = 945,
                max = 1054,
                perLevel = 4.6,
                coef = 0.7142857142857143,
            },
        }
    },
    [10329] = { -- Holy Light(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        effects = {
            [1] = {
                isHeal = true,
                min = 1246,
                max = 1389,
                perLevel = 5.2,
                coef = 0.7142857142857143,
            },
        }
    },
    [19750] = { -- Flash of Light(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        effects = {
            [1] = {
                isHeal = true,
                min = 62,
                max = 73,
                perLevel = 1,
                coef = 0.42857142857142855,
            },
        }
    },
    [19939] = { -- Flash of Light(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        effects = {
            [1] = {
                isHeal = true,
                min = 96,
                max = 111,
                perLevel = 1.3,
                coef = 0.42857142857142855,
            },
        }
    },
    [19940] = { -- Flash of Light(Rank 3)
        spellLevel = 34,
        maxLevel = 39,
        effects = {
            [1] = {
                isHeal = true,
                min = 145,
                max = 164,
                perLevel = 1.6,
                coef = 0.42857142857142855,
            },
        }
    },
    [19941] = { -- Flash of Light(Rank 4)
        spellLevel = 42,
        maxLevel = 47,
        effects = {
            [1] = {
                isHeal = true,
                min = 197,
                max = 222,
                perLevel = 1.9,
                coef = 0.42857142857142855,
            },
        }
    },
    [19942] = { -- Flash of Light(Rank 5)
        spellLevel = 50,
        maxLevel = 55,
        effects = {
            [1] = {
                isHeal = true,
                min = 267,
                max = 300,
                perLevel = 2.2,
                coef = 0.42857142857142855,
            },
        }
    },
    [19943] = { -- Flash of Light(Rank 6)
        spellLevel = 58,
        maxLevel = 63,
        effects = {
            [1] = {
                isHeal = true,
                min = 343,
                max = 384,
                perLevel = 2.6,
                coef = 0.42857142857142855,
            },
        }
    },
    [20116] = { -- Consecration(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 8,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 15,
                coef = 0.042,
            },
        }
    },
    [20473] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 205,
                coef = 0.4285,
            },
            [2] = {
                isHeal = true,
                min = 205,
                coef = 0.4285,
            },
        }
    },
    [20922] = { -- Consecration(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 8,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 24,
                coef = 0.042,
            },
        }
    },
    [20923] = { -- Consecration(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 8,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 35,
                coef = 0.042,
            },
        }
    },
    [20924] = { -- Consecration(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 8,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 48,
                coef = 0.042,
            },
        }
    },
    [20929] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 280,
                coef = 0.4285,
            },
            [2] = {
                isHeal = true,
                min = 280,
                coef = 0.4285,
            },
        }
    },
    [20930] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 366,
                coef = 0.4285,
            },
            [2] = {
                isHeal = true,
                min = 366,
                coef = 0.4285,
            },
        }
    },
    [24239] = { -- Hammer of Wrath(Rank 3)
        spellLevel = 60,
        maxLevel = 65,
        effects = {
            [1] = {
                min = 504,
                max = 557,
                perLevel = 3.1,
                coef = 0.429,
            },
        }
    },
    [24274] = { -- Hammer of Wrath(Rank 2)
        spellLevel = 52,
        maxLevel = 57,
        effects = {
            [1] = {
                min = 399,
                max = 442,
                perLevel = 2.7,
                coef = 0.429,
            },
        }
    },
    [24275] = { -- Hammer of Wrath(Rank 1)
        spellLevel = 44,
        maxLevel = 49,
        effects = {
            [1] = {
                min = 304,
                max = 337,
                perLevel = 2.4,
                coef = 0.429,
            },
        }
    },
    [25292] = { -- Holy Light(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        effects = {
            [1] = {
                isHeal = true,
                min = 1590,
                max = 1771,
                perLevel = 5.8,
                coef = 0.7142857142857143,
            },
        }
    },
    [26573] = { -- Consecration(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 8,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 8,
                coef = 0.042,
            },
        }
    },
};


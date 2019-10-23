-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(635)] = {
        school = 2,
    },
    [GetSpellInfo(19750)] = {
        school = 2,
    },
    [GetSpellInfo(20473)] = {
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
    [20473] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        effects = {
            [1] = {
                isHeal = true,
                min = 205,
                coef = 0.4285,
            },
        }
    },
    [20929] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 0,
        effects = {
            [1] = {
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
                isHeal = true,
                min = 366,
                coef = 0.4285,
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
};


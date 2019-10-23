-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(17)] = {
        school = 2,
        isAbsorbShield = true,
    },
    [GetSpellInfo(139)] = {
        school = 2,
    },
    [GetSpellInfo(596)] = {
        school = 2,
    },
    [GetSpellInfo(2050)] = {
        school = 2,
    },
    [GetSpellInfo(2054)] = {
        school = 2,
    },
    [GetSpellInfo(2060)] = {
        school = 2,
    },
    [GetSpellInfo(2061)] = {
        school = 2,
    },
    [GetSpellInfo(13908)] = {
        school = 2,
    },
};

_addon.spellRankInfo = {
    [17] = { -- Power Word: Shield(Rank 1)
        spellLevel = 6,
        maxLevel = 11,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 44,
                perLevel = 0.8,
                coef = 0.0475,
            },
        }
    },
    [139] = { -- Renew(Rank 1)
        spellLevel = 8,
        maxLevel = 13,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 9,
                coef = 0.11,
            },
        }
    },
    [592] = { -- Power Word: Shield(Rank 2)
        spellLevel = 12,
        maxLevel = 17,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 88,
                perLevel = 1.2,
                coef = 0.07,
            },
        }
    },
    [596] = { -- Prayer of Healing(Rank 1)
        spellLevel = 30,
        maxLevel = 39,
        effects = {
            [1] = {
                isHeal = true,
                min = 301,
                max = 322,
                perLevel = 1.3,
                coef = 0.286,
            },
        }
    },
    [600] = { -- Power Word: Shield(Rank 3)
        spellLevel = 18,
        maxLevel = 23,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 158,
                perLevel = 1.6,
                coef = 0.0925,
            },
        }
    },
    [996] = { -- Prayer of Healing(Rank 2)
        spellLevel = 40,
        maxLevel = 49,
        effects = {
            [1] = {
                isHeal = true,
                min = 444,
                max = 473,
                perLevel = 1.6,
                coef = 0.286,
            },
        }
    },
    [2050] = { -- Lesser Heal(Rank 1)
        spellLevel = 1,
        maxLevel = 3,
        effects = {
            [1] = {
                isHeal = true,
                min = 46,
                max = 57,
                perLevel = 0.9,
                coef = 0.123,
            },
        }
    },
    [2052] = { -- Lesser Heal(Rank 2)
        spellLevel = 4,
        maxLevel = 9,
        effects = {
            [1] = {
                isHeal = true,
                min = 71,
                max = 86,
                perLevel = 1.1,
                coef = 0.229,
            },
        }
    },
    [2053] = { -- Lesser Heal(Rank 3)
        spellLevel = 10,
        maxLevel = 15,
        effects = {
            [1] = {
                isHeal = true,
                min = 135,
                max = 158,
                perLevel = 1.6,
                coef = 0.446,
            },
        }
    },
    [2054] = { -- Heal(Rank 1)
        spellLevel = 16,
        maxLevel = 21,
        effects = {
            [1] = {
                isHeal = true,
                min = 295,
                max = 342,
                perLevel = 2.4,
                coef = 0.729,
            },
        }
    },
    [2055] = { -- Heal(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        effects = {
            [1] = {
                isHeal = true,
                min = 429,
                max = 492,
                perLevel = 3.2,
                coef = 0.857,
            },
        }
    },
    [2060] = { -- Greater Heal(Rank 1)
        spellLevel = 40,
        maxLevel = 45,
        effects = {
            [1] = {
                isHeal = true,
                min = 899,
                max = 1014,
                perLevel = 5.1,
                coef = 0.857,
            },
        }
    },
    [2061] = { -- Flash Heal(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        effects = {
            [1] = {
                isHeal = true,
                min = 193,
                max = 238,
                perLevel = 1.9,
                coef = 0.429,
            },
        }
    },
    [3747] = { -- Power Word: Shield(Rank 4)
        spellLevel = 24,
        maxLevel = 29,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 234,
                perLevel = 2,
                coef = 0.1,
            },
        }
    },
    [6063] = { -- Heal(Rank 3)
        spellLevel = 28,
        maxLevel = 33,
        effects = {
            [1] = {
                isHeal = true,
                min = 566,
                max = 643,
                perLevel = 4,
                coef = 0.857,
            },
        }
    },
    [6064] = { -- Heal(Rank 4)
        spellLevel = 34,
        maxLevel = 39,
        effects = {
            [1] = {
                isHeal = true,
                min = 712,
                max = 805,
                perLevel = 4.5,
                coef = 0.857,
            },
        }
    },
    [6065] = { -- Power Word: Shield(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 301,
                perLevel = 2.3,
                coef = 0.1,
            },
        }
    },
    [6066] = { -- Power Word: Shield(Rank 6)
        spellLevel = 36,
        maxLevel = 41,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 381,
                perLevel = 2.6,
                coef = 0.1,
            },
        }
    },
    [6074] = { -- Renew(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 20,
                coef = 0.155,
            },
        }
    },
    [6075] = { -- Renew(Rank 3)
        spellLevel = 20,
        maxLevel = 25,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 35,
                coef = 0.2,
            },
        }
    },
    [6076] = { -- Renew(Rank 4)
        spellLevel = 26,
        maxLevel = 31,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 49,
                coef = 0.2,
            },
        }
    },
    [6077] = { -- Renew(Rank 5)
        spellLevel = 32,
        maxLevel = 37,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 63,
                coef = 0.2,
            },
        }
    },
    [6078] = { -- Renew(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 80,
                coef = 0.2,
            },
        }
    },
    [9472] = { -- Flash Heal(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        effects = {
            [1] = {
                isHeal = true,
                min = 258,
                max = 315,
                perLevel = 2.2,
                coef = 0.429,
            },
        }
    },
    [9473] = { -- Flash Heal(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        effects = {
            [1] = {
                isHeal = true,
                min = 327,
                max = 394,
                perLevel = 2.5,
                coef = 0.429,
            },
        }
    },
    [9474] = { -- Flash Heal(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        effects = {
            [1] = {
                isHeal = true,
                min = 400,
                max = 479,
                perLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [10898] = { -- Power Word: Shield(Rank 7)
        spellLevel = 42,
        maxLevel = 47,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 484,
                perLevel = 3,
                coef = 0.1,
            },
        }
    },
    [10899] = { -- Power Word: Shield(Rank 8)
        spellLevel = 48,
        maxLevel = 53,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 605,
                perLevel = 3.4,
                coef = 0.1,
            },
        }
    },
    [10900] = { -- Power Word: Shield(Rank 9)
        spellLevel = 54,
        maxLevel = 59,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 763,
                perLevel = 3.9,
                coef = 0.1,
            },
        }
    },
    [10901] = { -- Power Word: Shield(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 942,
                perLevel = 4.3,
                coef = 0.1,
            },
        }
    },
    [10915] = { -- Flash Heal(Rank 5)
        spellLevel = 44,
        maxLevel = 49,
        effects = {
            [1] = {
                isHeal = true,
                min = 518,
                max = 617,
                perLevel = 3.3,
                coef = 0.429,
            },
        }
    },
    [10916] = { -- Flash Heal(Rank 6)
        spellLevel = 50,
        maxLevel = 55,
        effects = {
            [1] = {
                isHeal = true,
                min = 644,
                max = 765,
                perLevel = 3.7,
                coef = 0.429,
            },
        }
    },
    [10917] = { -- Flash Heal(Rank 7)
        spellLevel = 56,
        maxLevel = 61,
        effects = {
            [1] = {
                isHeal = true,
                min = 812,
                max = 959,
                perLevel = 4.2,
                coef = 0.429,
            },
        }
    },
    [10927] = { -- Renew(Rank 7)
        spellLevel = 44,
        maxLevel = 49,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 102,
                coef = 0.2,
            },
        }
    },
    [10928] = { -- Renew(Rank 8)
        spellLevel = 50,
        maxLevel = 55,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 130,
                coef = 0.2,
            },
        }
    },
    [10929] = { -- Renew(Rank 9)
        spellLevel = 56,
        maxLevel = 61,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 162,
                coef = 0.2,
            },
        }
    },
    [10960] = { -- Prayer of Healing(Rank 3)
        spellLevel = 50,
        maxLevel = 59,
        effects = {
            [1] = {
                isHeal = true,
                min = 657,
                max = 696,
                perLevel = 2,
                coef = 0.286,
            },
        }
    },
    [10961] = { -- Prayer of Healing(Rank 4)
        spellLevel = 60,
        maxLevel = 69,
        effects = {
            [1] = {
                isHeal = true,
                min = 939,
                max = 992,
                perLevel = 2.4,
                coef = 0.286,
            },
        }
    },
    [10963] = { -- Greater Heal(Rank 2)
        spellLevel = 46,
        maxLevel = 51,
        effects = {
            [1] = {
                isHeal = true,
                min = 1149,
                max = 1290,
                perLevel = 5.8,
                coef = 0.857,
            },
        }
    },
    [10964] = { -- Greater Heal(Rank 3)
        spellLevel = 52,
        maxLevel = 57,
        effects = {
            [1] = {
                isHeal = true,
                min = 1437,
                max = 1610,
                perLevel = 6.6,
                coef = 0.857,
            },
        }
    },
    [10965] = { -- Greater Heal(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        effects = {
            [1] = {
                isHeal = true,
                min = 1798,
                max = 2007,
                perLevel = 7.5,
                coef = 0.857,
            },
        }
    },
    [13908] = { -- Desperate Prayer(Rank 1)
        spellLevel = 10,
        maxLevel = 16,
        effects = {
            [1] = {
                isHeal = true,
                min = 134,
                max = 171,
                perLevel = 2.4,
                coef = 0.268,
            },
        }
    },
    [19236] = { -- Desperate Prayer(Rank 2)
        spellLevel = 18,
        maxLevel = 24,
        effects = {
            [1] = {
                isHeal = true,
                min = 263,
                max = 326,
                perLevel = 3.4,
                coef = 0.396,
            },
        }
    },
    [19238] = { -- Desperate Prayer(Rank 3)
        spellLevel = 26,
        maxLevel = 32,
        effects = {
            [1] = {
                isHeal = true,
                min = 447,
                max = 544,
                perLevel = 4.5,
                coef = 0.429,
            },
        }
    },
    [19240] = { -- Desperate Prayer(Rank 4)
        spellLevel = 34,
        maxLevel = 40,
        effects = {
            [1] = {
                isHeal = true,
                min = 588,
                max = 709,
                perLevel = 5.3,
                coef = 0.429,
            },
        }
    },
    [19241] = { -- Desperate Prayer(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        effects = {
            [1] = {
                isHeal = true,
                min = 834,
                max = 995,
                perLevel = 6.4,
                coef = 0.429,
            },
        }
    },
    [19242] = { -- Desperate Prayer(Rank 6)
        spellLevel = 50,
        maxLevel = 56,
        effects = {
            [1] = {
                isHeal = true,
                min = 1101,
                max = 1306,
                perLevel = 7.4,
                coef = 0.429,
            },
        }
    },
    [19243] = { -- Desperate Prayer(Rank 7)
        spellLevel = 58,
        maxLevel = 64,
        effects = {
            [1] = {
                isHeal = true,
                min = 1324,
                max = 1563,
                perLevel = 8.2,
                coef = 0.429,
            },
        }
    },
    [25314] = { -- Greater Heal(Rank 5)
        spellLevel = 60,
        maxLevel = 65,
        effects = {
            [1] = {
                isHeal = true,
                min = 1966,
                max = 2195,
                perLevel = 8.1,
                coef = 0.857,
            },
        }
    },
    [25315] = { -- Renew(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 3,
                min = 194,
                coef = 0.2,
            },
        }
    },
    [25316] = { -- Prayer of Healing(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        effects = {
            [1] = {
                isHeal = true,
                min = 1041,
                max = 1100,
                perLevel = 2.5,
                coef = 0.286,
            },
        }
    },
};


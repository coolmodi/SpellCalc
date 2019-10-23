-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(17)] = { -- Power Word: Shield
        school = 2,
        isAbsorbShield = true,
    },
    [GetSpellInfo(139)] = { -- Renew
        school = 2,
    },
    [GetSpellInfo(585)] = { -- Smite
        school = 2,
    },
    [GetSpellInfo(589)] = { -- Shadow Word: Pain
        school = 6,
    },
    [GetSpellInfo(596)] = { -- Prayer of Healing
        school = 2,
    },
    [GetSpellInfo(2050)] = { -- Lesser Heal
        school = 2,
    },
    [GetSpellInfo(2054)] = { -- Heal
        school = 2,
    },
    [GetSpellInfo(2060)] = { -- Greater Heal
        school = 2,
    },
    [GetSpellInfo(2061)] = { -- Flash Heal
        school = 2,
    },
    [GetSpellInfo(2944)] = { -- Devouring Plague
        school = 6,
    },
    [GetSpellInfo(8092)] = { -- Mind Blast
        school = 6,
    },
    [GetSpellInfo(10797)] = { -- Starshards
        school = 7,
        isChannel = true,
    },
    [GetSpellInfo(13908)] = { -- Desperate Prayer
        school = 2,
    },
    [GetSpellInfo(14914)] = { -- Holy Fire
        school = 2,
    },
    [GetSpellInfo(15237)] = { -- Holy Nova
        school = 2,
    },
    [GetSpellInfo(17311)] = { -- Mind Flay
        school = 6,
        isChannel = true,
        isBinary = true,
    },
    [GetSpellInfo(18137)] = { -- Shadowguard
        school = 6,
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
    [585] = { -- Smite(Rank 1)
        spellLevel = 1,
        maxLevel = 6,
        effects = {
            [1] = {
                min = 13,
                max = 18,
                perLevel = 0.5,
                coef = 0.123,
            },
        }
    },
    [589] = { -- Shadow Word: Pain(Rank 1)
        spellLevel = 4,
        maxLevel = 0,
        duration = 18,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 5,
                coef = 0.067,
            },
        }
    },
    [591] = { -- Smite(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        effects = {
            [1] = {
                min = 25,
                max = 32,
                perLevel = 0.6,
                coef = 0.271,
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
    [594] = { -- Shadow Word: Pain(Rank 2)
        spellLevel = 10,
        maxLevel = 0,
        duration = 18,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 11,
                coef = 0.104,
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
    [598] = { -- Smite(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        effects = {
            [1] = {
                min = 54,
                max = 63,
                perLevel = 0.9,
                coef = 0.554,
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
    [970] = { -- Shadow Word: Pain(Rank 3)
        spellLevel = 18,
        maxLevel = 0,
        duration = 18,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 22,
                coef = 0.154,
            },
        }
    },
    [984] = { -- Smite(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        effects = {
            [1] = {
                min = 91,
                max = 106,
                perLevel = 1.3,
                coef = 0.714,
            },
        }
    },
    [992] = { -- Shadow Word: Pain(Rank 4)
        spellLevel = 26,
        maxLevel = 0,
        duration = 18,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 39,
                coef = 0.167,
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
    [1004] = { -- Smite(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        effects = {
            [1] = {
                min = 150,
                max = 171,
                perLevel = 1.6,
                coef = 0.714,
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
    [2767] = { -- Shadow Word: Pain(Rank 5)
        spellLevel = 34,
        maxLevel = 0,
        duration = 18,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 61,
                coef = 0.167,
            },
        }
    },
    [2944] = { -- Devouring Plague(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 24,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 19,
                coef = 0.063,
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
    [6060] = { -- Smite(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        effects = {
            [1] = {
                min = 212,
                max = 241,
                perLevel = 2,
                coef = 0.714,
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
    [8092] = { -- Mind Blast(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        effects = {
            [1] = {
                min = 39,
                max = 44,
                perLevel = 0.6,
                coef = 0.268,
            },
        }
    },
    [8102] = { -- Mind Blast(Rank 2)
        spellLevel = 16,
        maxLevel = 21,
        effects = {
            [1] = {
                min = 72,
                max = 79,
                perLevel = 0.9,
                coef = 0.364,
            },
        }
    },
    [8103] = { -- Mind Blast(Rank 3)
        spellLevel = 22,
        maxLevel = 27,
        effects = {
            [1] = {
                min = 112,
                max = 121,
                perLevel = 1.1,
                coef = 0.429,
            },
        }
    },
    [8104] = { -- Mind Blast(Rank 4)
        spellLevel = 28,
        maxLevel = 33,
        effects = {
            [1] = {
                min = 167,
                max = 178,
                perLevel = 1.4,
                coef = 0.429,
            },
        }
    },
    [8105] = { -- Mind Blast(Rank 5)
        spellLevel = 34,
        maxLevel = 39,
        effects = {
            [1] = {
                min = 217,
                max = 232,
                perLevel = 1.6,
                coef = 0.429,
            },
        }
    },
    [8106] = { -- Mind Blast(Rank 6)
        spellLevel = 40,
        maxLevel = 45,
        effects = {
            [1] = {
                min = 279,
                max = 298,
                perLevel = 1.9,
                coef = 0.429,
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
    [10797] = { -- Starshards(Rank 1)
        spellLevel = 10,
        maxLevel = 16,
        duration = 6,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 14,
                coef = 0.104,
            },
        }
    },
    [10892] = { -- Shadow Word: Pain(Rank 6)
        spellLevel = 42,
        maxLevel = 0,
        duration = 18,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 85,
                coef = 0.167,
            },
        }
    },
    [10893] = { -- Shadow Word: Pain(Rank 7)
        spellLevel = 50,
        maxLevel = 0,
        duration = 18,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 112,
                coef = 0.167,
            },
        }
    },
    [10894] = { -- Shadow Word: Pain(Rank 8)
        spellLevel = 58,
        maxLevel = 0,
        duration = 18,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 142,
                coef = 0.167,
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
    [10933] = { -- Smite(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        effects = {
            [1] = {
                min = 287,
                max = 324,
                perLevel = 2.3,
                coef = 0.714,
            },
        }
    },
    [10934] = { -- Smite(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        effects = {
            [1] = {
                min = 371,
                max = 416,
                perLevel = 2.7,
                coef = 0.714,
            },
        }
    },
    [10945] = { -- Mind Blast(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        effects = {
            [1] = {
                min = 346,
                max = 367,
                perLevel = 2.1,
                coef = 0.429,
            },
        }
    },
    [10946] = { -- Mind Blast(Rank 8)
        spellLevel = 52,
        maxLevel = 57,
        effects = {
            [1] = {
                min = 425,
                max = 450,
                perLevel = 2.4,
                coef = 0.429,
            },
        }
    },
    [10947] = { -- Mind Blast(Rank 9)
        spellLevel = 58,
        maxLevel = 63,
        effects = {
            [1] = {
                min = 503,
                max = 532,
                perLevel = 2.6,
                coef = 0.429,
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
    [14914] = { -- Holy Fire(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 10,
        effects = {
            [1] = {
                min = 78,
                max = 99,
                perLevel = 1.5,
                coef = 0.75,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 6,
                coef = 0.05,
            },
        }
    },
    [15237] = { -- Holy Nova(Rank 1)
        spellLevel = 20,
        maxLevel = 26,
        effects = {
            [1] = {
                min = 28,
                max = 33,
                perLevel = 0.2,
                coef = 0.107,
            },
            [2] = {
                isHeal = true,
                min = 52,
                max = 61,
                perLevel = 0.3,
                coef = 0.107,
            },
        }
    },
    [15261] = { -- Holy Fire(Rank 8)
        spellLevel = 60,
        maxLevel = 66,
        duration = 10,
        effects = {
            [1] = {
                min = 355,
                max = 450,
                perLevel = 3.4,
                coef = 0.75,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 29,
                coef = 0.05,
            },
        }
    },
    [15262] = { -- Holy Fire(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        duration = 10,
        effects = {
            [1] = {
                min = 96,
                max = 121,
                perLevel = 1.7,
                coef = 0.75,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 8,
                coef = 0.05,
            },
        }
    },
    [15263] = { -- Holy Fire(Rank 3)
        spellLevel = 30,
        maxLevel = 36,
        duration = 10,
        effects = {
            [1] = {
                min = 132,
                max = 167,
                perLevel = 2,
                coef = 0.75,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 11,
                coef = 0.05,
            },
        }
    },
    [15264] = { -- Holy Fire(Rank 4)
        spellLevel = 36,
        maxLevel = 42,
        duration = 10,
        effects = {
            [1] = {
                min = 165,
                max = 210,
                perLevel = 2.2,
                coef = 0.75,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 13,
                coef = 0.05,
            },
        }
    },
    [15265] = { -- Holy Fire(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 10,
        effects = {
            [1] = {
                min = 204,
                max = 259,
                perLevel = 2.5,
                coef = 0.75,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 17,
                coef = 0.05,
            },
        }
    },
    [15266] = { -- Holy Fire(Rank 6)
        spellLevel = 48,
        maxLevel = 54,
        duration = 10,
        effects = {
            [1] = {
                min = 254,
                max = 323,
                perLevel = 2.9,
                coef = 0.75,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 20,
                coef = 0.05,
            },
        }
    },
    [15267] = { -- Holy Fire(Rank 7)
        spellLevel = 54,
        maxLevel = 60,
        duration = 10,
        effects = {
            [1] = {
                min = 304,
                max = 387,
                perLevel = 3.2,
                coef = 0.75,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 25,
                coef = 0.05,
            },
        }
    },
    [15430] = { -- Holy Nova(Rank 2)
        spellLevel = 28,
        maxLevel = 34,
        effects = {
            [1] = {
                min = 50,
                max = 59,
                perLevel = 0.4,
                coef = 0.107,
            },
            [2] = {
                isHeal = true,
                min = 86,
                max = 99,
                perLevel = 0.4,
                coef = 0.107,
            },
        }
    },
    [15431] = { -- Holy Nova(Rank 3)
        spellLevel = 36,
        maxLevel = 42,
        effects = {
            [1] = {
                min = 76,
                max = 89,
                perLevel = 0.6,
                coef = 0.107,
            },
            [2] = {
                isHeal = true,
                min = 121,
                max = 140,
                perLevel = 0.5,
                coef = 0.107,
            },
        }
    },
    [17311] = { -- Mind Flay(Rank 2)
        spellLevel = 28,
        maxLevel = 36,
        duration = 3,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 42,
                coef = 0.15,
            },
        }
    },
    [17312] = { -- Mind Flay(Rank 3)
        spellLevel = 36,
        maxLevel = 44,
        duration = 3,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 62,
                coef = 0.15,
            },
        }
    },
    [17313] = { -- Mind Flay(Rank 4)
        spellLevel = 44,
        maxLevel = 52,
        duration = 3,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 87,
                coef = 0.15,
            },
        }
    },
    [17314] = { -- Mind Flay(Rank 5)
        spellLevel = 52,
        maxLevel = 60,
        duration = 3,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 110,
                coef = 0.15,
            },
        }
    },
    [18137] = { -- Shadowguard(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 600,
        effects = {
            [1] = {
                isDmgShield = true,
                charges = 3,
                min = 20,
                coef = 0.267,
            },
        }
    },
    [18807] = { -- Mind Flay(Rank 6)
        spellLevel = 60,
        maxLevel = 68,
        duration = 3,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 142,
                coef = 0.15,
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
    [19276] = { -- Devouring Plague(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 24,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 34,
                coef = 0.063,
            },
        }
    },
    [19277] = { -- Devouring Plague(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 24,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 50,
                coef = 0.063,
            },
        }
    },
    [19278] = { -- Devouring Plague(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 24,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 68,
                coef = 0.063,
            },
        }
    },
    [19279] = { -- Devouring Plague(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 24,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 89,
                coef = 0.063,
            },
        }
    },
    [19280] = { -- Devouring Plague(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 24,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 113,
                coef = 0.063,
            },
        }
    },
    [19296] = { -- Starshards(Rank 2)
        spellLevel = 18,
        maxLevel = 24,
        duration = 6,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 27,
                coef = 0.154,
            },
        }
    },
    [19299] = { -- Starshards(Rank 3)
        spellLevel = 26,
        maxLevel = 32,
        duration = 6,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 48,
                coef = 0.167,
            },
        }
    },
    [19302] = { -- Starshards(Rank 4)
        spellLevel = 34,
        maxLevel = 40,
        duration = 6,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 69,
                coef = 0.167,
            },
        }
    },
    [19303] = { -- Starshards(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 6,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 95,
                coef = 0.167,
            },
        }
    },
    [19304] = { -- Starshards(Rank 6)
        spellLevel = 50,
        maxLevel = 56,
        duration = 6,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 126,
                coef = 0.167,
            },
        }
    },
    [19305] = { -- Starshards(Rank 7)
        spellLevel = 58,
        maxLevel = 64,
        duration = 6,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 1,
                min = 156,
                coef = 0.167,
            },
        }
    },
    [19308] = { -- Shadowguard(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 600,
        effects = {
            [1] = {
                isDmgShield = true,
                charges = 3,
                min = 35,
                coef = 0.267,
            },
        }
    },
    [19309] = { -- Shadowguard(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 600,
        effects = {
            [1] = {
                isDmgShield = true,
                charges = 3,
                min = 51,
                coef = 0.267,
            },
        }
    },
    [19310] = { -- Shadowguard(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 600,
        effects = {
            [1] = {
                isDmgShield = true,
                charges = 3,
                min = 70,
                coef = 0.267,
            },
        }
    },
    [19311] = { -- Shadowguard(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 600,
        effects = {
            [1] = {
                isDmgShield = true,
                charges = 3,
                min = 90,
                coef = 0.267,
            },
        }
    },
    [19312] = { -- Shadowguard(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 600,
        effects = {
            [1] = {
                isDmgShield = true,
                charges = 3,
                min = 116,
                coef = 0.267,
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
    [27799] = { -- Holy Nova(Rank 4)
        spellLevel = 44,
        maxLevel = 50,
        effects = {
            [1] = {
                min = 106,
                max = 123,
                perLevel = 0.8,
                coef = 0.107,
            },
            [2] = {
                isHeal = true,
                min = 161,
                max = 188,
                perLevel = 0.6,
                coef = 0.107,
            },
        }
    },
    [27800] = { -- Holy Nova(Rank 5)
        spellLevel = 52,
        maxLevel = 58,
        effects = {
            [1] = {
                min = 140,
                max = 163,
                perLevel = 1,
                coef = 0.107,
            },
            [2] = {
                isHeal = true,
                min = 235,
                max = 272,
                perLevel = 0.7,
                coef = 0.107,
            },
        }
    },
    [27801] = { -- Holy Nova(Rank 6)
        spellLevel = 60,
        maxLevel = 66,
        effects = {
            [1] = {
                min = 181,
                max = 210,
                perLevel = 1.2,
                coef = 0.107,
            },
            [2] = {
                isHeal = true,
                min = 302,
                max = 351,
                perLevel = 0.8,
                coef = 0.107,
            },
        }
    },
};


-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(585)] = { -- Smite
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2050)] = { -- Lesser Heal
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(589)] = { -- Shadow Word: Pain
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(17)] = { -- Power Word: Shield
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(139)] = { -- Renew
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(8092)] = { -- Mind Blast
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(13908)] = { -- Desperate Prayer
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(10797)] = { -- Starshards
        school = 7,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(2652)] = { -- Touch of Weakness
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(2054)] = { -- Heal
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2061)] = { -- Flash Heal
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(14914)] = { -- Holy Fire
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2944)] = { -- Devouring Plague
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(18137)] = { -- Shadowguard
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(15237)] = { -- Holy Nova
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(15407)] = { -- Mind Flay
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(596)] = { -- Prayer of Healing
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2060)] = { -- Greater Heal
        school = 2,
        defType = 1,
    },
};

_addon.spellRankInfo = {
    [17] = { -- Power Word: Shield(Rank 1)
        spellLevel = 6,
        maxLevel = 11,
        duration = 30,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
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
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 9,
                coef = 0.11,
            },
        }
    },
    [585] = { -- Smite(Rank 1)
        spellLevel = 1,
        maxLevel = 6,
        baseCost = 20,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 5,
                coef = 0.067,
            },
        }
    },
    [591] = { -- Smite(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
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
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 11,
                coef = 0.104,
            },
        }
    },
    [596] = { -- Prayer of Healing(Rank 1)
        spellLevel = 30,
        maxLevel = 39,
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 130,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
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
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 22,
                coef = 0.154,
            },
        }
    },
    [984] = { -- Smite(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 39,
                coef = 0.167,
            },
        }
    },
    [996] = { -- Prayer of Healing(Rank 2)
        spellLevel = 40,
        maxLevel = 49,
        baseCost = 560,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 370,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 10,
                min = 193,
                max = 238,
                perLevel = 1.9,
                coef = 0.429,
            },
        }
    },
    [2652] = { -- Touch of Weakness(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 600,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                min = 8,
                coef = 0.067,
            },
        }
    },
    [2767] = { -- Shadow Word: Pain(Rank 5)
        spellLevel = 34,
        maxLevel = 0,
        duration = 18,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 215,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
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
        baseCost = 175,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                min = 234,
                perLevel = 2,
                coef = 0.1,
            },
        }
    },
    [6060] = { -- Smite(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 255,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
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
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
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
        baseCost = 65,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
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
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
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
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
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
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
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
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 80,
                coef = 0.2,
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
    [8092] = { -- Mind Blast(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 225,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 215,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 385,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 470,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
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
        baseCost = 355,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
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
        baseCost = 425,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
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
        baseCost = 500,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                min = 942,
                perLevel = 4.3,
                coef = 0.1,
            },
        }
    },
    [10915] = { -- Flash Heal(Rank 5)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 265,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 315,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
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
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
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
        baseCost = 365,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 162,
                coef = 0.2,
            },
        }
    },
    [10933] = { -- Smite(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 265,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 310,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 350,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 770,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 1030,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 455,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 545,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 655,
        effects = {
            [1] = {
                effectType = 10,
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
                effectType = 10,
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
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 2,
                min = 78,
                max = 99,
                perLevel = 1.5,
                coef = 0.75,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 6,
                coef = 0.05,
            },
        }
    },
    [15237] = { -- Holy Nova(Rank 1)
        spellLevel = 20,
        maxLevel = 26,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
                min = 28,
                max = 33,
                perLevel = 0.2,
                coef = 0.107,
            },
            [2] = {
                effectType = 10,
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
        baseCost = 255,
        effects = {
            [1] = {
                effectType = 2,
                min = 355,
                max = 450,
                perLevel = 3.4,
                coef = 0.75,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
                min = 96,
                max = 121,
                perLevel = 1.7,
                coef = 0.75,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 2,
                min = 132,
                max = 167,
                perLevel = 2,
                coef = 0.75,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 145,
        effects = {
            [1] = {
                effectType = 2,
                min = 165,
                max = 210,
                perLevel = 2.2,
                coef = 0.75,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 2,
                min = 204,
                max = 259,
                perLevel = 2.5,
                coef = 0.75,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 2,
                min = 254,
                max = 323,
                perLevel = 2.9,
                coef = 0.75,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 2,
                min = 304,
                max = 387,
                perLevel = 3.2,
                coef = 0.75,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 25,
                coef = 0.05,
            },
        }
    },
    [15407] = { -- Mind Flay(Rank 1)
        spellLevel = 20,
        maxLevel = 28,
        duration = 3,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                min = 25,
                coef = 0.15,
            },
        }
    },
    [15430] = { -- Holy Nova(Rank 2)
        spellLevel = 28,
        maxLevel = 34,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 2,
                min = 50,
                max = 59,
                perLevel = 0.4,
                coef = 0.107,
            },
            [2] = {
                effectType = 10,
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
        baseCost = 400,
        effects = {
            [1] = {
                effectType = 2,
                min = 76,
                max = 89,
                perLevel = 0.6,
                coef = 0.107,
            },
            [2] = {
                effectType = 10,
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
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 165,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
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
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
                effectType = 10,
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
                effectType = 10,
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
                effectType = 10,
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
                effectType = 10,
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
                effectType = 10,
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
                effectType = 10,
                min = 1324,
                max = 1563,
                perLevel = 8.2,
                coef = 0.429,
            },
        }
    },
    [19261] = { -- Touch of Weakness(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 600,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                min = 15,
                coef = 0.107,
            },
        }
    },
    [19262] = { -- Touch of Weakness(Rank 3)
        spellLevel = 30,
        maxLevel = 0,
        duration = 600,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                min = 24,
                coef = 0.107,
            },
        }
    },
    [19264] = { -- Touch of Weakness(Rank 4)
        spellLevel = 40,
        maxLevel = 0,
        duration = 600,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                min = 35,
                coef = 0.107,
            },
        }
    },
    [19265] = { -- Touch of Weakness(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        duration = 600,
        baseCost = 145,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                min = 48,
                coef = 0.107,
            },
        }
    },
    [19266] = { -- Touch of Weakness(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 600,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                min = 64,
                coef = 0.107,
            },
        }
    },
    [19276] = { -- Devouring Plague(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 24,
        baseCost = 350,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
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
        baseCost = 495,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
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
        baseCost = 645,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
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
        baseCost = 810,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
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
        baseCost = 985,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
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
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 190,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 245,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 350,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
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
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
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
        baseCost = 120,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
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
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
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
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
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
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                min = 116,
                coef = 0.267,
            },
        }
    },
    [22009] = { -- Greater Heal
        spellLevel = 32,
        maxLevel = 37,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 63,
                coef = 0.2,
            },
        }
    },
    [25314] = { -- Greater Heal(Rank 5)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 710,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                min = 194,
                coef = 0.2,
            },
        }
    },
    [25316] = { -- Prayer of Healing(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        baseCost = 1070,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 520,
        effects = {
            [1] = {
                effectType = 2,
                min = 106,
                max = 123,
                perLevel = 0.8,
                coef = 0.107,
            },
            [2] = {
                effectType = 10,
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
        baseCost = 635,
        effects = {
            [1] = {
                effectType = 2,
                min = 140,
                max = 163,
                perLevel = 1,
                coef = 0.107,
            },
            [2] = {
                effectType = 10,
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
        baseCost = 750,
        effects = {
            [1] = {
                effectType = 2,
                min = 181,
                max = 210,
                perLevel = 1.2,
                coef = 0.107,
            },
            [2] = {
                effectType = 10,
                min = 302,
                max = 351,
                perLevel = 0.8,
                coef = 0.107,
            },
        }
    },
};

_addon.spellClassSet = {
    [1] = {
        [1] = {
            17, -- Power Word: Shield(Rank 1)
            592, -- Power Word: Shield(Rank 2)
            600, -- Power Word: Shield(Rank 3)
            3747, -- Power Word: Shield(Rank 4)
            6065, -- Power Word: Shield(Rank 5)
            6066, -- Power Word: Shield(Rank 6)
            10898, -- Power Word: Shield(Rank 7)
            10899, -- Power Word: Shield(Rank 8)
            10900, -- Power Word: Shield(Rank 9)
            10901, -- Power Word: Shield(Rank 10)
            27607, -- Power Word: Shield(Rank 10)
            27779, -- Divine Protection
        },
        [2] = {
            588, -- Inner Fire(Rank 1)
            602, -- Inner Fire(Rank 3)
            1006, -- Inner Fire(Rank 4)
            7128, -- Inner Fire(Rank 2)
            10951, -- Inner Fire(Rank 5)
            10952, -- Inner Fire(Rank 6)
            16329, -- Juju Might
        },
        [4] = {
            15286, -- Vampiric Embrace
            22751, -- Fury of the Frostwolf
            23693, -- Stormpike's Salvation
            23964, -- Bloodrager's Requiem
            28418, -- General's Warcry
            28419, -- General's Warcry
            28420, -- General's Warcry
        },
        [8] = {
            1243, -- Power Word: Fortitude(Rank 1)
            1244, -- Power Word: Fortitude(Rank 2)
            1245, -- Power Word: Fortitude(Rank 3)
            2791, -- Power Word: Fortitude(Rank 4)
            10937, -- Power Word: Fortitude(Rank 5)
            10938, -- Power Word: Fortitude(Rank 6)
            16873, -- Holy Word: Fortitude(Rank 6)
            21562, -- Prayer of Fortitude(Rank 1)
            21564, -- Prayer of Fortitude(Rank 2)
            23947, -- Power Word: Fortitude(Rank 5)
            23948, -- Power Word: Fortitude(Rank 6)
        },
        [16] = {
            8129, -- Mana Burn(Rank 1)
            8131, -- Mana Burn(Rank 2)
            10874, -- Mana Burn(Rank 3)
            10875, -- Mana Burn(Rank 4)
            10876, -- Mana Burn(Rank 5)
        },
        [32] = {
            21074, -- Test NPC Resurrection(Rank 1)
        },
        [64] = {
            139, -- Renew(Rank 1)
            6074, -- Renew(Rank 2)
            6075, -- Renew(Rank 3)
            6076, -- Renew(Rank 4)
            6077, -- Renew(Rank 5)
            6078, -- Renew(Rank 6)
            10927, -- Renew(Rank 7)
            10928, -- Renew(Rank 8)
            10929, -- Renew(Rank 9)
            15229, -- Crystal Restore
            25315, -- Renew(Rank 10)
            27606, -- Renew(Rank 9)
        },
        [128] = {
            585, -- Smite(Rank 1)
            591, -- Smite(Rank 2)
            598, -- Smite(Rank 3)
            984, -- Smite(Rank 4)
            1004, -- Smite(Rank 5)
            6060, -- Smite(Rank 6)
            10933, -- Smite(Rank 7)
            10934, -- Smite(Rank 8)
        },
        [256] = {
            976, -- Shadow Protection(Rank 1)
            10957, -- Shadow Protection(Rank 2)
            10958, -- Shadow Protection(Rank 3)
            16874, -- Shadow Protection(Rank 3)
            17151, -- Shadow Barrier
            27683, -- Prayer of Shadow Protection(Rank 1)
        },
        [512] = {
            596, -- Prayer of Healing(Rank 1)
            996, -- Prayer of Healing(Rank 2)
            10960, -- Prayer of Healing(Rank 3)
            10961, -- Prayer of Healing(Rank 4)
            25316, -- Prayer of Healing(Rank 5)
        },
        [1024] = {
            2054, -- Heal(Rank 1)
            2055, -- Heal(Rank 2)
            6063, -- Heal(Rank 3)
            6064, -- Heal(Rank 4)
        },
        [2048] = {
            2061, -- Flash Heal(Rank 1)
            9472, -- Flash Heal(Rank 2)
            9473, -- Flash Heal(Rank 3)
            9474, -- Flash Heal(Rank 4)
            10915, -- Flash Heal(Rank 5)
            10916, -- Flash Heal(Rank 6)
            10917, -- Flash Heal(Rank 7)
            17137, -- Flash Heal
            17138, -- Flash Heal
            17843, -- Flash Heal
            27608, -- Flash Heal(Rank 7)
        },
        [4096] = {
            2060, -- Greater Heal(Rank 1)
            10963, -- Greater Heal(Rank 2)
            10964, -- Greater Heal(Rank 3)
            10965, -- Greater Heal(Rank 4)
            15068, -- TEST Heal Self
            25314, -- Greater Heal(Rank 5)
            26565, -- Heal Brethren
        },
        [8192] = {
            8092, -- Mind Blast(Rank 1)
            8102, -- Mind Blast(Rank 2)
            8103, -- Mind Blast(Rank 3)
            8104, -- Mind Blast(Rank 4)
            8105, -- Mind Blast(Rank 5)
            8106, -- Mind Blast(Rank 6)
            10945, -- Mind Blast(Rank 7)
            10946, -- Mind Blast(Rank 8)
            10947, -- Mind Blast(Rank 9)
        },
        [16384] = {
            586, -- Fade(Rank 1)
            9578, -- Fade(Rank 2)
            9579, -- Fade(Rank 3)
            9592, -- Fade(Rank 4)
            10941, -- Fade(Rank 5)
            10942, -- Fade(Rank 6)
        },
        [32768] = {
            589, -- Shadow Word: Pain(Rank 1)
            594, -- Shadow Word: Pain(Rank 2)
            970, -- Shadow Word: Pain(Rank 3)
            992, -- Shadow Word: Pain(Rank 4)
            2767, -- Shadow Word: Pain(Rank 5)
            10892, -- Shadow Word: Pain(Rank 6)
            10893, -- Shadow Word: Pain(Rank 7)
            10894, -- Shadow Word: Pain(Rank 8)
            27605, -- Shadow Word: Pain(Rank 8)
        },
        [65536] = {
            8122, -- Psychic Scream(Rank 1)
            8124, -- Psychic Scream(Rank 2)
            10888, -- Psychic Scream(Rank 3)
            10890, -- Psychic Scream(Rank 4)
            27610, -- Psychic Scream(Rank 4)
        },
        [131072] = {
            605, -- Mind Control(Rank 1)
            10911, -- Mind Control(Rank 2)
            10912, -- Mind Control(Rank 3)
            16053, -- Dominion of Soul
        },
        [262144] = {
            2050, -- Lesser Heal(Rank 1)
            2052, -- Lesser Heal(Rank 2)
            2053, -- Lesser Heal(Rank 3)
        },
        [524288] = {
            2943, -- Touch of Weakness(Rank 1)
            16875, -- Divine Spirit(Rank 3)
            19249, -- Touch of Weakness(Rank 2)
            19251, -- Touch of Weakness(Rank 3)
            19252, -- Touch of Weakness(Rank 4)
            19253, -- Touch of Weakness(Rank 5)
            19254, -- Touch of Weakness(Rank 6)
        },
        [1048576] = {
            14914, -- Holy Fire(Rank 1)
            15261, -- Holy Fire(Rank 8)
            15262, -- Holy Fire(Rank 2)
            15263, -- Holy Fire(Rank 3)
            15264, -- Holy Fire(Rank 4)
            15265, -- Holy Fire(Rank 5)
            15266, -- Holy Fire(Rank 6)
            15267, -- Holy Fire(Rank 7)
            17140, -- Holy Fire
            17141, -- Holy Fire
            17142, -- Holy Fire
            18165, -- Holy Fire
            18167, -- Holy Fire
            23860, -- Holy Fire
        },
        [2097152] = {
            10797, -- Starshards(Rank 1)
            19296, -- Starshards(Rank 2)
            19299, -- Starshards(Rank 3)
            19302, -- Starshards(Rank 4)
            19303, -- Starshards(Rank 5)
            19304, -- Starshards(Rank 6)
            19305, -- Starshards(Rank 7)
            27636, -- Starshards
        },
        [4194304] = {
            15237, -- Holy Nova(Rank 1)
            15430, -- Holy Nova(Rank 2)
            15431, -- Holy Nova(Rank 3)
            20694, -- Holy Nova
            23458, -- Holy Nova(Rank 2)
            23858, -- Holy Nova
            24022, -- Cleanse Nova
            27799, -- Holy Nova(Rank 4)
            27800, -- Holy Nova(Rank 5)
            27801, -- Holy Nova(Rank 6)
        },
        [8388608] = {
            15407, -- Mind Flay(Rank 1)
            16568, -- Mind Flay
            17165, -- Mind Flay
            17311, -- Mind Flay(Rank 2)
            17312, -- Mind Flay(Rank 3)
            17313, -- Mind Flay(Rank 4)
            17314, -- Mind Flay(Rank 5)
            18807, -- Mind Flay(Rank 6)
            22203, -- Blue Beam
            22205, -- Trigger Blue Beam
            22313, -- Purple Hands
            22800, -- Entangling Roots
            22802, -- Choking Spores
            22803, -- Dire Maul Trap - Summon
            22821, -- Warpwood Spores
            22919, -- Mind Flay
            23642, -- Corruption
            23953, -- Mind Flay
            23979, -- Holy Wrath
            24152, -- Whipweed Roots
            26044, -- Mind Flay
            26143, -- Mind Flay
            27286, -- Shadow Wrath
            27640, -- Baron Rivendare's Soul Drain
            28309, -- Copy of Corruption
            28310, -- Mind Flay
            28883, -- Holy Wrath
            29407, -- Mind Flay
        },
        [16777216] = {
            13908, -- Desperate Prayer(Rank 1)
            19236, -- Desperate Prayer(Rank 2)
            19238, -- Desperate Prayer(Rank 3)
            19240, -- Desperate Prayer(Rank 4)
            19241, -- Desperate Prayer(Rank 5)
            19242, -- Desperate Prayer(Rank 6)
            19243, -- Desperate Prayer(Rank 7)
        },
        [33554432] = {
            2944, -- Devouring Plague(Rank 1)
            19276, -- Devouring Plague(Rank 2)
            19277, -- Devouring Plague(Rank 3)
            19278, -- Devouring Plague(Rank 4)
            19279, -- Devouring Plague(Rank 5)
            19280, -- Devouring Plague(Rank 6)
            28377, -- Shadowguard(Rank 1)
            28378, -- Shadowguard(Rank 2)
            28379, -- Shadowguard(Rank 3)
            28380, -- Shadowguard(Rank 4)
            28381, -- Shadowguard(Rank 5)
            28382, -- Shadowguard(Rank 6)
        },
        [67108864] = {
            453, -- Mind Soothe(Rank 1)
            2096, -- Mind Vision(Rank 1)
            2652, -- Touch of Weakness(Rank 1)
            8192, -- Mind Soothe(Rank 2)
            9035, -- Hex of Weakness(Rank 1)
            10909, -- Mind Vision(Rank 2)
            10953, -- Mind Soothe(Rank 3)
            15258, -- Shadow Vulnerability(Rank 1)
            15286, -- Vampiric Embrace
            15487, -- Silence
            19261, -- Touch of Weakness(Rank 2)
            19262, -- Touch of Weakness(Rank 3)
            19264, -- Touch of Weakness(Rank 4)
            19265, -- Touch of Weakness(Rank 5)
            19266, -- Touch of Weakness(Rank 6)
            19281, -- Hex of Weakness(Rank 2)
            19282, -- Hex of Weakness(Rank 3)
            19283, -- Hex of Weakness(Rank 4)
            19284, -- Hex of Weakness(Rank 5)
            19285, -- Hex of Weakness(Rank 6)
            25816, -- Hex of Weakness(Rank 6)
        },
        [134217728] = {
            15007, -- Resurrection Sickness
            23455, -- Holy Nova(Rank 1)
            23458, -- Holy Nova(Rank 2)
            23459, -- Holy Nova(Rank 3)
            27803, -- Holy Nova(Rank 4)
            27804, -- Holy Nova(Rank 5)
            27805, -- Holy Nova(Rank 6)
        },
        [268435456] = {
            15068, -- TEST Heal Self
            17137, -- Flash Heal
            17138, -- Flash Heal
            17843, -- Flash Heal
        },
        [536870912] = {
            6788, -- Weakened Soul
            22752, -- Fevered Exhaustion
        },
        [1073741824] = {
            724, -- Lightwell(Rank 1)
            2006, -- Resurrection(Rank 1)
            2010, -- Resurrection(Rank 2)
            9484, -- Shackle Undead(Rank 1)
            9485, -- Shackle Undead(Rank 2)
            10880, -- Resurrection(Rank 3)
            10881, -- Resurrection(Rank 4)
            10955, -- Shackle Undead(Rank 3)
            15090, -- Dispel Magic
            17201, -- Dispel Magic
            20770, -- Resurrection(Rank 5)
            23859, -- Dispel Magic
            25808, -- Dispel
            27870, -- Lightwell(Rank 2)
            27871, -- Lightwell(Rank 3)
        },
        [2147483648] = {
            453, -- Mind Soothe(Rank 1)
            527, -- Dispel Magic(Rank 1)
            528, -- Cure Disease
            552, -- Abolish Disease
            988, -- Dispel Magic(Rank 2)
            1706, -- Levitate
            2651, -- Elune's Grace(Rank 1)
            2652, -- Touch of Weakness(Rank 1)
            6346, -- Fear Ward
            8192, -- Mind Soothe(Rank 2)
            9035, -- Hex of Weakness(Rank 1)
            10060, -- Power Infusion
            10953, -- Mind Soothe(Rank 3)
            13896, -- Feedback(Rank 1)
            14752, -- Divine Spirit(Rank 1)
            14818, -- Divine Spirit(Rank 2)
            14819, -- Divine Spirit(Rank 3)
            15090, -- Dispel Magic
            15229, -- Crystal Restore
            15286, -- Vampiric Embrace
            15473, -- Shadowform
            15487, -- Silence
            16329, -- Juju Might
            16873, -- Holy Word: Fortitude(Rank 6)
            16874, -- Shadow Protection(Rank 3)
            16875, -- Divine Spirit(Rank 3)
            17151, -- Shadow Barrier
            17201, -- Dispel Magic
            18137, -- Shadowguard(Rank 1)
            19261, -- Touch of Weakness(Rank 2)
            19262, -- Touch of Weakness(Rank 3)
            19264, -- Touch of Weakness(Rank 4)
            19265, -- Touch of Weakness(Rank 5)
            19266, -- Touch of Weakness(Rank 6)
            19271, -- Feedback(Rank 2)
            19273, -- Feedback(Rank 3)
            19274, -- Feedback(Rank 4)
            19275, -- Feedback(Rank 5)
            19281, -- Hex of Weakness(Rank 2)
            19282, -- Hex of Weakness(Rank 3)
            19283, -- Hex of Weakness(Rank 4)
            19284, -- Hex of Weakness(Rank 5)
            19285, -- Hex of Weakness(Rank 6)
            19289, -- Elune's Grace(Rank 2)
            19291, -- Elune's Grace(Rank 3)
            19292, -- Elune's Grace(Rank 4)
            19293, -- Elune's Grace(Rank 5)
            19308, -- Shadowguard(Rank 2)
            19309, -- Shadowguard(Rank 3)
            19310, -- Shadowguard(Rank 4)
            19311, -- Shadowguard(Rank 5)
            19312, -- Shadowguard(Rank 6)
            20694, -- Holy Nova
            22751, -- Fury of the Frostwolf
            22822, -- Starshards
            22823, -- Starshards
            23693, -- Stormpike's Salvation
            23858, -- Holy Nova
            23859, -- Dispel Magic
            23964, -- Bloodrager's Requiem
            24022, -- Cleanse Nova
            25808, -- Dispel
            25816, -- Hex of Weakness(Rank 6)
            27609, -- Dispel Magic(Rank 2)
            27681, -- Prayer of Spirit(Rank 1)
            27841, -- Divine Spirit(Rank 4)
            27986, -- Levitate
            28133, -- Cure Disease
            28418, -- General's Warcry
            28419, -- General's Warcry
            28420, -- General's Warcry
            30238, -- Lordaeron's Blessing
        },
    },
    [2] = {
        [1] = {
            527, -- Dispel Magic(Rank 1)
            528, -- Cure Disease
            552, -- Abolish Disease
            988, -- Dispel Magic(Rank 2)
            30238, -- Lordaeron's Blessing
        },
    },
    [3] = {
    },
    [4] = {
    },
};


-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(635)] = { -- Holy Light
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(879)] = { -- Exorcism
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2812)] = { -- Holy Wrath
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(7294)] = { -- Retribution Aura
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(19750)] = { -- Flash of Light
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(20116)] = { -- Consecration
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(20154)] = { -- Seal of Righteousness
        school = 2,
        defType = 2,
    },
    [GetSpellInfo(20162)] = { -- Seal of the Crusader
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(20187)] = { -- Judgement of Righteousness
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(20375)] = { -- Seal of Command
        school = 2,
        defType = 2,
    },
    [GetSpellInfo(20467)] = { -- Judgement of Command
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
    },
    [GetSpellInfo(20473)] = { -- Holy Shock
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(23590)] = { -- Judgement
        school = 2,
        defType = 0,
    },
    [GetSpellInfo(24239)] = { -- Hammer of Wrath
        school = 2,
        GCD = 1,
        defType = 3,
    },
};

_addon.spellRankInfo = {
    [635] = { -- Holy Light(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 35,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 190,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 275,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 645,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 365,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 180,
        effects = {
            [1] = {
                effectType = 2,
                min = 217,
                max = 246,
                perLevel = 2,
                coef = 0.429,
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
    [7294] = { -- Retribution Aura(Rank 1)
        spellLevel = 16,
        maxLevel = 0,
        duration = -0.001,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                charges = -1,
                min = 5,
                coef = 0,
            },
        }
    },
    [10298] = { -- Retribution Aura(Rank 2)
        spellLevel = 26,
        maxLevel = 0,
        duration = -0.001,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                charges = -1,
                min = 8,
                coef = 0,
            },
        }
    },
    [10299] = { -- Retribution Aura(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = -0.001,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                charges = -1,
                min = 12,
                coef = 0,
            },
        }
    },
    [10300] = { -- Retribution Aura(Rank 4)
        spellLevel = 46,
        maxLevel = 0,
        duration = -0.001,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                charges = -1,
                min = 16,
                coef = 0,
            },
        }
    },
    [10301] = { -- Retribution Aura(Rank 5)
        spellLevel = 56,
        maxLevel = 0,
        duration = -0.001,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                charges = -1,
                min = 20,
                coef = 0,
            },
        }
    },
    [10312] = { -- Exorcism(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 235,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 285,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 345,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 805,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 465,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 580,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 35,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 90,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 115,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 235,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 15,
                coef = 0.042,
            },
        }
    },
    [20154] = { -- Seal of Righteousness(Rank 1)
        spellLevel = 1,
        maxLevel = 7,
        duration = 30,
        baseCost = 20,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 108,
                perLevel = 18,
                coef = 0.1,
            },
        }
    },
    [20162] = { -- Seal of the Crusader(Rank 2)
        spellLevel = 12,
        maxLevel = 20,
        duration = 30,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 51,
                perLevel = 1.1,
                coef = 0,
            },
        }
    },
    [20187] = { -- Judgement of Righteousness(Rank 1)
        spellLevel = 1,
        maxLevel = 7,
        effects = {
            [1] = {
                effectType = 2,
                min = 15,
                perLevel = 1.8,
                coef = 0.144,
            },
        }
    },
    [20280] = { -- Judgement of Righteousness(Rank 2)
        spellLevel = 10,
        maxLevel = 16,
        effects = {
            [1] = {
                effectType = 2,
                min = 25,
                max = 28,
                perLevel = 1.9,
                coef = 0.312,
            },
        }
    },
    [20281] = { -- Judgement of Righteousness(Rank 3)
        spellLevel = 18,
        maxLevel = 24,
        effects = {
            [1] = {
                effectType = 2,
                min = 39,
                max = 44,
                perLevel = 2.4,
                coef = 0.462,
            },
        }
    },
    [20282] = { -- Judgement of Righteousness(Rank 4)
        spellLevel = 26,
        maxLevel = 32,
        effects = {
            [1] = {
                effectType = 2,
                min = 57,
                max = 64,
                perLevel = 2.8,
                coef = 0.5,
            },
        }
    },
    [20283] = { -- Judgement of Righteousness(Rank 5)
        spellLevel = 34,
        maxLevel = 40,
        effects = {
            [1] = {
                effectType = 2,
                min = 78,
                max = 87,
                perLevel = 3.1,
                coef = 0.5,
            },
        }
    },
    [20284] = { -- Judgement of Righteousness(Rank 6)
        spellLevel = 42,
        maxLevel = 48,
        effects = {
            [1] = {
                effectType = 2,
                min = 102,
                max = 113,
                perLevel = 3.8,
                coef = 0.5,
            },
        }
    },
    [20285] = { -- Judgement of Righteousness(Rank 7)
        spellLevel = 50,
        maxLevel = 56,
        effects = {
            [1] = {
                effectType = 2,
                min = 131,
                max = 144,
                perLevel = 4.1,
                coef = 0.5,
            },
        }
    },
    [20286] = { -- Judgement of Righteousness(Rank 8)
        spellLevel = 58,
        maxLevel = 64,
        effects = {
            [1] = {
                effectType = 2,
                min = 162,
                max = 179,
                perLevel = 4.1,
                coef = 0.5,
            },
        }
    },
    [20287] = { -- Seal of Righteousness(Rank 2)
        spellLevel = 10,
        maxLevel = 16,
        duration = 30,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 216,
                perLevel = 17,
                coef = 0.1,
            },
        }
    },
    [20288] = { -- Seal of Righteousness(Rank 3)
        spellLevel = 18,
        maxLevel = 24,
        duration = 30,
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 352,
                perLevel = 23,
                coef = 0.1,
            },
        }
    },
    [20289] = { -- Seal of Righteousness(Rank 4)
        spellLevel = 26,
        maxLevel = 32,
        duration = 30,
        baseCost = 90,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 541,
                perLevel = 31,
                coef = 0.1,
            },
        }
    },
    [20290] = { -- Seal of Righteousness(Rank 5)
        spellLevel = 34,
        maxLevel = 40,
        duration = 30,
        baseCost = 120,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 785,
                perLevel = 37,
                coef = 0.1,
            },
        }
    },
    [20291] = { -- Seal of Righteousness(Rank 6)
        spellLevel = 42,
        maxLevel = 48,
        duration = 30,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 1082,
                perLevel = 41,
                coef = 0.1,
            },
        }
    },
    [20292] = { -- Seal of Righteousness(Rank 7)
        spellLevel = 50,
        maxLevel = 56,
        duration = 30,
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 1407,
                perLevel = 47,
                coef = 0.1,
            },
        }
    },
    [20293] = { -- Seal of Righteousness(Rank 8)
        spellLevel = 58,
        maxLevel = 64,
        duration = 30,
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 1786,
                perLevel = 47,
                coef = 0.1,
            },
        }
    },
    [20305] = { -- Seal of the Crusader(Rank 3)
        spellLevel = 22,
        maxLevel = 30,
        duration = 30,
        baseCost = 65,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 94,
                perLevel = 1.7,
                coef = 0,
            },
        }
    },
    [20306] = { -- Seal of the Crusader(Rank 4)
        spellLevel = 32,
        maxLevel = 40,
        duration = 30,
        baseCost = 90,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 145,
                perLevel = 2,
                coef = 0,
            },
        }
    },
    [20307] = { -- Seal of the Crusader(Rank 5)
        spellLevel = 42,
        maxLevel = 50,
        duration = 30,
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 221,
                perLevel = 2.2,
                coef = 0,
            },
        }
    },
    [20308] = { -- Seal of the Crusader(Rank 6)
        spellLevel = 52,
        maxLevel = 60,
        duration = 30,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 306,
                perLevel = 2.4,
                coef = 0,
            },
        }
    },
    [20375] = { -- Seal of Command(Rank 1)
        spellLevel = 20,
        maxLevel = 28,
        duration = 30,
        baseCost = 65,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                min = 0,
                coef = 0.29,
            },
        }
    },
    [20467] = { -- Judgement of Command(Rank 1)
        spellLevel = 20,
        maxLevel = 28,
        effects = {
            [1] = {
                effectType = 2,
                min = 47,
                max = 52,
                perLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [20473] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        baseCost = 225,
        effects = {
            [1] = {
                effectType = 2,
                min = 205,
                coef = 0.4285,
            },
            [2] = {
                effectType = 10,
                min = 205,
                coef = 0.4285,
            },
        }
    },
    [20915] = { -- Seal of Command(Rank 2)
        spellLevel = 30,
        maxLevel = 38,
        duration = 30,
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                min = 0,
                coef = 0.29,
            },
        }
    },
    [20918] = { -- Seal of Command(Rank 3)
        spellLevel = 40,
        maxLevel = 48,
        duration = 30,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                min = 0,
                coef = 0.29,
            },
        }
    },
    [20919] = { -- Seal of Command(Rank 4)
        spellLevel = 50,
        maxLevel = 58,
        duration = 30,
        baseCost = 180,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                min = 0,
                coef = 0.29,
            },
        }
    },
    [20920] = { -- Seal of Command(Rank 5)
        spellLevel = 60,
        maxLevel = 68,
        duration = 30,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                min = 0,
                coef = 0.29,
            },
        }
    },
    [20922] = { -- Consecration(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 8,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
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
        baseCost = 435,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
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
        baseCost = 565,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 48,
                coef = 0.042,
            },
        }
    },
    [20929] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 0,
        baseCost = 275,
        effects = {
            [1] = {
                effectType = 2,
                min = 280,
                coef = 0.4285,
            },
            [2] = {
                effectType = 10,
                min = 280,
                coef = 0.4285,
            },
        }
    },
    [20930] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        baseCost = 325,
        effects = {
            [1] = {
                effectType = 2,
                min = 366,
                coef = 0.4285,
            },
            [2] = {
                effectType = 10,
                min = 366,
                coef = 0.4285,
            },
        }
    },
    [20963] = { -- Judgement of Command(Rank 2)
        spellLevel = 30,
        maxLevel = 38,
        effects = {
            [1] = {
                effectType = 2,
                min = 74,
                max = 82,
                perLevel = 3.05,
                coef = 0.429,
            },
        }
    },
    [20964] = { -- Judgement of Command(Rank 3)
        spellLevel = 40,
        maxLevel = 48,
        effects = {
            [1] = {
                effectType = 2,
                min = 103,
                max = 114,
                perLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [20965] = { -- Judgement of Command(Rank 4)
        spellLevel = 50,
        maxLevel = 58,
        effects = {
            [1] = {
                effectType = 2,
                min = 131,
                max = 145,
                perLevel = 3.05,
                coef = 0.429,
            },
        }
    },
    [20966] = { -- Judgement of Command(Rank 5)
        spellLevel = 60,
        maxLevel = 68,
        effects = {
            [1] = {
                effectType = 2,
                min = 170,
                max = 188,
                perLevel = 3.05,
                coef = 0.429,
            },
        }
    },
    [21082] = { -- Seal of the Crusader(Rank 1)
        spellLevel = 6,
        maxLevel = 12,
        duration = 30,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 31,
                perLevel = 0.7,
                coef = 0,
            },
        }
    },
    [21084] = { -- Seal of Righteousness(Rank 1)
        spellLevel = 1,
        maxLevel = 7,
        duration = 30,
        baseCost = 20,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                min = 108,
                perLevel = 18,
                coef = 0.1,
            },
        }
    },
    [23590] = { -- Judgement
        spellLevel = 0,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                min = 60,
                max = 67,
                coef = 0,
            },
        }
    },
    [24239] = { -- Hammer of Wrath(Rank 3)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 425,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 360,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 295,
        effects = {
            [1] = {
                effectType = 2,
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
        baseCost = 660,
        effects = {
            [1] = {
                effectType = 10,
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
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 8,
                coef = 0.042,
            },
        }
    },
};

_addon.buffData[20287] = { -- Seal of Righteousness(Rank 2)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20280
};

_addon.buffData[20288] = { -- Seal of Righteousness(Rank 3)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20281
};

_addon.buffData[20289] = { -- Seal of Righteousness(Rank 4)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20282
};

_addon.buffData[20290] = { -- Seal of Righteousness(Rank 5)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20283
};

_addon.buffData[20291] = { -- Seal of Righteousness(Rank 6)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20284
};

_addon.buffData[20292] = { -- Seal of Righteousness(Rank 7)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20285
};

_addon.buffData[20293] = { -- Seal of Righteousness(Rank 8)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20286
};

_addon.buffData[20375] = { -- Seal of Command(Rank 1)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20467
};

_addon.buffData[20915] = { -- Seal of Command(Rank 2)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20963
};

_addon.buffData[20918] = { -- Seal of Command(Rank 3)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20964
};

_addon.buffData[20919] = { -- Seal of Command(Rank 4)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20965
};

_addon.buffData[20920] = { -- Seal of Command(Rank 5)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20966
};

_addon.buffData[21084] = { -- Seal of Righteousness(Rank 1)
    effect = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20187
};

_addon.spellClassSet = {
    [1] = {
        [1] = {
            22270, -- Divine Intervention (NEWTEST)
            25780, -- Righteous Fury
        },
        [2] = {
            19740, -- Blessing of Might(Rank 1)
            19834, -- Blessing of Might(Rank 2)
            19835, -- Blessing of Might(Rank 3)
            19836, -- Blessing of Might(Rank 4)
            19837, -- Blessing of Might(Rank 5)
            19838, -- Blessing of Might(Rank 6)
            25291, -- Blessing of Might(Rank 7)
            25782, -- Greater Blessing of Might(Rank 1)
            25916, -- Greater Blessing of Might(Rank 2)
        },
        [4] = {
            20066, -- Repentance
        },
        [8] = {
            7294, -- Retribution Aura(Rank 1)
            10298, -- Retribution Aura(Rank 2)
            10299, -- Retribution Aura(Rank 3)
            10300, -- Retribution Aura(Rank 4)
            10301, -- Retribution Aura(Rank 5)
        },
        [16] = {
            1044, -- Blessing of Freedom
        },
        [32] = {
            20116, -- Consecration(Rank 2)
            20922, -- Consecration(Rank 3)
            20923, -- Consecration(Rank 4)
            20924, -- Consecration(Rank 5)
            26573, -- Consecration(Rank 1)
        },
        [64] = {
            465, -- Devotion Aura(Rank 1)
            643, -- Devotion Aura(Rank 3)
            1032, -- Devotion Aura(Rank 5)
            10290, -- Devotion Aura(Rank 2)
            10291, -- Devotion Aura(Rank 4)
            10292, -- Devotion Aura(Rank 6)
            10293, -- Devotion Aura(Rank 7)
        },
        [128] = {
            1022, -- Blessing of Protection(Rank 1)
            5599, -- Blessing of Protection(Rank 2)
            10278, -- Blessing of Protection(Rank 3)
            23415, -- Improved Blessing of Protection
            25282, -- Shield of Rajaxx
        },
        [256] = {
            1038, -- Blessing of Salvation
            25895, -- Greater Blessing of Salvation
        },
        [512] = {
            20162, -- Seal of the Crusader(Rank 2)
            20305, -- Seal of the Crusader(Rank 3)
            20306, -- Seal of the Crusader(Rank 4)
            20307, -- Seal of the Crusader(Rank 5)
            20308, -- Seal of the Crusader(Rank 6)
            21082, -- Seal of the Crusader(Rank 1)
        },
        [1024] = {
            20187, -- Judgement of Righteousness(Rank 1)
            20280, -- Judgement of Righteousness(Rank 2)
            20281, -- Judgement of Righteousness(Rank 3)
            20282, -- Judgement of Righteousness(Rank 4)
            20283, -- Judgement of Righteousness(Rank 5)
            20284, -- Judgement of Righteousness(Rank 6)
            20285, -- Judgement of Righteousness(Rank 7)
            20286, -- Judgement of Righteousness(Rank 8)
        },
        [2048] = {
            853, -- Hammer of Justice(Rank 1)
            5588, -- Hammer of Justice(Rank 2)
            5589, -- Hammer of Justice(Rank 3)
            10308, -- Hammer of Justice(Rank 4)
        },
        [4096] = {
            4987, -- Cleanse
            27847, -- Cleanse Cost Reduced
            28852, -- Improved Seal of the Crusader
        },
        [8192] = {
            19993, -- Flash of Light
        },
        [16384] = {
            19968, -- Holy Light
            19980, -- Holy Light
            19981, -- Holy Light
            19982, -- Holy Light
        },
        [32768] = {
            633, -- Lay on Hands(Rank 1)
            2800, -- Lay on Hands(Rank 2)
            10310, -- Lay on Hands(Rank 3)
        },
        [65536] = {
            19742, -- Blessing of Wisdom(Rank 1)
            19850, -- Blessing of Wisdom(Rank 2)
            19852, -- Blessing of Wisdom(Rank 3)
            19853, -- Blessing of Wisdom(Rank 4)
            19854, -- Blessing of Wisdom(Rank 5)
            25290, -- Blessing of Wisdom(Rank 6)
            25894, -- Greater Blessing of Wisdom(Rank 1)
            25918, -- Greater Blessing of Wisdom(Rank 2)
        },
        [131072] = {
            19746, -- Concentration Aura
            27733, -- Ironweave Battlesuit
        },
        [262144] = {
            20167, -- Seal of Light(Rank 1)
            20168, -- Seal of Wisdom(Rank 1)
            20333, -- Seal of Light(Rank 2)
            20334, -- Seal of Light(Rank 3)
            20340, -- Seal of Light(Rank 4)
            20350, -- Seal of Wisdom(Rank 2)
            20351, -- Seal of Wisdom(Rank 3)
        },
        [524288] = {
            20185, -- Judgement of Light(Rank 1)
            20186, -- Judgement of Wisdom(Rank 1)
            20344, -- Judgement of Light(Rank 2)
            20345, -- Judgement of Light(Rank 3)
            20346, -- Judgement of Light(Rank 4)
            20354, -- Judgement of Wisdom(Rank 2)
            20355, -- Judgement of Wisdom(Rank 3)
            25751, -- Copy of Judgement of Light(Rank 4)
            25752, -- Judgement of Light
            25753, -- Judgement of Light
            25757, -- Judgement of Wisdom
            25758, -- Judgement of Wisdom
        },
        [1048576] = {
            20184, -- Judgement of Justice(Rank 1)
        },
        [2097152] = {
            20473, -- Holy Shock(Rank 1)
            20929, -- Holy Shock(Rank 2)
            20930, -- Holy Shock(Rank 3)
            25902, -- Holy Shock(Rank 3)
            25903, -- Holy Shock(Rank 3)
            25911, -- Holy Shock(Rank 2)
            25912, -- Holy Shock(Rank 1)
            25913, -- Holy Shock(Rank 2)
            25914, -- Holy Shock(Rank 1)
        },
        [8388608] = {
            20271, -- Judgement
        },
        [16777216] = {
            20217, -- Blessing of Kings
            25898, -- Greater Blessing of Kings
        },
        [33554432] = {
            20375, -- Seal of Command(Rank 1)
            20915, -- Seal of Command(Rank 2)
            20918, -- Seal of Command(Rank 3)
            20919, -- Seal of Command(Rank 4)
            20920, -- Seal of Command(Rank 5)
        },
        [67108864] = {
            19876, -- Shadow Resistance Aura(Rank 1)
            19888, -- Frost Resistance Aura(Rank 1)
            19891, -- Fire Resistance Aura(Rank 1)
            19895, -- Shadow Resistance Aura(Rank 2)
            19896, -- Shadow Resistance Aura(Rank 3)
            19897, -- Frost Resistance Aura(Rank 2)
            19898, -- Frost Resistance Aura(Rank 3)
            19899, -- Fire Resistance Aura(Rank 2)
            19900, -- Fire Resistance Aura(Rank 3)
            20218, -- Sanctity Aura
        },
        [134217728] = {
            20154, -- Seal of Righteousness(Rank 1)
            20164, -- Seal of Justice
            20165, -- Seal of Light(Rank 1)
            20166, -- Seal of Wisdom(Rank 1)
            20287, -- Seal of Righteousness(Rank 2)
            20288, -- Seal of Righteousness(Rank 3)
            20289, -- Seal of Righteousness(Rank 4)
            20290, -- Seal of Righteousness(Rank 5)
            20291, -- Seal of Righteousness(Rank 6)
            20292, -- Seal of Righteousness(Rank 7)
            20293, -- Seal of Righteousness(Rank 8)
            20347, -- Seal of Light(Rank 2)
            20348, -- Seal of Light(Rank 3)
            20349, -- Seal of Light(Rank 4)
            20356, -- Seal of Wisdom(Rank 2)
            20357, -- Seal of Wisdom(Rank 3)
            21084, -- Seal of Righteousness(Rank 1)
        },
        [268435456] = {
            1022, -- Blessing of Protection(Rank 1)
            1038, -- Blessing of Salvation
            1044, -- Blessing of Freedom
            5599, -- Blessing of Protection(Rank 2)
            6940, -- Blessing of Sacrifice(Rank 1)
            10278, -- Blessing of Protection(Rank 3)
            19740, -- Blessing of Might(Rank 1)
            19742, -- Blessing of Wisdom(Rank 1)
            19834, -- Blessing of Might(Rank 2)
            19835, -- Blessing of Might(Rank 3)
            19836, -- Blessing of Might(Rank 4)
            19837, -- Blessing of Might(Rank 5)
            19838, -- Blessing of Might(Rank 6)
            19850, -- Blessing of Wisdom(Rank 2)
            19852, -- Blessing of Wisdom(Rank 3)
            19853, -- Blessing of Wisdom(Rank 4)
            19854, -- Blessing of Wisdom(Rank 5)
            19977, -- Blessing of Light(Rank 1)
            19978, -- Blessing of Light(Rank 2)
            19979, -- Blessing of Light(Rank 3)
            20217, -- Blessing of Kings
            20729, -- Blessing of Sacrifice(Rank 2)
            20911, -- Blessing of Sanctuary(Rank 1)
            20912, -- Blessing of Sanctuary(Rank 2)
            20913, -- Blessing of Sanctuary(Rank 3)
            20914, -- Blessing of Sanctuary(Rank 4)
            23415, -- Improved Blessing of Protection
            25282, -- Shield of Rajaxx
            25290, -- Blessing of Wisdom(Rank 6)
            25291, -- Blessing of Might(Rank 7)
            25782, -- Greater Blessing of Might(Rank 1)
            25890, -- Greater Blessing of Light(Rank 1)
            25894, -- Greater Blessing of Wisdom(Rank 1)
            25895, -- Greater Blessing of Salvation
            25898, -- Greater Blessing of Kings
            25899, -- Greater Blessing of Sanctuary(Rank 1)
            25916, -- Greater Blessing of Might(Rank 2)
            25918, -- Greater Blessing of Wisdom(Rank 2)
        },
        [536870912] = {
            20188, -- Judgement of the Crusader(Rank 2)
            20300, -- Judgement of the Crusader(Rank 3)
            20301, -- Judgement of the Crusader(Rank 4)
            20302, -- Judgement of the Crusader(Rank 5)
            20303, -- Judgement of the Crusader(Rank 6)
            21183, -- Judgement of the Crusader(Rank 1)
            25942, -- Judgement of the Crusader
            25943, -- Judgement of the Crusader
            29203, -- Healing Way
        },
        [1073741824] = {
            19750, -- Flash of Light(Rank 1)
            19939, -- Flash of Light(Rank 2)
            19940, -- Flash of Light(Rank 3)
            19941, -- Flash of Light(Rank 4)
            19942, -- Flash of Light(Rank 5)
            19943, -- Flash of Light(Rank 6)
        },
        [2147483648] = {
            635, -- Holy Light(Rank 1)
            639, -- Holy Light(Rank 2)
            647, -- Holy Light(Rank 3)
            1026, -- Holy Light(Rank 4)
            1042, -- Holy Light(Rank 5)
            3472, -- Holy Light(Rank 6)
            10328, -- Holy Light(Rank 7)
            10329, -- Holy Light(Rank 8)
            25292, -- Holy Light(Rank 9)
        },
    },
    [2] = {
        [2] = {
            1152, -- Purify
            4987, -- Cleanse
        },
    },
    [3] = {
    },
    [4] = {
    },
};


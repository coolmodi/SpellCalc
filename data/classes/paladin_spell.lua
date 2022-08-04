-- GENERATED

local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.spellRankInfo = {
    [635] = { -- Holy Light(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 50,
                valueRange = 10,
                valuePerLevel = 0.8,
                coef = 0.481,
                coefAP = 0,
            },
        }
    },
    [639] = { -- Holy Light(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 96,
                valueRange = 20,
                valuePerLevel = 1.1,
                coef = 0.796,
                coefAP = 0,
            },
        }
    },
    [647] = { -- Holy Light(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 203,
                valueRange = 36,
                valuePerLevel = 1.7,
                coef = 1.3,
                coefAP = 0,
            },
        }
    },
    [879] = { -- Exorcism(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 96,
                valueRange = 14,
                valuePerLevel = 1.2,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [1026] = { -- Holy Light(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 397,
                valueRange = 58,
                valuePerLevel = 2.4,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [1042] = { -- Holy Light(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 628,
                valueRange = 80,
                valuePerLevel = 3.1,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [2812] = { -- Holy Wrath(Rank 1)
        spellLevel = 50,
        maxLevel = 54,
        duration = 3,
        baseCostPct = 20,
        school = 2,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 399,
                valueRange = 72,
                valuePerLevel = 1.6,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [3472] = { -- Holy Light(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 894,
                valueRange = 104,
                valuePerLevel = 3.8,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [5614] = { -- Exorcism(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 173,
                valueRange = 22,
                valuePerLevel = 1.6,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [5615] = { -- Exorcism(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 250,
                valueRange = 32,
                valuePerLevel = 2,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [7294] = { -- Retribution Aura(Rank 1)
        spellLevel = 16,
        maxLevel = 0,
        duration = -0.001,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 65,
                auraType = 15,
                valueBase = 10,
                valueRange = 0,
                coef = 0.033,
                coefAP = 0,
            },
        }
    },
    [10298] = { -- Retribution Aura(Rank 2)
        spellLevel = 26,
        maxLevel = 0,
        duration = -0.001,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 65,
                auraType = 15,
                valueBase = 18,
                valueRange = 0,
                coef = 0.033,
                coefAP = 0,
            },
        }
    },
    [10299] = { -- Retribution Aura(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = -0.001,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 65,
                auraType = 15,
                valueBase = 27,
                valueRange = 0,
                coef = 0.033,
                coefAP = 0,
            },
        }
    },
    [10300] = { -- Retribution Aura(Rank 4)
        spellLevel = 46,
        maxLevel = 0,
        duration = -0.001,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 65,
                auraType = 15,
                valueBase = 37,
                valueRange = 0,
                coef = 0.033,
                coefAP = 0,
            },
        }
    },
    [10301] = { -- Retribution Aura(Rank 5)
        spellLevel = 56,
        maxLevel = 0,
        duration = -0.001,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 65,
                auraType = 15,
                valueBase = 48,
                valueRange = 0,
                coef = 0.033,
                coefAP = 0,
            },
        }
    },
    [10312] = { -- Exorcism(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 350,
                valueRange = 44,
                valuePerLevel = 2.4,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [10313] = { -- Exorcism(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 452,
                valueRange = 54,
                valuePerLevel = 2.8,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [10314] = { -- Exorcism(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 564,
                valueRange = 64,
                valuePerLevel = 3.2,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [10318] = { -- Holy Wrath(Rank 2)
        spellLevel = 60,
        maxLevel = 64,
        duration = 3,
        baseCostPct = 20,
        school = 2,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 551,
                valueRange = 98,
                valuePerLevel = 1.9,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [10328] = { -- Holy Light(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1209,
                valueRange = 140,
                valuePerLevel = 4.6,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [10329] = { -- Holy Light(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1595,
                valueRange = 182,
                valuePerLevel = 5.2,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [19750] = { -- Flash of Light(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 81,
                valueRange = 12,
                valuePerLevel = 1,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [19939] = { -- Flash of Light(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 124,
                valueRange = 20,
                valuePerLevel = 1.3,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [19940] = { -- Flash of Light(Rank 3)
        spellLevel = 34,
        maxLevel = 39,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 189,
                valueRange = 22,
                valuePerLevel = 1.6,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [19941] = { -- Flash of Light(Rank 4)
        spellLevel = 42,
        maxLevel = 47,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 256,
                valueRange = 32,
                valuePerLevel = 1.9,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [19942] = { -- Flash of Light(Rank 5)
        spellLevel = 50,
        maxLevel = 55,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 346,
                valueRange = 44,
                valuePerLevel = 2.2,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [19943] = { -- Flash of Light(Rank 6)
        spellLevel = 58,
        maxLevel = 63,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 445,
                valueRange = 54,
                valuePerLevel = 2.6,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [20116] = { -- Consecration(Rank 2)
        spellLevel = 30,
        maxLevel = 39,
        duration = 8,
        baseCostPct = 22,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 17,
                valueRange = 0,
                coef = 0.04,
                coefAP = 0.04,
            },
        }
    },
    [20166] = { -- Seal of Wisdom
        spellLevel = 38,
        maxLevel = 0,
        duration = 1800,
        baseCostPct = 14,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 20168,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20168] = { -- Seal of Wisdom
        spellLevel = 38,
        maxLevel = 0,
        school = 2,
        defType = 0,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 137,
                valueBase = 4,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20187] = { -- Judgement of Righteousness(Rank 1)
        spellLevel = 1,
        maxLevel = 0,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 0,
                valueRange = 0,
                coef = 0.32,
                coefAP = 0.2,
            },
        }
    },
    [20375] = { -- Seal of Command
        spellLevel = 20,
        maxLevel = 28,
        duration = 1800,
        baseCostPct = 14,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.36,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20467] = { -- Judgement of Command(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 0.19,
                valueBase = 0,
                valueRange = 0,
                coef = 0.13,
                coefAP = 0.08,
            },
        }
    },
    [20473] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 25914,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 25912,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20922] = { -- Consecration(Rank 3)
        spellLevel = 40,
        maxLevel = 49,
        duration = 8,
        baseCostPct = 22,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 28,
                valueRange = 0,
                coef = 0.04,
                coefAP = 0.04,
            },
        }
    },
    [20923] = { -- Consecration(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 8,
        baseCostPct = 22,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 42,
                valueRange = 0,
                coef = 0.04,
                coefAP = 0.04,
            },
        }
    },
    [20924] = { -- Consecration(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        duration = 8,
        baseCostPct = 22,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 56,
                valueRange = 0,
                coef = 0.04,
                coefAP = 0.04,
            },
        }
    },
    [20925] = { -- Holy Shield(Rank 1)
        spellLevel = 40,
        maxLevel = 49,
        duration = 10,
        baseCostPct = 10,
        school = 2,
        defType = 1,
        charges = 8,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 79,
                valueRange = 0,
                coef = 0.117,
                coefAP = 0.0732,
            },
        }
    },
    [20927] = { -- Holy Shield(Rank 2)
        spellLevel = 50,
        maxLevel = 59,
        duration = 10,
        baseCostPct = 10,
        school = 2,
        defType = 1,
        charges = 8,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 116,
                valueRange = 0,
                coef = 0.117,
                coefAP = 0.0732,
            },
        }
    },
    [20928] = { -- Holy Shield(Rank 3)
        spellLevel = 60,
        maxLevel = 69,
        duration = 10,
        baseCostPct = 10,
        school = 2,
        defType = 1,
        charges = 8,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 157,
                valueRange = 0,
                coef = 0.117,
                coefAP = 0.0732,
            },
        }
    },
    [20929] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 0,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 25913,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 25911,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20930] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 25903,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 25902,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [21084] = { -- Seal of Righteousness
        spellLevel = 1,
        maxLevel = 7,
        duration = 1800,
        baseCostPct = 14,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 0,
                valueRange = 0,
                coef = 0.044,
                coefAP = 0.022,
            },
        }
    },
    [24239] = { -- Hammer of Wrath(Rank 3)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 12,
        school = 2,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 570,
                valueRange = 58,
                valuePerLevel = 3.1,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [24274] = { -- Hammer of Wrath(Rank 2)
        spellLevel = 52,
        maxLevel = 57,
        baseCostPct = 12,
        school = 2,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 459,
                valueRange = 48,
                valuePerLevel = 2.7,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [24275] = { -- Hammer of Wrath(Rank 1)
        spellLevel = 44,
        maxLevel = 49,
        baseCostPct = 12,
        school = 2,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 351,
                valueRange = 36,
                valuePerLevel = 2.4,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [25292] = { -- Holy Light(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2034,
                valueRange = 232,
                valuePerLevel = 5.8,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [25902] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 63,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 562,
                valueRange = 46,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [25903] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 63,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 845,
                valueRange = 70,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [25911] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 55,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 431,
                valueRange = 34,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [25912] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 47,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 314,
                valueRange = 26,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [25913] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 55,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 644,
                valueRange = 52,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [25914] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 47,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 481,
                valueRange = 38,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [26573] = { -- Consecration(Rank 1)
        spellLevel = 20,
        maxLevel = 29,
        duration = 8,
        baseCostPct = 22,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 9,
                valueRange = 0,
                coef = 0.04,
                coefAP = 0.04,
            },
        }
    },
    [27135] = { -- Holy Light(Rank 10)
        spellLevel = 62,
        maxLevel = 67,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2232,
                valueRange = 254,
                valuePerLevel = 6.4,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [27136] = { -- Holy Light(Rank 11)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2818,
                valueRange = 320,
                valuePerLevel = 7,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [27137] = { -- Flash of Light(Rank 7)
        spellLevel = 66,
        maxLevel = 70,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 588,
                valueRange = 70,
                valuePerLevel = 3,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [27138] = { -- Exorcism(Rank 7)
        spellLevel = 68,
        maxLevel = 72,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 687,
                valueRange = 78,
                valuePerLevel = 3.5,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [27139] = { -- Holy Wrath(Rank 3)
        spellLevel = 69,
        maxLevel = 73,
        duration = 3,
        baseCostPct = 20,
        school = 2,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 777,
                valueRange = 136,
                valuePerLevel = 2.2,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [27150] = { -- Retribution Aura(Rank 6)
        spellLevel = 66,
        maxLevel = 0,
        duration = -0.001,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 65,
                auraType = 15,
                valueBase = 62,
                valueRange = 0,
                coef = 0.033,
                coefAP = 0,
            },
        }
    },
    [27173] = { -- Consecration(Rank 6)
        spellLevel = 70,
        maxLevel = 74,
        duration = 8,
        baseCostPct = 22,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 72,
                valueRange = 0,
                coef = 0.04,
                coefAP = 0.04,
            },
        }
    },
    [27174] = { -- Holy Shock(Rank 4)
        spellLevel = 64,
        maxLevel = 0,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 27175,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 27176,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27175] = { -- Holy Shock(Rank 4)
        spellLevel = 64,
        maxLevel = 69,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1061,
                valueRange = 88,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [27176] = { -- Holy Shock(Rank 4)
        spellLevel = 64,
        maxLevel = 69,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 693,
                valueRange = 56,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [27179] = { -- Holy Shield(Rank 4)
        spellLevel = 70,
        maxLevel = 74,
        duration = 10,
        baseCostPct = 10,
        school = 2,
        defType = 1,
        charges = 8,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 208,
                valueRange = 0,
                coef = 0.117,
                coefAP = 0.0732,
            },
        }
    },
    [27180] = { -- Hammer of Wrath(Rank 4)
        spellLevel = 68,
        maxLevel = 72,
        baseCostPct = 12,
        school = 2,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 733,
                valueRange = 76,
                valuePerLevel = 3.5,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [31801] = { -- Seal of Vengeance
        spellLevel = 64,
        maxLevel = 68,
        duration = 1800,
        baseCostPct = 14,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.33,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [31803] = { -- Holy Vengeance
        spellLevel = 64,
        maxLevel = 0,
        duration = 15,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 0,
                valueRange = 0,
                coef = 0.013,
                coefAP = 0.025,
                auraStacks = 5,
            },
        }
    },
    [31804] = { -- Judgement of Vengeance(Rank 1)
        spellLevel = 64,
        maxLevel = 99,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1,
                valueRange = 0,
                coef = 0.22,
                coefAP = 0.14,
            },
        }
    },
    [31935] = { -- Avenger's Shield(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 10,
        baseCostPct = 26,
        school = 2,
        isBinary = true,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 440,
                valueRange = 96,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [32699] = { -- Avenger's Shield(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 10,
        baseCostPct = 26,
        school = 2,
        isBinary = true,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 601,
                valueRange = 132,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [32700] = { -- Avenger's Shield(Rank 3)
        spellLevel = 70,
        maxLevel = 74,
        duration = 10,
        baseCostPct = 26,
        school = 2,
        isBinary = true,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 796,
                valueRange = 176,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [33072] = { -- Holy Shock(Rank 5)
        spellLevel = 70,
        maxLevel = 0,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 33074,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 33073,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [33073] = { -- Holy Shock(Rank 5)
        spellLevel = 70,
        maxLevel = 74,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 904,
                valueRange = 74,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [33074] = { -- Holy Shock(Rank 5)
        spellLevel = 70,
        maxLevel = 74,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1258,
                valueRange = 104,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [35395] = { -- Crusader Strike
        spellLevel = 50,
        maxLevel = 0,
        duration = 0.001,
        baseCostPct = 5,
        school = 1,
        defType = 2,
        equippedWeaponMask = 173555,
        effects = {
            [1] = {
                effectType = 121,
                weaponCoef = 0.75,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48781] = { -- Holy Light(Rank 12)
        spellLevel = 75,
        maxLevel = 79,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 4199,
                valueRange = 478,
                valuePerLevel = 10.4,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [48782] = { -- Holy Light(Rank 13)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 29,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 4888,
                valueRange = 556,
                valuePerLevel = 12.1,
                coef = 1.679,
                coefAP = 0,
            },
        }
    },
    [48784] = { -- Flash of Light(Rank 8)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 682,
                valueRange = 82,
                valuePerLevel = 3.4,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [48785] = { -- Flash of Light(Rank 9)
        spellLevel = 79,
        maxLevel = 83,
        baseCostPct = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 785,
                valueRange = 94,
                valuePerLevel = 3.9,
                coef = 1.009,
                coefAP = 0,
            },
        }
    },
    [48800] = { -- Exorcism(Rank 8)
        spellLevel = 73,
        maxLevel = 77,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 787,
                valueRange = 90,
                valuePerLevel = 4,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [48801] = { -- Exorcism(Rank 9)
        spellLevel = 79,
        maxLevel = 83,
        baseCostPct = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1028,
                valueRange = 118,
                valuePerLevel = 5,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [48805] = { -- Hammer of Wrath(Rank 5)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 12,
        school = 2,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 878,
                valueRange = 92,
                valuePerLevel = 4,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [48806] = { -- Hammer of Wrath(Rank 6)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 12,
        school = 2,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1139,
                valueRange = 118,
                valuePerLevel = 5,
                coef = 0.15,
                coefAP = 0.15,
            },
        }
    },
    [48816] = { -- Holy Wrath(Rank 4)
        spellLevel = 72,
        maxLevel = 76,
        duration = 3,
        baseCostPct = 20,
        school = 2,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 857,
                valueRange = 150,
                valuePerLevel = 3,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [48817] = { -- Holy Wrath(Rank 5)
        spellLevel = 78,
        maxLevel = 82,
        duration = 3,
        baseCostPct = 20,
        school = 2,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1050,
                valueRange = 184,
                valuePerLevel = 4,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [48818] = { -- Consecration(Rank 7)
        spellLevel = 75,
        maxLevel = 79,
        duration = 8,
        baseCostPct = 22,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 87,
                valueRange = 0,
                coef = 0.04,
                coefAP = 0.04,
            },
        }
    },
    [48819] = { -- Consecration(Rank 8)
        spellLevel = 80,
        maxLevel = 84,
        duration = 8,
        baseCostPct = 22,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 113,
                valueRange = 0,
                coef = 0.04,
                coefAP = 0.04,
            },
        }
    },
    [48820] = { -- Holy Shock(Rank 6)
        spellLevel = 75,
        maxLevel = 79,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2065,
                valueRange = 170,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48821] = { -- Holy Shock(Rank 7)
        spellLevel = 80,
        maxLevel = 84,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2401,
                valueRange = 198,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48822] = { -- Holy Shock(Rank 6)
        spellLevel = 75,
        maxLevel = 79,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1043,
                valueRange = 86,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [48823] = { -- Holy Shock(Rank 7)
        spellLevel = 80,
        maxLevel = 84,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1296,
                valueRange = 106,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [48824] = { -- Holy Shock(Rank 6)
        spellLevel = 75,
        maxLevel = 0,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 48820,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 48822,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48825] = { -- Holy Shock(Rank 7)
        spellLevel = 80,
        maxLevel = 0,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 48821,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 48823,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48826] = { -- Avenger's Shield(Rank 4)
        spellLevel = 75,
        maxLevel = 79,
        duration = 10,
        baseCostPct = 26,
        school = 2,
        isBinary = true,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 913,
                valueRange = 202,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [48827] = { -- Avenger's Shield(Rank 5)
        spellLevel = 80,
        maxLevel = 84,
        duration = 10,
        baseCostPct = 26,
        school = 2,
        isBinary = true,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1100,
                valueRange = 244,
                coef = 0.07,
                coefAP = 0.07,
            },
        }
    },
    [48951] = { -- Holy Shield(Rank 5)
        spellLevel = 75,
        maxLevel = 79,
        duration = 10,
        baseCostPct = 10,
        school = 2,
        defType = 1,
        charges = 8,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 235,
                valueRange = 0,
                coef = 0.117,
                coefAP = 0.0732,
            },
        }
    },
    [48952] = { -- Holy Shield(Rank 6)
        spellLevel = 80,
        maxLevel = 84,
        duration = 10,
        baseCostPct = 10,
        school = 2,
        defType = 1,
        charges = 8,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 274,
                valueRange = 0,
                coef = 0.117,
                coefAP = 0.0732,
            },
        }
    },
    [53385] = { -- Divine Storm
        spellLevel = 60,
        maxLevel = 0,
        baseCostPct = 12,
        school = 1,
        defType = 2,
        equippedWeaponMask = 173555,
        effects = {
            [1] = {
                effectType = 31,
                weaponCoef = 1.1,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53595] = { -- Hammer of the Righteous
        spellLevel = 50,
        maxLevel = 59,
        baseCostPct = 6,
        school = 2,
        defType = 2,
        equippedWeaponMask = 41105,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53600] = { -- Shield of Righteousness(Rank 1)
        spellLevel = 75,
        maxLevel = 0,
        baseCostPct = 6,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 390,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53601] = { -- Sacred Shield(Rank 1)
        spellLevel = 80,
        maxLevel = 0,
        duration = 30,
        baseCostPct = 12,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 58597,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53742] = { -- Blood Corruption
        spellLevel = 64,
        maxLevel = 0,
        duration = 15,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 0,
                valueRange = 0,
                coef = 0.013,
                coefAP = 0.025,
                auraStacks = 5,
            },
        }
    },
    [54043] = { -- Retribution Aura(Rank 7)
        spellLevel = 76,
        maxLevel = 0,
        duration = -0.001,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 65,
                auraType = 15,
                valueBase = 112,
                valueRange = 0,
                coef = 0.033,
                coefAP = 0,
            },
        }
    },
    [54158] = { -- Judgement
        spellLevel = 28,
        maxLevel = 0,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1,
                valueRange = 0,
                coef = 0.25,
                coefAP = 0.16,
            },
        }
    },
    [54428] = { -- Divine Plea
        spellLevel = 71,
        maxLevel = 0,
        duration = 15,
        school = 2,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 21,
                valueBase = 5,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [58597] = { -- Sacred Shield(Rank 1)
        spellLevel = 80,
        maxLevel = 90,
        duration = 6,
        school = 2,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 500,
                valueRange = 0,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [61411] = { -- Shield of Righteousness(Rank 2)
        spellLevel = 80,
        maxLevel = 0,
        baseCostPct = 6,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 520,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [348704] = { -- Seal of Corruption
        spellLevel = 64,
        maxLevel = 0,
        duration = 1800,
        baseCostPct = 14,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.33,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
};

_addon.aurasPlayer[20165] = { -- Seal of Light
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 54158
    }
};

_addon.aurasPlayer[21084] = { -- Seal of Righteousness
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20187
    }
};

_addon.aurasPlayer[20166] = { -- Seal of Wisdom
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 54158
    }
};

_addon.aurasPlayer[20375] = { -- Seal of Command
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20467
    }
};

_addon.aurasPlayer[348704] = { -- Seal of Corruption
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 31804
    }
};

_addon.aurasPlayer[31801] = { -- Seal of Vengeance
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 31804
    }
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
            27140, -- Blessing of Might(Rank 8)
            27141, -- Greater Blessing of Might(Rank 3)
            48931, -- Blessing of Might(Rank 9)
            48932, -- Blessing of Might(Rank 10)
            48933, -- Greater Blessing of Might(Rank 4)
            48934, -- Greater Blessing of Might(Rank 5)
            56520, -- Blessing of Might(Rank 10)
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
            27150, -- Retribution Aura(Rank 6)
            41106, -- Battle Aura
            54043, -- Retribution Aura(Rank 7)
            63531, -- Sanctified Retribution
        },
        [16] = {
            1044, -- Hand of Freedom
            66115, -- Hand of Freedom
        },
        [32] = {
            20116, -- Consecration(Rank 2)
            20922, -- Consecration(Rank 3)
            20923, -- Consecration(Rank 4)
            20924, -- Consecration(Rank 5)
            26573, -- Consecration(Rank 1)
            27173, -- Consecration(Rank 6)
            32773, -- Consecration
            33559, -- Consecration
            36473, -- Desecration
            36946, -- Consecration
            37553, -- Consecration
            38385, -- Consecration
            41541, -- Consecration
            48818, -- Consecration(Rank 7)
            48819, -- Consecration(Rank 8)
            50915, -- Raging Consecration
            56319, -- Ball Lightning
            57798, -- Consecration
            59998, -- Consecration
        },
        [64] = {
            465, -- Devotion Aura(Rank 1)
            643, -- Devotion Aura(Rank 3)
            1032, -- Devotion Aura(Rank 5)
            10290, -- Devotion Aura(Rank 2)
            10291, -- Devotion Aura(Rank 4)
            10292, -- Devotion Aura(Rank 6)
            10293, -- Devotion Aura(Rank 7)
            27149, -- Devotion Aura(Rank 8)
            29938, -- Guided by the Spirits
            48941, -- Devotion Aura(Rank 9)
            48942, -- Devotion Aura(Rank 10)
            63514, -- Improved Devotion Aura(Rank 10)
        },
        [128] = {
            1022, -- Hand of Protection(Rank 1)
            5599, -- Hand of Protection(Rank 2)
            10278, -- Hand of Protection(Rank 3)
            23415, -- Improved Blessing of Protection
            25282, -- Shield of Rajaxx
            41450, -- Blessing of Protection
            72065, -- Shroud of Protection
        },
        [256] = {
            1038, -- Hand of Salvation
            31745, -- Salvation
            35360, -- Salvation
            36886, -- Spiteful Fury
            70115, -- 1% Threat Aura
        },
        [512] = {
            20170, -- Stun
        },
        [1024] = {
            20187, -- Judgement of Righteousness(Rank 1)
            26135, -- Battlegear of Eternal Justice
        },
        [2048] = {
            853, -- Hammer of Justice(Rank 1)
            5588, -- Hammer of Justice(Rank 2)
            5589, -- Hammer of Justice(Rank 3)
            10308, -- Hammer of Justice(Rank 4)
            58154, -- Hammer of Injustice(Rank 4)
        },
        [4096] = {
            1152, -- Purify
            4987, -- Cleanse
            27847, -- Cleanse Cost Reduced
            28852, -- Improved Seal of the Crusader
            31826, -- Purifying Power(Rank 2)
            33557, -- Improved Seal of the Crusader
            33695, -- Exorcism and Holy Wrath Damage
        },
        [8192] = {
            6940, -- Hand of Sacrifice
        },
        [16384] = {
            31935, -- Avenger's Shield(Rank 1)
            32699, -- Avenger's Shield(Rank 2)
            32700, -- Avenger's Shield(Rank 3)
            48826, -- Avenger's Shield(Rank 4)
            48827, -- Avenger's Shield(Rank 5)
            68551, -- Dan's Avenger's Shield(Rank 3)
        },
        [32768] = {
            633, -- Lay on Hands(Rank 1)
            2800, -- Lay on Hands(Rank 2)
            10310, -- Lay on Hands(Rank 3)
            27154, -- Lay on Hands(Rank 4)
            48788, -- Lay on Hands(Rank 5)
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
            27142, -- Blessing of Wisdom(Rank 7)
            27143, -- Greater Blessing of Wisdom(Rank 3)
            48935, -- Blessing of Wisdom(Rank 8)
            48936, -- Blessing of Wisdom(Rank 9)
            48937, -- Greater Blessing of Wisdom(Rank 4)
            48938, -- Greater Blessing of Wisdom(Rank 5)
            56521, -- Blessing of Wisdom
        },
        [131072] = {
            19746, -- Concentration Aura
            27733, -- Ironweave Battlesuit
            30515, -- Foreman's Enchanted Helmet
            30519, -- Foreman's Reinforced Helmet
            63510, -- Improved Concentration Aura
            64364, -- Aura Mastery
        },
        [262144] = {
            20167, -- Seal of Light
            20168, -- Seal of Wisdom
            26135, -- Battlegear of Eternal Justice
            37557, -- Mark of Light
        },
        [524288] = {
            20185, -- Judgement of Light(Rank 1)
            20186, -- Judgement of Wisdom(Rank 1)
            26135, -- Battlegear of Eternal Justice
            68055, -- Judgements of the Just(Rank 1)
        },
        [1048576] = {
            20184, -- Judgement of Justice
        },
        [2097152] = {
            20473, -- Holy Shock(Rank 1)
            20929, -- Holy Shock(Rank 2)
            20930, -- Holy Shock(Rank 3)
            25902, -- Holy Shock(Rank 3)
            25911, -- Holy Shock(Rank 2)
            25912, -- Holy Shock(Rank 1)
            27174, -- Holy Shock(Rank 4)
            27176, -- Holy Shock(Rank 4)
            32771, -- Holy Shock
            33072, -- Holy Shock(Rank 5)
            33073, -- Holy Shock(Rank 5)
            36340, -- Holy Shock
            38921, -- Holy Shock
            48822, -- Holy Shock(Rank 6)
            48823, -- Holy Shock(Rank 7)
            48824, -- Holy Shock(Rank 6)
            48825, -- Holy Shock(Rank 7)
        },
        [4194304] = {
            498, -- Divine Protection
            642, -- Divine Shield
            63148, -- Divine Shield(Rank 2)
        },
        [8388608] = {
            20187, -- Judgement of Righteousness(Rank 1)
            20271, -- Judgement of Light
            20467, -- Judgement of Command(Rank 1)
            26135, -- Battlegear of Eternal Justice
            31804, -- Judgement of Vengeance(Rank 1)
            31898, -- Judgement of Blood(Rank 1)
            41467, -- Judgement
            53408, -- Judgement of Wisdom
            53726, -- Judgement of the Martyr(Rank 1)
            53733, -- Judgement of Corruption(Rank 1)
            54158, -- Judgement
            57774, -- Judgement of Light
        },
        [16777216] = {
            20217, -- Blessing of Kings
            25898, -- Greater Blessing of Kings
            56525, -- Blessing of Kings
            58054, -- Blessing of Kings
            59191, -- Kingly
        },
        [33554432] = {
            20375, -- Seal of Command
            20424, -- Seal of Command
            33127, -- Seal of Command
            42058, -- Seal of Command
            57770, -- Seal of Command
            69403, -- Seal of Command
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
            27151, -- Shadow Resistance Aura(Rank 4)
            27152, -- Frost Resistance Aura(Rank 4)
            27153, -- Fire Resistance Aura(Rank 4)
            32223, -- Crusader Aura
            48943, -- Shadow Resistance Aura(Rank 5)
            48945, -- Frost Resistance Aura(Rank 5)
            48947, -- Fire Resistance Aura(Rank 5)
            60023, -- Scourge Banner Aura
        },
        [134217728] = {
            20154, -- Seal of Righteousness
            20164, -- Seal of Justice
            21084, -- Seal of Righteousness
            37555, -- Mark of Light
        },
        [268435456] = {
            20911, -- Blessing of Sanctuary
            23415, -- Improved Blessing of Protection
            25282, -- Shield of Rajaxx
            25899, -- Greater Blessing of Sanctuary
            29381, -- Greater Blessing of Might
            31745, -- Salvation
            32770, -- Blessing of Light
            33564, -- Greater Blessing of Might
            35360, -- Salvation
            36886, -- Spiteful Fury
            41450, -- Blessing of Protection
            43223, -- Greater Blessing of Kings
            43940, -- Greater Blessing of Might
            56520, -- Blessing of Might(Rank 10)
            56521, -- Blessing of Wisdom
            56525, -- Blessing of Kings
            58054, -- Blessing of Kings
            59191, -- Kingly
            70115, -- 1% Threat Aura
            72065, -- Shroud of Protection
        },
        [536870912] = {
            21183, -- Heart of the Crusader(Rank 1)
            26135, -- Battlegear of Eternal Justice
            54498, -- Heart of the Crusader(Rank 2)
            54499, -- Heart of the Crusader(Rank 3)
            61840, -- Righteous Vengeance
        },
        [1073741824] = {
            19750, -- Flash of Light(Rank 1)
            19939, -- Flash of Light(Rank 2)
            19940, -- Flash of Light(Rank 3)
            19941, -- Flash of Light(Rank 4)
            19942, -- Flash of Light(Rank 5)
            19943, -- Flash of Light(Rank 6)
            27137, -- Flash of Light(Rank 7)
            48784, -- Flash of Light(Rank 8)
            48785, -- Flash of Light(Rank 9)
            60648, -- Savage Gladiator's Libram of Justice
            60656, -- Hateful Gladiator's Libram of Justice
            60659, -- Deadly Gladiator's Libram of Justice
            60661, -- LK Arena 4 Gladiator's Libram of Justice
            60662, -- LK Arena 5 Gladiator's Libram of Justice
            60664, -- LK Arena 6 Gladiator's Libram of Justice
            60800, -- Libram of Souls Redeemed
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
            27135, -- Holy Light(Rank 10)
            27136, -- Holy Light(Rank 11)
            48781, -- Holy Light(Rank 12)
            48782, -- Holy Light(Rank 13)
            56539, -- Holy Light(Rank 13)
            58053, -- Holy Light(Rank 13)
            58153, -- Unholy Light(Rank 13)
        },
    },
    [2] = {
        [1] = {
            20267, -- Judgement of Light(Rank 1)
        },
        [2] = {
            879, -- Exorcism(Rank 1)
            5614, -- Exorcism(Rank 2)
            5615, -- Exorcism(Rank 3)
            10312, -- Exorcism(Rank 4)
            10313, -- Exorcism(Rank 5)
            10314, -- Exorcism(Rank 6)
            27138, -- Exorcism(Rank 7)
            36944, -- Xi'ri's Wrath(Rank 1)
            48800, -- Exorcism(Rank 8)
            48801, -- Exorcism(Rank 9)
        },
        [4] = {
            31789, -- Righteous Defense
            31790, -- Righteous Defense
            32835, -- Soulshatter
            51640, -- Taunt Flag Targeting
            51702, -- Taunt Flag Targeting Take 2
        },
        [8] = {
            20467, -- Judgement of Command(Rank 1)
            26135, -- Battlegear of Eternal Justice
            31804, -- Judgement of Vengeance(Rank 1)
            31898, -- Judgement of Blood(Rank 1)
            32778, -- Judgement of Command
            41461, -- Judgement of Blood
            53726, -- Judgement of the Martyr(Rank 1)
            53733, -- Judgement of Corruption(Rank 1)
            348702, -- Judgement of the Martyr(Rank 1)
            356112, -- Judgement of Corruption(Rank 1)
        },
        [16] = {
            19876, -- Shadow Resistance Aura(Rank 1)
            19888, -- Frost Resistance Aura(Rank 1)
            19891, -- Fire Resistance Aura(Rank 1)
            19895, -- Shadow Resistance Aura(Rank 2)
            19896, -- Shadow Resistance Aura(Rank 3)
            19897, -- Frost Resistance Aura(Rank 2)
            19898, -- Frost Resistance Aura(Rank 3)
            19899, -- Fire Resistance Aura(Rank 2)
            19900, -- Fire Resistance Aura(Rank 3)
            27151, -- Shadow Resistance Aura(Rank 4)
            27152, -- Frost Resistance Aura(Rank 4)
            27153, -- Fire Resistance Aura(Rank 4)
            32223, -- Crusader Aura
            48943, -- Shadow Resistance Aura(Rank 5)
            48945, -- Frost Resistance Aura(Rank 5)
            48947, -- Fire Resistance Aura(Rank 5)
            60023, -- Scourge Banner Aura
        },
        [64] = {
            20925, -- Holy Shield(Rank 1)
            20927, -- Holy Shield(Rank 2)
            20928, -- Holy Shield(Rank 3)
            27179, -- Holy Shield(Rank 4)
            48951, -- Holy Shield(Rank 5)
            48952, -- Holy Shield(Rank 6)
        },
        [128] = {
            24239, -- Hammer of Wrath(Rank 3)
            24274, -- Hammer of Wrath(Rank 2)
            24275, -- Hammer of Wrath(Rank 1)
            27180, -- Hammer of Wrath(Rank 4)
            48805, -- Hammer of Wrath(Rank 5)
            48806, -- Hammer of Wrath(Rank 6)
        },
        [256] = {
            20216, -- Divine Favor
        },
        [512] = {
            20467, -- Judgement of Command(Rank 1)
            26135, -- Battlegear of Eternal Justice
        },
        [1024] = {
            31892, -- Seal of Blood
            31893, -- Seal of Blood
            38008, -- Seal of Blood
            41459, -- Seal of Blood
            53719, -- Seal of the Martyr
            53720, -- Seal of the Martyr
            348700, -- Seal of the Martyr(Rank 1)
            348701, -- Seal of the Martyr
        },
        [2048] = {
            31801, -- Seal of Vengeance
            31803, -- Holy Vengeance
            42463, -- Seal of Vengeance
            53736, -- Seal of Corruption
            53739, -- Seal of Corruption
            53742, -- Blood Corruption
            348704, -- Seal of Corruption
            356110, -- Blood Corruption
            356111, -- Seal of Corruption
        },
        [4096] = {
            31785, -- Spiritual Attunement(Rank 1)
            33776, -- Spiritual Attunement(Rank 2)
            61977, -- Feral Combat
        },
        [8192] = {
            31884, -- Avenging Wrath
        },
        [16384] = {
            67, -- Vindication(Rank 1)
            10326, -- Turn Evil
            20050, -- Vengeance
            20052, -- Vengeance
            20053, -- Vengeance
            20233, -- Lay on Hands(Rank 1)
            20236, -- Lay on Hands(Rank 2)
            26017, -- Vindication(Rank 2)
            31834, -- Light's Grace
            31842, -- Divine Illumination
            54428, -- Divine Plea
            57546, -- Greater Turn Evil(Rank 1)
        },
        [32768] = {
            35395, -- Crusader Strike
        },
        [65536] = {
            25903, -- Holy Shock(Rank 3)
            25913, -- Holy Shock(Rank 2)
            25914, -- Holy Shock(Rank 1)
            27175, -- Holy Shock(Rank 4)
            33074, -- Holy Shock(Rank 5)
            48820, -- Holy Shock(Rank 6)
            48821, -- Holy Shock(Rank 7)
        },
        [131072] = {
            53385, -- Divine Storm
        },
        [262144] = {
            53595, -- Hammer of the Righteous
        },
        [524288] = {
            53601, -- Sacred Shield(Rank 1)
            58597, -- Sacred Shield(Rank 1)
        },
        [1048576] = {
            53600, -- Shield of Righteousness(Rank 1)
            61411, -- Shield of Righteousness(Rank 2)
        },
        [2097152] = {
            2812, -- Holy Wrath(Rank 1)
            10318, -- Holy Wrath(Rank 2)
            27139, -- Holy Wrath(Rank 3)
            48816, -- Holy Wrath(Rank 4)
            48817, -- Holy Wrath(Rank 5)
        },
        [4194304] = {
            31804, -- Judgement of Vengeance(Rank 1)
            53733, -- Judgement of Corruption(Rank 1)
        },
        [8388608] = {
            10326, -- Turn Evil
            57546, -- Greater Turn Evil(Rank 1)
        },
        [16777216] = {
            53563, -- Beacon of Light
            53652, -- Beacon of Light
            53653, -- Beacon of Light
            53654, -- Beacon of Light
        },
        [33554432] = {
            20165, -- Seal of Light
        },
        [67108864] = {
            20166, -- Seal of Wisdom
        },
        [134217728] = {
            5502, -- Sense Undead
        },
        [268435456] = {
            13819, -- Warhorse(Summon)
            23214, -- Charger(Summon)
            34767, -- Summon Charger(Summon)
            34769, -- Summon Warhorse(Summon)
            66906, -- Argent Charger(Summon)
            66907, -- Argent Warhorse(Summon)
        },
        [536870912] = {
            20154, -- Seal of Righteousness
            21084, -- Seal of Righteousness
            25742, -- Seal of Righteousness
        },
        [1073741824] = {
            62124, -- Hand of Reckoning
        },
        [2147483648] = {
            20050, -- Vengeance
            20052, -- Vengeance
            20053, -- Vengeance
            20233, -- Lay on Hands(Rank 1)
            20236, -- Lay on Hands(Rank 2)
            31834, -- Light's Grace
            31842, -- Divine Illumination
            54428, -- Divine Plea
        },
    },
    [3] = {
        [1] = {
            54428, -- Divine Plea
        },
        [2] = {
            53489, -- The Art of War
            59578, -- The Art of War(Rank 2)
        },
        [4] = {
            64205, -- Divine Sacrifice
        },
        [8] = {
            53407, -- Judgement of Justice
            54158, -- Judgement
        },
        [16] = {
            31898, -- Judgement of Blood(Rank 1)
            53726, -- Judgement of the Martyr(Rank 1)
        },
        [32] = {
            465, -- Devotion Aura(Rank 1)
            643, -- Devotion Aura(Rank 3)
            1032, -- Devotion Aura(Rank 5)
            7294, -- Retribution Aura(Rank 1)
            10290, -- Devotion Aura(Rank 2)
            10291, -- Devotion Aura(Rank 4)
            10292, -- Devotion Aura(Rank 6)
            10293, -- Devotion Aura(Rank 7)
            10298, -- Retribution Aura(Rank 2)
            10299, -- Retribution Aura(Rank 3)
            10300, -- Retribution Aura(Rank 4)
            10301, -- Retribution Aura(Rank 5)
            19746, -- Concentration Aura
            19876, -- Shadow Resistance Aura(Rank 1)
            19888, -- Frost Resistance Aura(Rank 1)
            19891, -- Fire Resistance Aura(Rank 1)
            19895, -- Shadow Resistance Aura(Rank 2)
            19896, -- Shadow Resistance Aura(Rank 3)
            19897, -- Frost Resistance Aura(Rank 2)
            19898, -- Frost Resistance Aura(Rank 3)
            19899, -- Fire Resistance Aura(Rank 2)
            19900, -- Fire Resistance Aura(Rank 3)
            27149, -- Devotion Aura(Rank 8)
            27150, -- Retribution Aura(Rank 6)
            27151, -- Shadow Resistance Aura(Rank 4)
            27152, -- Frost Resistance Aura(Rank 4)
            27153, -- Fire Resistance Aura(Rank 4)
            32223, -- Crusader Aura
            48941, -- Devotion Aura(Rank 9)
            48942, -- Devotion Aura(Rank 10)
            48943, -- Shadow Resistance Aura(Rank 5)
            48945, -- Frost Resistance Aura(Rank 5)
            48947, -- Fire Resistance Aura(Rank 5)
            54043, -- Retribution Aura(Rank 7)
        },
        [64] = {
            68055, -- Judgements of the Just(Rank 1)
        },
        [128] = {
            25771, -- Forbearance
        },
        [256] = {
            498, -- Divine Protection
        },
        [2147483648] = {
            59542, -- Gift of the Naaru(Racial)
        },
    },
    [4] = {
    },
};

_addon.classGlyphs = {
    [54922] = { -- Glyph of Judgement
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {8388608, 0, 0, 0},
            value = 10,
        },
    },
    [54928] = { -- Glyph of Consecration
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {32, 0, 0, 0},
            value = 2,
        },
    },
    [54930] = { -- Glyph of Avenger's Shield
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {16384, 0, 0, 0},
            value = 100,
        },
    },
    [54934] = { -- Glyph of Exorcism
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 2, 0, 0},
            value = 20,
        },
    },
    [54936] = { -- Glyph of Flash of Light
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {1073741824, 0, 0, 0},
            value = 5,
        },
    },
    [56414] = { -- Glyph of Seal of Righteousness
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 536870912, 0, 0},
            value = 10,
        },
    },
};


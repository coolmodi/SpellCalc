-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(635)] = { -- Holy Light
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(21084)] = { -- Seal of Righteousness
        school = 2,
        defType = 2,
    },
    [GetSpellInfo(20187)] = { -- Judgement of Righteousness
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(21082)] = { -- Seal of the Crusader
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(7294)] = { -- Retribution Aura
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(879)] = { -- Exorcism
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(19750)] = { -- Flash of Light
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(26573)] = { -- Consecration
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
    [GetSpellInfo(24275)] = { -- Hammer of Wrath
        school = 2,
        GCD = 0.5,
        defType = 3,
    },
    [GetSpellInfo(20473)] = { -- Holy Shock
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2812)] = { -- Holy Wrath
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(20927)] = { -- Holy Shield
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(23590)] = { -- Judgement
        school = 2,
        defType = 0,
    },
    [GetSpellInfo(31935)] = { -- Avenger's Shield
        school = 2,
        isBinary = true,
        GCD = 1,
        defType = 3,
    },
    [GetSpellInfo(31892)] = { -- Seal of Blood
        school = 2,
        defType = 2,
    },
    [GetSpellInfo(31898)] = { -- Judgement of Blood
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
    },
    [GetSpellInfo(31801)] = { -- Seal of Vengeance
        school = 2,
        defType = 2,
    },
    [GetSpellInfo(31804)] = { -- Judgement of Vengeance
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(348700)] = { -- Seal of the Martyr
        school = 2,
        defType = 2,
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
                valueBase = 39,
                valueRange = 8,
                valuePerLevel = 0.8,
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
                valueBase = 76,
                valueRange = 14,
                valuePerLevel = 1.1,
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
                valueBase = 159,
                valueRange = 28,
                valuePerLevel = 1.7,
                coef = 0.554,
            },
        }
    },
    [879] = { -- Exorcism(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 84,
                valueRange = 12,
                valuePerLevel = 1.2,
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
                valueBase = 310,
                valueRange = 46,
                valuePerLevel = 2.4,
                coef = 0.714,
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
                valueBase = 491,
                valueRange = 62,
                valuePerLevel = 3.1,
                coef = 0.714,
            },
        }
    },
    [2812] = { -- Holy Wrath(Rank 1)
        spellLevel = 50,
        maxLevel = 54,
        baseCost = 550,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 362,
                valueRange = 66,
                valuePerLevel = 1.6,
                coef = 0.286,
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
                valueBase = 698,
                valueRange = 82,
                valuePerLevel = 3.8,
                coef = 0.714,
            },
        }
    },
    [5614] = { -- Exorcism(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 115,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 152,
                valueRange = 20,
                valuePerLevel = 1.6,
                coef = 0.429,
            },
        }
    },
    [5615] = { -- Exorcism(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 217,
                valueRange = 28,
                valuePerLevel = 2,
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
                valueBase = 0,
                valueRange = 0,
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
                valueBase = 5,
                valueRange = 0,
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
                valueBase = 8,
                valueRange = 0,
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
                valueBase = 12,
                valueRange = 0,
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
                valueBase = 16,
                valueRange = 0,
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
                valueBase = 20,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [10312] = { -- Exorcism(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 304,
                valueRange = 38,
                valuePerLevel = 2.4,
                coef = 0.429,
            },
        }
    },
    [10313] = { -- Exorcism(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 240,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 393,
                valueRange = 46,
                valuePerLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [10314] = { -- Exorcism(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 295,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 505,
                valueRange = 58,
                valuePerLevel = 3.2,
                coef = 0.429,
            },
        }
    },
    [10318] = { -- Holy Wrath(Rank 2)
        spellLevel = 60,
        maxLevel = 64,
        baseCost = 685,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 490,
                valueRange = 86,
                valuePerLevel = 1.9,
                coef = 0.286,
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
                valueBase = 945,
                valueRange = 108,
                valuePerLevel = 4.6,
                coef = 0.714,
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
                valueBase = 1246,
                valueRange = 142,
                valuePerLevel = 5.2,
                coef = 0.714,
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
                valueBase = 62,
                valueRange = 10,
                valuePerLevel = 1,
                coef = 0.429,
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
                valueBase = 96,
                valueRange = 14,
                valuePerLevel = 1.3,
                coef = 0.429,
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
                valueBase = 145,
                valueRange = 18,
                valuePerLevel = 1.6,
                coef = 0.429,
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
                valueBase = 197,
                valueRange = 24,
                valuePerLevel = 1.9,
                coef = 0.429,
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
                valueBase = 267,
                valueRange = 32,
                valuePerLevel = 2.2,
                coef = 0.429,
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
                valueBase = 343,
                valueRange = 40,
                valuePerLevel = 2.6,
                coef = 0.429,
            },
        }
    },
    [20116] = { -- Consecration(Rank 2)
        spellLevel = 30,
        maxLevel = 39,
        duration = 8,
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 15,
                valueRange = 0,
                coef = 0.119,
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
                valueBase = 108,
                valueRange = 0,
                valuePerLevel = 18,
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
                valueBase = 59,
                valueRange = 0,
                valuePerLevel = 1.1,
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
                valueBase = 15,
                valueRange = 0,
                valuePerLevel = 1.8,
                coef = 0.209,
            },
        }
    },
    [20280] = { -- Judgement of Righteousness(Rank 2)
        spellLevel = 10,
        maxLevel = 16,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 2,
                valuePerLevel = 1.9,
                coef = 0.455,
            },
        }
    },
    [20281] = { -- Judgement of Righteousness(Rank 3)
        spellLevel = 18,
        maxLevel = 24,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 39,
                valueRange = 4,
                valuePerLevel = 2.4,
                coef = 0.674,
            },
        }
    },
    [20282] = { -- Judgement of Righteousness(Rank 4)
        spellLevel = 26,
        maxLevel = 32,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 57,
                valueRange = 6,
                valuePerLevel = 2.8,
                coef = 0.728,
            },
        }
    },
    [20283] = { -- Judgement of Righteousness(Rank 5)
        spellLevel = 34,
        maxLevel = 40,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 78,
                valueRange = 8,
                valuePerLevel = 3.1,
                coef = 0.728,
            },
        }
    },
    [20284] = { -- Judgement of Righteousness(Rank 6)
        spellLevel = 42,
        maxLevel = 48,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 102,
                valueRange = 10,
                valuePerLevel = 3.8,
                coef = 0.728,
            },
        }
    },
    [20285] = { -- Judgement of Righteousness(Rank 7)
        spellLevel = 50,
        maxLevel = 56,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 131,
                valueRange = 12,
                valuePerLevel = 4.1,
                coef = 0.728,
            },
        }
    },
    [20286] = { -- Judgement of Righteousness(Rank 8)
        spellLevel = 58,
        maxLevel = 64,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 162,
                valueRange = 16,
                valuePerLevel = 4.1,
                coef = 0.728,
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
                valueBase = 216,
                valueRange = 0,
                valuePerLevel = 17,
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
                valueBase = 352,
                valueRange = 0,
                valuePerLevel = 23,
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
                valueBase = 541,
                valueRange = 0,
                valuePerLevel = 31,
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
                valueBase = 785,
                valueRange = 0,
                valuePerLevel = 37,
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
                valueBase = 1082,
                valueRange = 0,
                valuePerLevel = 41,
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
                valueBase = 1407,
                valueRange = 0,
                valuePerLevel = 47,
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
                valueBase = 1786,
                valueRange = 0,
                valuePerLevel = 47,
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
                valueBase = 108,
                valueRange = 0,
                valuePerLevel = 1.7,
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
                valueBase = 167,
                valueRange = 0,
                valuePerLevel = 2,
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
                valueBase = 254,
                valueRange = 0,
                valuePerLevel = 2.2,
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
                valueBase = 352,
                valueRange = 0,
                valuePerLevel = 2.4,
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
                valueBase = 0,
                valueRange = 0,
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
                valueBase = 47,
                valueRange = 4,
                valuePerLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [20473] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        baseCost = 335,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 25914,
                valueRange = 0,
                coef = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 25912,
                valueRange = 0,
                coef = 0,
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
                valueBase = 0,
                valueRange = 0,
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
                valueBase = 0,
                valueRange = 0,
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
                valueBase = 0,
                valueRange = 0,
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
                valueBase = 0,
                valueRange = 0,
                coef = 0.29,
            },
        }
    },
    [20922] = { -- Consecration(Rank 3)
        spellLevel = 40,
        maxLevel = 49,
        duration = 8,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 24,
                valueRange = 0,
                coef = 0.119,
            },
        }
    },
    [20923] = { -- Consecration(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 8,
        baseCost = 390,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 35,
                valueRange = 0,
                coef = 0.119,
            },
        }
    },
    [20924] = { -- Consecration(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        duration = 8,
        baseCost = 505,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 48,
                valueRange = 0,
                coef = 0.119,
            },
        }
    },
    [20925] = { -- Holy Shield(Rank 1)
        spellLevel = 40,
        maxLevel = 49,
        duration = 10,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                charges = 4,
                valueBase = 59,
                valueRange = 0,
                coef = 0.05,
            },
        }
    },
    [20927] = { -- Holy Shield(Rank 2)
        spellLevel = 50,
        maxLevel = 59,
        duration = 10,
        baseCost = 175,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                charges = 4,
                valueBase = 86,
                valueRange = 0,
                coef = 0.05,
            },
        }
    },
    [20928] = { -- Holy Shield(Rank 3)
        spellLevel = 60,
        maxLevel = 69,
        duration = 10,
        baseCost = 215,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                charges = 4,
                valueBase = 117,
                valueRange = 0,
                coef = 0.05,
            },
        }
    },
    [20929] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 0,
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 25913,
                valueRange = 0,
                coef = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 25911,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [20930] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        baseCost = 485,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 25903,
                valueRange = 0,
                coef = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 25902,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [20963] = { -- Judgement of Command(Rank 2)
        spellLevel = 30,
        maxLevel = 38,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 74,
                valueRange = 7,
                valuePerLevel = 3.05,
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
                valueBase = 103,
                valueRange = 10,
                valuePerLevel = 2.8,
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
                valueBase = 131,
                valueRange = 13,
                valuePerLevel = 3.05,
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
                valueBase = 170,
                valueRange = 17,
                valuePerLevel = 3.05,
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
                valueBase = 36,
                valueRange = 0,
                valuePerLevel = 0.7,
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
                valueBase = 108,
                valueRange = 0,
                valuePerLevel = 18,
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
                valueBase = 60,
                valueRange = 6,
                coef = 0,
            },
        }
    },
    [24239] = { -- Hammer of Wrath(Rank 3)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 340,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 504,
                valueRange = 52,
                valuePerLevel = 3.1,
                coef = 0.429,
            },
        }
    },
    [24274] = { -- Hammer of Wrath(Rank 2)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 399,
                valueRange = 42,
                valuePerLevel = 2.7,
                coef = 0.429,
            },
        }
    },
    [24275] = { -- Hammer of Wrath(Rank 1)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 235,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 304,
                valueRange = 32,
                valuePerLevel = 2.4,
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
                valueBase = 1590,
                valueRange = 180,
                valuePerLevel = 5.8,
                coef = 0.714,
            },
        }
    },
    [25902] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 63,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 496,
                valueRange = 40,
                coef = 0.429,
            },
        }
    },
    [25903] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 63,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 628,
                valueRange = 52,
                coef = 0.429,
            },
        }
    },
    [25911] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 55,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 379,
                valueRange = 30,
                coef = 0.429,
            },
        }
    },
    [25912] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 47,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 277,
                valueRange = 22,
                coef = 0.429,
            },
        }
    },
    [25913] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 55,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 480,
                valueRange = 38,
                coef = 0.429,
            },
        }
    },
    [25914] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 47,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 351,
                valueRange = 28,
                coef = 0.429,
            },
        }
    },
    [26573] = { -- Consecration(Rank 1)
        spellLevel = 20,
        maxLevel = 29,
        duration = 8,
        baseCost = 120,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 8,
                valueRange = 0,
                coef = 0.119,
            },
        }
    },
    [27135] = { -- Holy Light(Rank 10)
        spellLevel = 62,
        maxLevel = 67,
        baseCost = 710,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1741,
                valueRange = 198,
                valuePerLevel = 6.4,
                coef = 0.714,
            },
        }
    },
    [27136] = { -- Holy Light(Rank 11)
        spellLevel = 70,
        maxLevel = 75,
        baseCost = 840,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2196,
                valueRange = 250,
                valuePerLevel = 7,
                coef = 0.714,
            },
        }
    },
    [27137] = { -- Flash of Light(Rank 7)
        spellLevel = 66,
        maxLevel = 71,
        baseCost = 180,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 448,
                valueRange = 54,
                valuePerLevel = 2.6,
                coef = 0.429,
            },
        }
    },
    [27138] = { -- Exorcism(Rank 7)
        spellLevel = 68,
        maxLevel = 73,
        baseCost = 340,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 619,
                valueRange = 72,
                valuePerLevel = 3.5,
                coef = 0.429,
            },
        }
    },
    [27139] = { -- Holy Wrath(Rank 3)
        spellLevel = 69,
        maxLevel = 73,
        baseCost = 825,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 635,
                valueRange = 110,
                valuePerLevel = 2.2,
                coef = 0.286,
            },
        }
    },
    [27150] = { -- Retribution Aura(Rank 6)
        spellLevel = 66,
        maxLevel = 0,
        duration = -0.001,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                charges = -1,
                valueBase = 26,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [27155] = { -- Seal of Righteousness(Rank 9)
        spellLevel = 66,
        maxLevel = 72,
        duration = 30,
        baseCost = 260,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 2112,
                valueRange = 0,
                valuePerLevel = 53,
                coef = 0.1,
            },
        }
    },
    [27157] = { -- Judgement of Righteousness(Rank 9)
        spellLevel = 66,
        maxLevel = 72,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 208,
                valueRange = 20,
                valuePerLevel = 4.4,
                coef = 0.728,
            },
        }
    },
    [27158] = { -- Seal of the Crusader(Rank 7)
        spellLevel = 61,
        maxLevel = 69,
        duration = 30,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 474,
                valueRange = 0,
                valuePerLevel = 2.6,
                coef = 0,
            },
        }
    },
    [27170] = { -- Seal of Command(Rank 6)
        spellLevel = 70,
        maxLevel = 78,
        duration = 30,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                valueBase = 0,
                valueRange = 0,
                coef = 0.29,
            },
        }
    },
    [27171] = { -- Judgement of Command(Rank 6)
        spellLevel = 70,
        maxLevel = 78,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 229,
                valueRange = 24,
                valuePerLevel = 3.05,
                coef = 0.429,
            },
        }
    },
    [27173] = { -- Consecration(Rank 6)
        spellLevel = 70,
        maxLevel = 79,
        duration = 8,
        baseCost = 660,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 64,
                valueRange = 0,
                coef = 0.119,
            },
        }
    },
    [27174] = { -- Holy Shock(Rank 4)
        spellLevel = 64,
        maxLevel = 0,
        baseCost = 575,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 27175,
                valueRange = 0,
                coef = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 27176,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [27175] = { -- Holy Shock(Rank 4)
        spellLevel = 64,
        maxLevel = 69,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 777,
                valueRange = 64,
                coef = 0.429,
            },
        }
    },
    [27176] = { -- Holy Shock(Rank 4)
        spellLevel = 64,
        maxLevel = 69,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 614,
                valueRange = 50,
                coef = 0.429,
            },
        }
    },
    [27179] = { -- Holy Shield(Rank 4)
        spellLevel = 70,
        maxLevel = 79,
        duration = 10,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                charges = 4,
                valueBase = 155,
                valueRange = 0,
                coef = 0.05,
            },
        }
    },
    [27180] = { -- Hammer of Wrath(Rank 4)
        spellLevel = 68,
        maxLevel = 73,
        baseCost = 440,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 665,
                valueRange = 70,
                valuePerLevel = 3.5,
                coef = 0.429,
            },
        }
    },
    [31801] = { -- Seal of Vengeance(Rank 1)
        spellLevel = 64,
        maxLevel = 0,
        duration = 30,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 30,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [31804] = { -- Judgement of Vengeance(Rank 1)
        spellLevel = 64,
        maxLevel = 99,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 120,
                valueRange = 0,
                coef = 0.429,
            },
        }
    },
    [31892] = { -- Seal of Blood(Rank 1)
        spellLevel = 64,
        maxLevel = 0,
        duration = 30,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.35,
                valueBase = 40,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [31898] = { -- Judgement of Blood(Rank 1)
        spellLevel = 64,
        maxLevel = 99,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 295,
                valueRange = 30,
                valuePerLevel = 6.1,
                coef = 0.429,
            },
        }
    },
    [31935] = { -- Avenger's Shield(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 6,
        baseCost = 500,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 270,
                valueRange = 60,
                coef = 0.193,
            },
        }
    },
    [32699] = { -- Avenger's Shield(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 6,
        baseCost = 615,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 370,
                valueRange = 82,
                coef = 0.193,
            },
        }
    },
    [32700] = { -- Avenger's Shield(Rank 3)
        spellLevel = 70,
        maxLevel = 79,
        duration = 6,
        baseCost = 780,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 494,
                valueRange = 108,
                coef = 0.193,
            },
        }
    },
    [33072] = { -- Holy Shock(Rank 5)
        spellLevel = 70,
        maxLevel = 0,
        baseCost = 650,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 33074,
                valueRange = 0,
                coef = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 33073,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [33073] = { -- Holy Shock(Rank 5)
        spellLevel = 70,
        maxLevel = 77,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 721,
                valueRange = 58,
                coef = 0.429,
            },
        }
    },
    [33074] = { -- Holy Shock(Rank 5)
        spellLevel = 70,
        maxLevel = 77,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 913,
                valueRange = 74,
                coef = 0.429,
            },
        }
    },
    [348700] = { -- Seal of the Martyr(Rank 1)
        spellLevel = 70,
        maxLevel = 0,
        duration = 30,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.35,
                valueBase = 40,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [348704] = { -- Seal of Vengeance(Rank 1)
        spellLevel = 70,
        maxLevel = 0,
        duration = 30,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 30,
                valueRange = 0,
                coef = 0,
            },
        }
    },
};

_addon.aurasPlayer[21084] = { -- Seal of Righteousness(Rank 1)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20187
};

_addon.aurasPlayer[20287] = { -- Seal of Righteousness(Rank 2)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20280
};

_addon.aurasPlayer[20288] = { -- Seal of Righteousness(Rank 3)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20281
};

_addon.aurasPlayer[20289] = { -- Seal of Righteousness(Rank 4)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20282
};

_addon.aurasPlayer[20375] = { -- Seal of Command(Rank 1)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20467
};

_addon.aurasPlayer[20915] = { -- Seal of Command(Rank 2)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20963
};

_addon.aurasPlayer[20290] = { -- Seal of Righteousness(Rank 5)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20283
};

_addon.aurasPlayer[20918] = { -- Seal of Command(Rank 3)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20964
};

_addon.aurasPlayer[20291] = { -- Seal of Righteousness(Rank 6)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20284
};

_addon.aurasPlayer[20919] = { -- Seal of Command(Rank 4)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20965
};

_addon.aurasPlayer[20292] = { -- Seal of Righteousness(Rank 7)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20285
};

_addon.aurasPlayer[20293] = { -- Seal of Righteousness(Rank 8)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20286
};

_addon.aurasPlayer[20920] = { -- Seal of Command(Rank 5)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 20966
};

_addon.aurasPlayer[27155] = { -- Seal of Righteousness(Rank 9)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 27157
};

_addon.aurasPlayer[27170] = { -- Seal of Command(Rank 6)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 27171
};

_addon.aurasPlayer[31892] = { -- Seal of Blood(Rank 1)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 31898
};

_addon.aurasPlayer[31801] = { -- Seal of Vengeance(Rank 1)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 31804
};

_addon.aurasPlayer[348700] = { -- Seal of the Martyr(Rank 1)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 31898
};

_addon.aurasPlayer[348704] = { -- Seal of Vengeance(Rank 1)
    type = _addon.EFFECT_TYPE.JUDGEMENT_SPELL,
    value = 31804
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
            27173, -- Consecration(Rank 6)
            32773, -- Consecration
            33559, -- Consecration
            36473, -- Desecration
            36946, -- Consecration
            37553, -- Consecration
            38385, -- Consecration
            41541, -- Consecration
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
        },
        [128] = {
            1022, -- Blessing of Protection(Rank 1)
            5599, -- Blessing of Protection(Rank 2)
            10278, -- Blessing of Protection(Rank 3)
            23415, -- Improved Blessing of Protection
            25282, -- Shield of Rajaxx
            41450, -- Blessing of Protection
        },
        [256] = {
            1038, -- Blessing of Salvation
            25895, -- Greater Blessing of Salvation
            31745, -- Salvation
            33790, -- Salvation
            35360, -- Salvation
            36886, -- Spiteful Fury
        },
        [512] = {
            20162, -- Seal of the Crusader(Rank 2)
            20305, -- Seal of the Crusader(Rank 3)
            20306, -- Seal of the Crusader(Rank 4)
            20307, -- Seal of the Crusader(Rank 5)
            20308, -- Seal of the Crusader(Rank 6)
            21082, -- Seal of the Crusader(Rank 1)
            27158, -- Seal of the Crusader(Rank 7)
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
            27157, -- Judgement of Righteousness(Rank 9)
        },
        [2048] = {
            853, -- Hammer of Justice(Rank 1)
            5588, -- Hammer of Justice(Rank 2)
            5589, -- Hammer of Justice(Rank 3)
            10308, -- Hammer of Justice(Rank 4)
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
        [32768] = {
            633, -- Lay on Hands(Rank 1)
            2800, -- Lay on Hands(Rank 2)
            10310, -- Lay on Hands(Rank 3)
            27154, -- Lay on Hands(Rank 4)
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
        },
        [131072] = {
            19746, -- Concentration Aura
            27733, -- Ironweave Battlesuit
            30515, -- Foreman's Enchanted Helmet
            30519, -- Foreman's Reinforced Helmet
            40803, -- Ron's Test Buff
        },
        [262144] = {
            20167, -- Seal of Light(Rank 1)
            20168, -- Seal of Wisdom(Rank 1)
            20333, -- Seal of Light(Rank 2)
            20334, -- Seal of Light(Rank 3)
            20340, -- Seal of Light(Rank 4)
            20350, -- Seal of Wisdom(Rank 2)
            20351, -- Seal of Wisdom(Rank 3)
            27161, -- Seal of Light(Rank 5)
            27167, -- Seal of Wisdom(Rank 4)
            37557, -- Mark of Light
        },
        [524288] = {
            20185, -- Judgement of Light(Rank 1)
            20186, -- Judgement of Wisdom(Rank 1)
            20344, -- Judgement of Light(Rank 2)
            20345, -- Judgement of Light(Rank 3)
            20346, -- Judgement of Light(Rank 4)
            20354, -- Judgement of Wisdom(Rank 2)
            20355, -- Judgement of Wisdom(Rank 3)
            27162, -- Judgement of Light(Rank 5)
            27164, -- Judgement of Wisdom(Rank 4)
        },
        [1048576] = {
            20184, -- Judgement of Justice(Rank 1)
            31896, -- Judgement of Justice(Rank 2)
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
        },
        [4194304] = {
            642, -- Divine Shield(Rank 1)
            1020, -- Divine Shield(Rank 2)
        },
        [8388608] = {
            20271, -- Judgement
            41467, -- Judgement
        },
        [16777216] = {
            20217, -- Blessing of Kings
            25898, -- Greater Blessing of Kings
        },
        [33554432] = {
            20375, -- Seal of Command(Rank 1)
            20424, -- Seal of Command
            20915, -- Seal of Command(Rank 2)
            20918, -- Seal of Command(Rank 3)
            20919, -- Seal of Command(Rank 4)
            20920, -- Seal of Command(Rank 5)
            27170, -- Seal of Command(Rank 6)
            31801, -- Seal of Vengeance(Rank 1)
            33127, -- Seal of Command
            42058, -- Seal of Command
            348704, -- Seal of Vengeance(Rank 1)
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
            27151, -- Shadow Resistance Aura(Rank 4)
            27152, -- Frost Resistance Aura(Rank 4)
            27153, -- Fire Resistance Aura(Rank 4)
            32223, -- Crusader Aura
        },
        [134217728] = {
            20154, -- Seal of Righteousness(Rank 1)
            20164, -- Seal of Justice(Rank 1)
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
            27155, -- Seal of Righteousness(Rank 9)
            27160, -- Seal of Light(Rank 5)
            27166, -- Seal of Wisdom(Rank 4)
            31895, -- Seal of Justice(Rank 2)
            37555, -- Mark of Light
        },
        [268435456] = {
            1044, -- Blessing of Freedom
            6940, -- Blessing of Sacrifice(Rank 1)
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
            25898, -- Greater Blessing of Kings
            25899, -- Greater Blessing of Sanctuary(Rank 1)
            25916, -- Greater Blessing of Might(Rank 2)
            25918, -- Greater Blessing of Wisdom(Rank 2)
            27140, -- Blessing of Might(Rank 8)
            27141, -- Greater Blessing of Might(Rank 3)
            27142, -- Blessing of Wisdom(Rank 7)
            27143, -- Greater Blessing of Wisdom(Rank 3)
            27144, -- Blessing of Light(Rank 4)
            27145, -- Greater Blessing of Light(Rank 2)
            27147, -- Blessing of Sacrifice(Rank 3)
            27148, -- Blessing of Sacrifice(Rank 4)
            27168, -- Blessing of Sanctuary(Rank 5)
            27169, -- Greater Blessing of Sanctuary(Rank 2)
            29381, -- Greater Blessing of Might
            31745, -- Salvation
            32770, -- Blessing of Light
            33564, -- Greater Blessing of Might
            33790, -- Salvation
            35360, -- Salvation
            36886, -- Spiteful Fury
            41450, -- Blessing of Protection
        },
        [536870912] = {
            20188, -- Judgement of the Crusader(Rank 2)
            20300, -- Judgement of the Crusader(Rank 3)
            20301, -- Judgement of the Crusader(Rank 4)
            20302, -- Judgement of the Crusader(Rank 5)
            20303, -- Judgement of the Crusader(Rank 6)
            21183, -- Judgement of the Crusader(Rank 1)
            27159, -- Judgement of the Crusader(Rank 7)
        },
        [1073741824] = {
            19750, -- Flash of Light(Rank 1)
            19939, -- Flash of Light(Rank 2)
            19940, -- Flash of Light(Rank 3)
            19941, -- Flash of Light(Rank 4)
            19942, -- Flash of Light(Rank 5)
            19943, -- Flash of Light(Rank 6)
            27137, -- Flash of Light(Rank 7)
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
            40803, -- Ron's Test Buff
        },
    },
    [2] = {
        [1] = {
            20267, -- Judgement of Light(Rank 1)
            20341, -- Judgement of Light(Rank 2)
            20342, -- Judgement of Light(Rank 3)
            20343, -- Judgement of Light(Rank 4)
            27163, -- Judgement of Light(Rank 5)
        },
        [2] = {
            879, -- Exorcism(Rank 1)
            2812, -- Holy Wrath(Rank 1)
            5614, -- Exorcism(Rank 2)
            5615, -- Exorcism(Rank 3)
            10312, -- Exorcism(Rank 4)
            10313, -- Exorcism(Rank 5)
            10314, -- Exorcism(Rank 6)
            10318, -- Holy Wrath(Rank 2)
            27138, -- Exorcism(Rank 7)
            27139, -- Holy Wrath(Rank 3)
            36944, -- Xi'ri's Wrath(Rank 1)
        },
        [4] = {
            31789, -- Righteous Defense
            32835, -- Soulshatter
            51640, -- Taunt Flag Targeting
            51702, -- Taunt Flag Targeting Take 2
        },
        [8] = {
            20467, -- Judgement of Command(Rank 1)
            20963, -- Judgement of Command(Rank 2)
            20964, -- Judgement of Command(Rank 3)
            20965, -- Judgement of Command(Rank 4)
            20966, -- Judgement of Command(Rank 5)
            27171, -- Judgement of Command(Rank 6)
            31804, -- Judgement of Vengeance(Rank 1)
            31898, -- Judgement of Blood(Rank 1)
            32778, -- Judgement of Command
            41461, -- Judgement of Blood
            42463, -- Seal of Vengeance(Rank 1)
            348702, -- Judgement of the Martyr(Rank 1)
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
        },
        [32] = {
            20218, -- Sanctity Aura
        },
        [64] = {
            20925, -- Holy Shield(Rank 1)
            20927, -- Holy Shield(Rank 2)
            20928, -- Holy Shield(Rank 3)
            27179, -- Holy Shield(Rank 4)
        },
        [128] = {
            24239, -- Hammer of Wrath(Rank 3)
            24274, -- Hammer of Wrath(Rank 2)
            24275, -- Hammer of Wrath(Rank 1)
            27180, -- Hammer of Wrath(Rank 4)
        },
        [256] = {
            20216, -- Divine Favor
        },
        [512] = {
            20467, -- Judgement of Command(Rank 1)
            20963, -- Judgement of Command(Rank 2)
            20964, -- Judgement of Command(Rank 3)
            20965, -- Judgement of Command(Rank 4)
            20966, -- Judgement of Command(Rank 5)
            27171, -- Judgement of Command(Rank 6)
        },
        [1024] = {
            31892, -- Seal of Blood(Rank 1)
            31893, -- Seal of Blood
            38008, -- Seal of Blood
            41459, -- Seal of Blood
            348700, -- Seal of the Martyr(Rank 1)
            348701, -- Seal of the Martyr
        },
        [2048] = {
            31803, -- Holy Vengeance(Rank 1)
        },
        [4096] = {
            31785, -- Spiritual Attunement(Rank 1)
            33776, -- Spiritual Attunement(Rank 2)
        },
        [8192] = {
            31884, -- Avenging Wrath
        },
        [16384] = {
            67, -- Vindication(Rank 1)
            498, -- Divine Protection(Rank 1)
            2878, -- Turn Undead(Rank 1)
            5573, -- Divine Protection(Rank 2)
            5627, -- Turn Undead(Rank 2)
            10326, -- Turn Evil(Rank 1)
            20050, -- Vengeance
            20052, -- Vengeance
            20053, -- Vengeance
            20054, -- Vengeance
            20055, -- Vengeance
            20233, -- Lay on Hands(Rank 1)
            20236, -- Lay on Hands(Rank 2)
            26017, -- Vindication(Rank 2)
            26018, -- Vindication(Rank 3)
            31834, -- Light's Grace
            31842, -- Divine Illumination
            31935, -- Avenger's Shield(Rank 1)
            32699, -- Avenger's Shield(Rank 2)
            32700, -- Avenger's Shield(Rank 3)
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
        },
    },
    [3] = {
    },
    [4] = {
    },
};


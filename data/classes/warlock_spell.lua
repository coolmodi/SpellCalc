-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(172)] = { -- Corruption
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(348)] = { -- Immolate
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(603)] = { -- Curse of Doom
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(686)] = { -- Shadow Bolt
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(689)] = { -- Drain Life
        school = 6,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(755)] = { -- Health Funnel
        school = 6,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(980)] = { -- Curse of Agony
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(1120)] = { -- Drain Soul
        school = 6,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(1949)] = { -- Hellfire
        school = 3,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(5676)] = { -- Searing Pain
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(5740)] = { -- Rain of Fire
        school = 3,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(6229)] = { -- Shadow Ward
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(6353)] = { -- Soul Fire
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(6789)] = { -- Death Coil
        school = 6,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(17877)] = { -- Shadowburn
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(17962)] = { -- Conflagrate
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(18265)] = { -- Siphon Life
        school = 6,
        defType = 1,
    },
};

_addon.spellRankInfo = {
    [172] = { -- Corruption(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 12,
        baseCost = 35,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 10,
                coef = 0.08,
            },
        }
    },
    [348] = { -- Immolate(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        duration = 15,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 2,
                min = 8,
                perLevel = 0.6,
                coef = 0.058,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 4,
                coef = 0.037,
            },
        }
    },
    [603] = { -- Curse of Doom
        spellLevel = 60,
        maxLevel = 0,
        duration = 60,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 60,
                min = 3200,
                coef = 1,
            },
        }
    },
    [686] = { -- Shadow Bolt(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 2,
                min = 12,
                max = 17,
                perLevel = 0.4,
                coef = 0.14,
            },
        }
    },
    [689] = { -- Drain Life(Rank 1)
        spellLevel = 14,
        maxLevel = 19,
        duration = 5,
        baseCost = 55,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                min = 10,
                coef = 0.078,
            },
        }
    },
    [695] = { -- Shadow Bolt(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 2,
                min = 23,
                max = 30,
                perLevel = 0.6,
                coef = 0.299,
            },
        }
    },
    [699] = { -- Drain Life(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        duration = 5,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                min = 17,
                coef = 0.1,
            },
        }
    },
    [705] = { -- Shadow Bolt(Rank 3)
        spellLevel = 12,
        maxLevel = 17,
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 2,
                min = 48,
                max = 57,
                perLevel = 0.9,
                coef = 0.56,
            },
        }
    },
    [707] = { -- Immolate(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 15,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 2,
                min = 19,
                perLevel = 0.9,
                coef = 0.125,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 8,
                coef = 0.081,
            },
        }
    },
    [709] = { -- Drain Life(Rank 3)
        spellLevel = 30,
        maxLevel = 35,
        duration = 5,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                min = 29,
                coef = 0.1,
            },
        }
    },
    [755] = { -- Health Funnel(Rank 1)
        spellLevel = 12,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 12,
                coef = 0,
            },
        }
    },
    [980] = { -- Curse of Agony(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 24,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 7,
                coef = 0.046,
            },
        }
    },
    [1014] = { -- Curse of Agony(Rank 2)
        spellLevel = 18,
        maxLevel = 0,
        duration = 24,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 15,
                coef = 0.077,
            },
        }
    },
    [1088] = { -- Shadow Bolt(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 2,
                min = 86,
                max = 99,
                perLevel = 1.2,
                coef = 0.857,
            },
        }
    },
    [1094] = { -- Immolate(Rank 3)
        spellLevel = 20,
        maxLevel = 25,
        duration = 15,
        baseCost = 90,
        effects = {
            [1] = {
                effectType = 2,
                min = 45,
                perLevel = 1.5,
                coef = 0.2,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 18,
                coef = 0.13,
            },
        }
    },
    [1106] = { -- Shadow Bolt(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 2,
                min = 142,
                max = 163,
                perLevel = 1.6,
                coef = 0.857,
            },
        }
    },
    [1120] = { -- Drain Soul(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 15,
        baseCost = 55,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 11,
                coef = 0.063,
            },
        }
    },
    [1949] = { -- Hellfire(Rank 1)
        spellLevel = 30,
        maxLevel = 40,
        duration = 15,
        baseCost = 645,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                min = 83,
                perLevel = 0.4,
                coef = 0.022,
            },
        }
    },
    [2941] = { -- Immolate(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        duration = 15,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 2,
                min = 90,
                perLevel = 2.1,
                coef = 0.2,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 33,
                coef = 0.13,
            },
        }
    },
    [3698] = { -- Health Funnel(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 24,
                coef = 0,
            },
        }
    },
    [3699] = { -- Health Funnel(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 43,
                coef = 0,
            },
        }
    },
    [3700] = { -- Health Funnel(Rank 4)
        spellLevel = 36,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 64,
                coef = 0,
            },
        }
    },
    [5676] = { -- Searing Pain(Rank 1)
        spellLevel = 18,
        maxLevel = 24,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 2,
                min = 34,
                max = 43,
                perLevel = 0.7,
                coef = 0.396,
            },
        }
    },
    [5740] = { -- Rain of Fire(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCost = 295,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 42,
                perLevel = 0.3,
                coef = 0.083,
            },
        }
    },
    [6217] = { -- Curse of Agony(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 24,
        baseCost = 90,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 27,
                coef = 0.083,
            },
        }
    },
    [6219] = { -- Rain of Fire(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        baseCost = 605,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 96,
                perLevel = 0.4,
                coef = 0.083,
            },
        }
    },
    [6222] = { -- Corruption(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        duration = 15,
        baseCost = 55,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 18,
                coef = 0.155,
            },
        }
    },
    [6223] = { -- Corruption(Rank 3)
        spellLevel = 24,
        maxLevel = 29,
        duration = 18,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 37,
                coef = 0.167,
            },
        }
    },
    [6229] = { -- Shadow Ward(Rank 1)
        spellLevel = 32,
        maxLevel = 0,
        duration = 30,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 290,
                coef = 0,
            },
        }
    },
    [6353] = { -- Soul Fire(Rank 1)
        spellLevel = 48,
        maxLevel = 54,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 2,
                min = 623,
                max = 784,
                perLevel = 2.9,
                coef = 1,
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
    [6789] = { -- Death Coil(Rank 1)
        spellLevel = 42,
        maxLevel = 48,
        duration = 3,
        baseCost = 430,
        effects = {
            [1] = {
                effectType = 9,
                min = 287,
                perLevel = 2.2,
                coef = 0.214,
            },
        }
    },
    [7641] = { -- Shadow Bolt(Rank 6)
        spellLevel = 36,
        maxLevel = 41,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 2,
                min = 204,
                max = 231,
                perLevel = 1.9,
                coef = 0.857,
            },
        }
    },
    [7648] = { -- Corruption(Rank 4)
        spellLevel = 34,
        maxLevel = 39,
        duration = 18,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 54,
                coef = 0.167,
            },
        }
    },
    [7651] = { -- Drain Life(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        duration = 5,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                min = 41,
                coef = 0.1,
            },
        }
    },
    [8288] = { -- Drain Soul(Rank 2)
        spellLevel = 24,
        maxLevel = 0,
        duration = 15,
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 31,
                coef = 0.1,
            },
        }
    },
    [8289] = { -- Drain Soul(Rank 3)
        spellLevel = 38,
        maxLevel = 0,
        duration = 15,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 59,
                coef = 0.1,
            },
        }
    },
    [11659] = { -- Shadow Bolt(Rank 7)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 265,
        effects = {
            [1] = {
                effectType = 2,
                min = 281,
                max = 316,
                perLevel = 2.3,
                coef = 0.857,
            },
        }
    },
    [11660] = { -- Shadow Bolt(Rank 8)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 315,
        effects = {
            [1] = {
                effectType = 2,
                min = 360,
                max = 403,
                perLevel = 2.6,
                coef = 0.857,
            },
        }
    },
    [11661] = { -- Shadow Bolt(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 370,
        effects = {
            [1] = {
                effectType = 2,
                min = 455,
                max = 508,
                perLevel = 3,
                coef = 0.857,
            },
        }
    },
    [11665] = { -- Immolate(Rank 5)
        spellLevel = 40,
        maxLevel = 45,
        duration = 15,
        baseCost = 220,
        effects = {
            [1] = {
                effectType = 2,
                min = 134,
                perLevel = 2.7,
                coef = 0.2,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 51,
                coef = 0.13,
            },
        }
    },
    [11667] = { -- Immolate(Rank 6)
        spellLevel = 50,
        maxLevel = 55,
        duration = 15,
        baseCost = 295,
        effects = {
            [1] = {
                effectType = 2,
                min = 192,
                perLevel = 3.2,
                coef = 0.2,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 73,
                coef = 0.13,
            },
        }
    },
    [11668] = { -- Immolate(Rank 7)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCost = 370,
        effects = {
            [1] = {
                effectType = 2,
                min = 258,
                perLevel = 3.8,
                coef = 0.2,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 97,
                coef = 0.13,
            },
        }
    },
    [11671] = { -- Corruption(Rank 5)
        spellLevel = 44,
        maxLevel = 49,
        duration = 18,
        baseCost = 225,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 81,
                coef = 0.167,
            },
        }
    },
    [11672] = { -- Corruption(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        duration = 18,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 111,
                coef = 0.167,
            },
        }
    },
    [11675] = { -- Drain Soul(Rank 4)
        spellLevel = 52,
        maxLevel = 0,
        duration = 15,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 91,
                coef = 0.1,
            },
        }
    },
    [11677] = { -- Rain of Fire(Rank 3)
        spellLevel = 46,
        maxLevel = 51,
        duration = 8,
        baseCost = 885,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 155,
                perLevel = 0.5,
                coef = 0.083,
            },
        }
    },
    [11678] = { -- Rain of Fire(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCost = 1185,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 226,
                perLevel = 0.6,
                coef = 0.083,
            },
        }
    },
    [11683] = { -- Hellfire(Rank 2)
        spellLevel = 42,
        maxLevel = 52,
        duration = 15,
        baseCost = 975,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                min = 139,
                perLevel = 0.5,
                coef = 0.022,
            },
        }
    },
    [11684] = { -- Hellfire(Rank 3)
        spellLevel = 54,
        maxLevel = 64,
        duration = 15,
        baseCost = 1300,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                min = 208,
                perLevel = 0.7,
                coef = 0.022,
            },
        }
    },
    [11693] = { -- Health Funnel(Rank 5)
        spellLevel = 44,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 89,
                coef = 0,
            },
        }
    },
    [11694] = { -- Health Funnel(Rank 6)
        spellLevel = 52,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 119,
                coef = 0,
            },
        }
    },
    [11695] = { -- Health Funnel(Rank 7)
        spellLevel = 60,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 153,
                coef = 0,
            },
        }
    },
    [11699] = { -- Drain Life(Rank 5)
        spellLevel = 46,
        maxLevel = 51,
        duration = 5,
        baseCost = 240,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                min = 55,
                coef = 0.1,
            },
        }
    },
    [11700] = { -- Drain Life(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        duration = 5,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                min = 71,
                coef = 0.1,
            },
        }
    },
    [11711] = { -- Curse of Agony(Rank 4)
        spellLevel = 38,
        maxLevel = 0,
        duration = 24,
        baseCost = 130,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 42,
                coef = 0.083,
            },
        }
    },
    [11712] = { -- Curse of Agony(Rank 5)
        spellLevel = 48,
        maxLevel = 0,
        duration = 24,
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 65,
                coef = 0.083,
            },
        }
    },
    [11713] = { -- Curse of Agony(Rank 6)
        spellLevel = 58,
        maxLevel = 0,
        duration = 24,
        baseCost = 215,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 87,
                coef = 0.083,
            },
        }
    },
    [11739] = { -- Shadow Ward(Rank 2)
        spellLevel = 42,
        maxLevel = 0,
        duration = 30,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 470,
                coef = 0,
            },
        }
    },
    [11740] = { -- Shadow Ward(Rank 3)
        spellLevel = 52,
        maxLevel = 0,
        duration = 30,
        baseCost = 255,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 675,
                coef = 0,
            },
        }
    },
    [17877] = { -- Shadowburn(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 5,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 2,
                min = 87,
                max = 100,
                perLevel = 1.2,
                coef = 0.429,
            },
        }
    },
    [17919] = { -- Searing Pain(Rank 2)
        spellLevel = 26,
        maxLevel = 32,
        baseCost = 68,
        effects = {
            [1] = {
                effectType = 2,
                min = 59,
                max = 72,
                perLevel = 1,
                coef = 0.429,
            },
        }
    },
    [17920] = { -- Searing Pain(Rank 3)
        spellLevel = 34,
        maxLevel = 40,
        baseCost = 91,
        effects = {
            [1] = {
                effectType = 2,
                min = 86,
                max = 105,
                perLevel = 1.2,
                coef = 0.429,
            },
        }
    },
    [17921] = { -- Searing Pain(Rank 4)
        spellLevel = 42,
        maxLevel = 48,
        baseCost = 118,
        effects = {
            [1] = {
                effectType = 2,
                min = 122,
                max = 147,
                perLevel = 1.5,
                coef = 0.429,
            },
        }
    },
    [17922] = { -- Searing Pain(Rank 5)
        spellLevel = 50,
        maxLevel = 56,
        baseCost = 141,
        effects = {
            [1] = {
                effectType = 2,
                min = 158,
                max = 189,
                perLevel = 1.7,
                coef = 0.429,
            },
        }
    },
    [17923] = { -- Searing Pain(Rank 6)
        spellLevel = 58,
        maxLevel = 64,
        baseCost = 168,
        effects = {
            [1] = {
                effectType = 2,
                min = 204,
                max = 241,
                perLevel = 2,
                coef = 0.429,
            },
        }
    },
    [17924] = { -- Soul Fire(Rank 2)
        spellLevel = 56,
        maxLevel = 62,
        baseCost = 335,
        effects = {
            [1] = {
                effectType = 2,
                min = 703,
                max = 882,
                perLevel = 3.1,
                coef = 1,
            },
        }
    },
    [17925] = { -- Death Coil(Rank 2)
        spellLevel = 50,
        maxLevel = 56,
        duration = 3,
        baseCost = 495,
        effects = {
            [1] = {
                effectType = 9,
                min = 375,
                perLevel = 2.6,
                coef = 0.214,
            },
        }
    },
    [17926] = { -- Death Coil(Rank 3)
        spellLevel = 58,
        maxLevel = 64,
        duration = 3,
        baseCost = 565,
        effects = {
            [1] = {
                effectType = 9,
                min = 470,
                perLevel = 3,
                coef = 0.214,
            },
        }
    },
    [17962] = { -- Conflagrate(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        baseCost = 165,
        effects = {
            [1] = {
                effectType = 2,
                min = 240,
                max = 307,
                perLevel = 1.6,
                coef = 0.429,
            },
        }
    },
    [18265] = { -- Siphon Life(Rank 1)
        spellLevel = 30,
        maxLevel = 38,
        duration = 30,
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 15,
                coef = 0.05,
            },
        }
    },
    [18867] = { -- Shadowburn(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        duration = 5,
        baseCost = 130,
        effects = {
            [1] = {
                effectType = 2,
                min = 115,
                max = 132,
                perLevel = 1.4,
                coef = 0.429,
            },
        }
    },
    [18868] = { -- Shadowburn(Rank 3)
        spellLevel = 32,
        maxLevel = 38,
        duration = 5,
        baseCost = 190,
        effects = {
            [1] = {
                effectType = 2,
                min = 186,
                max = 211,
                perLevel = 1.8,
                coef = 0.429,
            },
        }
    },
    [18869] = { -- Shadowburn(Rank 4)
        spellLevel = 40,
        maxLevel = 46,
        duration = 5,
        baseCost = 245,
        effects = {
            [1] = {
                effectType = 2,
                min = 261,
                max = 294,
                perLevel = 2.2,
                coef = 0.429,
            },
        }
    },
    [18870] = { -- Shadowburn(Rank 5)
        spellLevel = 48,
        maxLevel = 54,
        duration = 5,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 2,
                min = 350,
                max = 393,
                perLevel = 2.6,
                coef = 0.429,
            },
        }
    },
    [18871] = { -- Shadowburn(Rank 6)
        spellLevel = 56,
        maxLevel = 62,
        duration = 5,
        baseCost = 365,
        effects = {
            [1] = {
                effectType = 2,
                min = 450,
                max = 503,
                perLevel = 3,
                coef = 0.429,
            },
        }
    },
    [18879] = { -- Siphon Life(Rank 2)
        spellLevel = 38,
        maxLevel = 48,
        duration = 30,
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 22,
                coef = 0.05,
            },
        }
    },
    [18880] = { -- Siphon Life(Rank 3)
        spellLevel = 48,
        maxLevel = 58,
        duration = 30,
        baseCost = 285,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 33,
                coef = 0.05,
            },
        }
    },
    [18881] = { -- Siphon Life(Rank 4)
        spellLevel = 58,
        maxLevel = 68,
        duration = 30,
        baseCost = 365,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 45,
                coef = 0.05,
            },
        }
    },
    [18930] = { -- Conflagrate(Rank 2)
        spellLevel = 48,
        maxLevel = 54,
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 2,
                min = 316,
                max = 397,
                perLevel = 1.8,
                coef = 0.429,
            },
        }
    },
    [18931] = { -- Conflagrate(Rank 3)
        spellLevel = 54,
        maxLevel = 60,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 2,
                min = 383,
                max = 480,
                perLevel = 2,
                coef = 0.429,
            },
        }
    },
    [18932] = { -- Conflagrate(Rank 4)
        spellLevel = 60,
        maxLevel = 66,
        baseCost = 255,
        effects = {
            [1] = {
                effectType = 2,
                min = 447,
                max = 558,
                perLevel = 2.2,
                coef = 0.429,
            },
        }
    },
    [25307] = { -- Shadow Bolt(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 2,
                min = 482,
                max = 539,
                perLevel = 3.1,
                coef = 0.857,
            },
        }
    },
    [25309] = { -- Immolate(Rank 8)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 2,
                min = 279,
                perLevel = 3.9,
                coef = 0.2,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 102,
                coef = 0.13,
            },
        }
    },
    [25311] = { -- Corruption(Rank 7)
        spellLevel = 60,
        maxLevel = 65,
        duration = 18,
        baseCost = 340,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 137,
                coef = 0.167,
            },
        }
    },
    [28610] = { -- Shadow Ward(Rank 4)
        spellLevel = 60,
        maxLevel = 0,
        duration = 30,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 920,
                coef = 0,
            },
        }
    },
};

_addon.spellClassSet = {
    [1] = {
        [1] = {
            686, -- Shadow Bolt(Rank 1)
            695, -- Shadow Bolt(Rank 2)
            705, -- Shadow Bolt(Rank 3)
            1088, -- Shadow Bolt(Rank 4)
            1106, -- Shadow Bolt(Rank 5)
            7641, -- Shadow Bolt(Rank 6)
            11659, -- Shadow Bolt(Rank 7)
            11660, -- Shadow Bolt(Rank 8)
            11661, -- Shadow Bolt(Rank 9)
            25307, -- Shadow Bolt(Rank 10)
        },
        [2] = {
            172, -- Corruption(Rank 1)
            6222, -- Corruption(Rank 2)
            6223, -- Corruption(Rank 3)
            7648, -- Corruption(Rank 4)
            11671, -- Corruption(Rank 5)
            11672, -- Corruption(Rank 6)
            18376, -- Corruption
            21068, -- Corruption
            25311, -- Corruption(Rank 7)
        },
        [4] = {
            265, -- Area Death (TEST)
            348, -- Immolate(Rank 1)
            707, -- Immolate(Rank 2)
            1094, -- Immolate(Rank 3)
            2941, -- Immolate(Rank 4)
            11665, -- Immolate(Rank 5)
            11667, -- Immolate(Rank 6)
            11668, -- Immolate(Rank 7)
            12256, -- Add Moogly Radius (PT)
            13716, -- AOD
            25309, -- Immolate(Rank 8)
            30879, -- Permanent Area Damage 50k(QASpell)
        },
        [8] = {
            689, -- Drain Life(Rank 1)
            699, -- Drain Life(Rank 2)
            709, -- Drain Life(Rank 3)
            7651, -- Drain Life(Rank 4)
            11699, -- Drain Life(Rank 5)
            11700, -- Drain Life(Rank 6)
        },
        [16] = {
            5138, -- Drain Mana(Rank 1)
            6226, -- Drain Mana(Rank 2)
            11703, -- Drain Mana(Rank 3)
            11704, -- Drain Mana(Rank 4)
            18394, -- Drain Mana(Rank 1)
        },
        [32] = {
            5740, -- Rain of Fire(Rank 1)
            6219, -- Rain of Fire(Rank 2)
            11677, -- Rain of Fire(Rank 3)
            11678, -- Rain of Fire(Rank 4)
        },
        [64] = {
            1949, -- Hellfire(Rank 1)
            5857, -- Hellfire Effect(Rank 1)
            6353, -- Soul Fire(Rank 1)
            11681, -- Hellfire Effect(Rank 2)
            11682, -- Hellfire Effect(Rank 3)
            11683, -- Hellfire(Rank 2)
            11684, -- Hellfire(Rank 3)
            17924, -- Soul Fire(Rank 2)
            24826, -- Infernal Fire
        },
        [128] = {
            17877, -- Shadowburn(Rank 1)
            18867, -- Shadowburn(Rank 2)
            18868, -- Shadowburn(Rank 3)
            18869, -- Shadowburn(Rank 4)
            18870, -- Shadowburn(Rank 5)
            18871, -- Shadowburn(Rank 6)
        },
        [256] = {
            5676, -- Searing Pain(Rank 1)
            17919, -- Searing Pain(Rank 2)
            17920, -- Searing Pain(Rank 3)
            17921, -- Searing Pain(Rank 4)
            17922, -- Searing Pain(Rank 5)
            17923, -- Searing Pain(Rank 6)
        },
        [512] = {
            17962, -- Conflagrate(Rank 1)
            18930, -- Conflagrate(Rank 2)
            18931, -- Conflagrate(Rank 3)
            18932, -- Conflagrate(Rank 4)
        },
        [1024] = {
            980, -- Curse of Agony(Rank 1)
            1014, -- Curse of Agony(Rank 2)
            6217, -- Curse of Agony(Rank 3)
            11711, -- Curse of Agony(Rank 4)
            11712, -- Curse of Agony(Rank 5)
            11713, -- Curse of Agony(Rank 6)
            28608, -- Test Curse of Agony(Rank 6)
        },
        [2048] = {
            1098, -- Enslave Demon(Rank 1)
            11725, -- Enslave Demon(Rank 2)
            11726, -- Enslave Demon(Rank 3)
            20882, -- Enslave Demon
        },
        [4096] = {
            3110, -- Firebolt(Rank 1)
            7799, -- Firebolt(Rank 2)
            7800, -- Firebolt(Rank 3)
            7801, -- Firebolt(Rank 4)
            7802, -- Firebolt(Rank 5)
            11762, -- Firebolt(Rank 6)
            11763, -- Firebolt(Rank 7)
            20801, -- Firebolt
        },
        [8192] = {
            7814, -- Lash of Pain(Rank 1)
            7815, -- Lash of Pain(Rank 2)
            7816, -- Lash of Pain(Rank 3)
            11778, -- Lash of Pain(Rank 4)
            11779, -- Lash of Pain(Rank 5)
            11780, -- Lash of Pain(Rank 6)
        },
        [16384] = {
            1120, -- Drain Soul(Rank 1)
            8288, -- Drain Soul(Rank 2)
            8289, -- Drain Soul(Rank 3)
            11675, -- Drain Soul(Rank 4)
        },
        [32768] = {
            702, -- Curse of Weakness(Rank 1)
            1108, -- Curse of Weakness(Rank 2)
            6205, -- Curse of Weakness(Rank 3)
            7646, -- Curse of Weakness(Rank 4)
            11707, -- Curse of Weakness(Rank 5)
            11708, -- Curse of Weakness(Rank 6)
        },
        [65536] = {
            5720, -- Healthstone
            5723, -- Greater Healthstone
            6262, -- Minor Healthstone
            6263, -- Lesser Healthstone
            11732, -- Major Healthstone
            18671, -- Curse of Agony
            23468, -- Minor Healthstone
            23469, -- Minor Healthstone
            23470, -- Lesser Healthstone
            23471, -- Lesser Healthstone
            23472, -- Healthstone
            23473, -- Healthstone
            23474, -- Greater Healthstone
            23475, -- Greater Healthstone
            23476, -- Major Healthstone
            23477, -- Major Healthstone
        },
        [131072] = {
            128, -- Spellstone
            17729, -- Greater Spellstone
            17730, -- Major Spellstone
        },
        [262144] = {
            1454, -- Life Tap(Rank 1)
            1455, -- Life Tap(Rank 2)
            1456, -- Life Tap(Rank 3)
            11687, -- Life Tap(Rank 4)
            11688, -- Life Tap(Rank 5)
            11689, -- Life Tap(Rank 6)
            24893, -- Black Sapphire
            31818, -- Life Tap
        },
        [524288] = {
            6789, -- Death Coil(Rank 1)
            17925, -- Death Coil(Rank 2)
            17926, -- Death Coil(Rank 3)
            28412, -- Death Coil
        },
        [1048576] = {
            693, -- Create Soulstone (Minor)
            2362, -- Create Spellstone
            5699, -- Create Healthstone
            6201, -- Create Healthstone (Minor)
            6202, -- Create Healthstone (Lesser)
            6366, -- Create Firestone (Lesser)
            11729, -- Create Healthstone (Greater)
            11730, -- Create Healthstone (Major)
            17727, -- Create Spellstone (Greater)
            17728, -- Create Spellstone (Major)
            17951, -- Create Firestone
            17952, -- Create Firestone (Greater)
            17953, -- Create Firestone (Major)
            20018, -- Create Healthstone (Major)
            20022, -- Create Soulstone
            20752, -- Create Soulstone (Lesser)
            20755, -- Create Soulstone
            20756, -- Create Soulstone (Greater)
            20757, -- Create Soulstone (Major)
            28023, -- Create Healthstone
        },
        [2097152] = {
            17809, -- Lesser Firestone Attack
            17933, -- Firestone Attack
            17934, -- Greater Firestone Attack
            17935, -- Major Firestone Attack
            23480, -- Increase Fire Dam 10(Rank 1)
            23481, -- Increase Fire Dam 14(Rank 2)
            23482, -- Increase Fire Dam 17(Rank 3)
            23483, -- Increase Fire Dam 21(Rank 4)
        },
        [4194304] = {
            18223, -- Curse of Exhaustion
        },
        [8388608] = {
            2947, -- Fire Shield(Rank 1)
            6307, -- Blood Pact(Rank 1)
            7804, -- Blood Pact(Rank 2)
            7805, -- Blood Pact(Rank 3)
            8316, -- Fire Shield(Rank 2)
            8317, -- Fire Shield(Rank 3)
            11766, -- Blood Pact(Rank 4)
            11767, -- Blood Pact(Rank 5)
            11770, -- Fire Shield(Rank 4)
            11771, -- Fire Shield(Rank 5)
        },
        [16777216] = {
            755, -- Health Funnel(Rank 1)
            3698, -- Health Funnel(Rank 2)
            3699, -- Health Funnel(Rank 3)
            3700, -- Health Funnel(Rank 4)
            11693, -- Health Funnel(Rank 5)
            11694, -- Health Funnel(Rank 6)
            11695, -- Health Funnel(Rank 7)
            19952, -- Heal Ragnaros
        },
        [33554432] = {
            3716, -- Torment(Rank 1)
            7809, -- Torment(Rank 2)
            7810, -- Torment(Rank 3)
            7811, -- Torment(Rank 4)
            7812, -- Sacrifice(Rank 1)
            11774, -- Torment(Rank 5)
            11775, -- Torment(Rank 6)
            17735, -- Suffering(Rank 1)
            17750, -- Suffering(Rank 2)
            17751, -- Suffering(Rank 3)
            17752, -- Suffering(Rank 4)
            17767, -- Consume Shadows(Rank 1)
            17850, -- Consume Shadows(Rank 2)
            17851, -- Consume Shadows(Rank 3)
            17852, -- Consume Shadows(Rank 4)
            17853, -- Consume Shadows(Rank 5)
            17854, -- Consume Shadows(Rank 6)
            19438, -- Sacrifice(Rank 2)
            19440, -- Sacrifice(Rank 3)
            19441, -- Sacrifice(Rank 4)
            19442, -- Sacrifice(Rank 5)
            19443, -- Sacrifice(Rank 6)
            26281, -- Taunt
            28447, -- Shadow Burst
        },
        [67108864] = {
            18727, -- Tamed Pet Passive (DND)
            18728, -- Tamed Pet Passive (DND)
            18729, -- Tamed Pet Passive (DND)
            18730, -- Tamed Pet Passive (DND)
        },
        [134217728] = {
            18735, -- Tamed Pet Passive (DND)
            18736, -- Tamed Pet Passive (DND)
            18737, -- Tamed Pet Passive (DND)
            18738, -- Tamed Pet Passive (DND)
        },
        [268435456] = {
            18739, -- Tamed Pet Passive (DND)
            18740, -- Tamed Pet Passive (DND)
            18741, -- Tamed Pet Passive (DND)
            18742, -- Tamed Pet Passive (DND)
        },
        [536870912] = {
            688, -- Summon Imp(Summon)
            691, -- Summon Felhunter(Summon)
            697, -- Summon Voidwalker(Summon)
            712, -- Summon Succubus(Summon)
            23500, -- Summon Felhunter
            23501, -- Summon Voidwalker
            23502, -- Summon Succubus
            23503, -- Summon Imp
            25112, -- Summon Voidwalker(Summon)
        },
        [1073741824] = {
            6358, -- Seduction
            6360, -- Soothing Kiss(Rank 1)
            7813, -- Soothing Kiss(Rank 2)
            7870, -- Lesser Invisibility
            11784, -- Soothing Kiss(Rank 3)
            11785, -- Soothing Kiss(Rank 4)
        },
        [2147483648] = {
            603, -- Curse of Doom
            704, -- Curse of Recklessness(Rank 1)
            1010, -- Curse of Idiocy(Rank 1)
            1490, -- Curse of the Elements(Rank 1)
            1714, -- Curse of Tongues(Rank 1)
            5484, -- Howl of Terror(Rank 1)
            5782, -- Fear(Rank 1)
            6213, -- Fear(Rank 2)
            6215, -- Fear(Rank 3)
            7658, -- Curse of Recklessness(Rank 2)
            7659, -- Curse of Recklessness(Rank 3)
            11717, -- Curse of Recklessness(Rank 4)
            11719, -- Curse of Tongues(Rank 2)
            11721, -- Curse of the Elements(Rank 2)
            11722, -- Curse of the Elements(Rank 3)
            17862, -- Curse of Shadow(Rank 1)
            17928, -- Howl of Terror(Rank 2)
            17937, -- Curse of Shadow(Rank 2)
            18220, -- Dark Pact(Rank 1)
            18937, -- Dark Pact(Rank 2)
            18938, -- Dark Pact(Rank 3)
        },
    },
    [2] = {
        [1] = {
            18265, -- Siphon Life(Rank 1)
            18879, -- Siphon Life(Rank 2)
            18880, -- Siphon Life(Rank 3)
            18881, -- Siphon Life(Rank 4)
        },
        [2] = {
            603, -- Curse of Doom
        },
    },
    [3] = {
    },
    [4] = {
    },
};


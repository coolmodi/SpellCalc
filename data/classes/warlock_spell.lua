-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(686)] = { -- Shadow Bolt
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(348)] = { -- Immolate
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(172)] = { -- Corruption
        school = 6,
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
    [GetSpellInfo(755)] = { -- Health Funnel
        school = 6,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(689)] = { -- Drain Life
        school = 6,
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
        noCrit = true,
    },
    [GetSpellInfo(17877)] = { -- Shadowburn
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(1949)] = { -- Hellfire
        school = 3,
        isChannel = true,
        defType = 1,
        noCrit = true,
    },
    [GetSpellInfo(6229)] = { -- Shadow Ward
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(18265)] = { -- Siphon Life
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(6789)] = { -- Death Coil
        school = 6,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(6353)] = { -- Soul Fire
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(17962)] = { -- Conflagrate
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(603)] = { -- Curse of Doom
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(27243)] = { -- Seed of Corruption
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(30108)] = { -- Unstable Affliction
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(29722)] = { -- Incinerate
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(30283)] = { -- Shadowfury
        school = 6,
        isBinary = true,
        GCD = 0.5,
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
                coef = 0.0624,
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
    [603] = { -- Curse of Doom(Rank 1)
        spellLevel = 60,
        maxLevel = 69,
        duration = 60,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 60,
                min = 3200,
                coef = 2,
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
                coef = 0.111,
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
                coef = 0.143,
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
                coef = 0.143,
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
                coef = 0.2,
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
                coef = 0.0548,
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
                coef = 0.0923,
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
                coef = 0.268,
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
                coef = 0.095,
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
                coef = 0.286,
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
                coef = 0.286,
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
                coef = 0.286,
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
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 42,
                perLevel = 0.3,
                coef = 0.286,
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
                coef = 0.1,
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
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 96,
                perLevel = 0.4,
                coef = 0.286,
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
                coef = 0.121,
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
                coef = 0.156,
            },
        }
    },
    [6229] = { -- Shadow Ward(Rank 1)
        spellLevel = 32,
        maxLevel = 41,
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
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 2,
                min = 623,
                max = 784,
                perLevel = 2.9,
                coef = 1.15,
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
        baseCost = 365,
        effects = {
            [1] = {
                effectType = 9,
                min = 244,
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
                coef = 0.156,
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
                coef = 0.143,
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
                coef = 0.429,
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
                coef = 0.429,
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
                coef = 0.156,
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
                coef = 0.156,
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
                coef = 0.429,
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
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 155,
                perLevel = 0.5,
                coef = 0.286,
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
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 226,
                perLevel = 0.6,
                coef = 0.286,
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
                coef = 0.095,
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
                coef = 0.095,
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
                coef = 0.286,
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
                coef = 0.286,
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
                coef = 0.286,
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
                coef = 0.143,
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
                coef = 0.143,
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
                coef = 0.1,
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
                coef = 0.1,
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
                coef = 0.1,
            },
        }
    },
    [11739] = { -- Shadow Ward(Rank 2)
        spellLevel = 42,
        maxLevel = 51,
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
        maxLevel = 59,
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
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
                min = 703,
                max = 882,
                perLevel = 3.1,
                coef = 1.15,
            },
        }
    },
    [17925] = { -- Death Coil(Rank 2)
        spellLevel = 50,
        maxLevel = 56,
        duration = 3,
        baseCost = 420,
        effects = {
            [1] = {
                effectType = 9,
                min = 319,
                perLevel = 2.6,
                coef = 0.214,
            },
        }
    },
    [17926] = { -- Death Coil(Rank 3)
        spellLevel = 58,
        maxLevel = 64,
        duration = 3,
        baseCost = 480,
        effects = {
            [1] = {
                effectType = 9,
                min = 400,
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
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 15,
                coef = 0.1,
            },
        }
    },
    [18867] = { -- Shadowburn(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
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
        baseCost = 190,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 22,
                coef = 0.1,
            },
        }
    },
    [18880] = { -- Siphon Life(Rank 3)
        spellLevel = 48,
        maxLevel = 58,
        duration = 30,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 33,
                coef = 0.1,
            },
        }
    },
    [18881] = { -- Siphon Life(Rank 4)
        spellLevel = 58,
        maxLevel = 62,
        duration = 30,
        baseCost = 310,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 45,
                coef = 0.1,
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
        maxLevel = 64,
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
        maxLevel = 64,
        duration = 18,
        baseCost = 340,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 137,
                coef = 0.156,
            },
        }
    },
    [27209] = { -- Shadow Bolt(Rank 11)
        spellLevel = 69,
        maxLevel = 74,
        baseCost = 420,
        effects = {
            [1] = {
                effectType = 2,
                min = 541,
                max = 604,
                perLevel = 3.4,
                coef = 0.857,
            },
        }
    },
    [27210] = { -- Searing Pain(Rank 7)
        spellLevel = 65,
        maxLevel = 69,
        baseCost = 191,
        effects = {
            [1] = {
                effectType = 2,
                min = 243,
                max = 288,
                perLevel = 2.4,
                coef = 0.429,
            },
        }
    },
    [27211] = { -- Soul Fire(Rank 3)
        spellLevel = 64,
        maxLevel = 68,
        baseCost = 215,
        effects = {
            [1] = {
                effectType = 2,
                min = 839,
                max = 1052,
                perLevel = 3.5,
                coef = 1.15,
            },
        }
    },
    [27212] = { -- Rain of Fire(Rank 5)
        spellLevel = 69,
        maxLevel = 74,
        duration = 8,
        baseCost = 1480,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 303,
                perLevel = 0.8,
                coef = 0.286,
            },
        }
    },
    [27213] = { -- Hellfire(Rank 4)
        spellLevel = 68,
        maxLevel = 78,
        duration = 15,
        baseCost = 1665,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 306,
                perLevel = 0.8,
                coef = 0.143,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                min = 306,
                perLevel = 0.8,
                coef = 0.095,
            },
        }
    },
    [27215] = { -- Immolate(Rank 9)
        spellLevel = 69,
        maxLevel = 74,
        duration = 15,
        baseCost = 445,
        effects = {
            [1] = {
                effectType = 2,
                min = 327,
                perLevel = 4.3,
                coef = 0.2,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 123,
                coef = 0.13,
            },
        }
    },
    [27216] = { -- Corruption(Rank 8)
        spellLevel = 65,
        maxLevel = 70,
        duration = 18,
        baseCost = 370,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 150,
                coef = 0.156,
            },
        }
    },
    [27217] = { -- Drain Soul(Rank 5)
        spellLevel = 67,
        maxLevel = 0,
        duration = 15,
        baseCost = 360,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 124,
                coef = 0.429,
            },
        }
    },
    [27218] = { -- Curse of Agony(Rank 7)
        spellLevel = 67,
        maxLevel = 0,
        duration = 24,
        baseCost = 265,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 113,
                coef = 0.1,
            },
        }
    },
    [27219] = { -- Drain Life(Rank 7)
        spellLevel = 62,
        maxLevel = 67,
        duration = 5,
        baseCost = 355,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                min = 87,
                coef = 0.143,
            },
        }
    },
    [27220] = { -- Drain Life(Rank 8)
        spellLevel = 69,
        maxLevel = 74,
        duration = 5,
        baseCost = 425,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                min = 108,
                coef = 0.143,
            },
        }
    },
    [27223] = { -- Death Coil(Rank 4)
        spellLevel = 68,
        maxLevel = 74,
        duration = 3,
        baseCost = 600,
        effects = {
            [1] = {
                effectType = 9,
                min = 519,
                perLevel = 3.4,
                coef = 0.214,
            },
        }
    },
    [27243] = { -- Seed of Corruption(Rank 1)
        spellLevel = 70,
        maxLevel = 0,
        duration = 18,
        baseCost = 882,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 174,
                coef = 0.25,
            },
            [2] = {
                effectType = 64,
                min = 27285,
                coef = 0,
            },
        }
    },
    [27259] = { -- Health Funnel(Rank 8)
        spellLevel = 67,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                min = 188,
                coef = 0.286,
            },
        }
    },
    [27263] = { -- Shadowburn(Rank 7)
        spellLevel = 63,
        maxLevel = 69,
        baseCost = 435,
        effects = {
            [1] = {
                effectType = 2,
                min = 518,
                max = 579,
                perLevel = 3.4,
                coef = 0.429,
            },
        }
    },
    [27264] = { -- Siphon Life(Rank 5)
        spellLevel = 63,
        maxLevel = 69,
        duration = 30,
        baseCost = 350,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 52,
                coef = 0.1,
            },
        }
    },
    [27266] = { -- Conflagrate(Rank 5)
        spellLevel = 65,
        maxLevel = 69,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 2,
                min = 512,
                max = 639,
                perLevel = 2.4,
                coef = 0.429,
            },
        }
    },
    [27285] = { -- Seed of Corruption(Rank 1)
        spellLevel = 70,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                min = 1110,
                max = 1291,
                coef = 0.214,
            },
        }
    },
    [28610] = { -- Shadow Ward(Rank 4)
        spellLevel = 60,
        maxLevel = 69,
        duration = 30,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 875,
                coef = 0,
            },
        }
    },
    [29722] = { -- Incinerate(Rank 1)
        spellLevel = 64,
        maxLevel = 69,
        baseCost = 325,
        effects = {
            [1] = {
                effectType = 2,
                min = 403,
                max = 468,
                perLevel = 2.6,
                coef = 0.714,
            },
        }
    },
    [30108] = { -- Unstable Affliction(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 18,
        baseCost = 270,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 110,
                coef = 0.2,
            },
        }
    },
    [30283] = { -- Shadowfury(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 2,
        baseCost = 440,
        effects = {
            [1] = {
                effectType = 2,
                min = 343,
                max = 408,
                perLevel = 1.6,
                coef = 0.193,
            },
        }
    },
    [30404] = { -- Unstable Affliction(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 18,
        baseCost = 330,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 140,
                coef = 0.2,
            },
        }
    },
    [30405] = { -- Unstable Affliction(Rank 3)
        spellLevel = 70,
        maxLevel = 79,
        duration = 18,
        baseCost = 400,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 175,
                coef = 0.2,
            },
        }
    },
    [30413] = { -- Shadowfury(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 2,
        baseCost = 545,
        effects = {
            [1] = {
                effectType = 2,
                min = 459,
                max = 548,
                perLevel = 1.9,
                coef = 0.193,
            },
        }
    },
    [30414] = { -- Shadowfury(Rank 3)
        spellLevel = 70,
        maxLevel = 79,
        duration = 2,
        baseCost = 710,
        effects = {
            [1] = {
                effectType = 2,
                min = 612,
                max = 729,
                perLevel = 2.2,
                coef = 0.193,
            },
        }
    },
    [30459] = { -- Searing Pain(Rank 8)
        spellLevel = 70,
        maxLevel = 76,
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 2,
                min = 270,
                max = 321,
                perLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [30545] = { -- Soul Fire(Rank 4)
        spellLevel = 70,
        maxLevel = 76,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 2,
                min = 1003,
                max = 1258,
                perLevel = 3.8,
                coef = 1.15,
            },
        }
    },
    [30546] = { -- Shadowburn(Rank 8)
        spellLevel = 70,
        maxLevel = 76,
        baseCost = 515,
        effects = {
            [1] = {
                effectType = 2,
                min = 597,
                max = 666,
                perLevel = 3.8,
                coef = 0.429,
            },
        }
    },
    [30910] = { -- Curse of Doom(Rank 2)
        spellLevel = 70,
        maxLevel = 0,
        duration = 60,
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 60,
                min = 4200,
                coef = 2,
            },
        }
    },
    [30911] = { -- Siphon Life(Rank 6)
        spellLevel = 70,
        maxLevel = 76,
        duration = 30,
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                min = 63,
                coef = 0.1,
            },
        }
    },
    [30912] = { -- Conflagrate(Rank 6)
        spellLevel = 70,
        maxLevel = 74,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 2,
                min = 579,
                max = 722,
                perLevel = 2.5,
                coef = 0.429,
            },
        }
    },
    [32231] = { -- Incinerate(Rank 2)
        spellLevel = 70,
        maxLevel = 77,
        baseCost = 355,
        effects = {
            [1] = {
                effectType = 2,
                min = 444,
                max = 515,
                perLevel = 2.8,
                coef = 0.714,
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
            27209, -- Shadow Bolt(Rank 11)
            34177, -- QA Damage Coefficient 1(QASpell)
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
            27216, -- Corruption(Rank 8)
            30938, -- Corruption
            31405, -- Corruption
            32063, -- Corruption
            32197, -- Corruption
            37113, -- Corruption
            39212, -- Corruption
            39621, -- Corruption
            41988, -- Corruption
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
            27215, -- Immolate(Rank 9)
            30879, -- Permanent Area Damage 50k(QASpell)
            35958, -- Mana Bomb Explosion
            44267, -- Immolate
            46191, -- Immolate
        },
        [8] = {
            689, -- Drain Life(Rank 1)
            699, -- Drain Life(Rank 2)
            709, -- Drain Life(Rank 3)
            7651, -- Drain Life(Rank 4)
            11699, -- Drain Life(Rank 5)
            11700, -- Drain Life(Rank 6)
            27219, -- Drain Life(Rank 7)
            27220, -- Drain Life(Rank 8)
            30412, -- Drain Life
        },
        [16] = {
            5138, -- Drain Mana(Rank 1)
            6226, -- Drain Mana(Rank 2)
            11703, -- Drain Mana(Rank 3)
            11704, -- Drain Mana(Rank 4)
            27221, -- Drain Mana(Rank 5)
            30908, -- Drain Mana(Rank 6)
        },
        [32] = {
            5740, -- Rain of Fire(Rank 1)
            6219, -- Rain of Fire(Rank 2)
            11677, -- Rain of Fire(Rank 3)
            11678, -- Rain of Fire(Rank 4)
            27212, -- Rain of Fire(Rank 5)
            39273, -- Rain of Fire(Rank 1)
            42218, -- Rain of Fire(Rank 5)
            42223, -- Rain of Fire(Rank 1)
            42224, -- Rain of Fire(Rank 2)
            42225, -- Rain of Fire(Rank 3)
            42226, -- Rain of Fire(Rank 4)
            42227, -- Rain of Fire(Rank 1)
        },
        [64] = {
            1949, -- Hellfire(Rank 1)
            5857, -- Hellfire Effect(Rank 1)
            11681, -- Hellfire Effect(Rank 2)
            11682, -- Hellfire Effect(Rank 3)
            11683, -- Hellfire(Rank 2)
            11684, -- Hellfire(Rank 3)
            24826, -- Infernal Fire
            27213, -- Hellfire(Rank 4)
            27214, -- Hellfire Effect(Rank 4)
            30859, -- Hellfire
            30860, -- Hellfire Effect
            33915, -- Void Drain
            34659, -- Hellfire
            34660, -- Hellfire
            36311, -- Scan Ground Effect
            39055, -- Flames of Chaos
            39056, -- Flames of Chaos
            39131, -- Hellfire
            39132, -- Hellfire
            40717, -- Hellfire
            40718, -- Hellfire
            42270, -- Hellfire
            43438, -- Hellfire
            43465, -- Hellfire
            45024, -- Russell's Test Hellfire Effect!!(Rank 1)
        },
        [128] = {
            17877, -- Shadowburn(Rank 1)
            18867, -- Shadowburn(Rank 2)
            18868, -- Shadowburn(Rank 3)
            18869, -- Shadowburn(Rank 4)
            18870, -- Shadowburn(Rank 5)
            18871, -- Shadowburn(Rank 6)
            27263, -- Shadowburn(Rank 7)
            30546, -- Shadowburn(Rank 8)
        },
        [256] = {
            5676, -- Searing Pain(Rank 1)
            17919, -- Searing Pain(Rank 2)
            17920, -- Searing Pain(Rank 3)
            17921, -- Searing Pain(Rank 4)
            17922, -- Searing Pain(Rank 5)
            17923, -- Searing Pain(Rank 6)
            27210, -- Searing Pain(Rank 7)
            30459, -- Searing Pain(Rank 8)
        },
        [512] = {
            17962, -- Conflagrate(Rank 1)
            18930, -- Conflagrate(Rank 2)
            18931, -- Conflagrate(Rank 3)
            18932, -- Conflagrate(Rank 4)
            27266, -- Conflagrate(Rank 5)
            30912, -- Conflagrate(Rank 6)
            31425, -- Spore Explode
            32327, -- Spore Explosion
            32328, -- Spore Eruption
            37966, -- Spore Explosion
            41960, -- Incinerate
        },
        [1024] = {
            980, -- Curse of Agony(Rank 1)
            1014, -- Curse of Agony(Rank 2)
            6217, -- Curse of Agony(Rank 3)
            11711, -- Curse of Agony(Rank 4)
            11712, -- Curse of Agony(Rank 5)
            11713, -- Curse of Agony(Rank 6)
            27218, -- Curse of Agony(Rank 7)
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
            27267, -- Firebolt(Rank 8)
            30050, -- Firebolt
            30180, -- Firebolt
            31707, -- Waterbolt
            36227, -- Firebolt
            36905, -- Firebolt
            36906, -- Firebolt
            38239, -- Firebolt
            39022, -- Firebolt
            39023, -- Firebolt
            44164, -- Firebolt
            44577, -- Firebolt
            46044, -- Firebolt
        },
        [8192] = {
            7814, -- Lash of Pain(Rank 1)
            7815, -- Lash of Pain(Rank 2)
            7816, -- Lash of Pain(Rank 3)
            11778, -- Lash of Pain(Rank 4)
            11779, -- Lash of Pain(Rank 5)
            11780, -- Lash of Pain(Rank 6)
            27274, -- Lash of Pain(Rank 7)
        },
        [16384] = {
            1120, -- Drain Soul(Rank 1)
            8288, -- Drain Soul(Rank 2)
            8289, -- Drain Soul(Rank 3)
            11675, -- Drain Soul(Rank 4)
            27217, -- Drain Soul(Rank 5)
        },
        [32768] = {
            702, -- Curse of Weakness(Rank 1)
            1108, -- Curse of Weakness(Rank 2)
            6205, -- Curse of Weakness(Rank 3)
            7646, -- Curse of Weakness(Rank 4)
            11707, -- Curse of Weakness(Rank 5)
            11708, -- Curse of Weakness(Rank 6)
            27224, -- Curse of Weakness(Rank 7)
            30909, -- Curse of Weakness(Rank 8)
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
            27235, -- Master Healthstone
            27236, -- Master Healthstone
            27237, -- Master Healthstone
            41237, -- Charged Crystal Focus
        },
        [131072] = {
            32789, -- Spellstone Critical Bonus
            32793, -- Spellstone Critical Bonus
            32794, -- Spellstone Critical Bonus
            32795, -- Spellstone Critical Bonus
        },
        [262144] = {
            1454, -- Life Tap(Rank 1)
            1455, -- Life Tap(Rank 2)
            1456, -- Life Tap(Rank 3)
            11687, -- Life Tap(Rank 4)
            11688, -- Life Tap(Rank 5)
            11689, -- Life Tap(Rank 6)
            24893, -- Black Sapphire
            27222, -- Life Tap(Rank 7)
            31818, -- Life Tap
            32553, -- Life Tap
            32554, -- Drain Mana
        },
        [524288] = {
            6789, -- Death Coil(Rank 1)
            17925, -- Death Coil(Rank 2)
            17926, -- Death Coil(Rank 3)
            27223, -- Death Coil(Rank 4)
            28412, -- Death Coil
            46283, -- Death Coil
        },
        [1048576] = {
            693, -- Create Soulstone(Rank 1)
            2362, -- Create Spellstone(Rank 1)
            5699, -- Create Healthstone(Rank 3)
            6201, -- Create Healthstone(Rank 1)
            6202, -- Create Healthstone(Rank 2)
            6366, -- Create Firestone(Rank 1)
            11729, -- Create Healthstone(Rank 4)
            11730, -- Create Healthstone(Rank 5)
            17727, -- Create Spellstone(Rank 2)
            17728, -- Create Spellstone(Rank 3)
            17951, -- Create Firestone(Rank 2)
            17952, -- Create Firestone(Rank 3)
            17953, -- Create Firestone(Rank 4)
            20018, -- Create Healthstone (Major)
            20022, -- Create Soulstone
            20752, -- Create Soulstone(Rank 2)
            20755, -- Create Soulstone(Rank 3)
            20756, -- Create Soulstone(Rank 4)
            20757, -- Create Soulstone(Rank 5)
            27230, -- Create Healthstone(Rank 6)
            27238, -- Create Soulstone(Rank 6)
            27250, -- Create Firestone(Rank 5)
            28023, -- Create Healthstone
            28172, -- Create Spellstone(Rank 4)
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
            27253, -- Master Firestone Attack
            27256, -- Increase Fire Dam 30(Rank 5)
        },
        [4194304] = {
            18223, -- Curse of Exhaustion
            29539, -- Curse of Exhaustion
            29540, -- Curse of Past Burdens
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
            27268, -- Blood Pact(Rank 6)
            27269, -- Fire Shield(Rank 6)
            36907, -- Fire Shield
            38027, -- Boiling Blood
            41230, -- Prophecy of Blood
            41231, -- Prophecy of Blood
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
            27259, -- Health Funnel(Rank 8)
            40671, -- Health Funnel
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
            27270, -- Torment(Rank 7)
            27271, -- Suffering(Rank 5)
            27272, -- Consume Shadows(Rank 7)
            27273, -- Sacrifice(Rank 7)
            27599, -- Shadows Consumed(Rank 7)
            28447, -- Shadow Burst
            32324, -- Shadow Burst
            33698, -- Anguish(Rank 1)
            33699, -- Anguish(Rank 2)
            33700, -- Anguish(Rank 3)
            33701, -- Suffering(Rank 6)
            36472, -- Consume Shadows
        },
        [67108864] = {
            18727, -- Tamed Pet Passive (DND)
            18728, -- Tamed Pet Passive (DND)
            18729, -- Tamed Pet Passive (DND)
            18730, -- Tamed Pet Passive (DND)
            30147, -- Tamed Pet Passive (DND)
        },
        [134217728] = {
            18735, -- Tamed Pet Passive (DND)
            18736, -- Tamed Pet Passive (DND)
            18737, -- Tamed Pet Passive (DND)
            18738, -- Tamed Pet Passive (DND)
            30148, -- Tamed Pet Passive (DND)
        },
        [268435456] = {
            18739, -- Tamed Pet Passive (DND)
            18740, -- Tamed Pet Passive (DND)
            18741, -- Tamed Pet Passive (DND)
            18742, -- Tamed Pet Passive (DND)
            30149, -- Tamed Pet Passive (DND)
        },
        [536870912] = {
            688, -- Summon Imp(Summon)
            691, -- Summon Felhunter(Summon)
            697, -- Summon Voidwalker(Summon)
            712, -- Summon Succubus(Summon)
            25112, -- Summon Voidwalker(Summon)
            30146, -- Summon Felguard(Summon)
        },
        [1073741824] = {
            6358, -- Seduction
            6360, -- Soothing Kiss(Rank 1)
            7813, -- Soothing Kiss(Rank 2)
            7870, -- Lesser Invisibility
            11784, -- Soothing Kiss(Rank 3)
            11785, -- Soothing Kiss(Rank 4)
            27275, -- Soothing Kiss(Rank 5)
            29516, -- Dance Trance
            36241, -- Mad Seduction
            36274, -- Mad Seduced
            36661, -- Confused Ogre
            37200, -- Confused Cansis
        },
        [2147483648] = {
            704, -- Curse of Recklessness(Rank 1)
            1010, -- Curse of Idiocy(Rank 1)
            1714, -- Curse of Tongues(Rank 1)
            7658, -- Curse of Recklessness(Rank 2)
            7659, -- Curse of Recklessness(Rank 3)
            11717, -- Curse of Recklessness(Rank 4)
            11719, -- Curse of Tongues(Rank 2)
            18220, -- Dark Pact(Rank 1)
            18937, -- Dark Pact(Rank 2)
            18938, -- Dark Pact(Rank 3)
            27226, -- Curse of Recklessness(Rank 5)
            27265, -- Dark Pact(Rank 4)
            30659, -- Fel Infusion
            32386, -- Shadow Embrace
            32388, -- Shadow Embrace
            32389, -- Shadow Embrace
            32390, -- Shadow Embrace
            32391, -- Shadow Embrace
            40845, -- Fury
            40851, -- Disgruntled
        },
    },
    [2] = {
        [1] = {
            18265, -- Siphon Life(Rank 1)
            18879, -- Siphon Life(Rank 2)
            18880, -- Siphon Life(Rank 3)
            18881, -- Siphon Life(Rank 4)
            27264, -- Siphon Life(Rank 5)
            30911, -- Siphon Life(Rank 6)
            35195, -- Siphon Life
            41597, -- Siphon Life
        },
        [2] = {
            603, -- Curse of Doom(Rank 1)
            30910, -- Curse of Doom(Rank 2)
        },
        [8] = {
            5484, -- Howl of Terror(Rank 1)
            17928, -- Howl of Terror(Rank 2)
        },
        [16] = {
            27243, -- Seed of Corruption(Rank 1)
            27285, -- Seed of Corruption(Rank 1)
            43991, -- Seed of Corruption(Rank 1)
        },
        [32] = {
            706, -- Demon Armor(Rank 1)
            1086, -- Demon Armor(Rank 2)
            11733, -- Demon Armor(Rank 3)
            11734, -- Demon Armor(Rank 4)
            11735, -- Demon Armor(Rank 5)
            27260, -- Demon Armor(Rank 6)
            28176, -- Fel Armor(Rank 1)
            28189, -- Fel Armor(Rank 2)
            44520, -- Fel Armor(Rank 2)
            44977, -- Fel Armor(Rank 2)
        },
        [64] = {
            29722, -- Incinerate(Rank 1)
            32231, -- Incinerate(Rank 2)
            36832, -- Incinerate
            38918, -- Incinerate
        },
        [128] = {
            6353, -- Soul Fire(Rank 1)
            17924, -- Soul Fire(Rank 2)
            27211, -- Soul Fire(Rank 3)
            30545, -- Soul Fire(Rank 4)
        },
        [256] = {
            30108, -- Unstable Affliction(Rank 1)
            30404, -- Unstable Affliction(Rank 2)
            30405, -- Unstable Affliction(Rank 3)
            34438, -- Unstable Affliction
            34439, -- Unstable Affliction
            35183, -- Unstable Affliction
        },
        [512] = {
            1490, -- Curse of the Elements(Rank 1)
            11721, -- Curse of the Elements(Rank 2)
            11722, -- Curse of the Elements(Rank 3)
            17862, -- Curse of Shadow(Rank 1)
            17937, -- Curse of Shadow(Rank 2)
            27228, -- Curse of the Elements(Rank 4)
            27229, -- Curse of Shadow(Rank 3)
            36541, -- Curse of Burning Shadows
            36831, -- Curse of the Elements
            44332, -- Curse of the Elements
        },
        [1024] = {
            5782, -- Fear(Rank 1)
            6213, -- Fear(Rank 2)
            6215, -- Fear(Rank 3)
        },
        [4096] = {
            30283, -- Shadowfury(Rank 1)
            30413, -- Shadowfury(Rank 2)
            30414, -- Shadowfury(Rank 3)
            35373, -- Shadowfury
            39082, -- Shadowfury
        },
        [8192] = {
            35695, -- Pet Passive (DND)
        },
        [16384] = {
            35697, -- Pet Passive (DND)
        },
        [32768] = {
            27285, -- Seed of Corruption(Rank 1)
            43991, -- Seed of Corruption(Rank 1)
        },
    },
    [3] = {
    },
    [4] = {
    },
};


-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {
    [172] = { -- Corruption(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 12,
        baseCost = 35,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 10,
                valueRange = 0,
                coef = 0.07999999821,
                coefAP = 0,
            },
        }
    },
    [348] = { -- Immolate(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        duration = 15,
        baseCost = 25,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 8,
                valueRange = 0,
                valuePerLevel = 0.60000002384,
                coef = 0.05799999833,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 4,
                valueRange = 0,
                coef = 0.03700000048,
                coefAP = 0,
            },
        }
    },
    [603] = { -- Curse of Doom
        spellLevel = 60,
        maxLevel = 0,
        duration = 60,
        baseCost = 300,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 60,
                valueBase = 3200,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [686] = { -- Shadow Bolt(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 12,
                valueRange = 4,
                valuePerLevel = 0.40000000596,
                coef = 0.1400000006,
                coefAP = 0,
            },
        }
    },
    [689] = { -- Drain Life(Rank 1)
        spellLevel = 14,
        maxLevel = 19,
        duration = 5,
        baseCost = 55,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 10,
                valueRange = 0,
                coef = 0.07800000161,
                coefAP = 0,
            },
        }
    },
    [695] = { -- Shadow Bolt(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 40,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 23,
                valueRange = 6,
                valuePerLevel = 0.60000002384,
                coef = 0.29899999499,
                coefAP = 0,
            },
        }
    },
    [699] = { -- Drain Life(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        duration = 5,
        baseCost = 85,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 17,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [705] = { -- Shadow Bolt(Rank 3)
        spellLevel = 12,
        maxLevel = 17,
        baseCost = 70,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 48,
                valueRange = 8,
                valuePerLevel = 0.89999997616,
                coef = 0.56000000238,
                coefAP = 0,
            },
        }
    },
    [707] = { -- Immolate(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 15,
        baseCost = 45,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 19,
                valueRange = 0,
                valuePerLevel = 0.89999997616,
                coef = 0.125,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 8,
                valueRange = 0,
                coef = 0.08100000024,
                coefAP = 0,
            },
        }
    },
    [709] = { -- Drain Life(Rank 3)
        spellLevel = 30,
        maxLevel = 35,
        duration = 5,
        baseCost = 135,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 29,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [755] = { -- Health Funnel(Rank 1)
        spellLevel = 12,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 12,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [980] = { -- Curse of Agony(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 24,
        baseCost = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 7,
                valueRange = 0,
                coef = 0.04600000009,
                coefAP = 0,
            },
        }
    },
    [1014] = { -- Curse of Agony(Rank 2)
        spellLevel = 18,
        maxLevel = 0,
        duration = 24,
        baseCost = 50,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 15,
                valueRange = 0,
                coef = 0.07699999958,
                coefAP = 0,
            },
        }
    },
    [1088] = { -- Shadow Bolt(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 110,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 86,
                valueRange = 12,
                valuePerLevel = 1.20000004768,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [1094] = { -- Immolate(Rank 3)
        spellLevel = 20,
        maxLevel = 25,
        duration = 15,
        baseCost = 90,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 45,
                valueRange = 0,
                valuePerLevel = 1.5,
                coef = 0.20000000298,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 18,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [1106] = { -- Shadow Bolt(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 160,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 142,
                valueRange = 20,
                valuePerLevel = 1.60000002384,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [1120] = { -- Drain Soul(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 15,
        baseCost = 55,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 11,
                valueRange = 0,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [1949] = { -- Hellfire(Rank 1)
        spellLevel = 30,
        maxLevel = 40,
        duration = 15,
        baseCost = 645,
        school = 3,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 83,
                valueRange = 0,
                valuePerLevel = 0.40000000596,
                coef = 0.02199999988,
                coefAP = 0,
            },
        }
    },
    [2941] = { -- Immolate(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        duration = 15,
        baseCost = 155,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 90,
                valueRange = 0,
                valuePerLevel = 2.09999990463,
                coef = 0.20000000298,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 33,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [3698] = { -- Health Funnel(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 24,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [3699] = { -- Health Funnel(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 43,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [3700] = { -- Health Funnel(Rank 4)
        spellLevel = 36,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 64,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [5676] = { -- Searing Pain(Rank 1)
        spellLevel = 18,
        maxLevel = 24,
        baseCost = 45,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 34,
                valueRange = 8,
                valuePerLevel = 0.69999998808,
                coef = 0.39599999785,
                coefAP = 0,
            },
        }
    },
    [5740] = { -- Rain of Fire(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCost = 295,
        school = 3,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 42,
                valueRange = 0,
                valuePerLevel = 0.30000001192,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [6217] = { -- Curse of Agony(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 24,
        baseCost = 90,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 27,
                valueRange = 0,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [6219] = { -- Rain of Fire(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        baseCost = 605,
        school = 3,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 96,
                valueRange = 0,
                valuePerLevel = 0.40000000596,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [6222] = { -- Corruption(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        duration = 15,
        baseCost = 55,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 18,
                valueRange = 0,
                coef = 0.15500000119,
                coefAP = 0,
            },
        }
    },
    [6223] = { -- Corruption(Rank 3)
        spellLevel = 24,
        maxLevel = 29,
        duration = 18,
        baseCost = 100,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 37,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [6229] = { -- Shadow Ward(Rank 1)
        spellLevel = 32,
        maxLevel = 0,
        duration = 30,
        baseCost = 135,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 290,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6353] = { -- Soul Fire(Rank 1)
        spellLevel = 48,
        maxLevel = 54,
        baseCost = 305,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 623,
                valueRange = 160,
                valuePerLevel = 2.90000009537,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [6603] = { -- Attack
        spellLevel = 0,
        maxLevel = 0,
        school = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 78,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6789] = { -- Death Coil(Rank 1)
        spellLevel = 42,
        maxLevel = 48,
        duration = 3,
        baseCost = 430,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 287,
                valueRange = 0,
                valuePerLevel = 2.20000004768,
                coef = 0.21400000155,
                coefAP = 0,
            },
        }
    },
    [7641] = { -- Shadow Bolt(Rank 6)
        spellLevel = 36,
        maxLevel = 41,
        baseCost = 210,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 204,
                valueRange = 26,
                valuePerLevel = 1.89999997616,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [7648] = { -- Corruption(Rank 4)
        spellLevel = 34,
        maxLevel = 39,
        duration = 18,
        baseCost = 160,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 54,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [7651] = { -- Drain Life(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        duration = 5,
        baseCost = 185,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 41,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [8288] = { -- Drain Soul(Rank 2)
        spellLevel = 24,
        maxLevel = 0,
        duration = 15,
        baseCost = 125,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 31,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [8289] = { -- Drain Soul(Rank 3)
        spellLevel = 38,
        maxLevel = 0,
        duration = 15,
        baseCost = 210,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 59,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [11659] = { -- Shadow Bolt(Rank 7)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 265,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 281,
                valueRange = 34,
                valuePerLevel = 2.29999995232,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [11660] = { -- Shadow Bolt(Rank 8)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 315,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 360,
                valueRange = 42,
                valuePerLevel = 2.59999990463,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [11661] = { -- Shadow Bolt(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 370,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 455,
                valueRange = 52,
                valuePerLevel = 3,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [11665] = { -- Immolate(Rank 5)
        spellLevel = 40,
        maxLevel = 45,
        duration = 15,
        baseCost = 220,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 134,
                valueRange = 0,
                valuePerLevel = 2.70000004768,
                coef = 0.20000000298,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 51,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [11667] = { -- Immolate(Rank 6)
        spellLevel = 50,
        maxLevel = 55,
        duration = 15,
        baseCost = 295,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 192,
                valueRange = 0,
                valuePerLevel = 3.20000004768,
                coef = 0.20000000298,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 73,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [11668] = { -- Immolate(Rank 7)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCost = 370,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 258,
                valueRange = 0,
                valuePerLevel = 3.79999995232,
                coef = 0.20000000298,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 97,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [11671] = { -- Corruption(Rank 5)
        spellLevel = 44,
        maxLevel = 49,
        duration = 18,
        baseCost = 225,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 81,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [11672] = { -- Corruption(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        duration = 18,
        baseCost = 290,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 111,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [11675] = { -- Drain Soul(Rank 4)
        spellLevel = 52,
        maxLevel = 0,
        duration = 15,
        baseCost = 290,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 91,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [11677] = { -- Rain of Fire(Rank 3)
        spellLevel = 46,
        maxLevel = 51,
        duration = 8,
        baseCost = 885,
        school = 3,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 155,
                valueRange = 0,
                valuePerLevel = 0.5,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [11678] = { -- Rain of Fire(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCost = 1185,
        school = 3,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 226,
                valueRange = 0,
                valuePerLevel = 0.60000002384,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [11683] = { -- Hellfire(Rank 2)
        spellLevel = 42,
        maxLevel = 52,
        duration = 15,
        baseCost = 975,
        school = 3,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 139,
                valueRange = 0,
                valuePerLevel = 0.5,
                coef = 0.02199999988,
                coefAP = 0,
            },
        }
    },
    [11684] = { -- Hellfire(Rank 3)
        spellLevel = 54,
        maxLevel = 64,
        duration = 15,
        baseCost = 1300,
        school = 3,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 208,
                valueRange = 0,
                valuePerLevel = 0.69999998808,
                coef = 0.02199999988,
                coefAP = 0,
            },
        }
    },
    [11693] = { -- Health Funnel(Rank 5)
        spellLevel = 44,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 89,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [11694] = { -- Health Funnel(Rank 6)
        spellLevel = 52,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 119,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [11695] = { -- Health Funnel(Rank 7)
        spellLevel = 60,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 153,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [11699] = { -- Drain Life(Rank 5)
        spellLevel = 46,
        maxLevel = 51,
        duration = 5,
        baseCost = 240,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 55,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [11700] = { -- Drain Life(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        duration = 5,
        baseCost = 300,
        school = 6,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 71,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [11711] = { -- Curse of Agony(Rank 4)
        spellLevel = 38,
        maxLevel = 0,
        duration = 24,
        baseCost = 130,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 42,
                valueRange = 0,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [11712] = { -- Curse of Agony(Rank 5)
        spellLevel = 48,
        maxLevel = 0,
        duration = 24,
        baseCost = 170,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 65,
                valueRange = 0,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [11713] = { -- Curse of Agony(Rank 6)
        spellLevel = 58,
        maxLevel = 0,
        duration = 24,
        baseCost = 215,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 87,
                valueRange = 0,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [11739] = { -- Shadow Ward(Rank 2)
        spellLevel = 42,
        maxLevel = 0,
        duration = 30,
        baseCost = 195,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 470,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [11740] = { -- Shadow Ward(Rank 3)
        spellLevel = 52,
        maxLevel = 0,
        duration = 30,
        baseCost = 255,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 675,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [17877] = { -- Shadowburn(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 5,
        baseCost = 105,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 87,
                valueRange = 12,
                valuePerLevel = 1.20000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [17919] = { -- Searing Pain(Rank 2)
        spellLevel = 26,
        maxLevel = 32,
        baseCost = 68,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 59,
                valueRange = 12,
                valuePerLevel = 1,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [17920] = { -- Searing Pain(Rank 3)
        spellLevel = 34,
        maxLevel = 40,
        baseCost = 91,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 86,
                valueRange = 18,
                valuePerLevel = 1.20000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [17921] = { -- Searing Pain(Rank 4)
        spellLevel = 42,
        maxLevel = 48,
        baseCost = 118,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 122,
                valueRange = 24,
                valuePerLevel = 1.5,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [17922] = { -- Searing Pain(Rank 5)
        spellLevel = 50,
        maxLevel = 56,
        baseCost = 141,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 158,
                valueRange = 30,
                valuePerLevel = 1.70000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [17923] = { -- Searing Pain(Rank 6)
        spellLevel = 58,
        maxLevel = 64,
        baseCost = 168,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 204,
                valueRange = 36,
                valuePerLevel = 2,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [17924] = { -- Soul Fire(Rank 2)
        spellLevel = 56,
        maxLevel = 62,
        baseCost = 335,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 703,
                valueRange = 178,
                valuePerLevel = 3.09999990463,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [17925] = { -- Death Coil(Rank 2)
        spellLevel = 50,
        maxLevel = 56,
        duration = 3,
        baseCost = 495,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 375,
                valueRange = 0,
                valuePerLevel = 2.59999990463,
                coef = 0.21400000155,
                coefAP = 0,
            },
        }
    },
    [17926] = { -- Death Coil(Rank 3)
        spellLevel = 58,
        maxLevel = 64,
        duration = 3,
        baseCost = 565,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 470,
                valueRange = 0,
                valuePerLevel = 3,
                coef = 0.21400000155,
                coefAP = 0,
            },
        }
    },
    [17962] = { -- Conflagrate(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        baseCost = 165,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 240,
                valueRange = 66,
                valuePerLevel = 1.60000002384,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [18265] = { -- Siphon Life(Rank 1)
        spellLevel = 30,
        maxLevel = 38,
        duration = 30,
        baseCost = 150,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 15,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [18867] = { -- Shadowburn(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        duration = 5,
        baseCost = 130,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 115,
                valueRange = 16,
                valuePerLevel = 1.39999997616,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [18868] = { -- Shadowburn(Rank 3)
        spellLevel = 32,
        maxLevel = 38,
        duration = 5,
        baseCost = 190,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 186,
                valueRange = 24,
                valuePerLevel = 1.79999995232,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [18869] = { -- Shadowburn(Rank 4)
        spellLevel = 40,
        maxLevel = 46,
        duration = 5,
        baseCost = 245,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 261,
                valueRange = 32,
                valuePerLevel = 2.20000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [18870] = { -- Shadowburn(Rank 5)
        spellLevel = 48,
        maxLevel = 54,
        duration = 5,
        baseCost = 305,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 350,
                valueRange = 42,
                valuePerLevel = 2.59999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [18871] = { -- Shadowburn(Rank 6)
        spellLevel = 56,
        maxLevel = 62,
        duration = 5,
        baseCost = 365,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 450,
                valueRange = 52,
                valuePerLevel = 3,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [18879] = { -- Siphon Life(Rank 2)
        spellLevel = 38,
        maxLevel = 48,
        duration = 30,
        baseCost = 205,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 22,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [18880] = { -- Siphon Life(Rank 3)
        spellLevel = 48,
        maxLevel = 58,
        duration = 30,
        baseCost = 285,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 33,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [18881] = { -- Siphon Life(Rank 4)
        spellLevel = 58,
        maxLevel = 68,
        duration = 30,
        baseCost = 365,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 45,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [18930] = { -- Conflagrate(Rank 2)
        spellLevel = 48,
        maxLevel = 54,
        baseCost = 200,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 316,
                valueRange = 80,
                valuePerLevel = 1.79999995232,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [18931] = { -- Conflagrate(Rank 3)
        spellLevel = 54,
        maxLevel = 60,
        baseCost = 230,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 383,
                valueRange = 96,
                valuePerLevel = 2,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [18932] = { -- Conflagrate(Rank 4)
        spellLevel = 60,
        maxLevel = 66,
        baseCost = 255,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 447,
                valueRange = 110,
                valuePerLevel = 2.20000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [25307] = { -- Shadow Bolt(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 380,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 482,
                valueRange = 56,
                valuePerLevel = 3.09999990463,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [25309] = { -- Immolate(Rank 8)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCost = 380,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 279,
                valueRange = 0,
                valuePerLevel = 3.90000009537,
                coef = 0.20000000298,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 102,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [25311] = { -- Corruption(Rank 7)
        spellLevel = 60,
        maxLevel = 65,
        duration = 18,
        baseCost = 340,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 137,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [28610] = { -- Shadow Ward(Rank 4)
        spellLevel = 60,
        maxLevel = 0,
        duration = 30,
        baseCost = 320,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 920,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [403501] = { -- Haunt
        spellLevel = 1,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        useScalingFormula = "807power",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 251,
                valueRange = 44,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [403629] = { -- Chaos Bolt
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 7,
        school = 3,
        defType = 1,
        useScalingFormula = "807power",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 522,
                valueRange = 140,
                coef = 0.71399998665,
                coefAP = 0,
            },
        }
    },
    [403677] = { -- Drain Life(Rank 1)
        spellLevel = 14,
        maxLevel = 19,
        duration = 15,
        baseCost = 110,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 10,
                valueRange = 0,
                coef = 0.07800000161,
                coefAP = 0,
            },
        }
    },
    [403685] = { -- Drain Life(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        duration = 15,
        baseCost = 170,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 17,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [403686] = { -- Drain Life(Rank 3)
        spellLevel = 30,
        maxLevel = 35,
        duration = 15,
        baseCost = 270,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 29,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [403687] = { -- Drain Life(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        duration = 15,
        baseCost = 370,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 41,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [403688] = { -- Drain Life(Rank 5)
        spellLevel = 46,
        maxLevel = 51,
        duration = 15,
        baseCost = 480,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 55,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [403689] = { -- Drain Life(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        duration = 15,
        baseCost = 600,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 71,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [412758] = { -- Incinerate
        spellLevel = 1,
        maxLevel = 0,
        duration = 15,
        baseCostPct = 14,
        school = 3,
        defType = 1,
        useScalingFormula = "807power",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 222,
                valueRange = 36,
                coef = 0.71399998665,
                coefAP = 0,
            },
        }
    },
};

---@type SpellClassSet
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
            350026, -- Shadow Bolt
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
            403677, -- Drain Life(Rank 1)
            403685, -- Drain Life(Rank 2)
            403686, -- Drain Life(Rank 3)
            403687, -- Drain Life(Rank 4)
            403688, -- Drain Life(Rank 5)
            403689, -- Drain Life(Rank 6)
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
            1098, -- Subjugate Demon(Rank 1)
            11725, -- Subjugate Demon(Rank 2)
            11726, -- Subjugate Demon(Rank 3)
            20882, -- Subjugate Demon
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
            713, -- Summon Incubus(Summon)
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
            403828, -- Menace
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
        [64] = {
            412758, -- Incinerate
        },
        [1024] = {
            5782, -- Fear(Rank 1)
            6213, -- Fear(Rank 2)
            6215, -- Fear(Rank 3)
        },
        [8192] = {
            412729, -- Tamed Pet Passive (DND)
        },
        [131072] = {
            403629, -- Chaos Bolt
        },
        [262144] = {
            403501, -- Haunt
            403858, -- Haunt
        },
        [2097152] = {
            704, -- Curse of Recklessness(Rank 1)
            7658, -- Curse of Recklessness(Rank 2)
            7659, -- Curse of Recklessness(Rank 3)
            11717, -- Curse of Recklessness(Rank 4)
        },
        [8388608] = {
            17962, -- Conflagrate(Rank 1)
            18930, -- Conflagrate(Rank 2)
            18931, -- Conflagrate(Rank 3)
            18932, -- Conflagrate(Rank 4)
        },
    },
    [3] = {
        [8192] = {
            403789, -- Metamorphosis(Shapeshift)
            403816, -- Metamorphosis(Shapeshift)
        },
        [32768] = {
            18220, -- Dark Pact(Rank 1)
            18937, -- Dark Pact(Rank 2)
            18938, -- Dark Pact(Rank 3)
        },
        [131072] = {
            403835, -- Shadow Cleave(Rank 1)
            403839, -- Shadow Cleave(Rank 2)
            403840, -- Shadow Cleave(Rank 3)
            403841, -- Shadow Cleave(Rank 4)
            403842, -- Shadow Cleave(Rank 5)
            403843, -- Shadow Cleave(Rank 6)
            403844, -- Shadow Cleave(Rank 7)
            403848, -- Shadow Cleave(Rank 8)
            403851, -- Shadow Cleave(Rank 9)
            403852, -- Shadow Cleave(Rank 10)
        },
        [262144] = {
            425463, -- Demonic Grace
        },
    },
    [4] = {
    },
};


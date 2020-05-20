-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(324)] = { -- Lightning Shield
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(331)] = { -- Healing Wave
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(403)] = { -- Lightning Bolt
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(421)] = { -- Chain Lightning
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(1064)] = { -- Chain Heal
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(1535)] = { -- Fire Nova Totem
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(3599)] = { -- Searing Totem
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(5394)] = { -- Healing Stream Totem
        school = 5,
        defType = 1,
    },
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(8004)] = { -- Lesser Healing Wave
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(8042)] = { -- Earth Shock
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(8050)] = { -- Flame Shock
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(8056)] = { -- Frost Shock
        school = 5,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(8190)] = { -- Magma Totem
        school = 3,
        defType = 1,
    },
};

_addon.spellRankInfo = {
    [324] = { -- Lightning Shield(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 600,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                min = 13,
                coef = 0.147,
            },
        }
    },
    [325] = { -- Lightning Shield(Rank 2)
        spellLevel = 16,
        maxLevel = 0,
        duration = 600,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                min = 29,
                coef = 0.227,
            },
        }
    },
    [331] = { -- Healing Wave(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 10,
                min = 34,
                max = 45,
                perLevel = 0.7,
                coef = 0.123,
            },
        }
    },
    [332] = { -- Healing Wave(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 10,
                min = 64,
                max = 79,
                perLevel = 1,
                coef = 0.271,
            },
        }
    },
    [403] = { -- Lightning Bolt(Rank 1)
        spellLevel = 1,
        maxLevel = 6,
        baseCost = 15,
        effects = {
            [1] = {
                effectType = 2,
                min = 13,
                max = 16,
                perLevel = 0.4,
                coef = 0.123,
            },
        }
    },
    [421] = { -- Chain Lightning(Rank 1)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 2,
                min = 191,
                max = 218,
                perLevel = 1.9,
                coef = 0.714,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [529] = { -- Lightning Bolt(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 2,
                min = 26,
                max = 31,
                perLevel = 0.5,
                coef = 0.314,
            },
        }
    },
    [547] = { -- Healing Wave(Rank 3)
        spellLevel = 12,
        maxLevel = 17,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 10,
                min = 129,
                max = 156,
                perLevel = 1.5,
                coef = 0.5,
            },
        }
    },
    [548] = { -- Lightning Bolt(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 2,
                min = 45,
                max = 54,
                perLevel = 0.7,
                coef = 0.554,
            },
        }
    },
    [905] = { -- Lightning Shield(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        duration = 600,
        baseCost = 125,
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
    [913] = { -- Healing Wave(Rank 4)
        spellLevel = 18,
        maxLevel = 23,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 10,
                min = 268,
                max = 317,
                perLevel = 2.3,
                coef = 0.793,
            },
        }
    },
    [915] = { -- Lightning Bolt(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 2,
                min = 83,
                max = 96,
                perLevel = 1,
                coef = 0.857,
            },
        }
    },
    [930] = { -- Chain Lightning(Rank 2)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 2,
                min = 277,
                max = 312,
                perLevel = 2.3,
                coef = 0.714,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [939] = { -- Healing Wave(Rank 5)
        spellLevel = 24,
        maxLevel = 29,
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 10,
                min = 376,
                max = 441,
                perLevel = 2.7,
                coef = 0.857,
            },
        }
    },
    [943] = { -- Lightning Bolt(Rank 5)
        spellLevel = 26,
        maxLevel = 31,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 2,
                min = 125,
                max = 144,
                perLevel = 1.2,
                coef = 0.857,
            },
        }
    },
    [945] = { -- Lightning Shield(Rank 4)
        spellLevel = 32,
        maxLevel = 0,
        duration = 600,
        baseCost = 180,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                min = 80,
                coef = 0.267,
            },
        }
    },
    [959] = { -- Healing Wave(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 265,
        effects = {
            [1] = {
                effectType = 10,
                min = 536,
                max = 623,
                perLevel = 3.3,
                coef = 0.857,
            },
        }
    },
    [1064] = { -- Chain Heal(Rank 1)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 260,
        effects = {
            [1] = {
                effectType = 10,
                min = 320,
                max = 369,
                perLevel = 2.5,
                coef = 0.714,
                chains = 3,
                chainMult = 0.5,
            },
        }
    },
    [1535] = { -- Fire Nova Totem(Rank 1)
        spellLevel = 12,
        maxLevel = 0,
        duration = 5,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
                min = 48,
                max = 57,
                perLevel = 1.1,
                coef = 0.1,
            },
        }
    },
    [2860] = { -- Chain Lightning(Rank 3)
        spellLevel = 48,
        maxLevel = 53,
        baseCost = 490,
        effects = {
            [1] = {
                effectType = 2,
                min = 378,
                max = 425,
                perLevel = 2.7,
                coef = 0.714,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [3599] = { -- Searing Totem(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 30,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                min = 9,
                max = 12,
                coef = 0.052,
            },
        }
    },
    [5394] = { -- Healing Stream Totem(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 60,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 6,
                coef = 0.022,
            },
        }
    },
    [6041] = { -- Lightning Bolt(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 2,
                min = 172,
                max = 195,
                perLevel = 1.5,
                coef = 0.857,
            },
        }
    },
    [6363] = { -- Searing Totem(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 35,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                min = 13,
                max = 18,
                coef = 0.083,
            },
        }
    },
    [6364] = { -- Searing Totem(Rank 3)
        spellLevel = 30,
        maxLevel = 0,
        duration = 40,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                min = 19,
                max = 26,
                coef = 0.083,
            },
        }
    },
    [6365] = { -- Searing Totem(Rank 4)
        spellLevel = 40,
        maxLevel = 0,
        duration = 45,
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                min = 26,
                max = 35,
                coef = 0.083,
            },
        }
    },
    [6375] = { -- Healing Stream Totem(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 60,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 8,
                coef = 0.022,
            },
        }
    },
    [6377] = { -- Healing Stream Totem(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 60,
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 10,
                coef = 0.022,
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
    [8004] = { -- Lesser Healing Wave(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 10,
                min = 162,
                max = 187,
                perLevel = 1.7,
                coef = 0.429,
            },
        }
    },
    [8005] = { -- Healing Wave(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 340,
        effects = {
            [1] = {
                effectType = 10,
                min = 740,
                max = 855,
                perLevel = 3.9,
                coef = 0.857,
            },
        }
    },
    [8008] = { -- Lesser Healing Wave(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 145,
        effects = {
            [1] = {
                effectType = 10,
                min = 247,
                max = 282,
                perLevel = 2.1,
                coef = 0.429,
            },
        }
    },
    [8010] = { -- Lesser Healing Wave(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 10,
                min = 337,
                max = 382,
                perLevel = 2.5,
                coef = 0.429,
            },
        }
    },
    [8042] = { -- Earth Shock(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 2,
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 2,
                min = 17,
                max = 20,
                perLevel = 0.5,
                coef = 0.154,
            },
        }
    },
    [8044] = { -- Earth Shock(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        duration = 2,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 2,
                min = 32,
                max = 35,
                perLevel = 0.7,
                coef = 0.212,
            },
        }
    },
    [8045] = { -- Earth Shock(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        duration = 2,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 2,
                min = 60,
                max = 65,
                perLevel = 1,
                coef = 0.299,
            },
        }
    },
    [8046] = { -- Earth Shock(Rank 4)
        spellLevel = 24,
        maxLevel = 29,
        duration = 2,
        baseCost = 145,
        effects = {
            [1] = {
                effectType = 2,
                min = 119,
                max = 128,
                perLevel = 1.4,
                coef = 0.386,
            },
        }
    },
    [8050] = { -- Flame Shock(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        baseCost = 55,
        effects = {
            [1] = {
                effectType = 2,
                min = 21,
                perLevel = 0.8,
                coef = 0.134,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 7,
                coef = 0.063,
            },
        }
    },
    [8052] = { -- Flame Shock(Rank 2)
        spellLevel = 18,
        maxLevel = 23,
        duration = 12,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
                min = 45,
                perLevel = 1.2,
                coef = 0.198,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 12,
                coef = 0.093,
            },
        }
    },
    [8053] = { -- Flame Shock(Rank 3)
        spellLevel = 28,
        maxLevel = 33,
        duration = 12,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 2,
                min = 86,
                perLevel = 1.7,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 24,
                coef = 0.1,
            },
        }
    },
    [8056] = { -- Frost Shock(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCost = 115,
        effects = {
            [1] = {
                effectType = 2,
                min = 89,
                max = 96,
                perLevel = 1.2,
                coef = 0.386,
            },
        }
    },
    [8058] = { -- Frost Shock(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        baseCost = 225,
        effects = {
            [1] = {
                effectType = 2,
                min = 206,
                max = 221,
                perLevel = 1.9,
                coef = 0.386,
            },
        }
    },
    [8134] = { -- Lightning Shield(Rank 5)
        spellLevel = 40,
        maxLevel = 0,
        duration = 600,
        baseCost = 240,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                min = 114,
                coef = 0.267,
            },
        }
    },
    [8190] = { -- Magma Totem(Rank 1)
        spellLevel = 26,
        maxLevel = 0,
        duration = 20,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 22,
                coef = 0.033,
            },
        }
    },
    [8498] = { -- Fire Nova Totem(Rank 2)
        spellLevel = 22,
        maxLevel = 0,
        duration = 5,
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 2,
                min = 102,
                max = 117,
                perLevel = 1.6,
                coef = 0.143,
            },
        }
    },
    [8499] = { -- Fire Nova Totem(Rank 3)
        spellLevel = 32,
        maxLevel = 0,
        duration = 5,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 2,
                min = 184,
                max = 209,
                perLevel = 2.2,
                coef = 0.143,
            },
        }
    },
    [10391] = { -- Lightning Bolt(Rank 7)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 165,
        effects = {
            [1] = {
                effectType = 2,
                min = 227,
                max = 256,
                perLevel = 1.7,
                coef = 0.857,
            },
        }
    },
    [10392] = { -- Lightning Bolt(Rank 8)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 2,
                min = 282,
                max = 317,
                perLevel = 1.9,
                coef = 0.857,
            },
        }
    },
    [10395] = { -- Healing Wave(Rank 8)
        spellLevel = 48,
        maxLevel = 53,
        baseCost = 440,
        effects = {
            [1] = {
                effectType = 10,
                min = 1017,
                max = 1168,
                perLevel = 4.7,
                coef = 0.857,
            },
        }
    },
    [10396] = { -- Healing Wave(Rank 9)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 560,
        effects = {
            [1] = {
                effectType = 10,
                min = 1367,
                max = 1562,
                perLevel = 5.5,
                coef = 0.857,
            },
        }
    },
    [10412] = { -- Earth Shock(Rank 5)
        spellLevel = 36,
        maxLevel = 41,
        duration = 2,
        baseCost = 240,
        effects = {
            [1] = {
                effectType = 2,
                min = 225,
                max = 240,
                perLevel = 2,
                coef = 0.386,
            },
        }
    },
    [10413] = { -- Earth Shock(Rank 6)
        spellLevel = 48,
        maxLevel = 53,
        duration = 2,
        baseCost = 345,
        effects = {
            [1] = {
                effectType = 2,
                min = 359,
                max = 382,
                perLevel = 2.6,
                coef = 0.386,
            },
        }
    },
    [10414] = { -- Earth Shock(Rank 7)
        spellLevel = 60,
        maxLevel = 65,
        duration = 2,
        baseCost = 450,
        effects = {
            [1] = {
                effectType = 2,
                min = 517,
                max = 546,
                perLevel = 3.1,
                coef = 0.386,
            },
        }
    },
    [10431] = { -- Lightning Shield(Rank 6)
        spellLevel = 48,
        maxLevel = 0,
        duration = 600,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                min = 154,
                coef = 0.267,
            },
        }
    },
    [10432] = { -- Lightning Shield(Rank 7)
        spellLevel = 56,
        maxLevel = 0,
        duration = 600,
        baseCost = 370,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                min = 198,
                coef = 0.267,
            },
        }
    },
    [10437] = { -- Searing Totem(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        duration = 50,
        baseCost = 145,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                min = 33,
                max = 46,
                coef = 0.083,
            },
        }
    },
    [10438] = { -- Searing Totem(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 55,
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                min = 40,
                max = 55,
                coef = 0.083,
            },
        }
    },
    [10447] = { -- Flame Shock(Rank 4)
        spellLevel = 40,
        maxLevel = 45,
        duration = 12,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 2,
                min = 152,
                perLevel = 2.3,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 42,
                coef = 0.1,
            },
        }
    },
    [10448] = { -- Flame Shock(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        duration = 12,
        baseCost = 345,
        effects = {
            [1] = {
                effectType = 2,
                min = 230,
                perLevel = 2.9,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 64,
                coef = 0.1,
            },
        }
    },
    [10462] = { -- Healing Stream Totem(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 60,
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 12,
                coef = 0.022,
            },
        }
    },
    [10463] = { -- Healing Stream Totem(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 60,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                min = 14,
                coef = 0.022,
            },
        }
    },
    [10466] = { -- Lesser Healing Wave(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 235,
        effects = {
            [1] = {
                effectType = 10,
                min = 458,
                max = 515,
                perLevel = 3,
                coef = 0.429,
            },
        }
    },
    [10467] = { -- Lesser Healing Wave(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 10,
                min = 631,
                max = 706,
                perLevel = 3.6,
                coef = 0.429,
            },
        }
    },
    [10468] = { -- Lesser Healing Wave(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 10,
                min = 832,
                max = 929,
                perLevel = 4.2,
                coef = 0.429,
            },
        }
    },
    [10472] = { -- Frost Shock(Rank 3)
        spellLevel = 46,
        maxLevel = 51,
        duration = 8,
        baseCost = 325,
        effects = {
            [1] = {
                effectType = 2,
                min = 333,
                max = 354,
                perLevel = 2.5,
                coef = 0.386,
            },
        }
    },
    [10473] = { -- Frost Shock(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCost = 430,
        effects = {
            [1] = {
                effectType = 2,
                min = 486,
                max = 515,
                perLevel = 3,
                coef = 0.386,
            },
        }
    },
    [10585] = { -- Magma Totem(Rank 2)
        spellLevel = 36,
        maxLevel = 0,
        duration = 20,
        baseCost = 360,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 37,
                coef = 0.033,
            },
        }
    },
    [10586] = { -- Magma Totem(Rank 3)
        spellLevel = 46,
        maxLevel = 0,
        duration = 20,
        baseCost = 500,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 54,
                coef = 0.033,
            },
        }
    },
    [10587] = { -- Magma Totem(Rank 4)
        spellLevel = 56,
        maxLevel = 0,
        duration = 20,
        baseCost = 650,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                min = 75,
                coef = 0.033,
            },
        }
    },
    [10605] = { -- Chain Lightning(Rank 4)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 605,
        effects = {
            [1] = {
                effectType = 2,
                min = 493,
                max = 552,
                perLevel = 3.1,
                coef = 0.714,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [10622] = { -- Chain Heal(Rank 2)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 315,
        effects = {
            [1] = {
                effectType = 10,
                min = 405,
                max = 466,
                perLevel = 2.8,
                coef = 0.714,
                chains = 3,
                chainMult = 0.5,
            },
        }
    },
    [10623] = { -- Chain Heal(Rank 3)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 405,
        effects = {
            [1] = {
                effectType = 10,
                min = 551,
                max = 630,
                perLevel = 3.3,
                coef = 0.714,
                chains = 3,
                chainMult = 0.5,
            },
        }
    },
    [11314] = { -- Fire Nova Totem(Rank 4)
        spellLevel = 42,
        maxLevel = 0,
        duration = 5,
        baseCost = 395,
        effects = {
            [1] = {
                effectType = 2,
                min = 281,
                max = 318,
                perLevel = 2.8,
                coef = 0.143,
            },
        }
    },
    [11315] = { -- Fire Nova Totem(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 5,
        baseCost = 520,
        effects = {
            [1] = {
                effectType = 2,
                min = 396,
                max = 443,
                perLevel = 3.4,
                coef = 0.143,
            },
        }
    },
    [15207] = { -- Lightning Bolt(Rank 9)
        spellLevel = 50,
        maxLevel = 55,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 2,
                min = 347,
                max = 390,
                perLevel = 2.1,
                coef = 0.857,
            },
        }
    },
    [15208] = { -- Lightning Bolt(Rank 10)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 265,
        effects = {
            [1] = {
                effectType = 2,
                min = 419,
                max = 468,
                perLevel = 2.4,
                coef = 0.857,
            },
        }
    },
    [25357] = { -- Healing Wave(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 620,
        effects = {
            [1] = {
                effectType = 10,
                min = 1620,
                max = 1851,
                perLevel = 5.5,
                coef = 0.857,
            },
        }
    },
    [29228] = { -- Flame Shock(Rank 6)
        spellLevel = 60,
        maxLevel = 67,
        duration = 12,
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 2,
                min = 292,
                perLevel = 3.5,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 80,
                coef = 0.1,
            },
        }
    },
};


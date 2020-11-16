-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(331)] = { -- Healing Wave
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(403)] = { -- Lightning Bolt
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(8042)] = { -- Earth Shock
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(324)] = { -- Lightning Shield
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(8050)] = { -- Flame Shock
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(3599)] = { -- Searing Totem
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(1535)] = { -- Fire Nova Totem
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(8004)] = { -- Lesser Healing Wave
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(5394)] = { -- Healing Stream Totem
        school = 5,
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
    [GetSpellInfo(421)] = { -- Chain Lightning
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(1064)] = { -- Chain Heal
        school = 4,
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
        maxLevel = 17,
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
        maxLevel = 27,
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
        maxLevel = 37,
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
        maxLevel = 47,
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
        maxLevel = 57,
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

_addon.spellClassSet = {
    [1] = {
        [1] = {
            403, -- Lightning Bolt(Rank 1)
            529, -- Lightning Bolt(Rank 2)
            548, -- Lightning Bolt(Rank 3)
            915, -- Lightning Bolt(Rank 4)
            943, -- Lightning Bolt(Rank 5)
            6041, -- Lightning Bolt(Rank 6)
            10391, -- Lightning Bolt(Rank 7)
            10392, -- Lightning Bolt(Rank 8)
            15207, -- Lightning Bolt(Rank 9)
            15208, -- Lightning Bolt(Rank 10)
        },
        [2] = {
            421, -- Chain Lightning(Rank 1)
            930, -- Chain Lightning(Rank 2)
            2860, -- Chain Lightning(Rank 3)
            10605, -- Chain Lightning(Rank 4)
        },
        [4] = {
            8187, -- Magma Totem(Rank 1)
            10579, -- Magma Totem(Rank 2)
            10580, -- Magma Totem(Rank 3)
            10581, -- Magma Totem(Rank 4)
            17012, -- Devour Magic
        },
        [8] = {
            5730, -- Stoneclaw Totem(Rank 1)
            6390, -- Stoneclaw Totem(Rank 2)
            6391, -- Stoneclaw Totem(Rank 3)
            6392, -- Stoneclaw Totem(Rank 4)
            10427, -- Stoneclaw Totem(Rank 5)
            10428, -- Stoneclaw Totem(Rank 6)
            23789, -- Stoneclaw Totem TEST
        },
        [16] = {
            3599, -- Searing Totem(Rank 1)
            6363, -- Searing Totem(Rank 2)
            6364, -- Searing Totem(Rank 3)
            6365, -- Searing Totem(Rank 4)
            10437, -- Searing Totem(Rank 5)
            10438, -- Searing Totem(Rank 6)
        },
        [32] = {
            8443, -- Fire Nova(Rank 1)
            8504, -- Fire Nova(Rank 2)
            8505, -- Fire Nova(Rank 3)
            11310, -- Fire Nova(Rank 4)
            11311, -- Fire Nova(Rank 5)
        },
        [64] = {
            331, -- Healing Wave(Rank 1)
            332, -- Healing Wave(Rank 2)
            547, -- Healing Wave(Rank 3)
            913, -- Healing Wave(Rank 4)
            939, -- Healing Wave(Rank 5)
            959, -- Healing Wave(Rank 6)
            8005, -- Healing Wave(Rank 7)
            10395, -- Healing Wave(Rank 8)
            10396, -- Healing Wave(Rank 9)
            25357, -- Healing Wave(Rank 10)
        },
        [128] = {
            8004, -- Lesser Healing Wave(Rank 1)
            8008, -- Lesser Healing Wave(Rank 2)
            8010, -- Lesser Healing Wave(Rank 3)
            10466, -- Lesser Healing Wave(Rank 4)
            10467, -- Lesser Healing Wave(Rank 5)
            10468, -- Lesser Healing Wave(Rank 6)
            27624, -- Lesser Healing Wave(Rank 6)
        },
        [256] = {
            1064, -- Chain Heal(Rank 1)
            10622, -- Chain Heal(Rank 2)
            10623, -- Chain Heal(Rank 3)
        },
        [512] = {
            20608, -- Reincarnation(Passive)
            21169, -- Reincarnation
            23683, -- Twisting Nether
            27740, -- Reincarnation
        },
        [1024] = {
            324, -- Lightning Shield(Rank 1)
            325, -- Lightning Shield(Rank 2)
            905, -- Lightning Shield(Rank 3)
            945, -- Lightning Shield(Rank 4)
            8134, -- Lightning Shield(Rank 5)
            10431, -- Lightning Shield(Rank 6)
            10432, -- Lightning Shield(Rank 7)
            26363, -- Lightning Shield(Rank 7)
            26364, -- Lightning Shield(Rank 1)
            26365, -- Lightning Shield(Rank 2)
            26366, -- Lightning Shield(Rank 3)
            26367, -- Lightning Shield(Rank 4)
            26369, -- Lightning Shield(Rank 5)
            26370, -- Lightning Shield(Rank 6)
            27635, -- Lightning Shield
        },
        [2048] = {
            2645, -- Ghost Wolf
        },
        [4096] = {
            8190, -- Magma Totem(Rank 1)
            10585, -- Magma Totem(Rank 2)
            10586, -- Magma Totem(Rank 3)
            10587, -- Magma Totem(Rank 4)
        },
        [8192] = {
            5672, -- Healing Stream(Rank 1)
            6371, -- Healing Stream(Rank 2)
            6372, -- Healing Stream(Rank 3)
            10460, -- Healing Stream(Rank 4)
            10461, -- Healing Stream(Rank 5)
        },
        [16384] = {
            5677, -- Mana Spring(Rank 1)
            10491, -- Mana Spring(Rank 2)
            10493, -- Mana Spring(Rank 3)
            10494, -- Mana Spring(Rank 4)
            24853, -- Mana Spring
        },
        [32768] = {
            8072, -- Stoneskin(Rank 1)
            8156, -- Stoneskin(Rank 2)
            8157, -- Stoneskin(Rank 3)
            10403, -- Stoneskin(Rank 4)
            10404, -- Stoneskin(Rank 5)
            10405, -- Stoneskin(Rank 6)
            15108, -- Windwall(Rank 1)
            15109, -- Windwall(Rank 2)
            15110, -- Windwall(Rank 3)
        },
        [65536] = {
            8076, -- Strength of Earth(Rank 1)
            8162, -- Strength of Earth(Rank 2)
            8163, -- Strength of Earth(Rank 3)
            10441, -- Strength of Earth(Rank 4)
            25362, -- Strength of Earth(Rank 5)
        },
        [131072] = {
            8836, -- Grace of Air(Rank 1)
            10626, -- Grace of Air(Rank 2)
            25360, -- Grace of Air(Rank 3)
            25909, -- Tranquil Air(Rank 1)
        },
        [262144] = {
            8177, -- Grounding Totem
        },
        [524288] = {
            5394, -- Healing Stream Totem(Rank 1)
            5675, -- Mana Spring Totem(Rank 1)
            6375, -- Healing Stream Totem(Rank 2)
            6377, -- Healing Stream Totem(Rank 3)
            10462, -- Healing Stream Totem(Rank 4)
            10463, -- Healing Stream Totem(Rank 5)
            10495, -- Mana Spring Totem(Rank 2)
            10496, -- Mana Spring Totem(Rank 3)
            10497, -- Mana Spring Totem(Rank 4)
            23422, -- Corrupted Healing Stream Totem(Rank 5)
            24854, -- Mana Spring Totem
        },
        [1048576] = {
            8042, -- Earth Shock(Rank 1)
            8044, -- Earth Shock(Rank 2)
            8045, -- Earth Shock(Rank 3)
            8046, -- Earth Shock(Rank 4)
            10412, -- Earth Shock(Rank 5)
            10413, -- Earth Shock(Rank 6)
            10414, -- Earth Shock(Rank 7)
        },
        [2097152] = {
            8026, -- Flametongue Weapon Proc(Rank 1)
            8028, -- Flametongue Weapon Proc(Rank 2)
            8029, -- Flametongue Weapon Proc(Rank 3)
            10444, -- Flametongue Attack(Rank 3)
            10445, -- Flametongue Weapon Proc(Rank 4)
            16343, -- Flametongue Weapon Proc(Rank 5)
            16344, -- Flametongue Weapon Proc(Rank 6)
            29469, -- Flametongue Attack(Rank 1)
            29470, -- Flametongue Attack(Rank 2)
        },
        [4194304] = {
            10400, -- Rockbiter Weapon (Passive)(Rank 1)
            15567, -- Rockbiter Weapon (Passive)(Rank 2)
            15568, -- Rockbiter Weapon (Passive)(Rank 3)
            15569, -- Rockbiter Weapon (Passive)(Rank 4)
            16311, -- Rockbiter Weapon (Passive)(Rank 5)
            16312, -- Rockbiter Weapon (Passive)(Rank 6)
            16313, -- Rockbiter Weapon (Passive)(Rank 7)
        },
        [8388608] = {
            8233, -- Windfury Weapon(Rank 1)
            8236, -- Windfury Weapon(Rank 2)
            10484, -- Windfury Weapon(Rank 3)
            16361, -- Windfury Weapon(Rank 4)
        },
        [16777216] = {
            8034, -- Frostbrand Attack(Rank 1)
            8037, -- Frostbrand Attack(Rank 2)
            10458, -- Frostbrand Attack(Rank 3)
            16352, -- Frostbrand Attack(Rank 4)
            16353, -- Frostbrand Attack(Rank 5)
        },
        [33554432] = {
            16368, -- Flametongue Attack
        },
        [67108864] = {
            8146, -- Tremor Totem Effect
            8168, -- Poison Cleansing Totem Effect
            8171, -- Disease Cleansing Totem Effect
            8178, -- Grounding Totem Effect(Rank 1)
            8182, -- Frost Resistance(Rank 1)
            8185, -- Fire Resistance(Rank 1)
            8230, -- Flametongue Totem Effect(Rank 1)
            8250, -- Flametongue Totem Effect(Rank 2)
            8514, -- Windfury Totem Effect(Rank 1)
            10476, -- Frost Resistance(Rank 2)
            10477, -- Frost Resistance(Rank 3)
            10521, -- Flametongue Totem Effect(Rank 3)
            10534, -- Fire Resistance(Rank 2)
            10535, -- Fire Resistance(Rank 3)
            10596, -- Nature Resistance(Rank 1)
            10598, -- Nature Resistance(Rank 2)
            10599, -- Nature Resistance(Rank 3)
            10607, -- Windfury Totem Effect(Rank 2)
            10611, -- Windfury Totem Effect(Rank 3)
            15036, -- Flametongue Totem Effect(Rank 4)
            16191, -- Mana Tide(Rank 1)
            17355, -- Mana Tide(Rank 2)
            17360, -- Mana Tide(Rank 3)
        },
        [134217728] = {
            1535, -- Fire Nova Totem(Rank 1)
            8498, -- Fire Nova Totem(Rank 2)
            8499, -- Fire Nova Totem(Rank 3)
            11314, -- Fire Nova Totem(Rank 4)
            11315, -- Fire Nova Totem(Rank 5)
            23419, -- Corrupted Fire Nova Totem
            27623, -- Fire Nova Totem(Rank 5)
        },
        [268435456] = {
            8050, -- Flame Shock(Rank 1)
            8052, -- Flame Shock(Rank 2)
            8053, -- Flame Shock(Rank 3)
            10447, -- Flame Shock(Rank 4)
            10448, -- Flame Shock(Rank 5)
            29228, -- Flame Shock(Rank 6)
        },
        [536870912] = {
            1535, -- Fire Nova Totem(Rank 1)
            2484, -- Earthbind Totem
            6495, -- Sentry Totem
            8071, -- Stoneskin Totem(Rank 1)
            8075, -- Strength of Earth Totem(Rank 1)
            8143, -- Tremor Totem
            8154, -- Stoneskin Totem(Rank 2)
            8155, -- Stoneskin Totem(Rank 3)
            8160, -- Strength of Earth Totem(Rank 2)
            8161, -- Strength of Earth Totem(Rank 3)
            8166, -- Poison Cleansing Totem
            8170, -- Disease Cleansing Totem
            8177, -- Grounding Totem
            8181, -- Frost Resistance Totem(Rank 1)
            8184, -- Fire Resistance Totem(Rank 1)
            8227, -- Flametongue Totem(Rank 1)
            8249, -- Flametongue Totem(Rank 2)
            8498, -- Fire Nova Totem(Rank 2)
            8499, -- Fire Nova Totem(Rank 3)
            8512, -- Windfury Totem(Rank 1)
            8835, -- Grace of Air Totem(Rank 1)
            10406, -- Stoneskin Totem(Rank 4)
            10407, -- Stoneskin Totem(Rank 5)
            10408, -- Stoneskin Totem(Rank 6)
            10442, -- Strength of Earth Totem(Rank 4)
            10478, -- Frost Resistance Totem(Rank 2)
            10479, -- Frost Resistance Totem(Rank 3)
            10526, -- Flametongue Totem(Rank 3)
            10537, -- Fire Resistance Totem(Rank 2)
            10538, -- Fire Resistance Totem(Rank 3)
            10595, -- Nature Resistance Totem(Rank 1)
            10600, -- Nature Resistance Totem(Rank 2)
            10601, -- Nature Resistance Totem(Rank 3)
            10613, -- Windfury Totem(Rank 2)
            10614, -- Windfury Totem(Rank 3)
            10627, -- Grace of Air Totem(Rank 2)
            11314, -- Fire Nova Totem(Rank 4)
            11315, -- Fire Nova Totem(Rank 5)
            15107, -- Windwall Totem(Rank 1)
            15111, -- Windwall Totem(Rank 2)
            15112, -- Windwall Totem(Rank 3)
            16190, -- Mana Tide Totem(Rank 1)
            16387, -- Flametongue Totem(Rank 4)
            17354, -- Mana Tide Totem(Rank 2)
            17359, -- Mana Tide Totem(Rank 3)
            23419, -- Corrupted Fire Nova Totem
            23420, -- Corrupted Stoneskin Totem
            23423, -- Corrupted Windfury Totem
            25001, -- Spirit Totem
            25359, -- Grace of Air Totem(Rank 3)
            25361, -- Strength of Earth Totem(Rank 5)
            25908, -- Tranquil Air Totem
            27621, -- Windfury Totem(Rank 3)
            27623, -- Fire Nova Totem(Rank 5)
        },
        [1073741824] = {
            3606, -- Attack(Rank 1)
            6350, -- Attack(Rank 2)
            6351, -- Attack(Rank 3)
            6352, -- Attack(Rank 4)
            8187, -- Magma Totem(Rank 1)
            8349, -- Fire Nova(Rank 1)
            8502, -- Fire Nova(Rank 2)
            8503, -- Fire Nova(Rank 3)
            10435, -- Attack(Rank 5)
            10436, -- Attack(Rank 6)
            10579, -- Magma Totem(Rank 2)
            10580, -- Magma Totem(Rank 3)
            10581, -- Magma Totem(Rank 4)
            11306, -- Fire Nova(Rank 4)
            11307, -- Fire Nova(Rank 5)
            25002, -- Spirit Disruption
        },
        [2147483648] = {
            8056, -- Frost Shock(Rank 1)
            8058, -- Frost Shock(Rank 2)
            10472, -- Frost Shock(Rank 3)
            10473, -- Frost Shock(Rank 4)
        },
    },
    [2] = {
        [1] = {
            3600, -- Earthbind
        },
        [2] = {
            8516, -- Windfury Totem(Rank 1)
            10608, -- Windfury Totem(Rank 2)
            10610, -- Windfury Totem(Rank 3)
        },
        [4] = {
            8248, -- Flametongue Totem Proc(Rank 2)
            8253, -- Flametongue Totem Proc(Rank 1)
            10523, -- Flametongue Totem Proc(Rank 3)
            16389, -- Flametongue Totem Proc(Rank 4)
        },
        [8] = {
            526, -- Cure Poison
            2870, -- Cure Disease
        },
    },
    [3] = {
    },
    [4] = {
    },
};


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
        noCrit = true,
        charges = 3,
    },
    [GetSpellInfo(8050)] = { -- Flame Shock
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(3599)] = { -- Searing Totem
        school = 3,
        GCD = 1,
        defType = 1,
    },
    [GetSpellInfo(1535)] = { -- Fire Nova Totem
        school = 3,
        GCD = 1,
        defType = 1,
    },
    [GetSpellInfo(8004)] = { -- Lesser Healing Wave
        school = 4,
        defType = 1,
    },
    [GetSpellInfo(5394)] = { -- Healing Stream Totem
        school = 5,
        GCD = 1,
        defType = 1,
    },
    [GetSpellInfo(8056)] = { -- Frost Shock
        school = 5,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(8190)] = { -- Magma Totem
        school = 3,
        GCD = 1,
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
    [GetSpellInfo(974)] = { -- Earth Shield
        school = 4,
        defType = 1,
        forceHeal = true,
        charges = 6,
    },
};

_addon.spellInfo = {
    [324] = { -- Lightning Shield(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 600,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26364,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [325] = { -- Lightning Shield(Rank 2)
        spellLevel = 16,
        maxLevel = 0,
        duration = 600,
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26365,
                valueRange = 0,
                coef = 0,
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
                valueBase = 34,
                valueRange = 10,
                valuePerLevel = 0.7,
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
                valueBase = 64,
                valueRange = 14,
                valuePerLevel = 1,
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
                valueBase = 13,
                valueRange = 2,
                valuePerLevel = 0.4,
                coef = 0.137,
            },
        }
    },
    [421] = { -- Chain Lightning(Rank 1)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 255,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 191,
                valueRange = 26,
                valuePerLevel = 1.9,
                coef = 0.651,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [529] = { -- Lightning Bolt(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 26,
                valueRange = 4,
                valuePerLevel = 0.5,
                coef = 0.349,
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
                valueBase = 129,
                valueRange = 26,
                valuePerLevel = 1.5,
                coef = 0.5,
            },
        }
    },
    [548] = { -- Lightning Bolt(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 45,
                valueRange = 8,
                valuePerLevel = 0.7,
                coef = 0.616,
            },
        }
    },
    [905] = { -- Lightning Shield(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        duration = 600,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26366,
                valueRange = 0,
                coef = 0,
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
                valueBase = 268,
                valueRange = 48,
                valuePerLevel = 2.3,
                coef = 0.793,
            },
        }
    },
    [915] = { -- Lightning Bolt(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 83,
                valueRange = 12,
                valuePerLevel = 1,
                coef = 0.794,
            },
        }
    },
    [930] = { -- Chain Lightning(Rank 2)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 345,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 277,
                valueRange = 34,
                valuePerLevel = 2.3,
                coef = 0.651,
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
                valueBase = 376,
                valueRange = 64,
                valuePerLevel = 2.7,
                coef = 0.857,
            },
        }
    },
    [943] = { -- Lightning Bolt(Rank 5)
        spellLevel = 26,
        maxLevel = 31,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 125,
                valueRange = 18,
                valuePerLevel = 1.2,
                coef = 0.794,
            },
        }
    },
    [945] = { -- Lightning Shield(Rank 4)
        spellLevel = 32,
        maxLevel = 0,
        duration = 600,
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26367,
                valueRange = 0,
                coef = 0,
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
                valueBase = 536,
                valueRange = 86,
                valuePerLevel = 3.3,
                coef = 0.857,
            },
        }
    },
    [974] = { -- Earth Shield(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 600,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 150,
                valueRange = 0,
                coef = 0.286,
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
                valueBase = 320,
                valueRange = 48,
                valuePerLevel = 2.5,
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
                valueBase = 48,
                valueRange = 8,
                valuePerLevel = 1.1,
                coef = 0.15,
            },
        }
    },
    [2860] = { -- Chain Lightning(Rank 3)
        spellLevel = 48,
        maxLevel = 53,
        baseCost = 445,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 378,
                valueRange = 46,
                valuePerLevel = 2.7,
                coef = 0.651,
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
                valueBase = 9,
                valueRange = 2,
                coef = 0.104,
            },
        }
    },
    [5394] = { -- Healing Stream Totem(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 120,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 6,
                valueRange = 0,
                coef = 0.044,
            },
        }
    },
    [6041] = { -- Lightning Bolt(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 172,
                valueRange = 22,
                valuePerLevel = 1.5,
                coef = 0.794,
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
                valueBase = 13,
                valueRange = 4,
                coef = 0.167,
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
                valueBase = 19,
                valueRange = 6,
                coef = 0.167,
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
                valueBase = 26,
                valueRange = 8,
                coef = 0.167,
            },
        }
    },
    [6375] = { -- Healing Stream Totem(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 120,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 8,
                valueRange = 0,
                coef = 0.044,
            },
        }
    },
    [6377] = { -- Healing Stream Totem(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 120,
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 10,
                valueRange = 0,
                coef = 0.044,
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
    [8004] = { -- Lesser Healing Wave(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 162,
                valueRange = 24,
                valuePerLevel = 1.7,
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
                valueBase = 740,
                valueRange = 114,
                valuePerLevel = 3.9,
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
                valueBase = 247,
                valueRange = 34,
                valuePerLevel = 2.1,
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
                valueBase = 337,
                valueRange = 44,
                valuePerLevel = 2.5,
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
                valueBase = 17,
                valueRange = 2,
                valuePerLevel = 0.5,
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
                valueBase = 32,
                valueRange = 2,
                valuePerLevel = 0.7,
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
                valueBase = 60,
                valueRange = 4,
                valuePerLevel = 1,
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
                valueBase = 119,
                valueRange = 8,
                valuePerLevel = 1.4,
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
                valueBase = 21,
                valueRange = 0,
                valuePerLevel = 0.8,
                coef = 0.134,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 7,
                valueRange = 0,
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
                valueBase = 45,
                valueRange = 0,
                valuePerLevel = 1.2,
                coef = 0.198,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 12,
                valueRange = 0,
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
                valueBase = 86,
                valueRange = 0,
                valuePerLevel = 1.7,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 24,
                valueRange = 0,
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
                valueBase = 89,
                valueRange = 6,
                valuePerLevel = 1.2,
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
                valueBase = 206,
                valueRange = 14,
                valuePerLevel = 1.9,
                coef = 0.386,
            },
        }
    },
    [8134] = { -- Lightning Shield(Rank 5)
        spellLevel = 40,
        maxLevel = 0,
        duration = 600,
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26369,
                valueRange = 0,
                coef = 0,
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
                valueBase = 22,
                valueRange = 0,
                coef = 0.067,
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
                valueBase = 102,
                valueRange = 14,
                valuePerLevel = 1.6,
                coef = 0.214,
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
                valueBase = 184,
                valueRange = 24,
                valuePerLevel = 2.2,
                coef = 0.214,
            },
        }
    },
    [10391] = { -- Lightning Bolt(Rank 7)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 227,
                valueRange = 28,
                valuePerLevel = 1.7,
                coef = 0.794,
            },
        }
    },
    [10392] = { -- Lightning Bolt(Rank 8)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 175,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 282,
                valueRange = 34,
                valuePerLevel = 1.9,
                coef = 0.794,
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
                valueBase = 1017,
                valueRange = 150,
                valuePerLevel = 4.7,
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
                valueBase = 1367,
                valueRange = 194,
                valuePerLevel = 5.5,
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
                valueBase = 225,
                valueRange = 14,
                valuePerLevel = 2,
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
                valueBase = 359,
                valueRange = 22,
                valuePerLevel = 2.6,
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
                valueBase = 517,
                valueRange = 28,
                valuePerLevel = 3.1,
                coef = 0.386,
            },
        }
    },
    [10431] = { -- Lightning Shield(Rank 6)
        spellLevel = 48,
        maxLevel = 0,
        duration = 600,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26370,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [10432] = { -- Lightning Shield(Rank 7)
        spellLevel = 56,
        maxLevel = 0,
        duration = 600,
        baseCost = 275,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26363,
                valueRange = 0,
                coef = 0,
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
                valueBase = 33,
                valueRange = 12,
                coef = 0.167,
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
                valueBase = 40,
                valueRange = 14,
                coef = 0.167,
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
                valueBase = 152,
                valueRange = 0,
                valuePerLevel = 2.3,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 42,
                valueRange = 0,
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
                valueBase = 230,
                valueRange = 0,
                valuePerLevel = 2.9,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 64,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [10462] = { -- Healing Stream Totem(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 120,
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 12,
                valueRange = 0,
                coef = 0.044,
            },
        }
    },
    [10463] = { -- Healing Stream Totem(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 120,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 14,
                valueRange = 0,
                coef = 0.044,
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
                valueBase = 458,
                valueRange = 56,
                valuePerLevel = 3,
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
                valueBase = 631,
                valueRange = 74,
                valuePerLevel = 3.6,
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
                valueBase = 832,
                valueRange = 96,
                valuePerLevel = 4.2,
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
                valueBase = 333,
                valueRange = 20,
                valuePerLevel = 2.5,
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
                valueBase = 486,
                valueRange = 28,
                valuePerLevel = 3,
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
                valueBase = 37,
                valueRange = 0,
                coef = 0.067,
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
                valueBase = 54,
                valueRange = 0,
                coef = 0.067,
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
                valueBase = 75,
                valueRange = 0,
                coef = 0.067,
            },
        }
    },
    [10605] = { -- Chain Lightning(Rank 4)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 550,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 493,
                valueRange = 58,
                valuePerLevel = 3.1,
                coef = 0.651,
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
                valueBase = 405,
                valueRange = 60,
                valuePerLevel = 2.8,
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
                valueBase = 551,
                valueRange = 78,
                valuePerLevel = 3.3,
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
                valueBase = 281,
                valueRange = 36,
                valuePerLevel = 2.8,
                coef = 0.214,
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
                valueBase = 396,
                valueRange = 46,
                valuePerLevel = 3.4,
                coef = 0.214,
            },
        }
    },
    [15207] = { -- Lightning Bolt(Rank 9)
        spellLevel = 50,
        maxLevel = 55,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 347,
                valueRange = 42,
                valuePerLevel = 2.1,
                coef = 0.794,
            },
        }
    },
    [15208] = { -- Lightning Bolt(Rank 10)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 240,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 419,
                valueRange = 48,
                valuePerLevel = 2.4,
                coef = 0.794,
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
                valueBase = 1620,
                valueRange = 230,
                valuePerLevel = 5.5,
                coef = 0.857,
            },
        }
    },
    [25391] = { -- Healing Wave(Rank 11)
        spellLevel = 63,
        maxLevel = 68,
        baseCost = 655,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1725,
                valueRange = 244,
                valuePerLevel = 6.3,
                coef = 0.857,
            },
        }
    },
    [25396] = { -- Healing Wave(Rank 12)
        spellLevel = 70,
        maxLevel = 73,
        baseCost = 720,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2134,
                valueRange = 302,
                valuePerLevel = 7.1,
                coef = 0.857,
            },
        }
    },
    [25420] = { -- Lesser Healing Wave(Rank 7)
        spellLevel = 66,
        maxLevel = 69,
        baseCost = 440,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1039,
                valueRange = 146,
                valuePerLevel = 4.2,
                coef = 0.429,
            },
        }
    },
    [25422] = { -- Chain Heal(Rank 4)
        spellLevel = 61,
        maxLevel = 66,
        baseCost = 435,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 605,
                valueRange = 86,
                valuePerLevel = 3.8,
                coef = 0.714,
                chains = 3,
                chainMult = 0.5,
            },
        }
    },
    [25423] = { -- Chain Heal(Rank 5)
        spellLevel = 68,
        maxLevel = 73,
        baseCost = 540,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 826,
                valueRange = 116,
                valuePerLevel = 3.8,
                coef = 0.714,
                chains = 3,
                chainMult = 0.5,
            },
        }
    },
    [25439] = { -- Chain Lightning(Rank 5)
        spellLevel = 63,
        maxLevel = 68,
        baseCost = 650,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 603,
                valueRange = 84,
                valuePerLevel = 3.5,
                coef = 0.651,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [25442] = { -- Chain Lightning(Rank 6)
        spellLevel = 70,
        maxLevel = 73,
        baseCost = 760,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 734,
                valueRange = 104,
                valuePerLevel = 3.9,
                coef = 0.651,
                chains = 3,
                chainMult = 0.7,
            },
        }
    },
    [25448] = { -- Lightning Bolt(Rank 11)
        spellLevel = 62,
        maxLevel = 66,
        baseCost = 275,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 495,
                valueRange = 70,
                valuePerLevel = 2.6,
                coef = 0.794,
            },
        }
    },
    [25449] = { -- Lightning Bolt(Rank 12)
        spellLevel = 67,
        maxLevel = 71,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 563,
                valueRange = 80,
                valuePerLevel = 2.8,
                coef = 0.794,
            },
        }
    },
    [25454] = { -- Earth Shock(Rank 8)
        spellLevel = 69,
        maxLevel = 73,
        duration = 2,
        baseCost = 535,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 658,
                valueRange = 34,
                valuePerLevel = 3.6,
                coef = 0.386,
            },
        }
    },
    [25457] = { -- Flame Shock(Rank 7)
        spellLevel = 70,
        maxLevel = 74,
        duration = 12,
        baseCost = 500,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 377,
                valueRange = 0,
                valuePerLevel = 3.8,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 105,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [25464] = { -- Frost Shock(Rank 5)
        spellLevel = 68,
        maxLevel = 72,
        duration = 8,
        baseCost = 525,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 640,
                valueRange = 36,
                valuePerLevel = 3.5,
                coef = 0.386,
            },
        }
    },
    [25469] = { -- Lightning Shield(Rank 8)
        spellLevel = 63,
        maxLevel = 68,
        duration = 600,
        baseCost = 325,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26371,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [25472] = { -- Lightning Shield(Rank 9)
        spellLevel = 70,
        maxLevel = 74,
        duration = 600,
        baseCost = 400,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 26372,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [25533] = { -- Searing Totem(Rank 7)
        spellLevel = 69,
        maxLevel = 0,
        duration = 60,
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 50,
                valueRange = 16,
                coef = 0.167,
            },
        }
    },
    [25546] = { -- Fire Nova Totem(Rank 6)
        spellLevel = 61,
        maxLevel = 66,
        duration = 5,
        baseCost = 640,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 518,
                valueRange = 60,
                valuePerLevel = 3.9,
                coef = 0.214,
            },
        }
    },
    [25547] = { -- Fire Nova Totem(Rank 7)
        spellLevel = 70,
        maxLevel = 75,
        duration = 5,
        baseCost = 765,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 654,
                valueRange = 76,
                valuePerLevel = 4.5,
                coef = 0.214,
            },
        }
    },
    [25552] = { -- Magma Totem(Rank 5)
        spellLevel = 65,
        maxLevel = 0,
        duration = 20,
        baseCost = 800,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 97,
                valueRange = 0,
                coef = 0.067,
            },
        }
    },
    [25567] = { -- Healing Stream Totem(Rank 6)
        spellLevel = 69,
        maxLevel = 0,
        duration = 120,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 18,
                valueRange = 0,
                coef = 0.044,
            },
        }
    },
    [26363] = { -- Lightning Shield(Rank 7)
        spellLevel = 56,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 198,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [26364] = { -- Lightning Shield(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 0,
                coef = 0.147,
            },
        }
    },
    [26365] = { -- Lightning Shield(Rank 2)
        spellLevel = 16,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 29,
                valueRange = 0,
                coef = 0.227,
            },
        }
    },
    [26366] = { -- Lightning Shield(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 51,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [26367] = { -- Lightning Shield(Rank 4)
        spellLevel = 32,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 80,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [26369] = { -- Lightning Shield(Rank 5)
        spellLevel = 40,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 114,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [26370] = { -- Lightning Shield(Rank 6)
        spellLevel = 48,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 154,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [26371] = { -- Lightning Shield(Rank 8)
        spellLevel = 63,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 232,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [26372] = { -- Lightning Shield(Rank 9)
        spellLevel = 70,
        maxLevel = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 287,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [29228] = { -- Flame Shock(Rank 6)
        spellLevel = 60,
        maxLevel = 67,
        duration = 12,
        baseCost = 450,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 309,
                valueRange = 0,
                valuePerLevel = 3.5,
                coef = 0.214,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 86,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [32593] = { -- Earth Shield(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 600,
        baseCost = 375,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 205,
                valueRange = 0,
                coef = 0.286,
            },
        }
    },
    [32594] = { -- Earth Shield(Rank 3)
        spellLevel = 70,
        maxLevel = 79,
        duration = 600,
        baseCost = 450,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 270,
                valueRange = 0,
                coef = 0.286,
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
            25448, -- Lightning Bolt(Rank 11)
            25449, -- Lightning Bolt(Rank 12)
            45284, -- Lightning Bolt(Rank 1)
            45286, -- Lightning Bolt(Rank 2)
            45287, -- Lightning Bolt(Rank 3)
            45288, -- Lightning Bolt(Rank 4)
            45289, -- Lightning Bolt(Rank 5)
            45290, -- Lightning Bolt(Rank 6)
            45291, -- Lightning Bolt(Rank 7)
            45292, -- Lightning Bolt(Rank 8)
            45293, -- Lightning Bolt(Rank 9)
            45294, -- Lightning Bolt(Rank 10)
            45295, -- Lightning Bolt(Rank 11)
            45296, -- Lightning Bolt(Rank 12)
        },
        [2] = {
            421, -- Chain Lightning(Rank 1)
            930, -- Chain Lightning(Rank 2)
            2860, -- Chain Lightning(Rank 3)
            10605, -- Chain Lightning(Rank 4)
            25439, -- Chain Lightning(Rank 5)
            25442, -- Chain Lightning(Rank 6)
            45297, -- Chain Lightning(Rank 1)
            45298, -- Chain Lightning(Rank 2)
            45299, -- Chain Lightning(Rank 3)
            45300, -- Chain Lightning(Rank 4)
            45301, -- Chain Lightning(Rank 5)
            45302, -- Chain Lightning(Rank 6)
        },
        [4] = {
            8187, -- Magma Totem(Rank 1)
            10579, -- Magma Totem(Rank 2)
            10580, -- Magma Totem(Rank 3)
            10581, -- Magma Totem(Rank 4)
            17012, -- Devour Magic
            25550, -- Magma Totem(Rank 5)
        },
        [8] = {
            5730, -- Stoneclaw Totem(Rank 1)
            6390, -- Stoneclaw Totem(Rank 2)
            6391, -- Stoneclaw Totem(Rank 3)
            6392, -- Stoneclaw Totem(Rank 4)
            10427, -- Stoneclaw Totem(Rank 5)
            10428, -- Stoneclaw Totem(Rank 6)
            25525, -- Stoneclaw Totem(Rank 7)
        },
        [16] = {
            3599, -- Searing Totem(Rank 1)
            6363, -- Searing Totem(Rank 2)
            6364, -- Searing Totem(Rank 3)
            6365, -- Searing Totem(Rank 4)
            10437, -- Searing Totem(Rank 5)
            10438, -- Searing Totem(Rank 6)
            25533, -- Searing Totem(Rank 7)
            38116, -- Searing Totem(Rank 2)
            38581, -- Corrupted Searing Totem
            39588, -- Searing Totem
            39589, -- Cyclone Totem
            39591, -- Searing Totem
        },
        [32] = {
            8443, -- Fire Nova(Rank 1)
            8504, -- Fire Nova(Rank 2)
            8505, -- Fire Nova(Rank 3)
            11310, -- Fire Nova(Rank 4)
            11311, -- Fire Nova(Rank 5)
            25538, -- Fire Nova(Rank 6)
            25539, -- Fire Nova(Rank 7)
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
            25391, -- Healing Wave(Rank 11)
            25396, -- Healing Wave(Rank 12)
        },
        [128] = {
            8004, -- Lesser Healing Wave(Rank 1)
            8008, -- Lesser Healing Wave(Rank 2)
            8010, -- Lesser Healing Wave(Rank 3)
            10466, -- Lesser Healing Wave(Rank 4)
            10467, -- Lesser Healing Wave(Rank 5)
            10468, -- Lesser Healing Wave(Rank 6)
            25420, -- Lesser Healing Wave(Rank 7)
            27624, -- Lesser Healing Wave(Rank 6)
            44256, -- Lesser Healing Wave
            46181, -- Lesser Healing Wave
        },
        [256] = {
            1064, -- Chain Heal(Rank 1)
            10622, -- Chain Heal(Rank 2)
            10623, -- Chain Heal(Rank 3)
            25422, -- Chain Heal(Rank 4)
            25423, -- Chain Heal(Rank 5)
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
            25469, -- Lightning Shield(Rank 8)
            25472, -- Lightning Shield(Rank 9)
            26363, -- Lightning Shield(Rank 7)
            26364, -- Lightning Shield(Rank 1)
            26365, -- Lightning Shield(Rank 2)
            26366, -- Lightning Shield(Rank 3)
            26367, -- Lightning Shield(Rank 4)
            26369, -- Lightning Shield(Rank 5)
            26370, -- Lightning Shield(Rank 6)
            26371, -- Lightning Shield(Rank 8)
            26372, -- Lightning Shield(Rank 9)
            27635, -- Lightning Shield
            32642, -- Spore Cloud
            34828, -- Water Shield
            35320, -- Electric Skin
        },
        [2048] = {
            2645, -- Ghost Wolf
        },
        [4096] = {
            8190, -- Magma Totem(Rank 1)
            10585, -- Magma Totem(Rank 2)
            10586, -- Magma Totem(Rank 3)
            10587, -- Magma Totem(Rank 4)
            25552, -- Magma Totem(Rank 5)
        },
        [8192] = {
            5672, -- Healing Stream(Rank 1)
            6371, -- Healing Stream(Rank 2)
            6372, -- Healing Stream(Rank 3)
            10460, -- Healing Stream(Rank 4)
            10461, -- Healing Stream(Rank 5)
            25566, -- Healing Stream(Rank 6)
            32136, -- Corrupted Healing Stream
            51847, -- The Brewmaiden's Blessing(Rank 6)
        },
        [16384] = {
            5677, -- Mana Spring(Rank 1)
            10491, -- Mana Spring(Rank 2)
            10493, -- Mana Spring(Rank 3)
            10494, -- Mana Spring(Rank 4)
            24853, -- Mana Spring
            25569, -- Mana Spring(Rank 5)
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
            25506, -- Stoneskin(Rank 7)
            25507, -- Stoneskin(Rank 8)
            25576, -- Windwall(Rank 4)
            31986, -- Stoneskin
        },
        [65536] = {
            8076, -- Strength of Earth(Rank 1)
            8162, -- Strength of Earth(Rank 2)
            8163, -- Strength of Earth(Rank 3)
            10441, -- Strength of Earth(Rank 4)
            25362, -- Strength of Earth(Rank 5)
            25527, -- Strength of Earth(Rank 6)
            31634, -- Strength of Earth(Rank 1)
            32729, -- Strength of the Mag'halar(Rank 1)
            33571, -- Strength of the Storm
        },
        [131072] = {
            8836, -- Grace of Air(Rank 1)
            10626, -- Grace of Air(Rank 2)
            25360, -- Grace of Air(Rank 3)
            32138, -- Corrupted Air
            32662, -- Shadow Totem
        },
        [262144] = {
            8177, -- Grounding Totem
            34079, -- Grounding Totem
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
            25567, -- Healing Stream Totem(Rank 6)
            25570, -- Mana Spring Totem(Rank 5)
            32135, -- Corrupted Healing Stream Totem
            32137, -- Corrupted Air Totem
            35199, -- Healing Stream Totem
        },
        [1048576] = {
            8042, -- Earth Shock(Rank 1)
            8044, -- Earth Shock(Rank 2)
            8045, -- Earth Shock(Rank 3)
            8046, -- Earth Shock(Rank 4)
            10412, -- Earth Shock(Rank 5)
            10413, -- Earth Shock(Rank 6)
            10414, -- Earth Shock(Rank 7)
            25454, -- Earth Shock(Rank 8)
        },
        [2097152] = {
            8026, -- Flametongue Weapon Proc(Rank 1)
            8028, -- Flametongue Weapon Proc(Rank 2)
            8029, -- Flametongue Weapon Proc(Rank 3)
            10444, -- Flametongue Attack(Rank 3)
            10445, -- Flametongue Weapon Proc(Rank 4)
            16343, -- Flametongue Weapon Proc(Rank 5)
            16344, -- Flametongue Weapon Proc(Rank 6)
            25488, -- Flametongue Weapon Proc(Rank 7)
            29469, -- Flametongue Attack(Rank 1)
            29470, -- Flametongue Attack(Rank 2)
        },
        [4194304] = {
            8017, -- Rockbiter Weapon(Rank 1)
            8018, -- Rockbiter Weapon(Rank 2)
            8019, -- Rockbiter Weapon(Rank 3)
            10399, -- Rockbiter Weapon(Rank 4)
            16314, -- Rockbiter Weapon(Rank 5)
            16315, -- Rockbiter Weapon(Rank 6)
            16316, -- Rockbiter Weapon(Rank 7)
            25479, -- Rockbiter Weapon(Rank 8)
            25485, -- Rockbiter Weapon(Rank 9)
        },
        [8388608] = {
            25504, -- Windfury Attack
            32910, -- Windfury
            33750, -- Windfury Attack
        },
        [16777216] = {
            8034, -- Frostbrand Attack(Rank 1)
            8037, -- Frostbrand Attack(Rank 2)
            10458, -- Frostbrand Attack(Rank 3)
            16352, -- Frostbrand Attack(Rank 4)
            16353, -- Frostbrand Attack(Rank 5)
            25501, -- Frostbrand Attack(Rank 6)
            38617, -- Frostbrand Attack
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
            16191, -- Mana Tide
            25554, -- Flametongue Totem Effect(Rank 5)
            25559, -- Frost Resistance(Rank 4)
            25562, -- Fire Resistance(Rank 4)
            25573, -- Nature Resistance(Rank 4)
            25579, -- Windfury Totem Effect(Rank 4)
            25580, -- Windfury Totem Effect(Rank 5)
            25909, -- Tranquil Air(Rank 1)
            30039, -- Transference
            30107, -- Transference
            30708, -- Totem of Wrath
            38857, -- Spell Ground
            39610, -- Mana Tide Totem
        },
        [134217728] = {
            1535, -- Fire Nova Totem(Rank 1)
            8498, -- Fire Nova Totem(Rank 2)
            8499, -- Fire Nova Totem(Rank 3)
            11314, -- Fire Nova Totem(Rank 4)
            11315, -- Fire Nova Totem(Rank 5)
            23419, -- Corrupted Fire Nova Totem
            25546, -- Fire Nova Totem(Rank 6)
            25547, -- Fire Nova Totem(Rank 7)
            27623, -- Fire Nova Totem(Rank 5)
            32062, -- Fire Nova Totem
            38624, -- Water Elemental Totem
            44130, -- Earth Elemental Totem
            44257, -- Fire Nova Totem
        },
        [268435456] = {
            8050, -- Flame Shock(Rank 1)
            8052, -- Flame Shock(Rank 2)
            8053, -- Flame Shock(Rank 3)
            10447, -- Flame Shock(Rank 4)
            10448, -- Flame Shock(Rank 5)
            25457, -- Flame Shock(Rank 7)
            29228, -- Flame Shock(Rank 6)
        },
        [536870912] = {
            1535, -- Fire Nova Totem(Rank 1)
            2062, -- Earth Elemental Totem(Rank 1)
            2484, -- Earthbind Totem
            2894, -- Fire Elemental Totem(Rank 1)
            3738, -- Wrath of Air Totem(Rank 1)
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
            16190, -- Mana Tide Totem
            16387, -- Flametongue Totem(Rank 4)
            23419, -- Corrupted Fire Nova Totem
            23420, -- Corrupted Stoneskin Totem
            23423, -- Corrupted Windfury Totem
            25001, -- Spirit Totem
            25359, -- Grace of Air Totem(Rank 3)
            25361, -- Strength of Earth Totem(Rank 5)
            25508, -- Stoneskin Totem(Rank 7)
            25509, -- Stoneskin Totem(Rank 8)
            25528, -- Strength of Earth Totem(Rank 6)
            25546, -- Fire Nova Totem(Rank 6)
            25547, -- Fire Nova Totem(Rank 7)
            25557, -- Flametongue Totem(Rank 5)
            25560, -- Frost Resistance Totem(Rank 4)
            25563, -- Fire Resistance Totem(Rank 4)
            25574, -- Nature Resistance Totem(Rank 4)
            25577, -- Windwall Totem(Rank 4)
            25585, -- Windfury Totem(Rank 4)
            25587, -- Windfury Totem(Rank 5)
            25908, -- Tranquil Air Totem
            27621, -- Windfury Totem(Rank 3)
            27623, -- Fire Nova Totem(Rank 5)
            30706, -- Totem of Wrath(Rank 1)
            31633, -- Strength of Earth Totem(Rank 1)
            31985, -- Tainted Stoneskin Totem
            32062, -- Fire Nova Totem
            33570, -- Strength of the Storm Totem(Rank 1)
            34079, -- Grounding Totem
            35197, -- Terror Totem
            38115, -- Stoneskin Totem(Rank 2)
            38624, -- Water Elemental Totem
            39586, -- Summon Windfury Totem
            44130, -- Earth Elemental Totem
            44257, -- Fire Nova Totem
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
            25530, -- Attack(Rank 7)
            25535, -- Fire Nova(Rank 6)
            25537, -- Fire Nova(Rank 7)
            25550, -- Magma Totem(Rank 5)
            30624, -- Fel Miasma
            38584, -- Attack
            39592, -- Attack
            39593, -- Attack
        },
        [2147483648] = {
            8056, -- Frost Shock(Rank 1)
            8058, -- Frost Shock(Rank 2)
            10472, -- Frost Shock(Rank 3)
            10473, -- Frost Shock(Rank 4)
            25464, -- Frost Shock(Rank 5)
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
            25583, -- Windfury Attack(Rank 4)
            25584, -- Windfury Attack(Rank 5)
        },
        [4] = {
            8248, -- Flametongue Totem Proc(Rank 2)
            8253, -- Flametongue Totem Proc(Rank 1)
            10523, -- Flametongue Totem Proc(Rank 3)
            16389, -- Flametongue Totem Proc(Rank 4)
            25555, -- Flametongue Totem Proc(Rank 5)
        },
        [8] = {
            526, -- Cure Poison
            2870, -- Cure Disease
        },
        [16] = {
            17364, -- Stormstrike
            32175, -- Stormstrike
            32176, -- Stormstrike
        },
        [32] = {
            23575, -- Water Shield
            24398, -- Water Shield(Rank 1)
            33736, -- Water Shield(Rank 2)
            33737, -- Water Shield
        },
        [64] = {
            2825, -- Bloodlust(Rank 1)
            32182, -- Heroism
        },
        [128] = {
            16188, -- Nature's Swiftness
            38466, -- Nature's Swiftness Cooldown Reduction
        },
        [256] = {
            2895, -- Wrath of Air Totem(Rank 1)
        },
        [512] = {
            16257, -- Flurry(Rank 1)
            16277, -- Flurry(Rank 2)
            16278, -- Flurry(Rank 3)
            16279, -- Flurry(Rank 4)
            16280, -- Flurry(Rank 5)
        },
        [1024] = {
            974, -- Earth Shield(Rank 1)
            32593, -- Earth Shield(Rank 2)
            32594, -- Earth Shield(Rank 3)
        },
        [2048] = {
            131, -- Water Breathing
            370, -- Purge(Rank 1)
            546, -- Water Walking
            8012, -- Purge(Rank 2)
            8024, -- Flametongue Weapon(Rank 1)
            8027, -- Flametongue Weapon(Rank 2)
            8030, -- Flametongue Weapon(Rank 3)
            8033, -- Frostbrand Weapon(Rank 1)
            8038, -- Frostbrand Weapon(Rank 2)
            8232, -- Windfury Weapon(Rank 1)
            8235, -- Windfury Weapon(Rank 2)
            10456, -- Frostbrand Weapon(Rank 3)
            10486, -- Windfury Weapon(Rank 3)
            16339, -- Flametongue Weapon(Rank 4)
            16341, -- Flametongue Weapon(Rank 5)
            16342, -- Flametongue Weapon(Rank 6)
            16355, -- Frostbrand Weapon(Rank 4)
            16356, -- Frostbrand Weapon(Rank 5)
            16362, -- Windfury Weapon(Rank 4)
            25489, -- Flametongue Weapon(Rank 7)
            25500, -- Frostbrand Weapon(Rank 6)
            25505, -- Windfury Weapon(Rank 5)
        },
    },
    [3] = {
    },
    [4] = {
    },
};


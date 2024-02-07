-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {
    [324] = { -- Lightning Shield(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 600,
        baseCost = 45,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 13,
                valueRange = 0,
                triggeredSpell = 26364,
                coef = 0.14699999988,
                coefAP = 0,
            },
        }
    },
    [325] = { -- Lightning Shield(Rank 2)
        spellLevel = 16,
        maxLevel = 0,
        duration = 600,
        baseCost = 80,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 29,
                valueRange = 0,
                triggeredSpell = 26365,
                coef = 0.22699999809,
                coefAP = 0,
            },
        }
    },
    [331] = { -- Healing Wave(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 25,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 34,
                valueRange = 10,
                valuePerLevel = 0.69999998808,
                coef = 0.1230000034,
                coefAP = 0,
            },
        }
    },
    [332] = { -- Healing Wave(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 45,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 64,
                valueRange = 14,
                valuePerLevel = 1,
                coef = 0.27099999785,
                coefAP = 0,
            },
        }
    },
    [403] = { -- Lightning Bolt(Rank 1)
        spellLevel = 1,
        maxLevel = 6,
        baseCost = 15,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 2,
                valuePerLevel = 0.40000000596,
                coef = 0.1230000034,
                coefAP = 0,
            },
        }
    },
    [421] = { -- Chain Lightning(Rank 1)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 280,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 191,
                valueRange = 26,
                valuePerLevel = 1.89999997616,
                coef = 0.71399998665,
                coefAP = 0,
                chains = 3,
                chainMult = 0.69999998808,
            },
        }
    },
    [529] = { -- Lightning Bolt(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        baseCost = 30,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 26,
                valueRange = 4,
                valuePerLevel = 0.5,
                coef = 0.31400001049,
                coefAP = 0,
            },
        }
    },
    [547] = { -- Healing Wave(Rank 3)
        spellLevel = 12,
        maxLevel = 17,
        baseCost = 80,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 129,
                valueRange = 26,
                valuePerLevel = 1.5,
                coef = 0.5,
                coefAP = 0,
            },
        }
    },
    [548] = { -- Lightning Bolt(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 45,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 45,
                valueRange = 8,
                valuePerLevel = 0.69999998808,
                coef = 0.55400002003,
                coefAP = 0,
            },
        }
    },
    [905] = { -- Lightning Shield(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        duration = 600,
        baseCost = 125,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 51,
                valueRange = 0,
                triggeredSpell = 26366,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [913] = { -- Healing Wave(Rank 4)
        spellLevel = 18,
        maxLevel = 23,
        baseCost = 155,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 268,
                valueRange = 48,
                valuePerLevel = 2.29999995232,
                coef = 0.79299998283,
                coefAP = 0,
            },
        }
    },
    [915] = { -- Lightning Bolt(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 75,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 83,
                valueRange = 12,
                valuePerLevel = 1,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [930] = { -- Chain Lightning(Rank 2)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 380,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 277,
                valueRange = 34,
                valuePerLevel = 2.29999995232,
                coef = 0.71399998665,
                coefAP = 0,
                chains = 3,
                chainMult = 0.69999998808,
            },
        }
    },
    [939] = { -- Healing Wave(Rank 5)
        spellLevel = 24,
        maxLevel = 29,
        baseCost = 200,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 376,
                valueRange = 64,
                valuePerLevel = 2.70000004768,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [943] = { -- Lightning Bolt(Rank 5)
        spellLevel = 26,
        maxLevel = 31,
        baseCost = 105,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 125,
                valueRange = 18,
                valuePerLevel = 1.20000004768,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [945] = { -- Lightning Shield(Rank 4)
        spellLevel = 32,
        maxLevel = 0,
        duration = 600,
        baseCost = 180,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 80,
                valueRange = 0,
                triggeredSpell = 26367,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [959] = { -- Healing Wave(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 265,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 536,
                valueRange = 86,
                valuePerLevel = 3.29999995232,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [1064] = { -- Chain Heal(Rank 1)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 260,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 320,
                valueRange = 48,
                valuePerLevel = 2.5,
                coef = 0.71399998665,
                coefAP = 0,
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
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 8349,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [2860] = { -- Chain Lightning(Rank 3)
        spellLevel = 48,
        maxLevel = 53,
        baseCost = 490,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 378,
                valueRange = 46,
                valuePerLevel = 2.70000004768,
                coef = 0.71399998665,
                coefAP = 0,
                chains = 3,
                chainMult = 0.69999998808,
            },
        }
    },
    [3599] = { -- Searing Totem(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 30,
        baseCost = 25,
        school = 3,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 3606,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [3606] = { -- Attack(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 9,
                valueRange = 2,
                coef = 0.05200000107,
                coefAP = 0,
            },
        }
    },
    [5394] = { -- Healing Stream Totem(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 60,
        baseCost = 40,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6041] = { -- Lightning Bolt(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 135,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 172,
                valueRange = 22,
                valuePerLevel = 1.5,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [6350] = { -- Attack(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 4,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [6351] = { -- Attack(Rank 3)
        spellLevel = 30,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 19,
                valueRange = 6,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [6352] = { -- Attack(Rank 4)
        spellLevel = 40,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 26,
                valueRange = 8,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [6363] = { -- Searing Totem(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 35,
        baseCost = 45,
        school = 3,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 6350,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6364] = { -- Searing Totem(Rank 3)
        spellLevel = 30,
        maxLevel = 0,
        duration = 40,
        baseCost = 75,
        school = 3,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 6351,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6365] = { -- Searing Totem(Rank 4)
        spellLevel = 40,
        maxLevel = 0,
        duration = 45,
        baseCost = 110,
        school = 3,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 6352,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6375] = { -- Healing Stream Totem(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 60,
        baseCost = 50,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6377] = { -- Healing Stream Totem(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 60,
        baseCost = 60,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                coef = 0,
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
    [8004] = { -- Lesser Healing Wave(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 105,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 162,
                valueRange = 24,
                valuePerLevel = 1.70000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8005] = { -- Healing Wave(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 340,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 740,
                valueRange = 114,
                valuePerLevel = 3.90000009537,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [8008] = { -- Lesser Healing Wave(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 145,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 247,
                valueRange = 34,
                valuePerLevel = 2.09999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8010] = { -- Lesser Healing Wave(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        baseCost = 185,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 337,
                valueRange = 44,
                valuePerLevel = 2.5,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8042] = { -- Earth Shock(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 2,
        baseCost = 30,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 17,
                valueRange = 2,
                valuePerLevel = 0.5,
                coef = 0.15399999917,
                coefAP = 0,
            },
        }
    },
    [8044] = { -- Earth Shock(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        duration = 2,
        baseCost = 50,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 32,
                valueRange = 2,
                valuePerLevel = 0.69999998808,
                coef = 0.2119999975,
                coefAP = 0,
            },
        }
    },
    [8045] = { -- Earth Shock(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        duration = 2,
        baseCost = 85,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 60,
                valueRange = 4,
                valuePerLevel = 1,
                coef = 0.29899999499,
                coefAP = 0,
            },
        }
    },
    [8046] = { -- Earth Shock(Rank 4)
        spellLevel = 24,
        maxLevel = 29,
        duration = 2,
        baseCost = 145,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 119,
                valueRange = 8,
                valuePerLevel = 1.39999997616,
                coef = 0.38600000739,
                coefAP = 0,
            },
        }
    },
    [8050] = { -- Flame Shock(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        baseCost = 55,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 21,
                valueRange = 0,
                valuePerLevel = 0.80000001192,
                coef = 0.13400000334,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 7,
                valueRange = 0,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [8052] = { -- Flame Shock(Rank 2)
        spellLevel = 18,
        maxLevel = 23,
        duration = 12,
        baseCost = 95,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 45,
                valueRange = 0,
                valuePerLevel = 1.20000004768,
                coef = 0.19799999893,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 12,
                valueRange = 0,
                coef = 0.09300000221,
                coefAP = 0,
            },
        }
    },
    [8053] = { -- Flame Shock(Rank 3)
        spellLevel = 28,
        maxLevel = 33,
        duration = 12,
        baseCost = 160,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 86,
                valueRange = 0,
                valuePerLevel = 1.70000004768,
                coef = 0.21400000155,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 24,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [8056] = { -- Frost Shock(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCost = 115,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 89,
                valueRange = 6,
                valuePerLevel = 1.20000004768,
                coef = 0.38600000739,
                coefAP = 0,
            },
        }
    },
    [8058] = { -- Frost Shock(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        baseCost = 225,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 206,
                valueRange = 14,
                valuePerLevel = 1.89999997616,
                coef = 0.38600000739,
                coefAP = 0,
            },
        }
    },
    [8134] = { -- Lightning Shield(Rank 5)
        spellLevel = 40,
        maxLevel = 0,
        duration = 600,
        baseCost = 240,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 114,
                valueRange = 0,
                triggeredSpell = 26369,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [8187] = { -- Magma Totem(Rank 1)
        spellLevel = 26,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 22,
                valueRange = 0,
                coef = 0.03299999982,
                coefAP = 0,
            },
        }
    },
    [8190] = { -- Magma Totem(Rank 1)
        spellLevel = 26,
        maxLevel = 0,
        duration = 20,
        baseCost = 230,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 8187,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8349] = { -- Fire Nova(Rank 1)
        spellLevel = 12,
        maxLevel = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 48,
                valueRange = 8,
                valuePerLevel = 1.10000002384,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [8498] = { -- Fire Nova Totem(Rank 2)
        spellLevel = 22,
        maxLevel = 0,
        duration = 5,
        baseCost = 170,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 8502,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8499] = { -- Fire Nova Totem(Rank 3)
        spellLevel = 32,
        maxLevel = 0,
        duration = 5,
        baseCost = 280,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 8503,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8502] = { -- Fire Nova(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 102,
                valueRange = 14,
                valuePerLevel = 1.60000002384,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [8503] = { -- Fire Nova(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 184,
                valueRange = 24,
                valuePerLevel = 2.20000004768,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [10391] = { -- Lightning Bolt(Rank 7)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 165,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 227,
                valueRange = 28,
                valuePerLevel = 1.70000004768,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [10392] = { -- Lightning Bolt(Rank 8)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 195,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 282,
                valueRange = 34,
                valuePerLevel = 1.89999997616,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [10395] = { -- Healing Wave(Rank 8)
        spellLevel = 48,
        maxLevel = 53,
        baseCost = 440,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1017,
                valueRange = 150,
                valuePerLevel = 4.69999980927,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [10396] = { -- Healing Wave(Rank 9)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 560,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1367,
                valueRange = 194,
                valuePerLevel = 5.5,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [10412] = { -- Earth Shock(Rank 5)
        spellLevel = 36,
        maxLevel = 41,
        duration = 2,
        baseCost = 240,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 225,
                valueRange = 14,
                valuePerLevel = 2,
                coef = 0.38600000739,
                coefAP = 0,
            },
        }
    },
    [10413] = { -- Earth Shock(Rank 6)
        spellLevel = 48,
        maxLevel = 53,
        duration = 2,
        baseCost = 345,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 359,
                valueRange = 22,
                valuePerLevel = 2.59999990463,
                coef = 0.38600000739,
                coefAP = 0,
            },
        }
    },
    [10414] = { -- Earth Shock(Rank 7)
        spellLevel = 60,
        maxLevel = 65,
        duration = 2,
        baseCost = 450,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 517,
                valueRange = 28,
                valuePerLevel = 3.09999990463,
                coef = 0.38600000739,
                coefAP = 0,
            },
        }
    },
    [10431] = { -- Lightning Shield(Rank 6)
        spellLevel = 48,
        maxLevel = 0,
        duration = 600,
        baseCost = 305,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 154,
                valueRange = 0,
                triggeredSpell = 26370,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [10432] = { -- Lightning Shield(Rank 7)
        spellLevel = 56,
        maxLevel = 0,
        duration = 600,
        baseCost = 370,
        school = 4,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 198,
                valueRange = 0,
                triggeredSpell = 26363,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [10435] = { -- Attack(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 33,
                valueRange = 12,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [10436] = { -- Attack(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 40,
                valueRange = 14,
                coef = 0.08299999684,
                coefAP = 0,
            },
        }
    },
    [10437] = { -- Searing Totem(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        duration = 50,
        baseCost = 145,
        school = 3,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10435,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10438] = { -- Searing Totem(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 55,
        baseCost = 170,
        school = 3,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2.2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10436,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10447] = { -- Flame Shock(Rank 4)
        spellLevel = 40,
        maxLevel = 45,
        duration = 12,
        baseCost = 250,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 152,
                valueRange = 0,
                valuePerLevel = 2.29999995232,
                coef = 0.21400000155,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 42,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [10448] = { -- Flame Shock(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        duration = 12,
        baseCost = 345,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 230,
                valueRange = 0,
                valuePerLevel = 2.90000009537,
                coef = 0.21400000155,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 64,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [10462] = { -- Healing Stream Totem(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 60,
        baseCost = 70,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10463] = { -- Healing Stream Totem(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 60,
        baseCost = 80,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10466] = { -- Lesser Healing Wave(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 235,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 458,
                valueRange = 56,
                valuePerLevel = 3,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10467] = { -- Lesser Healing Wave(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 305,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 631,
                valueRange = 74,
                valuePerLevel = 3.59999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10468] = { -- Lesser Healing Wave(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 380,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 832,
                valueRange = 96,
                valuePerLevel = 4.19999980927,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10472] = { -- Frost Shock(Rank 3)
        spellLevel = 46,
        maxLevel = 51,
        duration = 8,
        baseCost = 325,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 333,
                valueRange = 20,
                valuePerLevel = 2.5,
                coef = 0.38600000739,
                coefAP = 0,
            },
        }
    },
    [10473] = { -- Frost Shock(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCost = 430,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 486,
                valueRange = 28,
                valuePerLevel = 3,
                coef = 0.38600000739,
                coefAP = 0,
            },
        }
    },
    [10579] = { -- Magma Totem(Rank 2)
        spellLevel = 36,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 37,
                valueRange = 0,
                coef = 0.03299999982,
                coefAP = 0,
            },
        }
    },
    [10580] = { -- Magma Totem(Rank 3)
        spellLevel = 46,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 54,
                valueRange = 0,
                coef = 0.03299999982,
                coefAP = 0,
            },
        }
    },
    [10581] = { -- Magma Totem(Rank 4)
        spellLevel = 56,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 75,
                valueRange = 0,
                coef = 0.03299999982,
                coefAP = 0,
            },
        }
    },
    [10585] = { -- Magma Totem(Rank 2)
        spellLevel = 36,
        maxLevel = 0,
        duration = 20,
        baseCost = 360,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10579,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10586] = { -- Magma Totem(Rank 3)
        spellLevel = 46,
        maxLevel = 0,
        duration = 20,
        baseCost = 500,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10580,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10587] = { -- Magma Totem(Rank 4)
        spellLevel = 56,
        maxLevel = 0,
        duration = 20,
        baseCost = 650,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                triggeredSpell = 10581,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10605] = { -- Chain Lightning(Rank 4)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 605,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 493,
                valueRange = 58,
                valuePerLevel = 3.09999990463,
                coef = 0.71399998665,
                coefAP = 0,
                chains = 3,
                chainMult = 0.69999998808,
            },
        }
    },
    [10622] = { -- Chain Heal(Rank 2)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 315,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 405,
                valueRange = 60,
                valuePerLevel = 2.79999995232,
                coef = 0.71399998665,
                coefAP = 0,
                chains = 3,
                chainMult = 0.5,
            },
        }
    },
    [10623] = { -- Chain Heal(Rank 3)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 405,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 551,
                valueRange = 78,
                valuePerLevel = 3.29999995232,
                coef = 0.71399998665,
                coefAP = 0,
                chains = 3,
                chainMult = 0.5,
            },
        }
    },
    [11306] = { -- Fire Nova(Rank 4)
        spellLevel = 42,
        maxLevel = 47,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 281,
                valueRange = 36,
                valuePerLevel = 2.79999995232,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [11307] = { -- Fire Nova(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 396,
                valueRange = 46,
                valuePerLevel = 3.40000009537,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [11314] = { -- Fire Nova Totem(Rank 4)
        spellLevel = 42,
        maxLevel = 0,
        duration = 5,
        baseCost = 395,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 11306,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [11315] = { -- Fire Nova Totem(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 5,
        baseCost = 520,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 11307,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [15207] = { -- Lightning Bolt(Rank 9)
        spellLevel = 50,
        maxLevel = 55,
        baseCost = 230,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 347,
                valueRange = 42,
                valuePerLevel = 2.09999990463,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [15208] = { -- Lightning Bolt(Rank 10)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 265,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 419,
                valueRange = 48,
                valuePerLevel = 2.40000009537,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [17364] = { -- Stormstrike(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 21,
        school = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25357] = { -- Healing Wave(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 620,
        school = 4,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1620,
                valueRange = 230,
                valuePerLevel = 5.5,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [26363] = { -- Lightning Shield(Rank 7)
        spellLevel = 56,
        maxLevel = 0,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 198,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [26364] = { -- Lightning Shield(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 0,
                coef = 0.14699999988,
                coefAP = 0,
            },
        }
    },
    [26365] = { -- Lightning Shield(Rank 2)
        spellLevel = 16,
        maxLevel = 0,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 29,
                valueRange = 0,
                coef = 0.22699999809,
                coefAP = 0,
            },
        }
    },
    [26366] = { -- Lightning Shield(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 51,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [26367] = { -- Lightning Shield(Rank 4)
        spellLevel = 32,
        maxLevel = 0,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 80,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [26369] = { -- Lightning Shield(Rank 5)
        spellLevel = 40,
        maxLevel = 0,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 114,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [26370] = { -- Lightning Shield(Rank 6)
        spellLevel = 48,
        maxLevel = 0,
        school = 4,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 154,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [29228] = { -- Flame Shock(Rank 6)
        spellLevel = 60,
        maxLevel = 67,
        duration = 12,
        baseCost = 410,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 292,
                valueRange = 0,
                valuePerLevel = 3.5,
                coef = 0.21400000155,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 80,
                valueRange = 0,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [408490] = { -- Lava Burst
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 10,
        school = 3,
        defType = 1,
        useScalingFormula = "824damagepower",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 469,
                valueRange = 136,
                coef = 0.57099997997,
                coefAP = 0,
            },
        }
    },
    [408507] = { -- Lava Lash
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 1,
        school = 3,
        defType = 2,
        equippedWeaponMask = 173555,
        isOffhandAttack = true,
        effects = {
            [1] = {
                effectType = 31,
                weaponCoef = 1.5,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [408514] = { -- Earth Shield
        spellLevel = 1,
        maxLevel = 0,
        duration = 600,
        baseCostPct = 15,
        school = 4,
        defType = 1,
        forceHeal = true,
        charges = 6,
        useScalingFormula = "824healpower",
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 100,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [425339] = { -- Molten Blast
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 18,
        school = 3,
        defType = 1,
        useScalingFormula = "824damagepower",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 72,
                valueRange = 36,
                coef = 0,
                coefAP = 0,
            },
        }
    },
};

---@type SpellClassSet
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
            408439, -- Lightning Bolt(Rank 1)
            408440, -- Lightning Bolt(Rank 2)
            408441, -- Lightning Bolt(Rank 3)
            408442, -- Lightning Bolt(Rank 4)
            408443, -- Lightning Bolt(Rank 5)
            408472, -- Lightning Bolt(Rank 6)
            408473, -- Lightning Bolt(Rank 7)
            408474, -- Lightning Bolt(Rank 8)
            408475, -- Lightning Bolt(Rank 9)
            408477, -- Lightning Bolt(Rank 10)
            434357, -- Harness Lightning
        },
        [2] = {
            421, -- Chain Lightning(Rank 1)
            930, -- Chain Lightning(Rank 2)
            2860, -- Chain Lightning(Rank 3)
            10605, -- Chain Lightning(Rank 4)
            408479, -- Chain Lightning(Rank 1)
            408481, -- Chain Lightning(Rank 2)
            408482, -- Chain Lightning(Rank 3)
            408484, -- Chain Lightning(Rank 4)
            434357, -- Harness Lightning
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
            416247, -- Healing Wave(Rank 1)
            416316, -- Healing Wave(Rank 2)
            416317, -- Healing Wave(Rank 3)
            416318, -- Healing Wave(Rank 4)
            416319, -- Healing Wave(Rank 5)
            416320, -- Healing Wave(Rank 6)
            416322, -- Healing Wave(Rank 7)
            416323, -- Healing Wave(Rank 8)
            416324, -- Healing Wave(Rank 9)
            416325, -- Healing Wave(Rank 10)
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
            416244, -- Chain Heal(Rank 1)
            416245, -- Chain Heal(Rank 2)
            416246, -- Chain Heal(Rank 3)
            436376, -- Chain Heal Cost Reduced
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
            432129, -- Rolling Thunder
            432143, -- Lightning Shield(Rank 1)
            432144, -- Lightning Shield(Rank 2)
            432145, -- Lightning Shield(Rank 3)
            432146, -- Lightning Shield(Rank 4)
            432147, -- Lightning Shield(Rank 5)
            432148, -- Lightning Shield(Rank 6)
            432149, -- Lightning Shield(Rank 7)
        },
        [2048] = {
            2645, -- Ghost Wolf
            415233, -- Ghost Wolf
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
            408681, -- Earth Shock(Rank 1)
            408683, -- Earth Shock(Rank 2)
            408685, -- Earth Shock(Rank 3)
            408687, -- Earth Shock(Rank 4)
            408688, -- Earth Shock(Rank 5)
            408689, -- Earth Shock(Rank 6)
            408690, -- Earth Shock(Rank 7)
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
            439440, -- Windfury Weapon(Rank 1)
            439441, -- Windfury Weapon(Rank 1)
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
            425876, -- Decoy Totem
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
            436286, -- Flame Shock Cost Reduced
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
            425874, -- Decoy Totem
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
            408424, -- Fire Nova(Rank 2)
            408426, -- Fire Nova(Rank 3)
            408427, -- Fire Nova(Rank 4)
            408428, -- Fire Nova(Rank 5)
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
        [16] = {
            17364, -- Stormstrike(Rank 1)
        },
        [32] = {
            408510, -- Water Shield
        },
        [1024] = {
            974, -- Earth Shield(Rank 1)
            408514, -- Earth Shield
        },
        [4096] = {
            408490, -- Lava Burst
            408491, -- Lava Burst
        },
        [262144] = {
            408341, -- Fire Nova(Rank 1)
            408342, -- Fire Nova(Rank 2)
            408343, -- Fire Nova(Rank 3)
            408345, -- Fire Nova(Rank 5)
        },
    },
    [3] = {
        [4] = {
            408507, -- Lava Lash
        },
        [64] = {
            379, -- Earth Shield
            408519, -- Earth Shield
        },
        [256] = {
            439431, -- Windfury Weapon(Rank 1)
        },
        [512] = {
            408498, -- Maelstrom Weapon
        },
        [1048576] = {
            415236, -- Healing Rain
        },
        [8388608] = {
            415242, -- Healing Rain
        },
        [268435456] = {
            425858, -- Ancestral Awakening
            425861, -- Ancestral Awakening
            425864, -- Ancestral Awakening
        },
    },
    [4] = {
        [16] = {
            408505, -- Maelstrom Weapon
        },
        [1073741824] = {
            425339, -- Molten Blast
        },
    },
};


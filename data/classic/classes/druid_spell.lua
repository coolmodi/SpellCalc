-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {
    [339] = { -- Entangling Roots(Rank 1)
        spellLevel = 8,
        maxLevel = 0,
        duration = 12,
        baseCost = 50,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 5,
                valueRange = 0,
                coef = 0.03299999982,
                coefAP = 0,
            },
        }
    },
    [467] = { -- Thorns(Rank 1)
        spellLevel = 6,
        maxLevel = 0,
        duration = 600,
        baseCost = 35,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 3,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [740] = { -- Tranquility(Rank 1)
        spellLevel = 30,
        maxLevel = 36,
        duration = 10,
        baseCost = 375,
        school = 4,
        schoolMask = 8,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 94,
                valueRange = 0,
                valuePerLevel = 0.60000002384,
                coef = 0.06700000167,
                coefAP = 0,
            },
        }
    },
    [769] = { -- Swipe(Rank 3)
        spellLevel = 34,
        maxLevel = 0,
        baseCost = 200,
        school = 1,
        schoolMask = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 36,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [774] = { -- Rejuvenation(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 12,
        baseCost = 25,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 8,
                valueRange = 0,
                coef = 0.07999999821,
                coefAP = 0,
            },
        }
    },
    [779] = { -- Swipe(Rank 1)
        spellLevel = 16,
        maxLevel = 0,
        baseCost = 200,
        school = 1,
        schoolMask = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 18,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [780] = { -- Swipe(Rank 2)
        spellLevel = 24,
        maxLevel = 0,
        baseCost = 200,
        school = 1,
        schoolMask = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [782] = { -- Thorns(Rank 2)
        spellLevel = 14,
        maxLevel = 0,
        duration = 600,
        baseCost = 60,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 6,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [1058] = { -- Rejuvenation(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        baseCost = 40,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 14,
                valueRange = 0,
                coef = 0.125,
                coefAP = 0,
            },
        }
    },
    [1062] = { -- Entangling Roots(Rank 2)
        spellLevel = 18,
        maxLevel = 0,
        duration = 15,
        baseCost = 65,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 10,
                valueRange = 0,
                coef = 0.05600000173,
                coefAP = 0,
            },
        }
    },
    [1075] = { -- Thorns(Rank 3)
        spellLevel = 24,
        maxLevel = 0,
        duration = 600,
        baseCost = 105,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 9,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [1079] = { -- Rip(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 12,
        baseCost = 30,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 3,
                valueRange = 0,
                perResouce = 4,
                coef = 0,
                coefAP = 0.01,
                mechanic = 15,
            },
        }
    },
    [1082] = { -- Claw(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        baseCost = 45,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 27,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [1430] = { -- Rejuvenation(Rank 3)
        spellLevel = 16,
        maxLevel = 21,
        duration = 12,
        baseCost = 75,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 29,
                valueRange = 0,
                coef = 0.17000000179,
                coefAP = 0,
            },
        }
    },
    [1822] = { -- Rake(Rank 1)
        spellLevel = 24,
        maxLevel = 0,
        duration = 9,
        baseCost = 40,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 19,
                valueRange = 0,
                coef = 0,
                coefAP = 0.04,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 13,
                valueRange = 0,
                coef = 0,
                coefAP = 0.04,
                mechanic = 15,
            },
        }
    },
    [1823] = { -- Rake(Rank 2)
        spellLevel = 34,
        maxLevel = 0,
        duration = 9,
        baseCost = 40,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 28,
                valueRange = 0,
                coef = 0,
                coefAP = 0.04,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 19,
                valueRange = 0,
                coef = 0,
                coefAP = 0.04,
                mechanic = 15,
            },
        }
    },
    [1824] = { -- Rake(Rank 3)
        spellLevel = 44,
        maxLevel = 0,
        duration = 9,
        baseCost = 40,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 43,
                valueRange = 0,
                coef = 0,
                coefAP = 0.04,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 25,
                valueRange = 0,
                coef = 0,
                coefAP = 0.04,
                mechanic = 15,
            },
        }
    },
    [2090] = { -- Rejuvenation(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        duration = 12,
        baseCost = 105,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 45,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [2091] = { -- Rejuvenation(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        duration = 12,
        baseCost = 135,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 61,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [2912] = { -- Starfire(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 95,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 89,
                valueRange = 20,
                valuePerLevel = 1.20000004768,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [3029] = { -- Claw(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        baseCost = 45,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 39,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [3627] = { -- Rejuvenation(Rank 6)
        spellLevel = 34,
        maxLevel = 39,
        duration = 12,
        baseCost = 160,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 76,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [5176] = { -- Wrath(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 20,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 12,
                valueRange = 2,
                valuePerLevel = 0.40000000596,
                coef = 0.1230000034,
                coefAP = 0,
            },
        }
    },
    [5177] = { -- Wrath(Rank 2)
        spellLevel = 6,
        maxLevel = 12,
        baseCost = 35,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 4,
                valuePerLevel = 0.60000002384,
                coef = 0.2310000062,
                coefAP = 0,
            },
        }
    },
    [5178] = { -- Wrath(Rank 3)
        spellLevel = 14,
        maxLevel = 20,
        baseCost = 55,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 44,
                valueRange = 8,
                valuePerLevel = 0.80000001192,
                coef = 0.44299998879,
                coefAP = 0,
            },
        }
    },
    [5179] = { -- Wrath(Rank 4)
        spellLevel = 22,
        maxLevel = 28,
        baseCost = 70,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 63,
                valueRange = 10,
                valuePerLevel = 1,
                coef = 0.57099997997,
                coefAP = 0,
            },
        }
    },
    [5180] = { -- Wrath(Rank 5)
        spellLevel = 30,
        maxLevel = 36,
        baseCost = 100,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 101,
                valueRange = 14,
                valuePerLevel = 1.29999995232,
                coef = 0.57099997997,
                coefAP = 0,
            },
        }
    },
    [5185] = { -- Healing Touch(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 25,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 37,
                valueRange = 14,
                valuePerLevel = 0.80000001192,
                coef = 0.1230000034,
                coefAP = 0,
            },
        }
    },
    [5186] = { -- Healing Touch(Rank 2)
        spellLevel = 8,
        maxLevel = 13,
        baseCost = 55,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 88,
                valueRange = 24,
                valuePerLevel = 1.29999995232,
                coef = 0.31400001049,
                coefAP = 0,
            },
        }
    },
    [5187] = { -- Healing Touch(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 110,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 195,
                valueRange = 48,
                valuePerLevel = 1.89999997616,
                coef = 0.55400002003,
                coefAP = 0,
            },
        }
    },
    [5188] = { -- Healing Touch(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 185,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 363,
                valueRange = 82,
                valuePerLevel = 2.70000004768,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [5189] = { -- Healing Touch(Rank 5)
        spellLevel = 26,
        maxLevel = 31,
        baseCost = 270,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 572,
                valueRange = 122,
                valuePerLevel = 3.5,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [5195] = { -- Entangling Roots(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 18,
        baseCost = 80,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 15,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [5196] = { -- Entangling Roots(Rank 4)
        spellLevel = 38,
        maxLevel = 0,
        duration = 21,
        baseCost = 95,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.04300000146,
                coefAP = 0,
            },
        }
    },
    [5201] = { -- Claw(Rank 3)
        spellLevel = 38,
        maxLevel = 0,
        baseCost = 45,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 57,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [5221] = { -- Shred(Rank 1)
        spellLevel = 22,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 2.25,
                valueBase = 24,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [5570] = { -- Insect Swarm(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 12,
        baseCost = 45,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 11,
                valueRange = 0,
                coef = 0.15800000727,
                coefAP = 0,
            },
        }
    },
    [6603] = { -- Attack
        spellLevel = 0,
        maxLevel = 0,
        school = 1,
        schoolMask = 1,
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
    [6778] = { -- Healing Touch(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 335,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 742,
                valueRange = 152,
                valuePerLevel = 4,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [6780] = { -- Wrath(Rank 6)
        spellLevel = 38,
        maxLevel = 44,
        baseCost = 125,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 139,
                valueRange = 18,
                valuePerLevel = 1.60000002384,
                coef = 0.57099997997,
                coefAP = 0,
            },
        }
    },
    [6785] = { -- Ravage(Rank 1)
        spellLevel = 32,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 3.5,
                valueBase = 42,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [6787] = { -- Ravage(Rank 2)
        spellLevel = 42,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 3.5,
                valueBase = 62,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [6800] = { -- Shred(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 2.25,
                valueBase = 32,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [6807] = { -- Maul(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        baseCost = 150,
        school = 1,
        schoolMask = 1,
        defType = 2,
        onNextSwing = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 18,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [6808] = { -- Maul(Rank 2)
        spellLevel = 18,
        maxLevel = 0,
        baseCost = 150,
        school = 1,
        schoolMask = 1,
        defType = 2,
        onNextSwing = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 27,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [6809] = { -- Maul(Rank 3)
        spellLevel = 26,
        maxLevel = 0,
        baseCost = 150,
        school = 1,
        schoolMask = 1,
        defType = 2,
        onNextSwing = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 37,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [8903] = { -- Healing Touch(Rank 7)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 405,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 936,
                valueRange = 184,
                valuePerLevel = 4.5,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [8905] = { -- Wrath(Rank 7)
        spellLevel = 46,
        maxLevel = 52,
        baseCost = 155,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 188,
                valueRange = 22,
                valuePerLevel = 1.79999995232,
                coef = 0.57099997997,
                coefAP = 0,
            },
        }
    },
    [8910] = { -- Rejuvenation(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        duration = 12,
        baseCost = 195,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 97,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [8914] = { -- Thorns(Rank 4)
        spellLevel = 34,
        maxLevel = 0,
        duration = 600,
        baseCost = 170,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 12,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8918] = { -- Tranquility(Rank 2)
        spellLevel = 40,
        maxLevel = 46,
        duration = 10,
        baseCost = 505,
        school = 4,
        schoolMask = 8,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 138,
                valueRange = 0,
                valuePerLevel = 0.69999998808,
                coef = 0.06700000167,
                coefAP = 0,
            },
        }
    },
    [8921] = { -- Moonfire(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 9,
        baseCost = 25,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 7,
                valueRange = 2,
                valuePerLevel = 0.5,
                coef = 0.05999999866,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 4,
                valueRange = 0,
                coef = 0.05200000107,
                coefAP = 0,
            },
        }
    },
    [8924] = { -- Moonfire(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        baseCost = 50,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 4,
                valuePerLevel = 0.80000001192,
                coef = 0.09399999678,
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
    [8925] = { -- Moonfire(Rank 3)
        spellLevel = 16,
        maxLevel = 21,
        duration = 12,
        baseCost = 75,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 6,
                valuePerLevel = 1.10000002384,
                coef = 0.12800000608,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 13,
                valueRange = 0,
                coef = 0.11100000143,
                coefAP = 0,
            },
        }
    },
    [8926] = { -- Moonfire(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        duration = 12,
        baseCost = 105,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 40,
                valueRange = 8,
                valuePerLevel = 1.39999997616,
                coef = 0.15000000596,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [8927] = { -- Moonfire(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        duration = 12,
        baseCost = 150,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 61,
                valueRange = 12,
                valuePerLevel = 1.79999995232,
                coef = 0.15000000596,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 31,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [8928] = { -- Moonfire(Rank 6)
        spellLevel = 34,
        maxLevel = 39,
        duration = 12,
        baseCost = 190,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 81,
                valueRange = 16,
                valuePerLevel = 2.09999990463,
                coef = 0.15000000596,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 41,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [8929] = { -- Moonfire(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        duration = 12,
        baseCost = 235,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 105,
                valueRange = 20,
                valuePerLevel = 2.40000009537,
                coef = 0.15000000596,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 53,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [8936] = { -- Regrowth(Rank 1)
        spellLevel = 12,
        maxLevel = 17,
        duration = 21,
        baseCost = 120,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 84,
                valueRange = 14,
                valuePerLevel = 1.79999995232,
                coef = 0.20000000298,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 14,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [8938] = { -- Regrowth(Rank 2)
        spellLevel = 18,
        maxLevel = 23,
        duration = 21,
        baseCost = 205,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 164,
                valueRange = 24,
                valuePerLevel = 2.5,
                coef = 0.26399999857,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 25,
                valueRange = 0,
                coef = 0.06599999964,
                coefAP = 0,
            },
        }
    },
    [8939] = { -- Regrowth(Rank 3)
        spellLevel = 24,
        maxLevel = 29,
        duration = 21,
        baseCost = 280,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 240,
                valueRange = 34,
                valuePerLevel = 3.09999990463,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 37,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [8940] = { -- Regrowth(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        duration = 21,
        baseCost = 350,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 318,
                valueRange = 42,
                valuePerLevel = 3.59999990463,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 49,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [8941] = { -- Regrowth(Rank 5)
        spellLevel = 36,
        maxLevel = 41,
        duration = 21,
        baseCost = 420,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 405,
                valueRange = 52,
                valuePerLevel = 4.09999990463,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 61,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [8949] = { -- Starfire(Rank 2)
        spellLevel = 26,
        maxLevel = 32,
        baseCost = 135,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 137,
                valueRange = 30,
                valuePerLevel = 1.60000002384,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [8950] = { -- Starfire(Rank 3)
        spellLevel = 34,
        maxLevel = 40,
        baseCost = 180,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 201,
                valueRange = 40,
                valuePerLevel = 1.89999997616,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [8951] = { -- Starfire(Rank 4)
        spellLevel = 42,
        maxLevel = 48,
        baseCost = 230,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 280,
                valueRange = 54,
                valuePerLevel = 2.29999995232,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [8972] = { -- Maul(Rank 4)
        spellLevel = 34,
        maxLevel = 0,
        baseCost = 150,
        school = 1,
        schoolMask = 1,
        defType = 2,
        onNextSwing = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 49,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [8992] = { -- Shred(Rank 3)
        spellLevel = 38,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 2.25,
                valueBase = 44,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [9005] = { -- Pounce(Rank 1)
        spellLevel = 36,
        maxLevel = 0,
        duration = 2,
        baseCost = 50,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 9007,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9007] = { -- Pounce Bleed(Rank 1)
        spellLevel = 36,
        maxLevel = 0,
        duration = 18,
        school = 1,
        schoolMask = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 15,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9492] = { -- Rip(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 12,
        baseCost = 30,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 4,
                valueRange = 0,
                perResouce = 7,
                coef = 0,
                coefAP = 0.01,
                mechanic = 15,
            },
        }
    },
    [9493] = { -- Rip(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 12,
        baseCost = 30,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 6,
                valueRange = 0,
                perResouce = 9,
                coef = 0,
                coefAP = 0.01,
                mechanic = 15,
            },
        }
    },
    [9745] = { -- Maul(Rank 5)
        spellLevel = 42,
        maxLevel = 0,
        baseCost = 150,
        school = 1,
        schoolMask = 1,
        defType = 2,
        onNextSwing = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 71,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [9750] = { -- Regrowth(Rank 6)
        spellLevel = 42,
        maxLevel = 47,
        duration = 21,
        baseCost = 510,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 511,
                valueRange = 64,
                valuePerLevel = 4.69999980927,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 78,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [9752] = { -- Rip(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 12,
        baseCost = 30,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 9,
                valueRange = 0,
                perResouce = 14,
                coef = 0,
                coefAP = 0.01,
                mechanic = 15,
            },
        }
    },
    [9754] = { -- Swipe(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        baseCost = 200,
        school = 1,
        schoolMask = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 60,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9756] = { -- Thorns(Rank 5)
        spellLevel = 44,
        maxLevel = 0,
        duration = 600,
        baseCost = 240,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 15,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9758] = { -- Healing Touch(Rank 8)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 495,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1199,
                valueRange = 228,
                valuePerLevel = 5.19999980927,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9823] = { -- Pounce(Rank 2)
        spellLevel = 46,
        maxLevel = 0,
        duration = 2,
        baseCost = 50,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 9824,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9824] = { -- Pounce Bleed(Rank 2)
        spellLevel = 46,
        maxLevel = 0,
        duration = 18,
        school = 1,
        schoolMask = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9826] = { -- Pounce Bleed(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        duration = 18,
        school = 1,
        schoolMask = 1,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 25,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9827] = { -- Pounce(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        duration = 2,
        baseCost = 50,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 9826,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9829] = { -- Shred(Rank 4)
        spellLevel = 46,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 2.25,
                valueBase = 64,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [9830] = { -- Shred(Rank 5)
        spellLevel = 54,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 2.25,
                valueBase = 80,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [9833] = { -- Moonfire(Rank 8)
        spellLevel = 46,
        maxLevel = 51,
        duration = 12,
        baseCost = 280,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 130,
                valueRange = 24,
                valuePerLevel = 2.70000004768,
                coef = 0.15000000596,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 66,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [9834] = { -- Moonfire(Rank 9)
        spellLevel = 52,
        maxLevel = 57,
        duration = 12,
        baseCost = 325,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 157,
                valueRange = 28,
                valuePerLevel = 3,
                coef = 0.15000000596,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 80,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [9835] = { -- Moonfire(Rank 10)
        spellLevel = 58,
        maxLevel = 63,
        duration = 12,
        baseCost = 375,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 189,
                valueRange = 32,
                valuePerLevel = 3.29999995232,
                coef = 0.15000000596,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 96,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [9839] = { -- Rejuvenation(Rank 8)
        spellLevel = 46,
        maxLevel = 51,
        duration = 12,
        baseCost = 235,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 122,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [9840] = { -- Rejuvenation(Rank 9)
        spellLevel = 52,
        maxLevel = 57,
        duration = 12,
        baseCost = 280,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 152,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [9841] = { -- Rejuvenation(Rank 10)
        spellLevel = 58,
        maxLevel = 63,
        duration = 12,
        baseCost = 335,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 189,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [9849] = { -- Claw(Rank 4)
        spellLevel = 48,
        maxLevel = 0,
        baseCost = 45,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 88,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9850] = { -- Claw(Rank 5)
        spellLevel = 58,
        maxLevel = 0,
        baseCost = 45,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 115,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9852] = { -- Entangling Roots(Rank 5)
        spellLevel = 48,
        maxLevel = 0,
        duration = 24,
        baseCost = 110,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 25,
                valueRange = 0,
                coef = 0.03799999878,
                coefAP = 0,
            },
        }
    },
    [9853] = { -- Entangling Roots(Rank 6)
        spellLevel = 58,
        maxLevel = 0,
        duration = 27,
        baseCost = 125,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 30,
                valueRange = 0,
                coef = 0.03299999982,
                coefAP = 0,
            },
        }
    },
    [9856] = { -- Regrowth(Rank 7)
        spellLevel = 48,
        maxLevel = 53,
        duration = 21,
        baseCost = 615,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 646,
                valueRange = 78,
                valuePerLevel = 5.30000019073,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 98,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [9857] = { -- Regrowth(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        duration = 21,
        baseCost = 740,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 809,
                valueRange = 96,
                valuePerLevel = 6,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 123,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [9858] = { -- Regrowth(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        duration = 21,
        baseCost = 880,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1003,
                valueRange = 116,
                valuePerLevel = 6.80000019073,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 152,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [9862] = { -- Tranquility(Rank 3)
        spellLevel = 50,
        maxLevel = 56,
        duration = 10,
        baseCost = 695,
        school = 4,
        schoolMask = 8,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 205,
                valueRange = 0,
                valuePerLevel = 0.89999997616,
                coef = 0.06700000167,
                coefAP = 0,
            },
        }
    },
    [9863] = { -- Tranquility(Rank 4)
        spellLevel = 60,
        maxLevel = 66,
        duration = 10,
        baseCost = 925,
        school = 4,
        schoolMask = 8,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 8,
                tickPeriod = 2,
                valueBase = 294,
                valueRange = 0,
                valuePerLevel = 1,
                coef = 0.06700000167,
                coefAP = 0,
            },
        }
    },
    [9866] = { -- Ravage(Rank 3)
        spellLevel = 50,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 3.5,
                valueBase = 78,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9867] = { -- Ravage(Rank 4)
        spellLevel = 58,
        maxLevel = 0,
        baseCost = 60,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 3.5,
                valueBase = 98,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9875] = { -- Starfire(Rank 5)
        spellLevel = 50,
        maxLevel = 56,
        baseCost = 275,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 362,
                valueRange = 66,
                valuePerLevel = 2.70000004768,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9876] = { -- Starfire(Rank 6)
        spellLevel = 58,
        maxLevel = 64,
        baseCost = 315,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 445,
                valueRange = 80,
                valuePerLevel = 3,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9880] = { -- Maul(Rank 6)
        spellLevel = 50,
        maxLevel = 0,
        baseCost = 150,
        school = 1,
        schoolMask = 1,
        defType = 2,
        onNextSwing = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 101,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [9881] = { -- Maul(Rank 7)
        spellLevel = 58,
        maxLevel = 0,
        baseCost = 150,
        school = 1,
        schoolMask = 1,
        defType = 2,
        onNextSwing = true,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1,
                valueBase = 128,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
                mechanic = 15,
            },
        }
    },
    [9888] = { -- Healing Touch(Rank 9)
        spellLevel = 50,
        maxLevel = 55,
        baseCost = 600,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1516,
                valueRange = 280,
                valuePerLevel = 5.90000009537,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9889] = { -- Healing Touch(Rank 10)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 720,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1890,
                valueRange = 340,
                valuePerLevel = 6.59999990463,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9894] = { -- Rip(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 12,
        baseCost = 30,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 12,
                valueRange = 0,
                perResouce = 20,
                coef = 0,
                coefAP = 0.01,
                mechanic = 15,
            },
        }
    },
    [9896] = { -- Rip(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 12,
        baseCost = 30,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 17,
                valueRange = 0,
                perResouce = 28,
                coef = 0,
                coefAP = 0.01,
                mechanic = 15,
            },
        }
    },
    [9904] = { -- Rake(Rank 4)
        spellLevel = 54,
        maxLevel = 0,
        duration = 9,
        baseCost = 40,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 58,
                valueRange = 0,
                coef = 0,
                coefAP = 0.04,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 32,
                valueRange = 0,
                coef = 0,
                coefAP = 0.04,
                mechanic = 15,
            },
        }
    },
    [9908] = { -- Swipe(Rank 5)
        spellLevel = 54,
        maxLevel = 0,
        baseCost = 200,
        school = 1,
        schoolMask = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 83,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [9910] = { -- Thorns(Rank 6)
        spellLevel = 54,
        maxLevel = 0,
        duration = 600,
        baseCost = 320,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 15,
                valueBase = 18,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [9912] = { -- Wrath(Rank 8)
        spellLevel = 54,
        maxLevel = 60,
        baseCost = 180,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 236,
                valueRange = 28,
                valuePerLevel = 2.09999990463,
                coef = 0.57099997997,
                coefAP = 0,
            },
        }
    },
    [16914] = { -- Hurricane(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        duration = 10,
        baseCost = 880,
        school = 4,
        schoolMask = 8,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 70,
                valueRange = 0,
                valuePerLevel = 0.20000000298,
                coef = 0.02999999933,
                coefAP = 0,
            },
        }
    },
    [17401] = { -- Hurricane(Rank 2)
        spellLevel = 50,
        maxLevel = 56,
        duration = 10,
        baseCost = 1180,
        school = 4,
        schoolMask = 8,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 100,
                valueRange = 0,
                valuePerLevel = 0.20000000298,
                coef = 0.02999999933,
                coefAP = 0,
            },
        }
    },
    [17402] = { -- Hurricane(Rank 3)
        spellLevel = 60,
        maxLevel = 66,
        duration = 10,
        baseCost = 1495,
        school = 4,
        schoolMask = 8,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 134,
                valueRange = 0,
                valuePerLevel = 0.30000001192,
                coef = 0.02999999933,
                coefAP = 0,
            },
        }
    },
    [18562] = { -- Swiftmend
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 20,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [22568] = { -- Ferocious Bite(Rank 1)
        spellLevel = 32,
        maxLevel = 0,
        baseCost = 35,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 14,
                valueRange = 16,
                perResouce = 36,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [22827] = { -- Ferocious Bite(Rank 2)
        spellLevel = 40,
        maxLevel = 0,
        baseCost = 35,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 20,
                valueRange = 24,
                perResouce = 59,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [22828] = { -- Ferocious Bite(Rank 3)
        spellLevel = 48,
        maxLevel = 0,
        baseCost = 35,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 30,
                valueRange = 40,
                perResouce = 92,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [22829] = { -- Ferocious Bite(Rank 4)
        spellLevel = 56,
        maxLevel = 0,
        baseCost = 35,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 45,
                valueRange = 50,
                perResouce = 128,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [24974] = { -- Insect Swarm(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 12,
        baseCost = 85,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 23,
                valueRange = 0,
                coef = 0.15800000727,
                coefAP = 0,
            },
        }
    },
    [24975] = { -- Insect Swarm(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 12,
        baseCost = 100,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 29,
                valueRange = 0,
                coef = 0.15800000727,
                coefAP = 0,
            },
        }
    },
    [24976] = { -- Insect Swarm(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 12,
        baseCost = 140,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 44,
                valueRange = 0,
                coef = 0.15800000727,
                coefAP = 0,
            },
        }
    },
    [24977] = { -- Insect Swarm(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 12,
        baseCost = 160,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 54,
                valueRange = 0,
                coef = 0.15800000727,
                coefAP = 0,
            },
        }
    },
    [25297] = { -- Healing Touch(Rank 11)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 800,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2267,
                valueRange = 410,
                valuePerLevel = 7.30000019073,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [25298] = { -- Starfire(Rank 7)
        spellLevel = 60,
        maxLevel = 66,
        baseCost = 340,
        school = 7,
        schoolMask = 64,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 496,
                valueRange = 88,
                valuePerLevel = 3.09999990463,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [25299] = { -- Rejuvenation(Rank 11)
        spellLevel = 60,
        maxLevel = 65,
        duration = 12,
        baseCost = 360,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 222,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [29166] = { -- Innervate
        spellLevel = 40,
        maxLevel = 0,
        duration = 20,
        baseCostPct = 5,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 110,
                valueBase = 400,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [31018] = { -- Ferocious Bite(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        baseCost = 35,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 52,
                valueRange = 60,
                perResouce = 147,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [407993] = { -- Mangle(Cat)
        spellLevel = 1,
        maxLevel = 0,
        duration = 60,
        baseCost = 40,
        school = 1,
        schoolMask = 1,
        GCD = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 2.7,
                valueBase = 0,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [407995] = { -- Mangle(Bear)
        spellLevel = 1,
        maxLevel = 0,
        duration = 60,
        baseCost = 150,
        school = 1,
        schoolMask = 1,
        defType = 2,
        effects = {
            [1] = {
                effectType = 58,
                weaponCoef = 1.6,
                valueBase = 0,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [408120] = { -- Wild Growth
        spellLevel = 1,
        maxLevel = 0,
        duration = 7,
        baseCostPct = 56,
        school = 4,
        schoolMask = 8,
        defType = 1,
        useScalingFormula = { id = 823, label = "healpower" },
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 34,
                valueRange = 0,
                coef = 0.06100000069,
                coefAP = 0,
            },
        }
    },
    [408124] = { -- Lifebloom
        spellLevel = 1,
        maxLevel = 0,
        duration = 7,
        baseCostPct = 28,
        school = 4,
        schoolMask = 8,
        GCD = 1,
        defType = 1,
        useScalingFormula = { id = 823, label = "healpower" },
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 4,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
                auraStacks = 3,
            },
            [2] = {
                effectType = 10,
                valueBase = 57,
                valueRange = 0,
                coef = 0.27399998903,
                coefAP = 0,
            },
        }
    },
    [408247] = { -- Nourish
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 36,
        school = 4,
        schoolMask = 8,
        defType = 1,
        useScalingFormula = { id = 823, label = "healpower" },
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 161,
                valueRange = 28,
                coef = 0.35699999332,
                coefAP = 0,
            },
        }
    },
    [414644] = { -- Lacerate
        spellLevel = 1,
        maxLevel = 0,
        duration = 15,
        baseCost = 100,
        school = 1,
        schoolMask = 1,
        defType = 2,
        useScalingFormula = { id = 823, label = "damagepower" },
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
                auraStacks = 5,
            },
        }
    },
    [414684] = { -- Sunfire
        spellLevel = 1,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 21,
        school = 4,
        schoolMask = 8,
        defType = 1,
        useScalingFormula = { id = 823, label = "damagepower" },
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 130,
                valueRange = 22,
                coef = 0.15000000596,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 65,
                valueRange = 0,
                coef = 0.12999999523,
                coefAP = 0,
            },
        }
    },
    [414687] = { -- Sunfire(Bear)
        spellLevel = 1,
        maxLevel = 0,
        duration = 12,
        baseCost = 200,
        school = 4,
        schoolMask = 8,
        defType = 1,
        useScalingFormula = { id = 823, label = "damagepower" },
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 130,
                valueRange = 22,
                coef = 0,
                coefAP = 0.1175,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 65,
                valueRange = 0,
                coef = 0,
                coefAP = 0.075,
            },
        }
    },
    [414689] = { -- Sunfire(Cat)
        spellLevel = 1,
        maxLevel = 0,
        duration = 12,
        baseCost = 40,
        school = 4,
        schoolMask = 8,
        defType = 1,
        useScalingFormula = { id = 823, label = "damagepower" },
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 130,
                valueRange = 22,
                coef = 0,
                coefAP = 0.1175,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 65,
                valueRange = 0,
                coef = 0,
                coefAP = 0.075,
            },
        }
    },
    [417057] = { -- Rejuvenation(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 12,
        baseCost = 25,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 8,
                valueRange = 0,
                coef = 0.07999999821,
                coefAP = 0,
            },
        }
    },
    [417058] = { -- Rejuvenation(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 12,
        baseCost = 40,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 14,
                valueRange = 0,
                coef = 0.125,
                coefAP = 0,
            },
        }
    },
    [417059] = { -- Rejuvenation(Rank 3)
        spellLevel = 16,
        maxLevel = 21,
        duration = 12,
        baseCost = 75,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 29,
                valueRange = 0,
                coef = 0.17000000179,
                coefAP = 0,
            },
        }
    },
    [417060] = { -- Rejuvenation(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        duration = 12,
        baseCost = 105,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 45,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [417061] = { -- Rejuvenation(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        duration = 12,
        baseCost = 135,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 61,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [417062] = { -- Rejuvenation(Rank 6)
        spellLevel = 34,
        maxLevel = 39,
        duration = 12,
        baseCost = 160,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 76,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [417063] = { -- Rejuvenation(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        duration = 12,
        baseCost = 195,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 97,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [417064] = { -- Rejuvenation(Rank 8)
        spellLevel = 46,
        maxLevel = 51,
        duration = 12,
        baseCost = 235,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 122,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [417065] = { -- Rejuvenation(Rank 9)
        spellLevel = 52,
        maxLevel = 57,
        duration = 12,
        baseCost = 280,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 152,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [417066] = { -- Rejuvenation(Rank 10)
        spellLevel = 58,
        maxLevel = 63,
        duration = 12,
        baseCost = 335,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 189,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [417068] = { -- Rejuvenation(Rank 11)
        spellLevel = 60,
        maxLevel = 65,
        duration = 12,
        baseCost = 360,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 222,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [417157] = { -- Starsurge
        spellLevel = 1,
        maxLevel = 1,
        baseCostPct = 1,
        school = 7,
        schoolMask = 64,
        defType = 1,
        useScalingFormula = { id = 823, label = "damagepower" },
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 381,
                valueRange = 86,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [436937] = { -- Regrowth(Rank 1)
        spellLevel = 12,
        maxLevel = 17,
        duration = 21,
        baseCost = 120,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 84,
                valueRange = 14,
                valuePerLevel = 1.79999995232,
                coef = 0.20000000298,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 14,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [436938] = { -- Regrowth(Rank 2)
        spellLevel = 18,
        maxLevel = 23,
        duration = 21,
        baseCost = 205,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 164,
                valueRange = 24,
                valuePerLevel = 2.5,
                coef = 0.26399999857,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 25,
                valueRange = 0,
                coef = 0.06599999964,
                coefAP = 0,
            },
        }
    },
    [436939] = { -- Regrowth(Rank 3)
        spellLevel = 24,
        maxLevel = 29,
        duration = 21,
        baseCost = 280,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 240,
                valueRange = 34,
                valuePerLevel = 3.09999990463,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 37,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [436940] = { -- Regrowth(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        duration = 21,
        baseCost = 350,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 318,
                valueRange = 42,
                valuePerLevel = 3.59999990463,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 49,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [436942] = { -- Regrowth(Rank 5)
        spellLevel = 36,
        maxLevel = 41,
        duration = 21,
        baseCost = 420,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 405,
                valueRange = 52,
                valuePerLevel = 4.09999990463,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 61,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [436943] = { -- Regrowth(Rank 6)
        spellLevel = 42,
        maxLevel = 47,
        duration = 21,
        baseCost = 510,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 511,
                valueRange = 64,
                valuePerLevel = 4.69999980927,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 78,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [436944] = { -- Regrowth(Rank 7)
        spellLevel = 48,
        maxLevel = 53,
        duration = 21,
        baseCost = 615,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 646,
                valueRange = 78,
                valuePerLevel = 5.30000019073,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 98,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [436945] = { -- Regrowth(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        duration = 21,
        baseCost = 740,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 809,
                valueRange = 96,
                valuePerLevel = 6,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 123,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
    [436946] = { -- Regrowth(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        duration = 21,
        baseCost = 880,
        school = 4,
        schoolMask = 8,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1003,
                valueRange = 116,
                valuePerLevel = 6.80000019073,
                coef = 0.28600001335,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 152,
                valueRange = 0,
                coef = 0.07100000232,
                coefAP = 0,
            },
        }
    },
};

---@type SpellClassSet
_addon.spellClassSet = {
    [1] = {
        [1] = {
            5176, -- Wrath(Rank 1)
            5177, -- Wrath(Rank 2)
            5178, -- Wrath(Rank 3)
            5179, -- Wrath(Rank 4)
            5180, -- Wrath(Rank 5)
            6780, -- Wrath(Rank 6)
            8905, -- Wrath(Rank 7)
            9912, -- Wrath(Rank 8)
        },
        [2] = {
            8921, -- Moonfire(Rank 1)
            8924, -- Moonfire(Rank 2)
            8925, -- Moonfire(Rank 3)
            8926, -- Moonfire(Rank 4)
            8927, -- Moonfire(Rank 5)
            8928, -- Moonfire(Rank 6)
            8929, -- Moonfire(Rank 7)
            9833, -- Moonfire(Rank 8)
            9834, -- Moonfire(Rank 9)
            9835, -- Moonfire(Rank 10)
            20690, -- Moonfire
            21669, -- Moonfire
            429823, -- Moonfire
        },
        [4] = {
            2912, -- Starfire(Rank 1)
            8949, -- Starfire(Rank 2)
            8950, -- Starfire(Rank 3)
            8951, -- Starfire(Rank 4)
            9875, -- Starfire(Rank 5)
            9876, -- Starfire(Rank 6)
            20687, -- Starfall
            21668, -- Starfire
            25298, -- Starfire(Rank 7)
            429820, -- Starfall
        },
        [8] = {
            99, -- Demoralizing Roar(Rank 1)
            1735, -- Demoralizing Roar(Rank 2)
            9490, -- Demoralizing Roar(Rank 3)
            9747, -- Demoralizing Roar(Rank 4)
            9898, -- Demoralizing Roar(Rank 5)
        },
        [16] = {
            774, -- Rejuvenation(Rank 1)
            1058, -- Rejuvenation(Rank 2)
            1430, -- Rejuvenation(Rank 3)
            2090, -- Rejuvenation(Rank 4)
            2091, -- Rejuvenation(Rank 5)
            3627, -- Rejuvenation(Rank 6)
            8910, -- Rejuvenation(Rank 7)
            9839, -- Rejuvenation(Rank 8)
            9840, -- Rejuvenation(Rank 9)
            9841, -- Rejuvenation(Rank 10)
            25299, -- Rejuvenation(Rank 11)
            27813, -- Blessed Recovery(Rank 1)
            27817, -- Blessed Recovery(Rank 2)
            27818, -- Blessed Recovery(Rank 3)
            417057, -- Rejuvenation(Rank 1)
            417058, -- Rejuvenation(Rank 2)
            417059, -- Rejuvenation(Rank 3)
            417060, -- Rejuvenation(Rank 4)
            417061, -- Rejuvenation(Rank 5)
            417062, -- Rejuvenation(Rank 6)
            417063, -- Rejuvenation(Rank 7)
            417064, -- Rejuvenation(Rank 8)
            417065, -- Rejuvenation(Rank 9)
            417066, -- Rejuvenation(Rank 10)
            417068, -- Rejuvenation(Rank 11)
        },
        [32] = {
            5185, -- Healing Touch(Rank 1)
            5186, -- Healing Touch(Rank 2)
            5187, -- Healing Touch(Rank 3)
            5188, -- Healing Touch(Rank 4)
            5189, -- Healing Touch(Rank 5)
            6778, -- Healing Touch(Rank 6)
            8903, -- Healing Touch(Rank 7)
            9758, -- Healing Touch(Rank 8)
            9888, -- Healing Touch(Rank 9)
            9889, -- Healing Touch(Rank 10)
            25297, -- Healing Touch(Rank 11)
        },
        [64] = {
            8936, -- Regrowth(Rank 1)
            8938, -- Regrowth(Rank 2)
            8939, -- Regrowth(Rank 3)
            8940, -- Regrowth(Rank 4)
            8941, -- Regrowth(Rank 5)
            9750, -- Regrowth(Rank 6)
            9856, -- Regrowth(Rank 7)
            9857, -- Regrowth(Rank 8)
            9858, -- Regrowth(Rank 9)
            436937, -- Regrowth(Rank 1)
            436938, -- Regrowth(Rank 2)
            436939, -- Regrowth(Rank 3)
            436940, -- Regrowth(Rank 4)
            436942, -- Regrowth(Rank 5)
            436943, -- Regrowth(Rank 6)
            436944, -- Regrowth(Rank 7)
            436945, -- Regrowth(Rank 8)
            436946, -- Regrowth(Rank 9)
        },
        [128] = {
            740, -- Tranquility(Rank 1)
            8918, -- Tranquility(Rank 2)
            9862, -- Tranquility(Rank 3)
            9863, -- Tranquility(Rank 4)
            21791, -- Tranquility
            21793, -- Twisted Tranquility
            25817, -- Tranquility
        },
        [256] = {
            467, -- Thorns(Rank 1)
            782, -- Thorns(Rank 2)
            1075, -- Thorns(Rank 3)
            8914, -- Thorns(Rank 4)
            9756, -- Thorns(Rank 5)
            9910, -- Thorns(Rank 6)
            16877, -- Thorns(Rank 6)
            21335, -- Thorns
            21337, -- Thorns
            22128, -- Thorns
            22696, -- Thorns
            22781, -- Thornling
            25059, -- Dmg Shield
            25640, -- Thorns
            25777, -- Thorns
            26666, -- Dmg Shield2
        },
        [512] = {
            339, -- Entangling Roots(Rank 1)
            1062, -- Entangling Roots(Rank 2)
            5195, -- Entangling Roots(Rank 3)
            5196, -- Entangling Roots(Rank 4)
            9852, -- Entangling Roots(Rank 5)
            9853, -- Entangling Roots(Rank 6)
            19970, -- Entangling Roots(Rank 6)
            19971, -- Entangling Roots(Rank 5)
            19972, -- Entangling Roots(Rank 4)
            19973, -- Entangling Roots(Rank 3)
            19974, -- Entangling Roots(Rank 2)
            19975, -- Entangling Roots(Rank 1)
        },
        [1024] = {
            770, -- Faerie Fire(Rank 1)
            778, -- Faerie Fire(Rank 2)
            9749, -- Faerie Fire(Rank 3)
            9907, -- Faerie Fire(Rank 4)
            16857, -- Faerie Fire (Feral)(Rank 1)
            17390, -- Faerie Fire (Feral)(Rank 2)
            17391, -- Faerie Fire (Feral)(Rank 3)
            17392, -- Faerie Fire (Feral)(Rank 4)
        },
        [2048] = {
            769, -- Swipe(Rank 3)
            779, -- Swipe(Rank 1)
            780, -- Swipe(Rank 2)
            6807, -- Maul(Rank 1)
            6808, -- Maul(Rank 2)
            6809, -- Maul(Rank 3)
            8972, -- Maul(Rank 4)
            9745, -- Maul(Rank 5)
            9754, -- Swipe(Rank 4)
            9880, -- Maul(Rank 6)
            9881, -- Maul(Rank 7)
            9908, -- Swipe(Rank 5)
            27554, -- Swipe
        },
        [4096] = {
            1082, -- Claw(Rank 1)
            1822, -- Rake(Rank 1)
            1823, -- Rake(Rank 2)
            1824, -- Rake(Rank 3)
            3029, -- Claw(Rank 2)
            5201, -- Claw(Rank 3)
            9849, -- Claw(Rank 4)
            9850, -- Claw(Rank 5)
            9904, -- Rake(Rank 4)
            24187, -- Claw
            24331, -- Rake
            24332, -- Rake
            27555, -- Shred
            27556, -- Rake
            27638, -- Rake
        },
        [8192] = {
            5211, -- Bash(Rank 1)
            6798, -- Bash(Rank 2)
            8983, -- Bash(Rank 3)
        },
        [16384] = {
            5215, -- Prowl(Rank 1)
            6783, -- Prowl(Rank 2)
            9913, -- Prowl(Rank 3)
        },
        [32768] = {
            5221, -- Shred(Rank 1)
            6800, -- Shred(Rank 2)
            8992, -- Shred(Rank 3)
            9829, -- Shred(Rank 4)
            9830, -- Shred(Rank 5)
        },
        [65536] = {
            6785, -- Ravage(Rank 1)
            6787, -- Ravage(Rank 2)
            9866, -- Ravage(Rank 3)
            9867, -- Ravage(Rank 4)
        },
        [131072] = {
            9005, -- Pounce(Rank 1)
            9823, -- Pounce(Rank 2)
            9827, -- Pounce(Rank 3)
        },
        [262144] = {
            1126, -- Mark of the Wild(Rank 1)
            5232, -- Mark of the Wild(Rank 2)
            5234, -- Mark of the Wild(Rank 4)
            6756, -- Mark of the Wild(Rank 3)
            8907, -- Mark of the Wild(Rank 5)
            9884, -- Mark of the Wild(Rank 6)
            9885, -- Mark of the Wild(Rank 7)
            21187, -- Stormpike Reputation +5
            21849, -- Gift of the Wild(Rank 1)
            21850, -- Gift of the Wild(Rank 2)
            24752, -- Mark of the Wild(Rank 7)
            364163, -- Mark of the Wild(Rank 6)
        },
        [524288] = {
            5229, -- Enrage
            25503, -- Enrage
        },
        [1048576] = {
            16689, -- Nature's Grasp(Rank 1)
            16810, -- Nature's Grasp(Rank 2)
            16811, -- Nature's Grasp(Rank 3)
            16812, -- Nature's Grasp(Rank 4)
            16813, -- Nature's Grasp(Rank 5)
            17329, -- Nature's Grasp(Rank 6)
        },
        [2097152] = {
            5570, -- Insect Swarm(Rank 1)
            24974, -- Insect Swarm(Rank 2)
            24975, -- Insect Swarm(Rank 3)
            24976, -- Insect Swarm(Rank 4)
            24977, -- Insect Swarm(Rank 5)
        },
        [4194304] = {
            16914, -- Hurricane(Rank 1)
            17401, -- Hurricane(Rank 2)
            17402, -- Hurricane(Rank 3)
            27530, -- Hurricane
            405953, -- Torrential Downpour
        },
        [8388608] = {
            1079, -- Rip(Rank 1)
            9492, -- Rip(Rank 2)
            9493, -- Rip(Rank 3)
            9752, -- Rip(Rank 4)
            9894, -- Rip(Rank 5)
            9896, -- Rip(Rank 6)
            22568, -- Ferocious Bite(Rank 1)
            22827, -- Ferocious Bite(Rank 2)
            22828, -- Ferocious Bite(Rank 3)
            22829, -- Ferocious Bite(Rank 4)
            27557, -- Ferocious Bite
            31018, -- Ferocious Bite(Rank 5)
        },
        [16777216] = {
            2637, -- Hibernate(Rank 1)
            2908, -- Soothe Animal(Rank 1)
            8955, -- Soothe Animal(Rank 2)
            9901, -- Soothe Animal(Rank 3)
            18657, -- Hibernate(Rank 2)
            18658, -- Hibernate(Rank 3)
            20484, -- Rebirth(Rank 1)
            20739, -- Rebirth(Rank 2)
            20742, -- Rebirth(Rank 3)
            20747, -- Rebirth(Rank 4)
            20748, -- Rebirth(Rank 5)
        },
        [33554432] = {
            775, -- Tree Form(Shapeshift)
            21178, -- Bear Form (Passive2)(Passive)
        },
        [67108864] = {
            9033, -- Shapeshift Form Effect
        },
        [134217728] = {
            3025, -- Cat Form (Passive)(Passive)
            24868, -- Predatory Strikes
        },
        [268435456] = {
            20484, -- Rebirth(Rank 1)
            20739, -- Rebirth(Rank 2)
            20742, -- Rebirth(Rank 3)
            20747, -- Rebirth(Rank 4)
            20748, -- Rebirth(Rank 5)
        },
        [536870912] = {
            783, -- Travel Form(Shapeshift)
            1066, -- Aquatic Form(Shapeshift)
            24858, -- Moonkin Form(Shapeshift)
            27546, -- Faerie Dragon Form
        },
        [1073741824] = {
            5487, -- Bear Form(Shapeshift)
            9634, -- Dire Bear Form(Shapeshift)
        },
        [2147483648] = {
            768, -- Cat Form(Shapeshift)
        },
    },
    [2] = {
        [1] = {
            16979, -- Feral Charge
        },
        [2] = {
            18562, -- Swiftmend
        },
        [4] = {
            2782, -- Remove Curse
            2893, -- Abolish Poison
            8946, -- Cure Poison
        },
        [8] = {
            6795, -- Growl
        },
        [16] = {
            408124, -- Lifebloom
        },
        [64] = {
            407995, -- Mangle(Bear)
        },
        [256] = {
            414644, -- Lacerate
            414647, -- Lacerate
        },
        [1024] = {
            407993, -- Mangle(Cat)
        },
        [33554432] = {
            408247, -- Nourish
        },
        [67108864] = {
            408120, -- Wild Growth
        },
        [268435456] = {
            407988, -- Savage Roar
        },
        [1073741824] = {
            22842, -- Frenzied Regeneration(Rank 1)
            22895, -- Frenzied Regeneration(Rank 2)
            22896, -- Frenzied Regeneration(Rank 3)
            428708, -- Frenzied Regeneration
        },
    },
    [3] = {
        [1] = {
            5209, -- Challenging Roar
        },
        [16] = {
            16979, -- Feral Charge
        },
        [64] = {
            417141, -- Berserk
        },
        [2048] = {
            5217, -- Tiger's Fury(Rank 1)
            6793, -- Tiger's Fury(Rank 2)
            9845, -- Tiger's Fury(Rank 3)
            9846, -- Tiger's Fury(Rank 4)
            417045, -- Tiger's Fury
        },
        [65536] = {
            407989, -- Savage Roar
        },
        [8388608] = {
            17002, -- Feline Swiftness
            24866, -- Feline Swiftness
        },
        [16777216] = {
            417148, -- Efflorescence
        },
        [33554432] = {
            417157, -- Starsurge
        },
        [536870912] = {
            1126, -- Mark of the Wild(Rank 1)
            5232, -- Mark of the Wild(Rank 2)
            5234, -- Mark of the Wild(Rank 4)
            6756, -- Mark of the Wild(Rank 3)
            8907, -- Mark of the Wild(Rank 5)
            9884, -- Mark of the Wild(Rank 6)
            9885, -- Mark of the Wild(Rank 7)
            364163, -- Mark of the Wild(Rank 6)
        },
        [2147483648] = {
            417440, -- Thrash (Bear)
            417441, -- Thrash (Bear)
        },
    },
    [4] = {
        [8] = {
            414647, -- Lacerate
        },
        [64] = {
            414684, -- Sunfire
            414687, -- Sunfire(Bear)
            414689, -- Sunfire(Cat)
        },
        [1024] = {
            414683, -- Living Seed
        },
        [262144] = {
            16864, -- Omen of Clarity
        },
        [134217728] = {
            410176, -- Skull Bash
        },
        [1073741824] = {
            1822, -- Rake(Rank 1)
            1823, -- Rake(Rank 2)
            1824, -- Rake(Rank 3)
            9904, -- Rake(Rank 4)
            417448, -- Thrash (Cat)
        },
    },
};


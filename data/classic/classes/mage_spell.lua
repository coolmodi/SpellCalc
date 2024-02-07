-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {
    [10] = { -- Blizzard(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCost = 320,
        school = 5,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 25,
                valueRange = 0,
                valuePerLevel = 0.10000000149,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [116] = { -- Frostbolt(Rank 1)
        spellLevel = 4,
        maxLevel = 8,
        duration = 5,
        baseCost = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 18,
                valueRange = 2,
                valuePerLevel = 0.5,
                coef = 0.1630000025,
                coefAP = 0,
            },
        }
    },
    [120] = { -- Cone of Cold(Rank 1)
        spellLevel = 26,
        maxLevel = 31,
        duration = 8,
        baseCost = 210,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 98,
                valueRange = 10,
                valuePerLevel = 0.80000001192,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [122] = { -- Frost Nova(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        duration = 8,
        baseCost = 55,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 19,
                valueRange = 2,
                valuePerLevel = 0.5,
                coef = 0.01799999923,
                coefAP = 0,
            },
        }
    },
    [133] = { -- Fireball(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        duration = 4,
        baseCost = 30,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 14,
                valueRange = 8,
                valuePerLevel = 0.60000002384,
                coef = 0.1230000034,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 1,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [143] = { -- Fireball(Rank 2)
        spellLevel = 6,
        maxLevel = 10,
        duration = 6,
        baseCost = 45,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 31,
                valueRange = 14,
                valuePerLevel = 0.80000001192,
                coef = 0.27099999785,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 1,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [145] = { -- Fireball(Rank 3)
        spellLevel = 12,
        maxLevel = 16,
        duration = 6,
        baseCost = 65,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 53,
                valueRange = 20,
                valuePerLevel = 1,
                coef = 0.5,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 2,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [205] = { -- Frostbolt(Rank 2)
        spellLevel = 8,
        maxLevel = 12,
        duration = 6,
        baseCost = 35,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 31,
                valueRange = 4,
                valuePerLevel = 0.69999998808,
                coef = 0.2689999938,
                coefAP = 0,
            },
        }
    },
    [543] = { -- Fire Ward(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 30,
        baseCost = 85,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 165,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [837] = { -- Frostbolt(Rank 3)
        spellLevel = 14,
        maxLevel = 18,
        duration = 6,
        baseCost = 50,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 51,
                valueRange = 6,
                valuePerLevel = 0.89999997616,
                coef = 0.46299999952,
                coefAP = 0,
            },
        }
    },
    [865] = { -- Frost Nova(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        duration = 8,
        baseCost = 85,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 33,
                valueRange = 4,
                valuePerLevel = 0.5,
                coef = 0.02899999917,
                coefAP = 0,
            },
        }
    },
    [1449] = { -- Arcane Explosion(Rank 1)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 75,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 32,
                valueRange = 4,
                valuePerLevel = 0.40000000596,
                coef = 0.11100000143,
                coefAP = 0,
            },
        }
    },
    [1463] = { -- Mana Shield(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 60,
        baseCost = 40,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 120,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [2120] = { -- Flamestrike(Rank 1)
        spellLevel = 16,
        maxLevel = 21,
        duration = 8,
        baseCost = 195,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 52,
                valueRange = 16,
                valuePerLevel = 0.60000002384,
                coef = 0.13400000334,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 12,
                valueRange = 0,
                coef = 0.01700000092,
                coefAP = 0,
            },
        }
    },
    [2121] = { -- Flamestrike(Rank 2)
        spellLevel = 24,
        maxLevel = 29,
        duration = 8,
        baseCost = 330,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 96,
                valueRange = 26,
                valuePerLevel = 0.80000001192,
                coef = 0.15700000525,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 22,
                valueRange = 0,
                coef = 0.01999999955,
                coefAP = 0,
            },
        }
    },
    [2136] = { -- Fire Blast(Rank 1)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 40,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 24,
                valueRange = 8,
                valuePerLevel = 0.60000002384,
                coef = 0.20399999619,
                coefAP = 0,
            },
        }
    },
    [2137] = { -- Fire Blast(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 75,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 57,
                valueRange = 14,
                valuePerLevel = 1,
                coef = 0.33199998736,
                coefAP = 0,
            },
        }
    },
    [2138] = { -- Fire Blast(Rank 3)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 115,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 103,
                valueRange = 24,
                valuePerLevel = 1.39999997616,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [2948] = { -- Scorch(Rank 1)
        spellLevel = 22,
        maxLevel = 26,
        baseCost = 50,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 53,
                valueRange = 12,
                valuePerLevel = 0.89999997616,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [3140] = { -- Fireball(Rank 4)
        spellLevel = 18,
        maxLevel = 22,
        duration = 8,
        baseCost = 95,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 84,
                valueRange = 32,
                valuePerLevel = 1.29999995232,
                coef = 0.79299998283,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 3,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [5143] = { -- Arcane Missiles(Rank 1)
        spellLevel = 8,
        maxLevel = 12,
        duration = 3,
        baseCost = 85,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 7268,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [5144] = { -- Arcane Missiles(Rank 2)
        spellLevel = 16,
        maxLevel = 20,
        duration = 4,
        baseCost = 140,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 7269,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [5145] = { -- Arcane Missiles(Rank 3)
        spellLevel = 24,
        maxLevel = 28,
        duration = 5,
        baseCost = 235,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 7270,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6131] = { -- Frost Nova(Rank 3)
        spellLevel = 40,
        maxLevel = 45,
        duration = 8,
        baseCost = 115,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 52,
                valueRange = 6,
                valuePerLevel = 0.5,
                coef = 0.02899999917,
                coefAP = 0,
            },
        }
    },
    [6141] = { -- Blizzard(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        duration = 8,
        baseCost = 520,
        school = 5,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 44,
                valueRange = 0,
                valuePerLevel = 0.20000000298,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [6143] = { -- Frost Ward(Rank 1)
        spellLevel = 22,
        maxLevel = 0,
        duration = 30,
        baseCost = 85,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 165,
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
    [7268] = { -- Arcane Missile(Rank 1)
        spellLevel = 8,
        maxLevel = 12,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 24,
                valueRange = 0,
                valuePerLevel = 0.30000001192,
                coef = 0.13199999928,
                coefAP = 0,
            },
        }
    },
    [7269] = { -- Arcane Missiles(Rank 2)
        spellLevel = 16,
        maxLevel = 20,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 36,
                valueRange = 0,
                valuePerLevel = 0.40000000596,
                coef = 0.20399999619,
                coefAP = 0,
            },
        }
    },
    [7270] = { -- Arcane Missiles(Rank 3)
        spellLevel = 24,
        maxLevel = 28,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 56,
                valueRange = 0,
                valuePerLevel = 0.5,
                coef = 0.23999999464,
                coefAP = 0,
            },
        }
    },
    [7322] = { -- Frostbolt(Rank 4)
        spellLevel = 20,
        maxLevel = 24,
        duration = 7,
        baseCost = 65,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 74,
                valueRange = 8,
                valuePerLevel = 1.10000002384,
                coef = 0.70599997044,
                coefAP = 0,
            },
        }
    },
    [8400] = { -- Fireball(Rank 5)
        spellLevel = 24,
        maxLevel = 28,
        duration = 8,
        baseCost = 140,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 139,
                valueRange = 48,
                valuePerLevel = 1.79999995232,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 5,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8401] = { -- Fireball(Rank 6)
        spellLevel = 30,
        maxLevel = 34,
        duration = 8,
        baseCost = 185,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 199,
                valueRange = 66,
                valuePerLevel = 2.09999990463,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 7,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8402] = { -- Fireball(Rank 7)
        spellLevel = 36,
        maxLevel = 40,
        duration = 8,
        baseCost = 220,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 255,
                valueRange = 80,
                valuePerLevel = 2.40000009537,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 8,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8406] = { -- Frostbolt(Rank 5)
        spellLevel = 26,
        maxLevel = 30,
        duration = 7,
        baseCost = 100,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 126,
                valueRange = 12,
                valuePerLevel = 1.5,
                coef = 0.81400001049,
                coefAP = 0,
            },
        }
    },
    [8407] = { -- Frostbolt(Rank 6)
        spellLevel = 32,
        maxLevel = 36,
        duration = 8,
        baseCost = 130,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 174,
                valueRange = 16,
                valuePerLevel = 1.70000004768,
                coef = 0.81400001049,
                coefAP = 0,
            },
        }
    },
    [8408] = { -- Frostbolt(Rank 7)
        spellLevel = 38,
        maxLevel = 42,
        duration = 8,
        baseCost = 160,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 227,
                valueRange = 20,
                valuePerLevel = 2,
                coef = 0.81400001049,
                coefAP = 0,
            },
        }
    },
    [8412] = { -- Fire Blast(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        baseCost = 165,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 168,
                valueRange = 34,
                valuePerLevel = 1.79999995232,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8413] = { -- Fire Blast(Rank 5)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 220,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 242,
                valueRange = 48,
                valuePerLevel = 2.20000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8416] = { -- Arcane Missiles(Rank 4)
        spellLevel = 32,
        maxLevel = 36,
        duration = 5,
        baseCost = 320,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 8419,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8417] = { -- Arcane Missiles(Rank 5)
        spellLevel = 40,
        maxLevel = 44,
        duration = 5,
        baseCost = 410,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 8418,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8418] = { -- Arcane Missiles(Rank 5)
        spellLevel = 40,
        maxLevel = 44,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 115,
                valueRange = 0,
                valuePerLevel = 0.69999998808,
                coef = 0.23999999464,
                coefAP = 0,
            },
        }
    },
    [8419] = { -- Arcane Missiles(Rank 4)
        spellLevel = 32,
        maxLevel = 36,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 83,
                valueRange = 0,
                valuePerLevel = 0.60000002384,
                coef = 0.23999999464,
                coefAP = 0,
            },
        }
    },
    [8422] = { -- Flamestrike(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        duration = 8,
        baseCost = 490,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 154,
                valueRange = 38,
                valuePerLevel = 1,
                coef = 0.15700000525,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 35,
                valueRange = 0,
                coef = 0.01999999955,
                coefAP = 0,
            },
        }
    },
    [8423] = { -- Flamestrike(Rank 4)
        spellLevel = 40,
        maxLevel = 45,
        duration = 8,
        baseCost = 650,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 220,
                valueRange = 52,
                valuePerLevel = 1.29999995232,
                coef = 0.15700000525,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 49,
                valueRange = 0,
                coef = 0.01999999955,
                coefAP = 0,
            },
        }
    },
    [8427] = { -- Blizzard(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        duration = 8,
        baseCost = 720,
        school = 5,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 65,
                valueRange = 0,
                valuePerLevel = 0.20000000298,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [8437] = { -- Arcane Explosion(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 120,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 57,
                valueRange = 6,
                valuePerLevel = 0.60000002384,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [8438] = { -- Arcane Explosion(Rank 3)
        spellLevel = 30,
        maxLevel = 35,
        baseCost = 185,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 97,
                valueRange = 8,
                valuePerLevel = 0.89999997616,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [8439] = { -- Arcane Explosion(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 250,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 139,
                valueRange = 12,
                valuePerLevel = 0.89999997616,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [8444] = { -- Scorch(Rank 2)
        spellLevel = 28,
        maxLevel = 32,
        baseCost = 65,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 77,
                valueRange = 16,
                valuePerLevel = 1.10000002384,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8445] = { -- Scorch(Rank 3)
        spellLevel = 34,
        maxLevel = 38,
        baseCost = 80,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 100,
                valueRange = 20,
                valuePerLevel = 1.29999995232,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8446] = { -- Scorch(Rank 4)
        spellLevel = 40,
        maxLevel = 44,
        baseCost = 100,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 133,
                valueRange = 26,
                valuePerLevel = 1.5,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8457] = { -- Fire Ward(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 30,
        baseCost = 135,
        school = 3,
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
    [8458] = { -- Fire Ward(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 30,
        baseCost = 195,
        school = 3,
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
    [8461] = { -- Frost Ward(Rank 2)
        spellLevel = 32,
        maxLevel = 0,
        duration = 30,
        baseCost = 135,
        school = 5,
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
    [8462] = { -- Frost Ward(Rank 3)
        spellLevel = 42,
        maxLevel = 0,
        duration = 30,
        baseCost = 195,
        school = 5,
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
    [8492] = { -- Cone of Cold(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        baseCost = 290,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 146,
                valueRange = 14,
                valuePerLevel = 1,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [8494] = { -- Mana Shield(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 60,
        baseCost = 60,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 210,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8495] = { -- Mana Shield(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 60,
        baseCost = 80,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 300,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10148] = { -- Fireball(Rank 8)
        spellLevel = 42,
        maxLevel = 46,
        duration = 8,
        baseCost = 260,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 318,
                valueRange = 96,
                valuePerLevel = 2.70000004768,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 10,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10149] = { -- Fireball(Rank 9)
        spellLevel = 48,
        maxLevel = 52,
        duration = 8,
        baseCost = 305,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 392,
                valueRange = 114,
                valuePerLevel = 3,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 13,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10150] = { -- Fireball(Rank 10)
        spellLevel = 54,
        maxLevel = 58,
        duration = 8,
        baseCost = 350,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 475,
                valueRange = 134,
                valuePerLevel = 3.40000009537,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 15,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10151] = { -- Fireball(Rank 11)
        spellLevel = 60,
        maxLevel = 64,
        duration = 8,
        baseCost = 395,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 561,
                valueRange = 154,
                valuePerLevel = 3.70000004768,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 18,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10159] = { -- Cone of Cold(Rank 3)
        spellLevel = 42,
        maxLevel = 47,
        duration = 8,
        baseCost = 380,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 203,
                valueRange = 20,
                valuePerLevel = 1.20000004768,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [10160] = { -- Cone of Cold(Rank 4)
        spellLevel = 50,
        maxLevel = 55,
        duration = 8,
        baseCost = 465,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 264,
                valueRange = 26,
                valuePerLevel = 1.29999995232,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [10161] = { -- Cone of Cold(Rank 5)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCost = 555,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 335,
                valueRange = 30,
                valuePerLevel = 1.5,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [10177] = { -- Frost Ward(Rank 4)
        spellLevel = 52,
        maxLevel = 0,
        duration = 30,
        baseCost = 255,
        school = 5,
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
    [10179] = { -- Frostbolt(Rank 8)
        spellLevel = 44,
        maxLevel = 48,
        duration = 9,
        baseCost = 195,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 292,
                valueRange = 24,
                valuePerLevel = 2.29999995232,
                coef = 0.81400001049,
                coefAP = 0,
            },
        }
    },
    [10180] = { -- Frostbolt(Rank 9)
        spellLevel = 50,
        maxLevel = 54,
        duration = 9,
        baseCost = 225,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 353,
                valueRange = 30,
                valuePerLevel = 2.59999990463,
                coef = 0.81400001049,
                coefAP = 0,
            },
        }
    },
    [10181] = { -- Frostbolt(Rank 10)
        spellLevel = 56,
        maxLevel = 60,
        duration = 9,
        baseCost = 260,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 429,
                valueRange = 34,
                valuePerLevel = 2.90000009537,
                coef = 0.81400001049,
                coefAP = 0,
            },
        }
    },
    [10185] = { -- Blizzard(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        duration = 8,
        baseCost = 935,
        school = 5,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 90,
                valueRange = 0,
                valuePerLevel = 0.30000001192,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [10186] = { -- Blizzard(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        duration = 8,
        baseCost = 1160,
        school = 5,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 117,
                valueRange = 0,
                valuePerLevel = 0.30000001192,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [10187] = { -- Blizzard(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        duration = 8,
        baseCost = 1400,
        school = 5,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 149,
                valueRange = 0,
                valuePerLevel = 0.40000000596,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [10191] = { -- Mana Shield(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 60,
        baseCost = 100,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 390,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10192] = { -- Mana Shield(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 60,
        baseCost = 120,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 480,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10193] = { -- Mana Shield(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 60,
        baseCost = 140,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 570,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10197] = { -- Fire Blast(Rank 6)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 280,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 332,
                valueRange = 62,
                valuePerLevel = 2.59999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10199] = { -- Fire Blast(Rank 7)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 340,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 431,
                valueRange = 78,
                valuePerLevel = 3,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10201] = { -- Arcane Explosion(Rank 5)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 315,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 186,
                valueRange = 16,
                valuePerLevel = 1.10000002384,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [10202] = { -- Arcane Explosion(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 390,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 243,
                valueRange = 20,
                valuePerLevel = 1.29999995232,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [10205] = { -- Scorch(Rank 5)
        spellLevel = 46,
        maxLevel = 50,
        baseCost = 115,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 162,
                valueRange = 30,
                valuePerLevel = 1.70000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10206] = { -- Scorch(Rank 6)
        spellLevel = 52,
        maxLevel = 56,
        baseCost = 135,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 200,
                valueRange = 39,
                valuePerLevel = 1.89999997616,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10207] = { -- Scorch(Rank 7)
        spellLevel = 58,
        maxLevel = 62,
        baseCost = 150,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 233,
                valueRange = 42,
                valuePerLevel = 2.09999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10211] = { -- Arcane Missiles(Rank 6)
        spellLevel = 48,
        maxLevel = 52,
        duration = 5,
        baseCost = 500,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 10273,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10212] = { -- Arcane Missiles(Rank 7)
        spellLevel = 56,
        maxLevel = 60,
        duration = 5,
        baseCost = 595,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 10274,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10215] = { -- Flamestrike(Rank 5)
        spellLevel = 48,
        maxLevel = 53,
        duration = 8,
        baseCost = 815,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 291,
                valueRange = 68,
                valuePerLevel = 1.5,
                coef = 0.15700000525,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 66,
                valueRange = 0,
                coef = 0.01999999955,
                coefAP = 0,
            },
        }
    },
    [10216] = { -- Flamestrike(Rank 6)
        spellLevel = 56,
        maxLevel = 61,
        duration = 8,
        baseCost = 990,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 375,
                valueRange = 84,
                valuePerLevel = 1.70000004768,
                coef = 0.15700000525,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 85,
                valueRange = 0,
                coef = 0.01999999955,
                coefAP = 0,
            },
        }
    },
    [10223] = { -- Fire Ward(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 30,
        baseCost = 255,
        school = 3,
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
    [10225] = { -- Fire Ward(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 30,
        baseCost = 320,
        school = 3,
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
    [10230] = { -- Frost Nova(Rank 4)
        spellLevel = 54,
        maxLevel = 59,
        duration = 8,
        baseCost = 145,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 71,
                valueRange = 8,
                valuePerLevel = 0.5,
                coef = 0.02899999917,
                coefAP = 0,
            },
        }
    },
    [10273] = { -- Arcane Missiles(Rank 6)
        spellLevel = 48,
        maxLevel = 52,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 151,
                valueRange = 0,
                valuePerLevel = 0.80000001192,
                coef = 0.23999999464,
                coefAP = 0,
            },
        }
    },
    [10274] = { -- Arcane Missiles(Rank 7)
        spellLevel = 56,
        maxLevel = 60,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 192,
                valueRange = 0,
                valuePerLevel = 0.89999997616,
                coef = 0.23999999464,
                coefAP = 0,
            },
        }
    },
    [11113] = { -- Blast Wave(Rank 1)
        spellLevel = 30,
        maxLevel = 36,
        duration = 6,
        baseCost = 215,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 154,
                valueRange = 32,
                valuePerLevel = 1,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [11366] = { -- Pyroblast(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 12,
        baseCost = 125,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 141,
                valueRange = 46,
                valuePerLevel = 1.89999997616,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 14,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [11426] = { -- Ice Barrier(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        duration = 60,
        baseCost = 305,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 438,
                valueRange = 0,
                valuePerLevel = 2.79999995232,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [12051] = { -- Evocation
        spellLevel = 20,
        maxLevel = 0,
        duration = 8,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 110,
                valueBase = 1500,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [12505] = { -- Pyroblast(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        duration = 12,
        baseCost = 150,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 180,
                valueRange = 56,
                valuePerLevel = 2.20000004768,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 18,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [12522] = { -- Pyroblast(Rank 3)
        spellLevel = 30,
        maxLevel = 36,
        duration = 12,
        baseCost = 195,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 255,
                valueRange = 72,
                valuePerLevel = 2.59999990463,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 24,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [12523] = { -- Pyroblast(Rank 4)
        spellLevel = 36,
        maxLevel = 42,
        duration = 12,
        baseCost = 240,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 329,
                valueRange = 90,
                valuePerLevel = 3,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 31,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [12524] = { -- Pyroblast(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 12,
        baseCost = 285,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 407,
                valueRange = 108,
                valuePerLevel = 3.40000009537,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 39,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [12525] = { -- Pyroblast(Rank 6)
        spellLevel = 48,
        maxLevel = 54,
        duration = 12,
        baseCost = 335,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 503,
                valueRange = 128,
                valuePerLevel = 3.79999995232,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 47,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [12526] = { -- Pyroblast(Rank 7)
        spellLevel = 54,
        maxLevel = 60,
        duration = 12,
        baseCost = 385,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 600,
                valueRange = 150,
                valuePerLevel = 4.19999980927,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 57,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [13018] = { -- Blast Wave(Rank 2)
        spellLevel = 36,
        maxLevel = 42,
        duration = 6,
        baseCost = 270,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 201,
                valueRange = 40,
                valuePerLevel = 1.20000004768,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [13019] = { -- Blast Wave(Rank 3)
        spellLevel = 44,
        maxLevel = 50,
        duration = 6,
        baseCost = 355,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 277,
                valueRange = 52,
                valuePerLevel = 1.39999997616,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [13020] = { -- Blast Wave(Rank 4)
        spellLevel = 52,
        maxLevel = 58,
        duration = 6,
        baseCost = 450,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 365,
                valueRange = 68,
                valuePerLevel = 1.60000002384,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [13021] = { -- Blast Wave(Rank 5)
        spellLevel = 60,
        maxLevel = 66,
        duration = 6,
        baseCost = 545,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 462,
                valueRange = 82,
                valuePerLevel = 1.89999997616,
                coef = 0.12899999321,
                coefAP = 0,
            },
        }
    },
    [13031] = { -- Ice Barrier(Rank 2)
        spellLevel = 46,
        maxLevel = 52,
        duration = 60,
        baseCost = 360,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 549,
                valueRange = 0,
                valuePerLevel = 3.20000004768,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [13032] = { -- Ice Barrier(Rank 3)
        spellLevel = 52,
        maxLevel = 58,
        duration = 60,
        baseCost = 420,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 678,
                valueRange = 0,
                valuePerLevel = 3.59999990463,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [13033] = { -- Ice Barrier(Rank 4)
        spellLevel = 58,
        maxLevel = 64,
        duration = 60,
        baseCost = 480,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 818,
                valueRange = 0,
                valuePerLevel = 4,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [18809] = { -- Pyroblast(Rank 8)
        spellLevel = 60,
        maxLevel = 66,
        duration = 12,
        baseCost = 440,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 716,
                valueRange = 174,
                valuePerLevel = 4.59999990463,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 67,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [25304] = { -- Frostbolt(Rank 11)
        spellLevel = 60,
        maxLevel = 64,
        duration = 9,
        baseCost = 290,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 515,
                valueRange = 40,
                valuePerLevel = 3.20000004768,
                coef = 0.81400001049,
                coefAP = 0,
            },
        }
    },
    [25306] = { -- Fireball(Rank 12)
        spellLevel = 60,
        maxLevel = 64,
        duration = 8,
        baseCost = 410,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 596,
                valueRange = 164,
                valuePerLevel = 3.79999995232,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 19,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25345] = { -- Arcane Missiles(Rank 8)
        spellLevel = 56,
        maxLevel = 60,
        duration = 5,
        baseCost = 655,
        school = 7,
        isChannel = true,
        defType = 0,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25346,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25346] = { -- Arcane Missiles(Rank 8)
        spellLevel = 60,
        maxLevel = 64,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 230,
                valueRange = 0,
                valuePerLevel = 1,
                coef = 0.23999999464,
                coefAP = 0,
            },
        }
    },
    [28609] = { -- Frost Ward(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 30,
        baseCost = 320,
        school = 5,
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
    [400574] = { -- Arcane Blast
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        useScalingFormula = "809power",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 453,
                valueRange = 74,
                coef = 0.71399998665,
                coefAP = 0,
            },
        }
    },
    [400613] = { -- Living Bomb
        spellLevel = 1,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        useScalingFormula = "809power",
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 85,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [400640] = { -- Ice Lance
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 8,
        school = 5,
        defType = 1,
        useScalingFormula = "809power",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 55,
                valueRange = 10,
                coef = 0.14300000668,
                coefAP = 0,
            },
        }
    },
    [401417] = { -- Regeneration
        spellLevel = 1,
        maxLevel = 0,
        duration = 3,
        baseCostPct = 43,
        school = 7,
        isChannel = true,
        defType = 1,
        useScalingFormula = "809healpower",
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 42,
                valueRange = 0,
                coef = 0.24300000072,
                coefAP = 0,
            },
        }
    },
    [412510] = { -- Mass Regeneration
        spellLevel = 1,
        maxLevel = 0,
        duration = 3,
        baseCostPct = 69,
        school = 7,
        isChannel = true,
        defType = 1,
        useScalingFormula = "809healpower",
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 42,
                valueRange = 0,
                coef = 0.08100000024,
                coefAP = 0,
            },
        }
    },
    [425124] = { -- Arcane Surge
        spellLevel = 1,
        maxLevel = 0,
        duration = 8,
        school = 7,
        defType = 1,
        useScalingFormula = "809power",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 226,
                valueRange = 38,
                coef = 0.42899999022,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 110,
                valueBase = 300,
                valueRange = 0,
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
            133, -- Fireball(Rank 1)
            143, -- Fireball(Rank 2)
            145, -- Fireball(Rank 3)
            3140, -- Fireball(Rank 4)
            8400, -- Fireball(Rank 5)
            8401, -- Fireball(Rank 6)
            8402, -- Fireball(Rank 7)
            10148, -- Fireball(Rank 8)
            10149, -- Fireball(Rank 9)
            10150, -- Fireball(Rank 10)
            10151, -- Fireball(Rank 11)
            21230, -- Fireball, Improved DoT
            25306, -- Fireball(Rank 12)
        },
        [2] = {
            2136, -- Fire Blast(Rank 1)
            2137, -- Fire Blast(Rank 2)
            2138, -- Fire Blast(Rank 3)
            8412, -- Fire Blast(Rank 4)
            8413, -- Fire Blast(Rank 5)
            10197, -- Fire Blast(Rank 6)
            10199, -- Fire Blast(Rank 7)
            13339, -- Fire Blast
            13340, -- Fire Blast
            13341, -- Fire Blast
            13342, -- Fire Blast
            13374, -- Fire Blast
            14145, -- Fire Blast
            15574, -- Fire Blast
            16144, -- Fire Blast
            17276, -- Scald
            17492, -- Hand of Thaurissan
            20623, -- Fire Blast
            20679, -- Fire Blast
            20795, -- Fire Blast
            20832, -- Fire Blast
            24530, -- Felfire
            25028, -- Fire Blast
            31378, -- Worm Blast
            400616, -- Fire Blast(Rank 3)
            400618, -- Fire Blast(Rank 1)
            400619, -- Fire Blast(Rank 2)
            400620, -- Fire Blast(Rank 4)
            400621, -- Fire Blast(Rank 5)
            400622, -- Fire Blast(Rank 6)
            400623, -- Fire Blast(Rank 7)
        },
        [4] = {
            2120, -- Flamestrike(Rank 1)
            2121, -- Flamestrike(Rank 2)
            8422, -- Flamestrike(Rank 3)
            8423, -- Flamestrike(Rank 4)
            10215, -- Flamestrike(Rank 5)
            10216, -- Flamestrike(Rank 6)
            12354, -- Flame of Hakkar
            18948, -- Dark Energy
            18949, -- Atal'ai Poison
        },
        [8] = {
            543, -- Fire Ward(Rank 1)
            8457, -- Fire Ward(Rank 2)
            8458, -- Fire Ward(Rank 3)
            10223, -- Fire Ward(Rank 4)
            10225, -- Fire Ward(Rank 5)
            15041, -- Fire Ward
            412214, -- Fire Ward(Rank 1)
            412218, -- Fire Ward(Rank 2)
            412230, -- Fire Ward(Rank 3)
            412231, -- Fire Ward(Rank 4)
            412232, -- Fire Ward(Rank 5)
            425225, -- Fire Damage Check
        },
        [16] = {
            2948, -- Scorch(Rank 1)
            8444, -- Scorch(Rank 2)
            8445, -- Scorch(Rank 3)
            8446, -- Scorch(Rank 4)
            10205, -- Scorch(Rank 5)
            10206, -- Scorch(Rank 6)
            10207, -- Scorch(Rank 7)
            13878, -- Scorch
            15241, -- Scorch
            17195, -- Scorch
            29515, -- TEST Scorch
        },
        [32] = {
            116, -- Frostbolt(Rank 1)
            205, -- Frostbolt(Rank 2)
            837, -- Frostbolt(Rank 3)
            7322, -- Frostbolt(Rank 4)
            8406, -- Frostbolt(Rank 5)
            8407, -- Frostbolt(Rank 6)
            8408, -- Frostbolt(Rank 7)
            10179, -- Frostbolt(Rank 8)
            10180, -- Frostbolt(Rank 9)
            10181, -- Frostbolt(Rank 10)
            21229, -- Frostbolt, Improved
            25304, -- Frostbolt(Rank 11)
            29163, -- Copy of Frostbolt(Rank 1)
            350025, -- Frostbolt
        },
        [64] = {
            122, -- Frost Nova(Rank 1)
            865, -- Frost Nova(Rank 2)
            6131, -- Frost Nova(Rank 3)
            10230, -- Frost Nova(Rank 4)
        },
        [128] = {
            10, -- Blizzard(Rank 1)
            6141, -- Blizzard(Rank 2)
            8427, -- Blizzard(Rank 3)
            10185, -- Blizzard(Rank 4)
            10186, -- Blizzard(Rank 5)
            10187, -- Blizzard(Rank 6)
            27618, -- Blizzard(Rank 6)
            28863, -- Void Zone
        },
        [256] = {
            6143, -- Frost Ward(Rank 1)
            8461, -- Frost Ward(Rank 2)
            8462, -- Frost Ward(Rank 3)
            10177, -- Frost Ward(Rank 4)
            15044, -- Frost Ward
            28609, -- Frost Ward(Rank 5)
            412202, -- Frost Ward(Rank 1)
            412205, -- Frost Ward(Rank 2)
            412207, -- Frost Ward(Rank 3)
            412209, -- Frost Ward(Rank 4)
            412210, -- Frost Ward(Rank 5)
        },
        [512] = {
            120, -- Cone of Cold(Rank 1)
            8492, -- Cone of Cold(Rank 2)
            10159, -- Cone of Cold(Rank 3)
            10160, -- Cone of Cold(Rank 4)
            10161, -- Cone of Cold(Rank 5)
            12557, -- Cone of Cold
            12611, -- Cone of Cold
            15244, -- Cone of Cold
            20828, -- Cone of Cold
            22746, -- Cone of Cold
            30095, -- Cone of Cold
        },
        [1024] = {
            1459, -- Arcane Intellect(Rank 1)
            1460, -- Arcane Intellect(Rank 2)
            1461, -- Arcane Intellect(Rank 3)
            10156, -- Arcane Intellect(Rank 4)
            10157, -- Arcane Intellect(Rank 5)
            13326, -- Arcane Intellect
            15288, -- Fury of Ragnaros
            16327, -- Juju Guile
            16876, -- Arcane Intellect(Rank 5)
            17150, -- Arcane Might
            23028, -- Arcane Brilliance(Rank 1)
            364161, -- Arcane Intellect(Rank 2)
        },
        [2048] = {
            5143, -- Arcane Missiles(Rank 1)
            5144, -- Arcane Missiles(Rank 2)
            5145, -- Arcane Missiles(Rank 3)
            8416, -- Arcane Missiles(Rank 4)
            8417, -- Arcane Missiles(Rank 5)
            10211, -- Arcane Missiles(Rank 6)
            10212, -- Arcane Missiles(Rank 7)
            15735, -- Arcane Missiles
            15736, -- Arcane Missiles
            15790, -- Arcane Missiles
            15791, -- Arcane Missiles
            16070, -- Nefarius Attack 000
            22272, -- Arcane Missiles
            22273, -- Arcane Missiles
            25345, -- Arcane Missiles(Rank 8)
        },
        [4096] = {
            1449, -- Arcane Explosion(Rank 1)
            8437, -- Arcane Explosion(Rank 2)
            8438, -- Arcane Explosion(Rank 3)
            8439, -- Arcane Explosion(Rank 4)
            10201, -- Arcane Explosion(Rank 5)
            10202, -- Arcane Explosion(Rank 6)
            22460, -- Arcane Explosion
        },
        [8192] = {
            604, -- Dampen Magic(Rank 1)
            1008, -- Amplify Magic(Rank 1)
            8450, -- Dampen Magic(Rank 2)
            8451, -- Dampen Magic(Rank 3)
            8455, -- Amplify Magic(Rank 2)
            10169, -- Amplify Magic(Rank 3)
            10170, -- Amplify Magic(Rank 4)
            10173, -- Dampen Magic(Rank 4)
            10174, -- Dampen Magic(Rank 5)
        },
        [16384] = {
            2139, -- Counterspell
            15122, -- Counterspell
            19715, -- Counterspell
            20537, -- Counterspell
            20788, -- Counterspell
        },
        [32768] = {
            1463, -- Mana Shield(Rank 1)
            8494, -- Mana Shield(Rank 2)
            8495, -- Mana Shield(Rank 3)
            10191, -- Mana Shield(Rank 4)
            10192, -- Mana Shield(Rank 5)
            10193, -- Mana Shield(Rank 6)
            17740, -- Mana Shield
            17741, -- Mana Shield
            412116, -- Mana Shield(Rank 1)
            412118, -- Mana Shield(Rank 2)
            412120, -- Mana Shield(Rank 3)
            412121, -- Mana Shield(Rank 4)
            412122, -- Mana Shield(Rank 5)
            412123, -- Mana Shield(Rank 6)
        },
        [65536] = {
            1953, -- Blink
            14514, -- Blink
            21655, -- Blink
            28391, -- Blink
            28401, -- Blink
            29207, -- Copy of Blink
            29208, -- Blink
            29209, -- Blink
            29210, -- Blink
            29211, -- Blink
        },
        [131072] = {
            13339, -- Fire Blast
            13340, -- Fire Blast
            13341, -- Fire Blast
            13342, -- Fire Blast
            13374, -- Fire Blast
            13878, -- Scorch
            14145, -- Fire Blast
            15041, -- Fire Ward
            15091, -- Blast Wave
            15241, -- Scorch
            15574, -- Fire Blast
            15744, -- Blast Wave
            16046, -- Blast Wave
            16144, -- Fire Blast
            16785, -- Flamebreak
            17145, -- Blast Wave
            17195, -- Scorch
            17273, -- Pyroblast
            17274, -- Pyroblast
            17276, -- Scald
            17277, -- Blast Wave
            17492, -- Hand of Thaurissan
            20228, -- Pyroblast
            20229, -- Blast Wave
            20623, -- Fire Blast
            20679, -- Fire Blast
            20795, -- Fire Blast
            20832, -- Fire Blast
            22424, -- Blast Wave
            23039, -- Blast Wave
            23113, -- Blast Wave
            23331, -- Blast Wave
            24530, -- Felfire
            25028, -- Fire Blast
            25049, -- Blast Wave
            28323, -- Flameshocker's Revenge
            30092, -- Blast Wave
            31378, -- Worm Blast
            400640, -- Ice Lance
            425225, -- Fire Damage Check
            434443, -- Pyroblast
        },
        [262144] = {
            118, -- Polymorph(Rank 1)
            700, -- Sleep(Rank 1)
            1090, -- Sleep(Rank 2)
            1449, -- Arcane Explosion(Rank 1)
            2139, -- Counterspell
            5143, -- Arcane Missiles(Rank 1)
            5144, -- Arcane Missiles(Rank 2)
            5145, -- Arcane Missiles(Rank 3)
            8416, -- Arcane Missiles(Rank 4)
            8417, -- Arcane Missiles(Rank 5)
            8437, -- Arcane Explosion(Rank 2)
            8438, -- Arcane Explosion(Rank 3)
            8439, -- Arcane Explosion(Rank 4)
            10201, -- Arcane Explosion(Rank 5)
            10202, -- Arcane Explosion(Rank 6)
            10211, -- Arcane Missiles(Rank 6)
            10212, -- Arcane Missiles(Rank 7)
            12824, -- Polymorph(Rank 2)
            12825, -- Polymorph(Rank 3)
            12826, -- Polymorph(Rank 4)
            15122, -- Counterspell
            15735, -- Arcane Missiles
            15790, -- Arcane Missiles
            19715, -- Counterspell
            20537, -- Counterspell
            20788, -- Counterspell
            22272, -- Arcane Missiles
            22460, -- Arcane Explosion
            23603, -- Wild Polymorph
            28270, -- Polymorph: Cow
            28271, -- Polymorph(Turtle)
            28272, -- Polymorph(Pig)
            29124, -- Polymorph
            428741, -- Molten Armor
        },
        [524288] = {
            10, -- Blizzard(Rank 1)
            116, -- Frostbolt(Rank 1)
            120, -- Cone of Cold(Rank 1)
            122, -- Frost Nova(Rank 1)
            168, -- Frost Armor(Rank 1)
            205, -- Frostbolt(Rank 2)
            837, -- Frostbolt(Rank 3)
            865, -- Frost Nova(Rank 2)
            6131, -- Frost Nova(Rank 3)
            6141, -- Blizzard(Rank 2)
            6143, -- Frost Ward(Rank 1)
            7300, -- Frost Armor(Rank 2)
            7301, -- Frost Armor(Rank 3)
            7302, -- Ice Armor(Rank 1)
            7320, -- Ice Armor(Rank 2)
            7322, -- Frostbolt(Rank 4)
            8406, -- Frostbolt(Rank 5)
            8407, -- Frostbolt(Rank 6)
            8408, -- Frostbolt(Rank 7)
            8427, -- Blizzard(Rank 3)
            8461, -- Frost Ward(Rank 2)
            8462, -- Frost Ward(Rank 3)
            8492, -- Cone of Cold(Rank 2)
            10159, -- Cone of Cold(Rank 3)
            10160, -- Cone of Cold(Rank 4)
            10161, -- Cone of Cold(Rank 5)
            10177, -- Frost Ward(Rank 4)
            10179, -- Frostbolt(Rank 8)
            10180, -- Frostbolt(Rank 9)
            10181, -- Frostbolt(Rank 10)
            10185, -- Blizzard(Rank 4)
            10186, -- Blizzard(Rank 5)
            10187, -- Blizzard(Rank 6)
            10219, -- Ice Armor(Rank 3)
            10220, -- Ice Armor(Rank 4)
            10230, -- Frost Nova(Rank 4)
            11426, -- Ice Barrier(Rank 1)
            11958, -- Ice Block
            12529, -- Chilling Touch
            12544, -- Frost Armor
            12556, -- Frost Armor
            12557, -- Cone of Cold
            12611, -- Cone of Cold
            13031, -- Ice Barrier(Rank 2)
            13032, -- Ice Barrier(Rank 3)
            13033, -- Ice Barrier(Rank 4)
            15044, -- Frost Ward
            15244, -- Cone of Cold
            15784, -- Frost Armor
            15849, -- Chill Wind
            17010, -- Freezing Claw
            18100, -- Frost Armor
            18146, -- Chilling Touch
            20828, -- Cone of Cold
            22746, -- Cone of Cold
            25023, -- Hallow's End Fright
            25304, -- Frostbolt(Rank 11)
            27618, -- Blizzard(Rank 6)
            27619, -- Ice Block
            28609, -- Frost Ward(Rank 5)
            28863, -- Void Zone
            29163, -- Copy of Frostbolt(Rank 1)
            30095, -- Cone of Cold
            350025, -- Frostbolt
            400640, -- Ice Lance
            412202, -- Frost Ward(Rank 1)
            412205, -- Frost Ward(Rank 2)
            412207, -- Frost Ward(Rank 3)
            412209, -- Frost Ward(Rank 4)
            412210, -- Frost Ward(Rank 5)
            412532, -- Spellfrost Bolt
        },
        [1048576] = {
            116, -- Frostbolt(Rank 1)
            120, -- Cone of Cold(Rank 1)
            205, -- Frostbolt(Rank 2)
            837, -- Frostbolt(Rank 3)
            6136, -- Chilled(Rank 1)
            7321, -- Chilled(Rank 1)
            7322, -- Frostbolt(Rank 4)
            8406, -- Frostbolt(Rank 5)
            8407, -- Frostbolt(Rank 6)
            8408, -- Frostbolt(Rank 7)
            8492, -- Cone of Cold(Rank 2)
            10159, -- Cone of Cold(Rank 3)
            10160, -- Cone of Cold(Rank 4)
            10161, -- Cone of Cold(Rank 5)
            10179, -- Frostbolt(Rank 8)
            10180, -- Frostbolt(Rank 9)
            10181, -- Frostbolt(Rank 10)
            12484, -- Chilled(Rank 1)
            12485, -- Chilled(Rank 2)
            12486, -- Chilled(Rank 3)
            12531, -- Chilling Touch
            12557, -- Cone of Cold
            12611, -- Cone of Cold
            15244, -- Cone of Cold
            15850, -- Chilled
            17011, -- Freezing Claw
            18101, -- Chilled(Rank 1)
            20828, -- Cone of Cold
            22746, -- Cone of Cold
            25022, -- Hallow's End Fright
            25304, -- Frostbolt(Rank 11)
            29163, -- Copy of Frostbolt(Rank 1)
            30095, -- Cone of Cold
            350025, -- Frostbolt
            401502, -- Frostfire Bolt
            412532, -- Spellfrost Bolt
        },
        [2097152] = {
            7268, -- Arcane Missile(Rank 1)
            7269, -- Arcane Missiles(Rank 2)
            7270, -- Arcane Missiles(Rank 3)
            8418, -- Arcane Missiles(Rank 5)
            8419, -- Arcane Missiles(Rank 4)
            10273, -- Arcane Missiles(Rank 6)
            10274, -- Arcane Missiles(Rank 7)
            25346, -- Arcane Missiles(Rank 8)
            31751, -- Arcane Missiles
        },
        [4194304] = {
            11366, -- Pyroblast(Rank 1)
            12505, -- Pyroblast(Rank 2)
            12522, -- Pyroblast(Rank 3)
            12523, -- Pyroblast(Rank 4)
            12524, -- Pyroblast(Rank 5)
            12525, -- Pyroblast(Rank 6)
            12526, -- Pyroblast(Rank 7)
            17273, -- Pyroblast
            17274, -- Pyroblast
            18809, -- Pyroblast(Rank 8)
            20228, -- Pyroblast
            434443, -- Pyroblast
        },
        [8388608] = {
            11113, -- Blast Wave(Rank 1)
            13018, -- Blast Wave(Rank 2)
            13019, -- Blast Wave(Rank 3)
            13020, -- Blast Wave(Rank 4)
            13021, -- Blast Wave(Rank 5)
        },
        [16777216] = {
            118, -- Polymorph(Rank 1)
            12824, -- Polymorph(Rank 2)
            12825, -- Polymorph(Rank 3)
            12826, -- Polymorph(Rank 4)
            23603, -- Wild Polymorph
            28270, -- Polymorph: Cow
            28271, -- Polymorph(Turtle)
            28272, -- Polymorph(Pig)
            29124, -- Polymorph
        },
        [33554432] = {
            168, -- Frost Armor(Rank 1)
            7300, -- Frost Armor(Rank 2)
            7301, -- Frost Armor(Rank 3)
            7302, -- Ice Armor(Rank 1)
            7320, -- Ice Armor(Rank 2)
            10219, -- Ice Armor(Rank 3)
            10220, -- Ice Armor(Rank 4)
        },
        [67108864] = {
            12051, -- Evocation
        },
        [134217728] = {
            12654, -- Ignite
            412538, -- Ignite
            412545, -- Ignite
        },
        [268435456] = {
            6117, -- Mage Armor(Rank 1)
            22782, -- Mage Armor(Rank 2)
            22783, -- Mage Armor(Rank 3)
        },
        [536870912] = {
            42896, -- Arcane Blast(Rank 3)
            400574, -- Arcane Blast
        },
        [1073741824] = {
            116, -- Frostbolt(Rank 1)
            118, -- Polymorph(Rank 1)
            133, -- Fireball(Rank 1)
            143, -- Fireball(Rank 2)
            145, -- Fireball(Rank 3)
            205, -- Frostbolt(Rank 2)
            587, -- Conjure Food(Rank 1)
            597, -- Conjure Food(Rank 2)
            759, -- Conjure Mana Agate
            837, -- Frostbolt(Rank 3)
            990, -- Conjure Food(Rank 3)
            2120, -- Flamestrike(Rank 1)
            2121, -- Flamestrike(Rank 2)
            2948, -- Scorch(Rank 1)
            3140, -- Fireball(Rank 4)
            3552, -- Conjure Mana Jade
            5504, -- Conjure Water(Rank 1)
            5505, -- Conjure Water(Rank 2)
            5506, -- Conjure Water(Rank 3)
            6127, -- Conjure Water(Rank 4)
            6129, -- Conjure Food(Rank 4)
            7322, -- Frostbolt(Rank 4)
            8400, -- Fireball(Rank 5)
            8401, -- Fireball(Rank 6)
            8402, -- Fireball(Rank 7)
            8406, -- Frostbolt(Rank 5)
            8407, -- Frostbolt(Rank 6)
            8408, -- Frostbolt(Rank 7)
            8422, -- Flamestrike(Rank 3)
            8423, -- Flamestrike(Rank 4)
            8444, -- Scorch(Rank 2)
            8445, -- Scorch(Rank 3)
            8446, -- Scorch(Rank 4)
            10053, -- Conjure Mana Citrine
            10054, -- Conjure Mana Ruby
            10138, -- Conjure Water(Rank 5)
            10139, -- Conjure Water(Rank 6)
            10140, -- Conjure Water(Rank 7)
            10144, -- Conjure Food(Rank 5)
            10145, -- Conjure Food(Rank 6)
            10148, -- Fireball(Rank 8)
            10149, -- Fireball(Rank 9)
            10150, -- Fireball(Rank 10)
            10151, -- Fireball(Rank 11)
            10179, -- Frostbolt(Rank 8)
            10180, -- Frostbolt(Rank 9)
            10181, -- Frostbolt(Rank 10)
            10205, -- Scorch(Rank 5)
            10206, -- Scorch(Rank 6)
            10207, -- Scorch(Rank 7)
            10215, -- Flamestrike(Rank 5)
            10216, -- Flamestrike(Rank 6)
            11366, -- Pyroblast(Rank 1)
            12505, -- Pyroblast(Rank 2)
            12522, -- Pyroblast(Rank 3)
            12523, -- Pyroblast(Rank 4)
            12524, -- Pyroblast(Rank 5)
            12525, -- Pyroblast(Rank 6)
            12526, -- Pyroblast(Rank 7)
            12824, -- Polymorph(Rank 2)
            12825, -- Polymorph(Rank 3)
            12826, -- Polymorph(Rank 4)
            17273, -- Pyroblast
            17274, -- Pyroblast
            18809, -- Pyroblast(Rank 8)
            20228, -- Pyroblast
            22460, -- Arcane Explosion
            23603, -- Wild Polymorph
            24006, -- Bounty of the Harvest
            25304, -- Frostbolt(Rank 11)
            25306, -- Fireball(Rank 12)
            28270, -- Polymorph: Cow
            28271, -- Polymorph(Turtle)
            28272, -- Polymorph(Pig)
            28612, -- Conjure Food(Rank 7)
            29124, -- Polymorph
            29163, -- Copy of Frostbolt(Rank 1)
            29515, -- TEST Scorch
            350025, -- Frostbolt
            400574, -- Arcane Blast
            400613, -- Living Bomb
            400640, -- Ice Lance
            401502, -- Frostfire Bolt
            412532, -- Spellfrost Bolt
            428878, -- Balefire Bolt
            434443, -- Pyroblast
            435849, -- Conjure Comprehension Charms
            436516, -- Chronostatic Preservation
        },
        [2147483648] = {
            66, -- Lesser Invisibility
            118, -- Polymorph(Rank 1)
            130, -- Slow Fall
            475, -- Remove Lesser Curse
            491, -- Khadgar's Unlocking(Rank 1)
            587, -- Conjure Food(Rank 1)
            597, -- Conjure Food(Rank 2)
            759, -- Conjure Mana Agate
            857, -- Khadgar's Unlocking(Rank 2)
            885, -- Invisibility
            990, -- Conjure Food(Rank 3)
            1008, -- Amplify Magic(Rank 1)
            2855, -- Detect Magic
            3552, -- Conjure Mana Jade
            3561, -- Teleport: Stormwind
            3562, -- Teleport: Ironforge
            3563, -- Teleport: Undercity
            3565, -- Teleport: Darnassus
            3566, -- Teleport: Thunder Bluff
            3567, -- Teleport: Orgrimmar
            5504, -- Conjure Water(Rank 1)
            5505, -- Conjure Water(Rank 2)
            5506, -- Conjure Water(Rank 3)
            6127, -- Conjure Water(Rank 4)
            6129, -- Conjure Food(Rank 4)
            8455, -- Amplify Magic(Rank 2)
            10053, -- Conjure Mana Citrine
            10054, -- Conjure Mana Ruby
            10059, -- Portal: Stormwind
            10138, -- Conjure Water(Rank 5)
            10139, -- Conjure Water(Rank 6)
            10140, -- Conjure Water(Rank 7)
            10144, -- Conjure Food(Rank 5)
            10145, -- Conjure Food(Rank 6)
            10165, -- Khadgar's Unlocking(Rank 3)
            10166, -- Khadgar's Unlocking(Rank 4)
            10169, -- Amplify Magic(Rank 3)
            10170, -- Amplify Magic(Rank 4)
            10228, -- Greater Invisibility
            11416, -- Portal: Ironforge
            11417, -- Portal: Orgrimmar
            11418, -- Portal: Undercity
            11419, -- Portal: Darnassus
            11420, -- Portal: Thunder Bluff
            12824, -- Polymorph(Rank 2)
            12825, -- Polymorph(Rank 3)
            12826, -- Polymorph(Rank 4)
            13912, -- Princess Summons Portal
            16380, -- Greater Invisibility
            22959, -- Fire Vulnerability
            23603, -- Wild Polymorph
            24006, -- Bounty of the Harvest
            26373, -- Lunar Invititation
            26406, -- Holiday - Lunar Teleport Cap: Stormwind
            26408, -- Holiday - Lunar Teleport Cap: Ironforge
            26409, -- Holiday - Lunar Teleport Cap: Darnassus
            26410, -- Holiday - Lunar Teleport Cap: Undercity
            26412, -- Holiday - Lunar Teleport Cap: Thunderbluff
            26414, -- Holiday - Lunar Teleport Cap: Orgrimmar
            26448, -- Holiday - Teleport: Moonglade
            26450, -- Holiday - Lunar Teleport: Darnassus
            26451, -- Holiday - Teleport: Moonglade (self)
            26452, -- Holiday - Lunar Teleport: Ironforge
            26453, -- Holiday - Lunar Teleport: Orgrimmar
            26454, -- Holiday - Lunar Teleport: Stormwind
            26455, -- Holiday - Lunar Teleport: Thunderbluff
            26456, -- Holiday - Lunar Teleport: Undercity
            28146, -- Copy of Portal: Undercity
            28270, -- Polymorph: Cow
            28271, -- Polymorph(Turtle)
            28272, -- Polymorph(Pig)
            28612, -- Conjure Food(Rank 7)
            29124, -- Polymorph
            412113, -- Remove Greater Curse
            425124, -- Arcane Surge
            435849, -- Conjure Comprehension Charms
        },
    },
    [2] = {
        [4096] = {
            401502, -- Frostfire Bolt
        },
        [16384] = {
            425121, -- Icy Veins
            429125, -- Icy Veins
        },
        [65536] = {
            400614, -- Living Bomb
        },
        [131072] = {
            400613, -- Living Bomb
        },
        [1048576] = {
            428739, -- Deep Freeze
        },
    },
    [3] = {
        [8] = {
            401502, -- Frostfire Bolt
            412532, -- Spellfrost Bolt
            429125, -- Icy Veins
        },
        [32] = {
            428917, -- Deep Freeze
        },
        [64] = {
            412532, -- Spellfrost Bolt
        },
        [256] = {
            436516, -- Chronostatic Preservation
            436517, -- Chronostatic Preservation
        },
        [4096] = {
            412510, -- Mass Regeneration
        },
        [262144] = {
            401556, -- Living Flame
            401558, -- Living Flame
        },
        [16777216] = {
            428885, -- Temporal Anomaly
        },
        [268435456] = {
            425124, -- Arcane Surge
        },
    },
    [4] = {
        [2] = {
            401417, -- Regeneration
        },
        [16384] = {
            428878, -- Balefire Bolt
        },
        [33554432] = {
            1459, -- Arcane Intellect(Rank 1)
            1460, -- Arcane Intellect(Rank 2)
            1461, -- Arcane Intellect(Rank 3)
            10156, -- Arcane Intellect(Rank 4)
            10157, -- Arcane Intellect(Rank 5)
            364161, -- Arcane Intellect(Rank 2)
        },
        [536870912] = {
            436517, -- Chronostatic Preservation
        },
    },
};


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
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42208,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [116] = { -- Frostbolt(Rank 1)
        spellLevel = 4,
        maxLevel = 8,
        duration = 5,
        baseCostPct = 6,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 18,
                valueRange = 2,
                valuePerLevel = 0.5,
                coef = 0.172,
                coefAP = 0,
            },
        }
    },
    [120] = { -- Cone of Cold(Rank 1)
        spellLevel = 26,
        maxLevel = 31,
        duration = 8,
        baseCostPct = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 98,
                valueRange = 10,
                valuePerLevel = 0.8,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [122] = { -- Frost Nova(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        duration = 8,
        baseCostPct = 7,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 19,
                valueRange = 2,
                valuePerLevel = 0.5,
                coef = 0.018,
                coefAP = 0,
            },
        }
    },
    [133] = { -- Fireball(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        duration = 4,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 14,
                valueRange = 8,
                valuePerLevel = 0.6,
                coef = 0.123,
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
        baseCostPct = 11,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 31,
                valueRange = 14,
                valuePerLevel = 0.8,
                coef = 0.271,
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
        baseCostPct = 14,
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
        baseCostPct = 7,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 31,
                valueRange = 4,
                valuePerLevel = 0.7,
                coef = 0.283,
                coefAP = 0,
            },
        }
    },
    [543] = { -- Fire Ward(Rank 1)
        spellLevel = 20,
        maxLevel = 29,
        duration = 30,
        baseCostPct = 16,
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
        baseCostPct = 8,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 51,
                valueRange = 6,
                valuePerLevel = 0.9,
                coef = 0.488,
                coefAP = 0,
            },
        }
    },
    [865] = { -- Frost Nova(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        duration = 8,
        baseCostPct = 7,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 33,
                valueRange = 4,
                valuePerLevel = 0.5,
                coef = 0.043,
                coefAP = 0,
            },
        }
    },
    [1449] = { -- Arcane Explosion(Rank 1)
        spellLevel = 14,
        maxLevel = 19,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 32,
                valueRange = 4,
                valuePerLevel = 0.4,
                coef = 0.166,
                coefAP = 0,
            },
        }
    },
    [1463] = { -- Mana Shield(Rank 1)
        spellLevel = 20,
        maxLevel = 27,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 120,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [2120] = { -- Flamestrike(Rank 1)
        spellLevel = 16,
        maxLevel = 21,
        duration = 8,
        baseCostPct = 35,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 52,
                valueRange = 16,
                valuePerLevel = 0.6,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 12,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [2121] = { -- Flamestrike(Rank 2)
        spellLevel = 24,
        maxLevel = 29,
        duration = 8,
        baseCostPct = 35,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 96,
                valueRange = 26,
                valuePerLevel = 0.8,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 22,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [2136] = { -- Fire Blast(Rank 1)
        spellLevel = 6,
        maxLevel = 11,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 24,
                valueRange = 8,
                valuePerLevel = 0.6,
                coef = 0.204,
                coefAP = 0,
            },
        }
    },
    [2137] = { -- Fire Blast(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 57,
                valueRange = 14,
                valuePerLevel = 1,
                coef = 0.332,
                coefAP = 0,
            },
        }
    },
    [2138] = { -- Fire Blast(Rank 3)
        spellLevel = 22,
        maxLevel = 27,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 103,
                valueRange = 24,
                valuePerLevel = 1.4,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [2948] = { -- Scorch(Rank 1)
        spellLevel = 22,
        maxLevel = 26,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 53,
                valueRange = 12,
                valuePerLevel = 0.9,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [3140] = { -- Fireball(Rank 4)
        spellLevel = 18,
        maxLevel = 22,
        duration = 8,
        baseCostPct = 16,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 84,
                valueRange = 32,
                valuePerLevel = 1.3,
                coef = 0.793,
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
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
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
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
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
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
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
        baseCostPct = 7,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 52,
                valueRange = 6,
                valuePerLevel = 0.5,
                coef = 0.043,
                coefAP = 0,
            },
        }
    },
    [6141] = { -- Blizzard(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        duration = 8,
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42209,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6143] = { -- Frost Ward(Rank 1)
        spellLevel = 22,
        maxLevel = 31,
        duration = 30,
        baseCostPct = 14,
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
                valuePerLevel = 0.3,
                coef = 0.157,
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
                valuePerLevel = 0.4,
                coef = 0.243,
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
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [7322] = { -- Frostbolt(Rank 4)
        spellLevel = 20,
        maxLevel = 24,
        duration = 7,
        baseCostPct = 10,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 74,
                valueRange = 8,
                valuePerLevel = 1.1,
                coef = 0.743,
                coefAP = 0,
            },
        }
    },
    [8400] = { -- Fireball(Rank 5)
        spellLevel = 24,
        maxLevel = 28,
        duration = 8,
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 139,
                valueRange = 48,
                valuePerLevel = 1.8,
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
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 199,
                valueRange = 66,
                valuePerLevel = 2.1,
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
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 255,
                valueRange = 80,
                valuePerLevel = 2.4,
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
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 126,
                valueRange = 12,
                valuePerLevel = 1.5,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [8407] = { -- Frostbolt(Rank 6)
        spellLevel = 32,
        maxLevel = 36,
        duration = 8,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 174,
                valueRange = 16,
                valuePerLevel = 1.7,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [8408] = { -- Frostbolt(Rank 7)
        spellLevel = 38,
        maxLevel = 42,
        duration = 8,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 227,
                valueRange = 20,
                valuePerLevel = 2,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [8412] = { -- Fire Blast(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 168,
                valueRange = 34,
                valuePerLevel = 1.8,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8413] = { -- Fire Blast(Rank 5)
        spellLevel = 38,
        maxLevel = 43,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 242,
                valueRange = 48,
                valuePerLevel = 2.2,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8416] = { -- Arcane Missiles(Rank 4)
        spellLevel = 32,
        maxLevel = 36,
        duration = 5,
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
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
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
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
                valuePerLevel = 0.7,
                coef = 0.286,
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
                valuePerLevel = 0.6,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [8422] = { -- Flamestrike(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        duration = 8,
        baseCostPct = 35,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 154,
                valueRange = 38,
                valuePerLevel = 1,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 35,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [8423] = { -- Flamestrike(Rank 4)
        spellLevel = 40,
        maxLevel = 45,
        duration = 8,
        baseCostPct = 35,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 220,
                valueRange = 52,
                valuePerLevel = 1.3,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 49,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [8427] = { -- Blizzard(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        duration = 8,
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42210,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [8437] = { -- Arcane Explosion(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 57,
                valueRange = 6,
                valuePerLevel = 0.6,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [8438] = { -- Arcane Explosion(Rank 3)
        spellLevel = 30,
        maxLevel = 35,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 97,
                valueRange = 8,
                valuePerLevel = 0.9,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [8439] = { -- Arcane Explosion(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 139,
                valueRange = 12,
                valuePerLevel = 0.9,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [8444] = { -- Scorch(Rank 2)
        spellLevel = 28,
        maxLevel = 32,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 77,
                valueRange = 16,
                valuePerLevel = 1.1,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8445] = { -- Scorch(Rank 3)
        spellLevel = 34,
        maxLevel = 38,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 100,
                valueRange = 20,
                valuePerLevel = 1.3,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8446] = { -- Scorch(Rank 4)
        spellLevel = 40,
        maxLevel = 44,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 133,
                valueRange = 26,
                valuePerLevel = 1.5,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8457] = { -- Fire Ward(Rank 2)
        spellLevel = 30,
        maxLevel = 39,
        duration = 30,
        baseCostPct = 16,
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
        maxLevel = 49,
        duration = 30,
        baseCostPct = 16,
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
        maxLevel = 41,
        duration = 30,
        baseCostPct = 14,
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
        maxLevel = 51,
        duration = 30,
        baseCostPct = 14,
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
        baseCostPct = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 146,
                valueRange = 14,
                valuePerLevel = 1,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [8494] = { -- Mana Shield(Rank 2)
        spellLevel = 28,
        maxLevel = 35,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 210,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [8495] = { -- Mana Shield(Rank 3)
        spellLevel = 36,
        maxLevel = 43,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 300,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [10148] = { -- Fireball(Rank 8)
        spellLevel = 42,
        maxLevel = 46,
        duration = 8,
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 318,
                valueRange = 96,
                valuePerLevel = 2.7,
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
        baseCostPct = 19,
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
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 475,
                valueRange = 134,
                valuePerLevel = 3.4,
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
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 561,
                valueRange = 154,
                valuePerLevel = 3.7,
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
        baseCostPct = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 203,
                valueRange = 20,
                valuePerLevel = 1.2,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [10160] = { -- Cone of Cold(Rank 4)
        spellLevel = 50,
        maxLevel = 55,
        duration = 8,
        baseCostPct = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 264,
                valueRange = 26,
                valuePerLevel = 1.3,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [10161] = { -- Cone of Cold(Rank 5)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCostPct = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 335,
                valueRange = 30,
                valuePerLevel = 1.5,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [10177] = { -- Frost Ward(Rank 4)
        spellLevel = 52,
        maxLevel = 59,
        duration = 30,
        baseCostPct = 14,
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
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 292,
                valueRange = 24,
                valuePerLevel = 2.3,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [10180] = { -- Frostbolt(Rank 9)
        spellLevel = 50,
        maxLevel = 54,
        duration = 9,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 353,
                valueRange = 30,
                valuePerLevel = 2.6,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [10181] = { -- Frostbolt(Rank 10)
        spellLevel = 56,
        maxLevel = 60,
        duration = 9,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 429,
                valueRange = 34,
                valuePerLevel = 2.9,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [10185] = { -- Blizzard(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        duration = 8,
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42211,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10186] = { -- Blizzard(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        duration = 8,
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42212,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10187] = { -- Blizzard(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        duration = 8,
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42213,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10191] = { -- Mana Shield(Rank 4)
        spellLevel = 44,
        maxLevel = 51,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 390,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [10192] = { -- Mana Shield(Rank 5)
        spellLevel = 52,
        maxLevel = 59,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 480,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [10193] = { -- Mana Shield(Rank 6)
        spellLevel = 60,
        maxLevel = 67,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 570,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [10197] = { -- Fire Blast(Rank 6)
        spellLevel = 46,
        maxLevel = 51,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 332,
                valueRange = 62,
                valuePerLevel = 2.6,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [10199] = { -- Fire Blast(Rank 7)
        spellLevel = 54,
        maxLevel = 59,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 431,
                valueRange = 78,
                valuePerLevel = 3,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [10201] = { -- Arcane Explosion(Rank 5)
        spellLevel = 46,
        maxLevel = 51,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 186,
                valueRange = 16,
                valuePerLevel = 1.1,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [10202] = { -- Arcane Explosion(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 243,
                valueRange = 20,
                valuePerLevel = 1.3,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [10205] = { -- Scorch(Rank 5)
        spellLevel = 46,
        maxLevel = 50,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 162,
                valueRange = 30,
                valuePerLevel = 1.7,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [10206] = { -- Scorch(Rank 6)
        spellLevel = 52,
        maxLevel = 56,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 200,
                valueRange = 39,
                valuePerLevel = 1.9,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [10207] = { -- Scorch(Rank 7)
        spellLevel = 58,
        maxLevel = 62,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 233,
                valueRange = 42,
                valuePerLevel = 2.1,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [10211] = { -- Arcane Missiles(Rank 6)
        spellLevel = 48,
        maxLevel = 52,
        duration = 5,
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
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
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
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
        baseCostPct = 35,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 291,
                valueRange = 68,
                valuePerLevel = 1.5,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 66,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [10216] = { -- Flamestrike(Rank 6)
        spellLevel = 56,
        maxLevel = 61,
        duration = 8,
        baseCostPct = 35,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 375,
                valueRange = 84,
                valuePerLevel = 1.7,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 85,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [10223] = { -- Fire Ward(Rank 4)
        spellLevel = 50,
        maxLevel = 59,
        duration = 30,
        baseCostPct = 16,
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
        maxLevel = 68,
        duration = 30,
        baseCostPct = 16,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 875,
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
        baseCostPct = 7,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 70,
                valueRange = 10,
                valuePerLevel = 0.5,
                coef = 0.043,
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
                valuePerLevel = 0.8,
                coef = 0.286,
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
                valuePerLevel = 0.9,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [11113] = { -- Blast Wave(Rank 1)
        spellLevel = 30,
        maxLevel = 36,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 154,
                valueRange = 32,
                valuePerLevel = 1,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [11366] = { -- Pyroblast(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 141,
                valueRange = 46,
                valuePerLevel = 1.9,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 14,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [11426] = { -- Ice Barrier(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        duration = 60,
        baseCostPct = 21,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 438,
                valueRange = 0,
                valuePerLevel = 2.8,
                coef = 0.8053,
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
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 21,
                valueBase = 15,
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
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 180,
                valueRange = 56,
                valuePerLevel = 2.2,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 18,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [12522] = { -- Pyroblast(Rank 3)
        spellLevel = 30,
        maxLevel = 36,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 255,
                valueRange = 72,
                valuePerLevel = 2.6,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 24,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [12523] = { -- Pyroblast(Rank 4)
        spellLevel = 36,
        maxLevel = 42,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 329,
                valueRange = 90,
                valuePerLevel = 3,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 31,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [12524] = { -- Pyroblast(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 407,
                valueRange = 108,
                valuePerLevel = 3.4,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 39,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [12525] = { -- Pyroblast(Rank 6)
        spellLevel = 48,
        maxLevel = 54,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 503,
                valueRange = 128,
                valuePerLevel = 3.8,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 47,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [12526] = { -- Pyroblast(Rank 7)
        spellLevel = 54,
        maxLevel = 60,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 600,
                valueRange = 150,
                valuePerLevel = 4.2,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 57,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [13018] = { -- Blast Wave(Rank 2)
        spellLevel = 36,
        maxLevel = 42,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 201,
                valueRange = 40,
                valuePerLevel = 1.2,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [13019] = { -- Blast Wave(Rank 3)
        spellLevel = 44,
        maxLevel = 50,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 277,
                valueRange = 52,
                valuePerLevel = 1.4,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [13020] = { -- Blast Wave(Rank 4)
        spellLevel = 52,
        maxLevel = 58,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 365,
                valueRange = 68,
                valuePerLevel = 1.6,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [13021] = { -- Blast Wave(Rank 5)
        spellLevel = 60,
        maxLevel = 66,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 462,
                valueRange = 82,
                valuePerLevel = 1.9,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [13031] = { -- Ice Barrier(Rank 2)
        spellLevel = 46,
        maxLevel = 52,
        duration = 60,
        baseCostPct = 21,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 549,
                valueRange = 0,
                valuePerLevel = 3.2,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [13032] = { -- Ice Barrier(Rank 3)
        spellLevel = 52,
        maxLevel = 58,
        duration = 60,
        baseCostPct = 21,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 678,
                valueRange = 0,
                valuePerLevel = 3.6,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [13033] = { -- Ice Barrier(Rank 4)
        spellLevel = 58,
        maxLevel = 64,
        duration = 60,
        baseCostPct = 21,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 818,
                valueRange = 0,
                valuePerLevel = 4,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [18809] = { -- Pyroblast(Rank 8)
        spellLevel = 60,
        maxLevel = 66,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 708,
                valueRange = 190,
                valuePerLevel = 4.6,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 67,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [25304] = { -- Frostbolt(Rank 11)
        spellLevel = 60,
        maxLevel = 64,
        duration = 9,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 515,
                valueRange = 40,
                valuePerLevel = 3.2,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [25306] = { -- Fireball(Rank 12)
        spellLevel = 60,
        maxLevel = 64,
        duration = 8,
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 596,
                valueRange = 164,
                valuePerLevel = 3.8,
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
        spellLevel = 60,
        maxLevel = 64,
        duration = 5,
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
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
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [27070] = { -- Fireball(Rank 13)
        spellLevel = 66,
        maxLevel = 70,
        duration = 8,
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 633,
                valueRange = 172,
                valuePerLevel = 4,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 21,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27071] = { -- Frostbolt(Rank 12)
        spellLevel = 63,
        maxLevel = 67,
        duration = 9,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 536,
                valueRange = 42,
                valuePerLevel = 3.2,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [27072] = { -- Frostbolt(Rank 13)
        spellLevel = 69,
        maxLevel = 73,
        duration = 9,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 597,
                valueRange = 46,
                valuePerLevel = 3.5,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [27073] = { -- Scorch(Rank 8)
        spellLevel = 65,
        maxLevel = 69,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 269,
                valueRange = 48,
                valuePerLevel = 2.3,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [27074] = { -- Scorch(Rank 9)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 305,
                valueRange = 56,
                valuePerLevel = 2.5,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [27075] = { -- Arcane Missiles(Rank 9)
        spellLevel = 63,
        maxLevel = 67,
        duration = 5,
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 27076,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27076] = { -- Arcane Missiles(Rank 9)
        spellLevel = 64,
        maxLevel = 68,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 240,
                valueRange = 0,
                valuePerLevel = 1.1,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [27078] = { -- Fire Blast(Rank 8)
        spellLevel = 61,
        maxLevel = 66,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 539,
                valueRange = 98,
                valuePerLevel = 3.3,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [27079] = { -- Fire Blast(Rank 9)
        spellLevel = 70,
        maxLevel = 75,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 664,
                valueRange = 122,
                valuePerLevel = 3.7,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [27080] = { -- Arcane Explosion(Rank 7)
        spellLevel = 62,
        maxLevel = 67,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 306,
                valueRange = 24,
                valuePerLevel = 1.5,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [27082] = { -- Arcane Explosion(Rank 8)
        spellLevel = 70,
        maxLevel = 75,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 377,
                valueRange = 30,
                valuePerLevel = 1.6,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [27085] = { -- Blizzard(Rank 7)
        spellLevel = 68,
        maxLevel = 73,
        duration = 8,
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42198,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27086] = { -- Flamestrike(Rank 7)
        spellLevel = 64,
        maxLevel = 69,
        duration = 8,
        baseCostPct = 30,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 471,
                valueRange = 104,
                valuePerLevel = 1.9,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 106,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [27087] = { -- Cone of Cold(Rank 6)
        spellLevel = 65,
        maxLevel = 70,
        duration = 8,
        baseCostPct = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 410,
                valueRange = 38,
                valuePerLevel = 1.7,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [27088] = { -- Frost Nova(Rank 5)
        spellLevel = 67,
        maxLevel = 74,
        duration = 8,
        baseCostPct = 7,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 230,
                valueRange = 30,
                valuePerLevel = 0.5,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [27128] = { -- Fire Ward(Rank 6)
        spellLevel = 69,
        maxLevel = 78,
        duration = 30,
        baseCostPct = 16,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 1125,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27131] = { -- Mana Shield(Rank 7)
        spellLevel = 68,
        maxLevel = 75,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 715,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [27132] = { -- Pyroblast(Rank 9)
        spellLevel = 66,
        maxLevel = 72,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 846,
                valueRange = 228,
                valuePerLevel = 5,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 78,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [27133] = { -- Blast Wave(Rank 6)
        spellLevel = 65,
        maxLevel = 71,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 533,
                valueRange = 94,
                valuePerLevel = 2.1,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [27134] = { -- Ice Barrier(Rank 5)
        spellLevel = 64,
        maxLevel = 70,
        duration = 60,
        baseCostPct = 21,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 925,
                valueRange = 0,
                valuePerLevel = 4.4,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [28609] = { -- Frost Ward(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        duration = 30,
        baseCostPct = 16,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 875,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [30451] = { -- Arcane Blast(Rank 1)
        spellLevel = 64,
        maxLevel = 68,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 842,
                valueRange = 136,
                valuePerLevel = 5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [30455] = { -- Ice Lance(Rank 1)
        spellLevel = 66,
        maxLevel = 70,
        baseCostPct = 6,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 161,
                valueRange = 26,
                valuePerLevel = 3.2,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [30482] = { -- Molten Armor(Rank 1)
        spellLevel = 62,
        maxLevel = 0,
        duration = 1800,
        baseCostPct = 28,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 34913,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [31661] = { -- Dragon's Breath(Rank 1)
        spellLevel = 50,
        maxLevel = 58,
        duration = 5,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 370,
                valueRange = 60,
                valuePerLevel = 1.5,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [32796] = { -- Frost Ward(Rank 6)
        spellLevel = 70,
        maxLevel = 78,
        duration = 30,
        baseCostPct = 14,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 1125,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [33041] = { -- Dragon's Breath(Rank 2)
        spellLevel = 56,
        maxLevel = 62,
        duration = 5,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 454,
                valueRange = 72,
                valuePerLevel = 1.6,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [33042] = { -- Dragon's Breath(Rank 3)
        spellLevel = 64,
        maxLevel = 70,
        duration = 5,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 574,
                valueRange = 92,
                valuePerLevel = 1.8,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [33043] = { -- Dragon's Breath(Rank 4)
        spellLevel = 70,
        maxLevel = 76,
        duration = 5,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 680,
                valueRange = 110,
                valuePerLevel = 2,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [33405] = { -- Ice Barrier(Rank 6)
        spellLevel = 70,
        maxLevel = 76,
        duration = 60,
        baseCostPct = 21,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 1075,
                valueRange = 0,
                valuePerLevel = 4.8,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [33933] = { -- Blast Wave(Rank 7)
        spellLevel = 70,
        maxLevel = 76,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 616,
                valueRange = 108,
                valuePerLevel = 2.3,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [33938] = { -- Pyroblast(Rank 10)
        spellLevel = 70,
        maxLevel = 76,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 939,
                valueRange = 252,
                valuePerLevel = 5.4,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 89,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [34913] = { -- Molten Armor(Rank 1)
        spellLevel = 62,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 75,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [38692] = { -- Fireball(Rank 14)
        spellLevel = 70,
        maxLevel = 74,
        duration = 8,
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 717,
                valueRange = 196,
                valuePerLevel = 4.2,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 23,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [38697] = { -- Frostbolt(Rank 14)
        spellLevel = 70,
        maxLevel = 74,
        duration = 9,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 630,
                valueRange = 50,
                valuePerLevel = 3.8,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [38699] = { -- Arcane Missiles(Rank 10)
        spellLevel = 69,
        maxLevel = 73,
        duration = 5,
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 38700,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [38700] = { -- Arcane Missiles(Rank 10)
        spellLevel = 69,
        maxLevel = 73,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 260,
                valueRange = 0,
                valuePerLevel = 1.2,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [38703] = { -- Arcane Missiles(Rank 11)
        spellLevel = 70,
        maxLevel = 74,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 280,
                valueRange = 0,
                valuePerLevel = 1.3,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [38704] = { -- Arcane Missiles(Rank 11)
        spellLevel = 70,
        maxLevel = 74,
        duration = 5,
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 38703,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [42198] = { -- Blizzard(Rank 7)
        spellLevel = 68,
        maxLevel = 73,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 273,
                valueRange = 0,
                valuePerLevel = 0.4,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42208] = { -- Blizzard(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 36,
                valueRange = 0,
                valuePerLevel = 0.1,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42209] = { -- Blizzard(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 63,
                valueRange = 0,
                valuePerLevel = 0.2,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42210] = { -- Blizzard(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 92,
                valueRange = 0,
                valuePerLevel = 0.2,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42211] = { -- Blizzard(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 128,
                valueRange = 0,
                valuePerLevel = 0.3,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42212] = { -- Blizzard(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 166,
                valueRange = 0,
                valuePerLevel = 0.3,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42213] = { -- Blizzard(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 212,
                valueRange = 0,
                valuePerLevel = 0.4,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42832] = { -- Fireball(Rank 15)
        spellLevel = 74,
        maxLevel = 78,
        duration = 8,
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 783,
                valueRange = 214,
                valuePerLevel = 4.6,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 25,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [42833] = { -- Fireball(Rank 16)
        spellLevel = 78,
        maxLevel = 82,
        duration = 8,
        baseCostPct = 19,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 888,
                valueRange = 244,
                valuePerLevel = 5.2,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 29,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [42841] = { -- Frostbolt(Rank 15)
        spellLevel = 75,
        maxLevel = 79,
        duration = 9,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 702,
                valueRange = 56,
                valuePerLevel = 4.2,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [42842] = { -- Frostbolt(Rank 16)
        spellLevel = 79,
        maxLevel = 83,
        duration = 9,
        baseCostPct = 11,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 799,
                valueRange = 62,
                valuePerLevel = 4.8,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [42843] = { -- Arcane Missiles(Rank 12)
        spellLevel = 75,
        maxLevel = 79,
        duration = 5,
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42844,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [42844] = { -- Arcane Missiles(Rank 12)
        spellLevel = 75,
        maxLevel = 79,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 320,
                valueRange = 0,
                valuePerLevel = 1.5,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [42845] = { -- Arcane Missiles(Rank 13)
        spellLevel = 79,
        maxLevel = 83,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 360,
                valueRange = 0,
                valuePerLevel = 1.7,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [42846] = { -- Arcane Missiles(Rank 13)
        spellLevel = 79,
        maxLevel = 83,
        duration = 5,
        baseCostPct = 31,
        school = 7,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42845,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [42858] = { -- Scorch(Rank 10)
        spellLevel = 73,
        maxLevel = 77,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 321,
                valueRange = 58,
                valuePerLevel = 2.6,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [42859] = { -- Scorch(Rank 11)
        spellLevel = 78,
        maxLevel = 82,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 376,
                valueRange = 68,
                valuePerLevel = 3.1,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [42872] = { -- Fire Blast(Rank 10)
        spellLevel = 74,
        maxLevel = 79,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 760,
                valueRange = 140,
                valuePerLevel = 4,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [42873] = { -- Fire Blast(Rank 11)
        spellLevel = 80,
        maxLevel = 85,
        baseCostPct = 21,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 925,
                valueRange = 170,
                valuePerLevel = 4.9,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [42890] = { -- Pyroblast(Rank 11)
        spellLevel = 73,
        maxLevel = 77,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1014,
                valueRange = 272,
                valuePerLevel = 5.8,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 96,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [42891] = { -- Pyroblast(Rank 12)
        spellLevel = 77,
        maxLevel = 81,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1190,
                valueRange = 320,
                valuePerLevel = 6.8,
                coef = 1.15,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 113,
                valueRange = 0,
                coef = 0.05,
                coefAP = 0,
            },
        }
    },
    [42894] = { -- Arcane Blast(Rank 2)
        spellLevel = 71,
        maxLevel = 75,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 897,
                valueRange = 144,
                valuePerLevel = 5.3,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [42896] = { -- Arcane Blast(Rank 3)
        spellLevel = 76,
        maxLevel = 80,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1047,
                valueRange = 168,
                valuePerLevel = 6.2,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [42897] = { -- Arcane Blast(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1185,
                valueRange = 192,
                valuePerLevel = 7,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [42913] = { -- Ice Lance(Rank 2)
        spellLevel = 72,
        maxLevel = 76,
        baseCostPct = 6,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 182,
                valueRange = 28,
                valuePerLevel = 1.3,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42914] = { -- Ice Lance(Rank 3)
        spellLevel = 78,
        maxLevel = 82,
        baseCostPct = 6,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 221,
                valueRange = 34,
                valuePerLevel = 1.3,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42917] = { -- Frost Nova(Rank 6)
        spellLevel = 75,
        maxLevel = 79,
        duration = 8,
        baseCostPct = 7,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 365,
                valueRange = 50,
                valuePerLevel = 0.8,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [42920] = { -- Arcane Explosion(Rank 9)
        spellLevel = 76,
        maxLevel = 80,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 481,
                valueRange = 38,
                valuePerLevel = 2,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [42921] = { -- Arcane Explosion(Rank 10)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 22,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 538,
                valueRange = 44,
                valuePerLevel = 2.3,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [42925] = { -- Flamestrike(Rank 8)
        spellLevel = 72,
        maxLevel = 76,
        duration = 8,
        baseCostPct = 30,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 688,
                valueRange = 154,
                valuePerLevel = 2.8,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 155,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [42926] = { -- Flamestrike(Rank 9)
        spellLevel = 79,
        maxLevel = 83,
        duration = 8,
        baseCostPct = 30,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 873,
                valueRange = 194,
                valuePerLevel = 3.5,
                coef = 0.243,
                coefAP = 0,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 195,
                valueRange = 0,
                coef = 0.122,
                coefAP = 0,
            },
        }
    },
    [42930] = { -- Cone of Cold(Rank 7)
        spellLevel = 72,
        maxLevel = 76,
        duration = 8,
        baseCostPct = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 559,
                valueRange = 52,
                valuePerLevel = 2.3,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [42931] = { -- Cone of Cold(Rank 8)
        spellLevel = 79,
        maxLevel = 83,
        duration = 8,
        baseCostPct = 25,
        school = 5,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 707,
                valueRange = 66,
                valuePerLevel = 2.9,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [42937] = { -- Blizzard(Rank 8)
        spellLevel = 74,
        maxLevel = 78,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 350,
                valueRange = 0,
                valuePerLevel = 0.5,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42938] = { -- Blizzard(Rank 9)
        spellLevel = 80,
        maxLevel = 84,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 426,
                valueRange = 0,
                valuePerLevel = 0.6,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [42939] = { -- Blizzard(Rank 8)
        spellLevel = 74,
        maxLevel = 78,
        duration = 8,
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42937,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [42940] = { -- Blizzard(Rank 9)
        spellLevel = 80,
        maxLevel = 84,
        duration = 8,
        baseCostPct = 74,
        school = 5,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 42938,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [42944] = { -- Blast Wave(Rank 8)
        spellLevel = 75,
        maxLevel = 79,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 882,
                valueRange = 156,
                valuePerLevel = 3.3,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [42945] = { -- Blast Wave(Rank 9)
        spellLevel = 80,
        maxLevel = 84,
        duration = 6,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1047,
                valueRange = 186,
                valuePerLevel = 3.9,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [42949] = { -- Dragon's Breath(Rank 5)
        spellLevel = 75,
        maxLevel = 79,
        duration = 5,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 935,
                valueRange = 150,
                valuePerLevel = 2.7,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [42950] = { -- Dragon's Breath(Rank 6)
        spellLevel = 80,
        maxLevel = 84,
        duration = 5,
        baseCostPct = 7,
        school = 3,
        isBinary = true,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1101,
                valueRange = 178,
                valuePerLevel = 3.2,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [43010] = { -- Fire Ward(Rank 7)
        spellLevel = 78,
        maxLevel = 87,
        duration = 30,
        baseCostPct = 16,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 1950,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [43012] = { -- Frost Ward(Rank 7)
        spellLevel = 79,
        maxLevel = 88,
        duration = 30,
        baseCostPct = 14,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 1950,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [43019] = { -- Mana Shield(Rank 8)
        spellLevel = 73,
        maxLevel = 77,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 1080,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [43020] = { -- Mana Shield(Rank 9)
        spellLevel = 79,
        maxLevel = 83,
        duration = 60,
        baseCostPct = 7,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                valueBase = 1330,
                valueRange = 0,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [43038] = { -- Ice Barrier(Rank 7)
        spellLevel = 75,
        maxLevel = 79,
        duration = 60,
        baseCostPct = 21,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 2800,
                valueRange = 0,
                valuePerLevel = 15,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [43039] = { -- Ice Barrier(Rank 8)
        spellLevel = 80,
        maxLevel = 84,
        duration = 60,
        baseCostPct = 21,
        school = 5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 3300,
                valueRange = 0,
                valuePerLevel = 15,
                coef = 0.8053,
                coefAP = 0,
            },
        }
    },
    [43043] = { -- Molten Armor(Rank 2)
        spellLevel = 71,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 130,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [43044] = { -- Molten Armor(Rank 3)
        spellLevel = 79,
        maxLevel = 0,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 170,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [43045] = { -- Molten Armor(Rank 2)
        spellLevel = 71,
        maxLevel = 0,
        duration = 1800,
        baseCostPct = 28,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 43043,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [43046] = { -- Molten Armor(Rank 3)
        spellLevel = 79,
        maxLevel = 0,
        duration = 1800,
        baseCostPct = 28,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 43044,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [44425] = { -- Arcane Barrage(Rank 1)
        spellLevel = 60,
        maxLevel = 66,
        baseCostPct = 18,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 386,
                valueRange = 84,
                valuePerLevel = 2.5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [44457] = { -- Living Bomb(Rank 1)
        spellLevel = 60,
        maxLevel = 66,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 153,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [44614] = { -- Frostfire Bolt(Rank 1)
        spellLevel = 75,
        maxLevel = 79,
        duration = 9,
        baseCostPct = 14,
        school = undefined,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 629,
                valueRange = 102,
                valuePerLevel = 3.9,
                coef = 0.857,
                coefAP = 0,
            },
            [2] = {
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
    [44780] = { -- Arcane Barrage(Rank 2)
        spellLevel = 70,
        maxLevel = 76,
        baseCostPct = 18,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 709,
                valueRange = 156,
                valuePerLevel = 15.5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [44781] = { -- Arcane Barrage(Rank 3)
        spellLevel = 80,
        maxLevel = 86,
        baseCostPct = 18,
        school = 7,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 936,
                valueRange = 208,
                valuePerLevel = 6.1,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [47610] = { -- Frostfire Bolt(Rank 2)
        spellLevel = 80,
        maxLevel = 84,
        duration = 9,
        baseCostPct = 14,
        school = undefined,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 722,
                valueRange = 116,
                valuePerLevel = 4.5,
                coef = 0.857,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 30,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [55359] = { -- Living Bomb(Rank 2)
        spellLevel = 70,
        maxLevel = 76,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 256,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [55360] = { -- Living Bomb(Rank 3)
        spellLevel = 80,
        maxLevel = 86,
        duration = 12,
        baseCostPct = 22,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 345,
                valueRange = 0,
                coef = 0.2,
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
            21230, -- "Fireball,ImprovedDoT"
            25306, -- Fireball(Rank 12)
            27070, -- Fireball(Rank 13)
            37921, -- Test Spiral(Rank 1)
            38274, -- TEST Item Main Hand(Rank 1)
            38275, -- TEST Ammo Basic(Rank 1)
            38276, -- TEST Ammo Preferred(Rank 1)
            38556, -- Throw
            38557, -- Throw
            38558, -- Throw
            38559, -- Throw
            38560, -- Throw
            38561, -- Throw
            38562, -- Throw
            38563, -- Throw
            38564, -- Throw
            38565, -- Throw
            38566, -- Throw
            38567, -- Throw
            38568, -- Throw
            38569, -- Throw
            38570, -- Throw
            38692, -- Fireball(Rank 14)
            40822, -- ZoomTemp(Rank 1)
            41060, -- Return
            41346, -- Poisonous Throw
            42332, -- Throw Axe
            42357, -- Axe Volley
            42359, -- Axe Volley
            42412, -- Throw Chum
            42832, -- Fireball(Rank 15)
            42833, -- Fireball(Rank 16)
            42834, -- Fireball(Rank 17)
            43409, -- Throw
            43515, -- Cosmetic - Ashli's Fireball
            43520, -- Cosmetic - Ashli's Fireball 01
            43525, -- Cosmetic - Ashli's Fireball 02
            43665, -- Throw
            43993, -- Harpoon(Rank 1)
            45108, -- CK's Fireball(Rank 17)
            46440, -- Cosmetic - Ashli's Fireball TEST
            46602, -- VehicleScriptTest(Rank 1)
            46704, -- Raelorasz Fireball
            48975, -- Throw
            49512, -- Fireball
            51235, -- Dan's Test Fireball(Rank 1)
            51236, -- Dan's Test Iceblast(Rank 1)
            52356, -- Throw
            59138, -- Throw Weapon
            59603, -- Throw
            61168, -- Throw
            64755, -- Clayton's Test Spell
            68485, -- Clayton's Test Spell 2
            68812, -- Throw
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
            27078, -- Fire Blast(Rank 8)
            27079, -- Fire Blast(Rank 9)
            30512, -- Fire Blast
            30516, -- Fire Blast
            31378, -- Worm Blast
            36339, -- Fire Blast
            37110, -- Fire Blast
            37988, -- Ancient Fire
            38526, -- Fire Blast
            42872, -- Fire Blast(Rank 10)
            42873, -- Fire Blast(Rank 11)
            43245, -- Fire Blast
            57984, -- Fire Blast
            59637, -- Fire Blast
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
            27086, -- Flamestrike(Rank 7)
            42925, -- Flamestrike(Rank 8)
            42926, -- Flamestrike(Rank 9)
            46224, -- TempSmite(Rank 1)
        },
        [8] = {
            543, -- Fire Ward(Rank 1)
            8457, -- Fire Ward(Rank 2)
            8458, -- Fire Ward(Rank 3)
            10223, -- Fire Ward(Rank 4)
            10225, -- Fire Ward(Rank 5)
            15041, -- Fire Ward
            27128, -- Fire Ward(Rank 6)
            37844, -- Fire Ward
            43010, -- Fire Ward(Rank 7)
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
            27073, -- Scorch(Rank 8)
            27074, -- Scorch(Rank 9)
            29515, -- TEST Scorch
            35377, -- Scorch
            36807, -- Scorch
            38391, -- Scorch
            38636, -- Scorch
            42858, -- Scorch(Rank 10)
            42859, -- Scorch(Rank 11)
            47723, -- Scorch
            50183, -- Scorch
            56938, -- Scorch
            75412, -- Scorch
        },
        [32] = {
            11, -- Frostbolt of Ages
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
            21229, -- "Frostbolt,Improved"
            25304, -- Frostbolt(Rank 11)
            27071, -- Frostbolt(Rank 12)
            27072, -- Frostbolt(Rank 13)
            38697, -- Frostbolt(Rank 14)
            42841, -- Frostbolt(Rank 15)
            42842, -- Frostbolt(Rank 16)
            46580, -- TEST - Frostfire 2(Rank 1)
            54540, -- Test Frostbolt Weapon(Rank 2)
        },
        [64] = {
            122, -- Frost Nova(Rank 1)
            865, -- Frost Nova(Rank 2)
            6131, -- Frost Nova(Rank 3)
            10230, -- Frost Nova(Rank 4)
            27088, -- Frost Nova(Rank 5)
            42917, -- Frost Nova(Rank 6)
            65792, -- Frost Nova
        },
        [128] = {
            10, -- Blizzard(Rank 1)
            6141, -- Blizzard(Rank 2)
            8427, -- Blizzard(Rank 3)
            10185, -- Blizzard(Rank 4)
            10186, -- Blizzard(Rank 5)
            10187, -- Blizzard(Rank 6)
            27085, -- Blizzard(Rank 7)
            27618, -- Blizzard(Rank 6)
            30539, -- Void Zone
            30744, -- Lesser Shadow Fissure
            32366, -- Summon Void Zone
            36119, -- Void Zone
            37014, -- Void Zone
            37063, -- Void Zone
            39893, -- Ron's Test Spell #3
            42198, -- Blizzard(Rank 7)
            42208, -- Blizzard(Rank 1)
            42209, -- Blizzard(Rank 2)
            42210, -- Blizzard(Rank 3)
            42211, -- Blizzard(Rank 4)
            42212, -- Blizzard(Rank 5)
            42213, -- Blizzard(Rank 6)
            42937, -- Blizzard(Rank 8)
            42938, -- Blizzard(Rank 9)
            42939, -- Blizzard(Rank 8)
            42940, -- Blizzard(Rank 9)
            44178, -- Blizzard
            46195, -- Blizzard
            61882, -- Earthquake(Rank 1)
        },
        [256] = {
            6143, -- Frost Ward(Rank 1)
            8461, -- Frost Ward(Rank 2)
            8462, -- Frost Ward(Rank 3)
            10177, -- Frost Ward(Rank 4)
            15044, -- Frost Ward
            25641, -- Frost Ward
            28609, -- Frost Ward(Rank 5)
            32796, -- Frost Ward(Rank 6)
            43012, -- Frost Ward(Rank 7)
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
            27087, -- Cone of Cold(Rank 6)
            30095, -- Cone of Cold
            37265, -- Cone of Cold
            38384, -- Cone of Cold
            38644, -- Cone of Cold
            42930, -- Cone of Cold(Rank 7)
            42931, -- Cone of Cold(Rank 8)
            46984, -- Cone of Cold
            50302, -- Shard Spray
            57051, -- Shard Spray
            65023, -- Cone of Cold(Rank 8)
        },
        [1024] = {
            1459, -- Arcane Intellect(Rank 1)
            1460, -- Arcane Intellect(Rank 2)
            1461, -- Arcane Intellect(Rank 3)
            10156, -- Arcane Intellect(Rank 4)
            10157, -- Arcane Intellect(Rank 5)
            23028, -- Arcane Brilliance(Rank 1)
            27126, -- Arcane Intellect(Rank 6)
            27127, -- Arcane Brilliance(Rank 2)
            36880, -- Arcane Intellect
            39235, -- Arcane Intellect(Rank 6)
            42995, -- Arcane Intellect(Rank 7)
            43002, -- Arcane Brilliance(Rank 3)
            61024, -- Dalaran Intellect(Rank 7)
            61316, -- Dalaran Brilliance(Rank 3)
        },
        [2048] = {
            5143, -- Arcane Missiles(Rank 1)
            5144, -- Arcane Missiles(Rank 2)
            5145, -- Arcane Missiles(Rank 3)
            8416, -- Arcane Missiles(Rank 4)
            8417, -- Arcane Missiles(Rank 5)
            10211, -- Arcane Missiles(Rank 6)
            10212, -- Arcane Missiles(Rank 7)
            25345, -- Arcane Missiles(Rank 8)
            27075, -- Arcane Missiles(Rank 9)
            38699, -- Arcane Missiles(Rank 10)
            38704, -- Arcane Missiles(Rank 11)
            42843, -- Arcane Missiles(Rank 12)
            42846, -- Arcane Missiles(Rank 13)
        },
        [4096] = {
            1449, -- Arcane Explosion(Rank 1)
            8437, -- Arcane Explosion(Rank 2)
            8438, -- Arcane Explosion(Rank 3)
            8439, -- Arcane Explosion(Rank 4)
            10201, -- Arcane Explosion(Rank 5)
            10202, -- Arcane Explosion(Rank 6)
            22460, -- Arcane Explosion
            27080, -- Arcane Explosion(Rank 7)
            27082, -- Arcane Explosion(Rank 8)
            34349, -- Arcane Explosion
            42920, -- Arcane Explosion(Rank 9)
            42921, -- Arcane Explosion(Rank 10)
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
            27130, -- Amplify Magic(Rank 5)
            33944, -- Dampen Magic(Rank 6)
            33946, -- Amplify Magic(Rank 6)
            41478, -- Dampen Magic
            43015, -- Dampen Magic(Rank 7)
            43017, -- Amplify Magic(Rank 7)
        },
        [16384] = {
            2139, -- Counterspell
            45214, -- Ron's Test Spell #4
        },
        [32768] = {
            1463, -- Mana Shield(Rank 1)
            8494, -- Mana Shield(Rank 2)
            8495, -- Mana Shield(Rank 3)
            10191, -- Mana Shield(Rank 4)
            10192, -- Mana Shield(Rank 5)
            10193, -- Mana Shield(Rank 6)
            27131, -- Mana Shield(Rank 7)
            31635, -- Mana Shield
            32932, -- Sun Shield
            43019, -- Mana Shield(Rank 8)
            43020, -- Mana Shield(Rank 9)
            58348, -- Mana Shield
        },
        [65536] = {
            1953, -- Blink
            6139, -- Blink(Rank 2)
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
            17276, -- Scald
            17277, -- Blast Wave
            17492, -- Hand of Thaurissan
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
            30455, -- Ice Lance(Rank 1)
            30512, -- Fire Blast
            30516, -- Fire Blast
            30600, -- Blast Wave
            31378, -- Worm Blast
            33061, -- Blast Wave
            35377, -- Scorch
            36278, -- Blast Wave
            36339, -- Fire Blast
            36342, -- Super Rocket Launch
            36628, -- Super Rocket Launch
            36807, -- Scorch
            37110, -- Fire Blast
            37844, -- Fire Ward
            37988, -- Ancient Fire
            38064, -- Blast Wave
            38391, -- Scorch
            38526, -- Fire Blast
            38536, -- Blast Wave
            38636, -- Scorch
            38712, -- Blast Wave
            39001, -- Blast Wave
            39038, -- Blast Wave
            42913, -- Ice Lance(Rank 2)
            42914, -- Ice Lance(Rank 3)
            43245, -- Fire Blast
            43571, -- Ice Lance(Rank 3)
            44137, -- Rocket Launch
            44138, -- Rocket Launch
            46187, -- Rocket Launch
            46188, -- Rocket Launch
            47723, -- Scorch
            50183, -- Scorch
            56938, -- Scorch
            57984, -- Fire Blast
            58970, -- Blast Wave
            59637, -- Fire Blast
            60290, -- Blast Wave
            61362, -- Blast Wave
            61577, -- Molten Blast
            71590, -- Rocket Launch
            71591, -- Rocket Launch
            71786, -- Rocket Launch
            75412, -- Scorch
        },
        [262144] = {
            30482, -- Molten Armor(Rank 1)
            35915, -- Molten Armor
            35917, -- Fiery Intellect
            43045, -- Molten Armor(Rank 2)
            43046, -- Molten Armor(Rank 3)
        },
        [524288] = {
            10, -- Blizzard(Rank 1)
            168, -- Frost Armor(Rank 1)
            6141, -- Blizzard(Rank 2)
            7300, -- Frost Armor(Rank 2)
            7301, -- Frost Armor(Rank 3)
            7302, -- Ice Armor(Rank 1)
            7320, -- Ice Armor(Rank 2)
            8427, -- Blizzard(Rank 3)
            10185, -- Blizzard(Rank 4)
            10186, -- Blizzard(Rank 5)
            10187, -- Blizzard(Rank 6)
            10219, -- Ice Armor(Rank 3)
            10220, -- Ice Armor(Rank 4)
            12529, -- Chilling Touch
            12544, -- Frost Armor
            12556, -- Frost Armor
            12557, -- Cone of Cold
            12611, -- Cone of Cold
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
            25641, -- Frost Ward
            27085, -- Blizzard(Rank 7)
            27124, -- Ice Armor(Rank 5)
            27618, -- Blizzard(Rank 6)
            27619, -- Ice Block
            30095, -- Cone of Cold
            30539, -- Void Zone
            30744, -- Lesser Shadow Fissure
            31256, -- Frost Armor
            32366, -- Summon Void Zone
            35188, -- Chilling Touch
            36119, -- Void Zone
            36881, -- Ice Armor
            37014, -- Void Zone
            37063, -- Void Zone
            37265, -- Cone of Cold
            38384, -- Cone of Cold
            38644, -- Cone of Cold
            39893, -- Ron's Test Spell #3
            42198, -- Blizzard(Rank 7)
            42208, -- Blizzard(Rank 1)
            42209, -- Blizzard(Rank 2)
            42210, -- Blizzard(Rank 3)
            42211, -- Blizzard(Rank 4)
            42212, -- Blizzard(Rank 5)
            42213, -- Blizzard(Rank 6)
            42937, -- Blizzard(Rank 8)
            42938, -- Blizzard(Rank 9)
            42939, -- Blizzard(Rank 8)
            42940, -- Blizzard(Rank 9)
            43008, -- Ice Armor(Rank 6)
            44178, -- Blizzard
            46195, -- Blizzard
            46580, -- TEST - Frostfire 2(Rank 1)
            46744, -- Chilling Touch
            46984, -- Cone of Cold
            50197, -- Rotting Touch
            50302, -- Shard Spray
            54540, -- Test Frostbolt Weapon(Rank 2)
            55080, -- Shattered Barrier
            57051, -- Shard Spray
            61882, -- Earthquake(Rank 1)
        },
        [1048576] = {
            6136, -- Chilled(Rank 1)
            7321, -- Chilled(Rank 1)
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
            30095, -- Cone of Cold
            31257, -- Chilled
            34752, -- Freezing Touch
            37265, -- Cone of Cold
            38384, -- Cone of Cold
            38644, -- Cone of Cold
            46580, -- TEST - Frostfire 2(Rank 1)
            46745, -- Chilling Touch
            46984, -- Cone of Cold
            47700, -- Crystal Freeze
            50302, -- Shard Spray
            54540, -- Test Frostbolt Weapon(Rank 2)
            57051, -- Shard Spray
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
            27076, -- Arcane Missiles(Rank 9)
            31751, -- Arcane Missiles
            32224, -- Zangarmarsh Arcane Missiles(Rank 9)
            38700, -- Arcane Missiles(Rank 10)
            38703, -- Arcane Missiles(Rank 11)
            42844, -- Arcane Missiles(Rank 12)
            42845, -- Arcane Missiles(Rank 13)
        },
        [4194304] = {
            11366, -- Pyroblast(Rank 1)
            12505, -- Pyroblast(Rank 2)
            12522, -- Pyroblast(Rank 3)
            12523, -- Pyroblast(Rank 4)
            12524, -- Pyroblast(Rank 5)
            12525, -- Pyroblast(Rank 6)
            12526, -- Pyroblast(Rank 7)
            18809, -- Pyroblast(Rank 8)
            27132, -- Pyroblast(Rank 9)
            33938, -- Pyroblast(Rank 10)
            42890, -- Pyroblast(Rank 11)
            42891, -- Pyroblast(Rank 12)
        },
        [8388608] = {
            31661, -- Dragon's Breath(Rank 1)
            33041, -- Dragon's Breath(Rank 2)
            33042, -- Dragon's Breath(Rank 3)
            33043, -- Dragon's Breath(Rank 4)
            42949, -- Dragon's Breath(Rank 5)
            42950, -- Dragon's Breath(Rank 6)
        },
        [16777216] = {
            118, -- Polymorph(Rank 1)
            12824, -- Polymorph(Rank 2)
            12825, -- Polymorph(Rank 3)
            12826, -- Polymorph(Rank 4)
            28271, -- Polymorph(Turtle)
            28272, -- Polymorph(Pig)
            32826, -- Polymorph Cast Visual(Rank 1)
            32990, -- Enchanting Cast Visual(Rank 1)
            32991, -- Nature Cast Visual(Rank 1)
            32992, -- Ice Cast Visual(Rank 1)
            32993, -- Fire Cast Visual(Rank 1)
            45461, -- Fire Channel Visual(Rank 1)
            53325, -- SelfSheep(Rank 4)
            59634, -- Polymorph - Penguin
            61025, -- Polymorph(Serpent)
            61305, -- Polymorph(Black Cat)
            61721, -- Polymorph(Rabbit)
            61780, -- Polymorph(Turkey)
            65633, -- Arcane Cast Visual(Rank 1)
            71319, -- Polymorph(Turkey)
        },
        [33554432] = {
            168, -- Frost Armor(Rank 1)
            7300, -- Frost Armor(Rank 2)
            7301, -- Frost Armor(Rank 3)
            7302, -- Ice Armor(Rank 1)
            7320, -- Ice Armor(Rank 2)
            10219, -- Ice Armor(Rank 3)
            10220, -- Ice Armor(Rank 4)
            27124, -- Ice Armor(Rank 5)
            36881, -- Ice Armor
            43008, -- Ice Armor(Rank 6)
        },
        [67108864] = {
            12051, -- Evocation
            34679, -- Archmage Vargoth's Ritual
            36506, -- Energy Charge
            52964, -- Spark Frenzy
            52965, -- Spark Frenzy
            56323, -- Spark Frenzy
        },
        [134217728] = {
            12654, -- Ignite
            44559, -- Pet Passive (DND)
            71023, -- Languish
        },
        [268435456] = {
            6117, -- Mage Armor(Rank 1)
            22782, -- Mage Armor(Rank 2)
            22783, -- Mage Armor(Rank 3)
            27125, -- Mage Armor(Rank 4)
            43023, -- Mage Armor(Rank 5)
            43024, -- Mage Armor(Rank 6)
        },
        [536870912] = {
            30451, -- Arcane Blast(Rank 1)
            35927, -- Arcane Blast
            38881, -- Arcane Blast
            42894, -- Arcane Blast(Rank 2)
            42896, -- Arcane Blast(Rank 3)
            42897, -- Arcane Blast(Rank 4)
            56969, -- Arcane Blast
            65791, -- Arcane Blast
        },
        [1073741824] = {
            587, -- Conjure Food(Rank 1)
            597, -- Conjure Food(Rank 2)
            759, -- Conjure Mana Gem(Rank 1)
            990, -- Conjure Food(Rank 3)
            3552, -- Conjure Mana Gem(Rank 2)
            5504, -- Conjure Water(Rank 1)
            5505, -- Conjure Water(Rank 2)
            5506, -- Conjure Water(Rank 3)
            6127, -- Conjure Water(Rank 4)
            6129, -- Conjure Food(Rank 4)
            10053, -- Conjure Mana Gem(Rank 3)
            10054, -- Conjure Mana Gem(Rank 4)
            10138, -- Conjure Water(Rank 5)
            10139, -- Conjure Water(Rank 6)
            10140, -- Conjure Water(Rank 7)
            10144, -- Conjure Food(Rank 5)
            10145, -- Conjure Food(Rank 6)
            27090, -- Conjure Water(Rank 9)
            27101, -- Conjure Mana Gem(Rank 5)
            28612, -- Conjure Food(Rank 7)
            29975, -- Conjure Water(Rank 8)
            33717, -- Conjure Food(Rank 8)
            36412, -- Summon Nether Spikes
            36879, -- Conjure Water
            36883, -- Conjure Mana Diamond
            37420, -- Conjure Water(Rank 8)
            42955, -- Conjure Refreshment(Rank 1)
            42956, -- Conjure Refreshment(Rank 2)
            42985, -- Conjure Mana Gem(Rank 6)
            42986, -- Conjure Mana Gem(Rank 7)
            43521, -- Create Darkrune
            51177, -- Create Corrupted Fel-Ice Subzero Netherfrost Mana Shard(Rank 7)
        },
        [2147483648] = {
            66, -- Invisibility
            130, -- Slow Fall
            475, -- Remove Curse
            2855, -- Detect Magic
            3561, -- Teleport: Stormwind
            3562, -- Teleport: Ironforge
            3563, -- Teleport: Undercity
            3565, -- Teleport: Darnassus
            3566, -- Teleport: Thunder Bluff
            3567, -- Teleport: Orgrimmar
            10059, -- Portal: Stormwind
            11416, -- Portal: Ironforge
            11417, -- Portal: Orgrimmar
            11418, -- Portal: Undercity
            11419, -- Portal: Darnassus
            11420, -- Portal: Thunder Bluff
            31589, -- Slow
            32266, -- Portal: Exodar
            32267, -- Portal: Silvermoon
            32271, -- Teleport: Exodar
            32272, -- Teleport: Silvermoon
            32602, -- Energy Stream
            32603, -- Energy Stream
            32612, -- Invisibility
            33690, -- Teleport: Shattrath
            33691, -- Portal: Shattrath
            34426, -- Greater Invisibility(Passive)
            35715, -- Teleport: Shattrath
            35717, -- Portal: Shattrath
            41234, -- Teleport: Black Temple
            44080, -- Teleport: Zul'Aman Instance
            44082, -- Return Rift
            46149, -- Teleport: Shattrath
            46450, -- Portal: Lower Naxxanar
            46451, -- Portal: Upper Naxxanar (Horde)
            46452, -- Portal: Temple City of En'kilah
            47278, -- Portal: Upper Naxxanar (Alliance)
            49358, -- Teleport: Stonard
            49359, -- Teleport: Theramore
            49360, -- Portal: Theramore
            49361, -- Portal: Stonard
            51755, -- Camouflage
            53140, -- Teleport: Dalaran
            53142, -- Portal: Dalaran
            54646, -- Focus Magic
            54648, -- Focus Magic
            67765, -- Invisibility
            71436, -- Teleport: Booty Bay
            76027, -- Invisibility (DND)
        },
    },
    [2] = {
        [1] = {
            11426, -- Ice Barrier(Rank 1)
            13031, -- Ice Barrier(Rank 2)
            13032, -- Ice Barrier(Rank 3)
            13033, -- Ice Barrier(Rank 4)
            27134, -- Ice Barrier(Rank 5)
            33405, -- Ice Barrier(Rank 6)
            34973, -- Ravandwyr's Ice Block
            36527, -- Stasis
            36911, -- Ice Block
            41590, -- Ice Block
            43038, -- Ice Barrier(Rank 7)
            43039, -- Ice Barrier(Rank 8)
            46604, -- Ice Block
        },
        [2] = {
            12536, -- Clearcasting
            44401, -- Missile Barrage
            57761, -- Fireball!
        },
        [4] = {
            11958, -- Cold Snap
        },
        [8] = {
            34913, -- Molten Armor(Rank 1)
            35916, -- Molten Armor
            43043, -- Molten Armor(Rank 2)
            43044, -- Molten Armor(Rank 3)
        },
        [16] = {
            30449, -- Spellsteal
        },
        [32] = {
            12043, -- Presence of Mind
        },
        [64] = {
            11113, -- Blast Wave(Rank 1)
            13018, -- Blast Wave(Rank 2)
            13019, -- Blast Wave(Rank 3)
            13020, -- Blast Wave(Rank 4)
            13021, -- Blast Wave(Rank 5)
            27133, -- Blast Wave(Rank 6)
            33933, -- Blast Wave(Rank 7)
            42944, -- Blast Wave(Rank 8)
            42945, -- Blast Wave(Rank 9)
        },
        [128] = {
            45438, -- Ice Block
            46604, -- Ice Block
        },
        [256] = {
            5405, -- Replenish Mana(Rank 1)
            10052, -- Replenish Mana(Rank 2)
            10057, -- Replenish Mana(Rank 3)
            10058, -- Replenish Mana(Rank 4)
            27103, -- Replenish Mana(Rank 5)
            42987, -- Replenish Mana(Rank 6)
            42988, -- Replenish Mana(Rank 7)
        },
        [512] = {
            11071, -- Frostbite(Rank 1)
            12496, -- Frostbite(Rank 2)
            12497, -- Frostbite(Rank 3)
        },
        [1024] = {
            44559, -- Pet Passive (DND)
        },
        [2048] = {
            31687, -- Summon Water Elemental
            70907, -- Summon Water Elemental
            70908, -- Summon Water Elemental
            70909, -- Summon Water Elemental (Prototype)
        },
        [4096] = {
            44614, -- Frostfire Bolt(Rank 1)
            47610, -- Frostfire Bolt(Rank 2)
        },
        [8192] = {
            22959, -- Improved Scorch
        },
        [16384] = {
            12472, -- Icy Veins
        },
        [32768] = {
            44425, -- Arcane Barrage(Rank 1)
            44780, -- Arcane Barrage(Rank 2)
            44781, -- Arcane Barrage(Rank 3)
        },
        [65536] = {
            44461, -- Living Bomb(Rank 1)
            55361, -- Living Bomb(Rank 2)
            55362, -- Living Bomb(Rank 3)
            61429, -- Copy of Living Bomb(Rank 3)
        },
        [131072] = {
            44457, -- Living Bomb(Rank 1)
            55359, -- Living Bomb(Rank 2)
            55360, -- Living Bomb(Rank 3)
        },
        [262144] = {
            66, -- Invisibility
            67765, -- Invisibility
        },
        [524288] = {
            12042, -- Arcane Power
        },
        [1048576] = {
            44572, -- Deep Freeze
            58534, -- Deep Freeze(Rank 4)
        },
        [2097152] = {
            55342, -- Mirror Image
        },
        [4194304] = {
            32612, -- Invisibility
            76027, -- Invisibility (DND)
        },
        [8388608] = {
            130, -- Slow Fall
        },
        [16777216] = {
            475, -- Remove Curse
        },
        [33554432] = {
            31643, -- Blazing Speed
        },
        [67108864] = {
            11129, -- Combustion
            28682, -- Combustion
        },
        [134217728] = {
            46989, -- Improved Blink
            47000, -- Improved Blink
        },
        [268435456] = {
            44413, -- Incanter's Absorption
        },
        [536870912] = {
            57529, -- Arcane Potency
            57531, -- Arcane Potency
        },
        [1073741824] = {
            18469, -- Silenced - Improved Counterspell(Rank 1)
            55021, -- Silenced - Improved Counterspell(Rank 2)
        },
        [2147483648] = {
            12494, -- Frostbite
        },
    },
    [3] = {
        [1] = {
            12579, -- Winter's Chill
        },
        [2] = {
            44544, -- Fingers of Frost
            74396, -- Fingers of Frost
        },
        [4] = {
            33421, -- Arcane Potency
            36032, -- Arcane Blast
        },
        [8] = {
            130, -- Slow Fall
            133, -- Fireball(Rank 1)
            143, -- Fireball(Rank 2)
            145, -- Fireball(Rank 3)
            543, -- Fire Ward(Rank 1)
            604, -- Dampen Magic(Rank 1)
            1008, -- Amplify Magic(Rank 1)
            1459, -- Arcane Intellect(Rank 1)
            1460, -- Arcane Intellect(Rank 2)
            1461, -- Arcane Intellect(Rank 3)
            1463, -- Mana Shield(Rank 1)
            3140, -- Fireball(Rank 4)
            6143, -- Frost Ward(Rank 1)
            8400, -- Fireball(Rank 5)
            8401, -- Fireball(Rank 6)
            8402, -- Fireball(Rank 7)
            8450, -- Dampen Magic(Rank 2)
            8451, -- Dampen Magic(Rank 3)
            8455, -- Amplify Magic(Rank 2)
            8457, -- Fire Ward(Rank 2)
            8458, -- Fire Ward(Rank 3)
            8461, -- Frost Ward(Rank 2)
            8462, -- Frost Ward(Rank 3)
            8494, -- Mana Shield(Rank 2)
            8495, -- Mana Shield(Rank 3)
            10148, -- Fireball(Rank 8)
            10149, -- Fireball(Rank 9)
            10150, -- Fireball(Rank 10)
            10151, -- Fireball(Rank 11)
            10156, -- Arcane Intellect(Rank 4)
            10157, -- Arcane Intellect(Rank 5)
            10169, -- Amplify Magic(Rank 3)
            10170, -- Amplify Magic(Rank 4)
            10173, -- Dampen Magic(Rank 4)
            10174, -- Dampen Magic(Rank 5)
            10177, -- Frost Ward(Rank 4)
            10191, -- Mana Shield(Rank 4)
            10192, -- Mana Shield(Rank 5)
            10193, -- Mana Shield(Rank 6)
            10223, -- Fire Ward(Rank 4)
            10225, -- Fire Ward(Rank 5)
            11129, -- Combustion
            11366, -- Pyroblast(Rank 1)
            11426, -- Ice Barrier(Rank 1)
            12042, -- Arcane Power
            12043, -- Presence of Mind
            12051, -- Evocation
            12472, -- Icy Veins
            12505, -- Pyroblast(Rank 2)
            12522, -- Pyroblast(Rank 3)
            12523, -- Pyroblast(Rank 4)
            12524, -- Pyroblast(Rank 5)
            12525, -- Pyroblast(Rank 6)
            12526, -- Pyroblast(Rank 7)
            12536, -- Clearcasting
            12654, -- Ignite
            13031, -- Ice Barrier(Rank 2)
            13032, -- Ice Barrier(Rank 3)
            13033, -- Ice Barrier(Rank 4)
            18809, -- Pyroblast(Rank 8)
            25306, -- Fireball(Rank 12)
            27070, -- Fireball(Rank 13)
            27126, -- Arcane Intellect(Rank 6)
            27128, -- Fire Ward(Rank 6)
            27130, -- Amplify Magic(Rank 5)
            27131, -- Mana Shield(Rank 7)
            27132, -- Pyroblast(Rank 9)
            27134, -- Ice Barrier(Rank 5)
            28609, -- Frost Ward(Rank 5)
            28682, -- Combustion
            31643, -- Blazing Speed
            32612, -- Invisibility
            32796, -- Frost Ward(Rank 6)
            33405, -- Ice Barrier(Rank 6)
            33938, -- Pyroblast(Rank 10)
            33944, -- Dampen Magic(Rank 6)
            33946, -- Amplify Magic(Rank 6)
            36032, -- Arcane Blast
            38692, -- Fireball(Rank 14)
            42832, -- Fireball(Rank 15)
            42833, -- Fireball(Rank 16)
            42834, -- Fireball(Rank 17)
            42890, -- Pyroblast(Rank 11)
            42891, -- Pyroblast(Rank 12)
            42995, -- Arcane Intellect(Rank 7)
            43010, -- Fire Ward(Rank 7)
            43012, -- Frost Ward(Rank 7)
            43015, -- Dampen Magic(Rank 7)
            43017, -- Amplify Magic(Rank 7)
            43019, -- Mana Shield(Rank 8)
            43020, -- Mana Shield(Rank 9)
            43038, -- Ice Barrier(Rank 7)
            43039, -- Ice Barrier(Rank 8)
            44401, -- Missile Barrage
            44413, -- Incanter's Absorption
            44457, -- Living Bomb(Rank 1)
            44544, -- Fingers of Frost
            44614, -- Frostfire Bolt(Rank 1)
            45438, -- Ice Block
            46989, -- Improved Blink
            47000, -- Improved Blink
            47610, -- Frostfire Bolt(Rank 2)
            54646, -- Focus Magic
            54648, -- Focus Magic
            55359, -- Living Bomb(Rank 2)
            55360, -- Living Bomb(Rank 3)
            57529, -- Arcane Potency
            57531, -- Arcane Potency
            57761, -- Fireball!
            61024, -- Dalaran Intellect(Rank 7)
            71023, -- Languish
            74396, -- Fingers of Frost
            76027, -- Invisibility (DND)
        },
        [16] = {
            68391, -- Permafrost(Rank 8)
        },
        [32] = {
            71757, -- Deep Freeze
        },
        [2147483648] = {
            59548, -- Gift of the Naaru(Racial)
        },
    },
    [4] = {
    },
};

---@type ClassGlyphs
_addon.classGlyphs = {
    [56363] = { -- Glyph of Arcane Missiles
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
            affectSpell = {2099200, 0, 0, 0},
            value = 25,
        },
    },
    [56370] = { -- Glyph of Frostbolt
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {32, 0, 0, 0},
            value = 5,
        },
    },
    [56371] = { -- Glyph of Scorch
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {16, 0, 0, 0},
            value = 20,
        },
    },
    [61205] = { -- Glyph of Frostfire
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 4096, 0, 0},
            value = 2,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {0, 4096, 0, 0},
            value = 2,
        },
    },
    [63091] = { -- Glyph of Living Bomb
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_CRIT,
            affectSpell = {0, 131072, 0, 0},
            value = 1,
        },
    },
    [63095] = { -- Glyph of Ice Barrier
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {0, 1, 0, 0},
            value = 30,
        },
    },
};


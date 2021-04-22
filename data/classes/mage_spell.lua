-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(133)] = { -- Fireball
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(116)] = { -- Frostbolt
        school = 5,
        defType = 1,
    },
    [GetSpellInfo(2136)] = { -- Fire Blast
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(5143)] = { -- Arcane Missiles
        school = 7,
        isChannel = true,
        defType = 1,
    },
    [GetSpellInfo(122)] = { -- Frost Nova
        school = 5,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(1449)] = { -- Arcane Explosion
        school = 7,
        defType = 1,
    },
    [GetSpellInfo(2120)] = { -- Flamestrike
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(10)] = { -- Blizzard
        school = 5,
        isChannel = true,
        defType = 1,
        noCrit = true,
    },
    [GetSpellInfo(543)] = { -- Fire Ward
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(1463)] = { -- Mana Shield
        school = 7,
        defType = 1,
    },
    [GetSpellInfo(6143)] = { -- Frost Ward
        school = 5,
        defType = 1,
    },
    [GetSpellInfo(2948)] = { -- Scorch
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(11366)] = { -- Pyroblast
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(120)] = { -- Cone of Cold
        school = 5,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(11113)] = { -- Blast Wave
        school = 3,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(11426)] = { -- Ice Barrier
        school = 5,
        defType = 1,
    },
    [GetSpellInfo(31661)] = { -- Dragon's Breath
        school = 3,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(30482)] = { -- Molten Armor
        school = 3,
        defType = 1,
    },
    [GetSpellInfo(30451)] = { -- Arcane Blast
        school = 7,
        defType = 1,
    },
    [GetSpellInfo(30455)] = { -- Ice Lance
        school = 5,
        defType = 1,
    },
};

_addon.spellRankInfo = {
    [10] = { -- Blizzard(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 25,
                perLevel = 0.1,
                coef = 0.143,
            },
        }
    },
    [116] = { -- Frostbolt(Rank 1)
        spellLevel = 4,
        maxLevel = 8,
        duration = 5,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 2,
                min = 18,
                max = 21,
                perLevel = 0.5,
                coef = 0.163,
            },
        }
    },
    [120] = { -- Cone of Cold(Rank 1)
        spellLevel = 26,
        maxLevel = 31,
        duration = 8,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 2,
                min = 98,
                max = 109,
                perLevel = 0.8,
                coef = 0.193,
            },
        }
    },
    [122] = { -- Frost Nova(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        duration = 8,
        baseCost = 55,
        effects = {
            [1] = {
                effectType = 2,
                min = 19,
                max = 22,
                perLevel = 0.5,
                coef = 0.018,
            },
        }
    },
    [133] = { -- Fireball(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        duration = 4,
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 2,
                min = 14,
                max = 23,
                perLevel = 0.6,
                coef = 0.123,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 1,
                coef = 0,
            },
        }
    },
    [143] = { -- Fireball(Rank 2)
        spellLevel = 6,
        maxLevel = 10,
        duration = 6,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 2,
                min = 31,
                max = 46,
                perLevel = 0.8,
                coef = 0.271,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 1,
                coef = 0,
            },
        }
    },
    [145] = { -- Fireball(Rank 3)
        spellLevel = 12,
        maxLevel = 16,
        duration = 6,
        baseCost = 65,
        effects = {
            [1] = {
                effectType = 2,
                min = 53,
                max = 74,
                perLevel = 1,
                coef = 0.5,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 2,
                coef = 0,
            },
        }
    },
    [205] = { -- Frostbolt(Rank 2)
        spellLevel = 8,
        maxLevel = 12,
        duration = 6,
        baseCost = 35,
        effects = {
            [1] = {
                effectType = 2,
                min = 31,
                max = 36,
                perLevel = 0.7,
                coef = 0.269,
            },
        }
    },
    [543] = { -- Fire Ward(Rank 1)
        spellLevel = 20,
        maxLevel = 29,
        duration = 30,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 165,
                coef = 0,
            },
        }
    },
    [837] = { -- Frostbolt(Rank 3)
        spellLevel = 14,
        maxLevel = 18,
        duration = 6,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 2,
                min = 51,
                max = 58,
                perLevel = 0.9,
                coef = 0.463,
            },
        }
    },
    [865] = { -- Frost Nova(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        duration = 8,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 2,
                min = 33,
                max = 38,
                perLevel = 0.5,
                coef = 0.043,
            },
        }
    },
    [1449] = { -- Arcane Explosion(Rank 1)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 2,
                min = 32,
                max = 37,
                perLevel = 0.4,
                coef = 0.166,
            },
        }
    },
    [1463] = { -- Mana Shield(Rank 1)
        spellLevel = 20,
        maxLevel = 27,
        duration = 60,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 120,
                coef = 0.5,
            },
        }
    },
    [2120] = { -- Flamestrike(Rank 1)
        spellLevel = 16,
        maxLevel = 21,
        duration = 8,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 2,
                min = 52,
                max = 69,
                perLevel = 0.6,
                coef = 0.2,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 12,
                coef = 0.026,
            },
        }
    },
    [2121] = { -- Flamestrike(Rank 2)
        spellLevel = 24,
        maxLevel = 29,
        duration = 8,
        baseCost = 330,
        effects = {
            [1] = {
                effectType = 2,
                min = 96,
                max = 123,
                perLevel = 0.8,
                coef = 0.236,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 22,
                coef = 0.03,
            },
        }
    },
    [2136] = { -- Fire Blast(Rank 1)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 2,
                min = 24,
                max = 33,
                perLevel = 0.6,
                coef = 0.204,
            },
        }
    },
    [2137] = { -- Fire Blast(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 2,
                min = 57,
                max = 72,
                perLevel = 1,
                coef = 0.332,
            },
        }
    },
    [2138] = { -- Fire Blast(Rank 3)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 115,
        effects = {
            [1] = {
                effectType = 2,
                min = 103,
                max = 128,
                perLevel = 1.4,
                coef = 0.429,
            },
        }
    },
    [2948] = { -- Scorch(Rank 1)
        spellLevel = 22,
        maxLevel = 26,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 2,
                min = 53,
                max = 66,
                perLevel = 0.9,
                coef = 0.429,
            },
        }
    },
    [3140] = { -- Fireball(Rank 4)
        spellLevel = 18,
        maxLevel = 22,
        duration = 8,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
                min = 84,
                max = 117,
                perLevel = 1.3,
                coef = 0.793,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 3,
                coef = 0,
            },
        }
    },
    [5143] = { -- Arcane Missiles(Rank 1)
        spellLevel = 8,
        maxLevel = 12,
        duration = 3,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 24,
                perLevel = 0.3,
                coef = 0.157,
            },
        }
    },
    [5144] = { -- Arcane Missiles(Rank 2)
        spellLevel = 16,
        maxLevel = 20,
        duration = 4,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 36,
                perLevel = 0.4,
                coef = 0.243,
            },
        }
    },
    [5145] = { -- Arcane Missiles(Rank 3)
        spellLevel = 24,
        maxLevel = 28,
        duration = 5,
        baseCost = 235,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 56,
                perLevel = 0.5,
                coef = 0.286,
            },
        }
    },
    [6131] = { -- Frost Nova(Rank 3)
        spellLevel = 40,
        maxLevel = 45,
        duration = 8,
        baseCost = 115,
        effects = {
            [1] = {
                effectType = 2,
                min = 52,
                max = 59,
                perLevel = 0.5,
                coef = 0.043,
            },
        }
    },
    [6141] = { -- Blizzard(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        duration = 8,
        baseCost = 520,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 44,
                perLevel = 0.2,
                coef = 0.143,
            },
        }
    },
    [6143] = { -- Frost Ward(Rank 1)
        spellLevel = 22,
        maxLevel = 31,
        duration = 30,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 165,
                coef = 0,
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
    [7322] = { -- Frostbolt(Rank 4)
        spellLevel = 20,
        maxLevel = 24,
        duration = 7,
        baseCost = 65,
        effects = {
            [1] = {
                effectType = 2,
                min = 74,
                max = 83,
                perLevel = 1.1,
                coef = 0.706,
            },
        }
    },
    [8400] = { -- Fireball(Rank 5)
        spellLevel = 24,
        maxLevel = 28,
        duration = 8,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 2,
                min = 139,
                max = 188,
                perLevel = 1.8,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 5,
                coef = 0,
            },
        }
    },
    [8401] = { -- Fireball(Rank 6)
        spellLevel = 30,
        maxLevel = 34,
        duration = 8,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
                min = 199,
                max = 266,
                perLevel = 2.1,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 7,
                coef = 0,
            },
        }
    },
    [8402] = { -- Fireball(Rank 7)
        spellLevel = 36,
        maxLevel = 40,
        duration = 8,
        baseCost = 220,
        effects = {
            [1] = {
                effectType = 2,
                min = 255,
                max = 336,
                perLevel = 2.4,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 8,
                coef = 0,
            },
        }
    },
    [8406] = { -- Frostbolt(Rank 5)
        spellLevel = 26,
        maxLevel = 30,
        duration = 7,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 2,
                min = 126,
                max = 139,
                perLevel = 1.5,
                coef = 0.814,
            },
        }
    },
    [8407] = { -- Frostbolt(Rank 6)
        spellLevel = 32,
        maxLevel = 36,
        duration = 8,
        baseCost = 130,
        effects = {
            [1] = {
                effectType = 2,
                min = 174,
                max = 191,
                perLevel = 1.7,
                coef = 0.814,
            },
        }
    },
    [8408] = { -- Frostbolt(Rank 7)
        spellLevel = 38,
        maxLevel = 42,
        duration = 8,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 2,
                min = 227,
                max = 248,
                perLevel = 2,
                coef = 0.814,
            },
        }
    },
    [8412] = { -- Fire Blast(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        baseCost = 165,
        effects = {
            [1] = {
                effectType = 2,
                min = 168,
                max = 203,
                perLevel = 1.8,
                coef = 0.429,
            },
        }
    },
    [8413] = { -- Fire Blast(Rank 5)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 220,
        effects = {
            [1] = {
                effectType = 2,
                min = 242,
                max = 291,
                perLevel = 2.2,
                coef = 0.429,
            },
        }
    },
    [8416] = { -- Arcane Missiles(Rank 4)
        spellLevel = 32,
        maxLevel = 36,
        duration = 5,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 83,
                perLevel = 0.6,
                coef = 0.286,
            },
        }
    },
    [8417] = { -- Arcane Missiles(Rank 5)
        spellLevel = 40,
        maxLevel = 44,
        duration = 5,
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 115,
                perLevel = 0.7,
                coef = 0.286,
            },
        }
    },
    [8422] = { -- Flamestrike(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        duration = 8,
        baseCost = 490,
        effects = {
            [1] = {
                effectType = 2,
                min = 154,
                max = 193,
                perLevel = 1,
                coef = 0.236,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 35,
                coef = 0.03,
            },
        }
    },
    [8423] = { -- Flamestrike(Rank 4)
        spellLevel = 40,
        maxLevel = 45,
        duration = 8,
        baseCost = 650,
        effects = {
            [1] = {
                effectType = 2,
                min = 220,
                max = 273,
                perLevel = 1.3,
                coef = 0.236,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 49,
                coef = 0.03,
            },
        }
    },
    [8427] = { -- Blizzard(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        duration = 8,
        baseCost = 720,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 65,
                perLevel = 0.2,
                coef = 0.143,
            },
        }
    },
    [8437] = { -- Arcane Explosion(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 120,
        effects = {
            [1] = {
                effectType = 2,
                min = 57,
                max = 64,
                perLevel = 0.6,
                coef = 0.214,
            },
        }
    },
    [8438] = { -- Arcane Explosion(Rank 3)
        spellLevel = 30,
        maxLevel = 35,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
                min = 97,
                max = 106,
                perLevel = 0.9,
                coef = 0.214,
            },
        }
    },
    [8439] = { -- Arcane Explosion(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 2,
                min = 139,
                max = 152,
                perLevel = 0.9,
                coef = 0.214,
            },
        }
    },
    [8444] = { -- Scorch(Rank 2)
        spellLevel = 28,
        maxLevel = 32,
        baseCost = 65,
        effects = {
            [1] = {
                effectType = 2,
                min = 77,
                max = 94,
                perLevel = 1.1,
                coef = 0.429,
            },
        }
    },
    [8445] = { -- Scorch(Rank 3)
        spellLevel = 34,
        maxLevel = 38,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 2,
                min = 100,
                max = 121,
                perLevel = 1.3,
                coef = 0.429,
            },
        }
    },
    [8446] = { -- Scorch(Rank 4)
        spellLevel = 40,
        maxLevel = 44,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 2,
                min = 133,
                max = 160,
                perLevel = 1.5,
                coef = 0.429,
            },
        }
    },
    [8457] = { -- Fire Ward(Rank 2)
        spellLevel = 30,
        maxLevel = 39,
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
    [8458] = { -- Fire Ward(Rank 3)
        spellLevel = 40,
        maxLevel = 49,
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
    [8461] = { -- Frost Ward(Rank 2)
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
    [8462] = { -- Frost Ward(Rank 3)
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
    [8492] = { -- Cone of Cold(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 2,
                min = 146,
                max = 161,
                perLevel = 1,
                coef = 0.193,
            },
        }
    },
    [8494] = { -- Mana Shield(Rank 2)
        spellLevel = 28,
        maxLevel = 35,
        duration = 60,
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 210,
                coef = 0.5,
            },
        }
    },
    [8495] = { -- Mana Shield(Rank 3)
        spellLevel = 36,
        maxLevel = 43,
        duration = 60,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 300,
                coef = 0.5,
            },
        }
    },
    [10148] = { -- Fireball(Rank 8)
        spellLevel = 42,
        maxLevel = 46,
        duration = 8,
        baseCost = 260,
        effects = {
            [1] = {
                effectType = 2,
                min = 318,
                max = 415,
                perLevel = 2.7,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 10,
                coef = 0,
            },
        }
    },
    [10149] = { -- Fireball(Rank 9)
        spellLevel = 48,
        maxLevel = 52,
        duration = 8,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 2,
                min = 392,
                max = 507,
                perLevel = 3,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 13,
                coef = 0,
            },
        }
    },
    [10150] = { -- Fireball(Rank 10)
        spellLevel = 54,
        maxLevel = 58,
        duration = 8,
        baseCost = 350,
        effects = {
            [1] = {
                effectType = 2,
                min = 475,
                max = 610,
                perLevel = 3.4,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 15,
                coef = 0,
            },
        }
    },
    [10151] = { -- Fireball(Rank 11)
        spellLevel = 60,
        maxLevel = 64,
        duration = 8,
        baseCost = 395,
        effects = {
            [1] = {
                effectType = 2,
                min = 561,
                max = 716,
                perLevel = 3.7,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 18,
                coef = 0,
            },
        }
    },
    [10159] = { -- Cone of Cold(Rank 3)
        spellLevel = 42,
        maxLevel = 47,
        duration = 8,
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 2,
                min = 203,
                max = 224,
                perLevel = 1.2,
                coef = 0.193,
            },
        }
    },
    [10160] = { -- Cone of Cold(Rank 4)
        spellLevel = 50,
        maxLevel = 55,
        duration = 8,
        baseCost = 465,
        effects = {
            [1] = {
                effectType = 2,
                min = 264,
                max = 291,
                perLevel = 1.3,
                coef = 0.193,
            },
        }
    },
    [10161] = { -- Cone of Cold(Rank 5)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCost = 555,
        effects = {
            [1] = {
                effectType = 2,
                min = 335,
                max = 366,
                perLevel = 1.5,
                coef = 0.193,
            },
        }
    },
    [10177] = { -- Frost Ward(Rank 4)
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
    [10179] = { -- Frostbolt(Rank 8)
        spellLevel = 44,
        maxLevel = 48,
        duration = 9,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 2,
                min = 292,
                max = 317,
                perLevel = 2.3,
                coef = 0.814,
            },
        }
    },
    [10180] = { -- Frostbolt(Rank 9)
        spellLevel = 50,
        maxLevel = 54,
        duration = 9,
        baseCost = 225,
        effects = {
            [1] = {
                effectType = 2,
                min = 353,
                max = 384,
                perLevel = 2.6,
                coef = 0.814,
            },
        }
    },
    [10181] = { -- Frostbolt(Rank 10)
        spellLevel = 56,
        maxLevel = 60,
        duration = 9,
        baseCost = 260,
        effects = {
            [1] = {
                effectType = 2,
                min = 429,
                max = 464,
                perLevel = 2.9,
                coef = 0.814,
            },
        }
    },
    [10185] = { -- Blizzard(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        duration = 8,
        baseCost = 935,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 90,
                perLevel = 0.3,
                coef = 0.143,
            },
        }
    },
    [10186] = { -- Blizzard(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        duration = 8,
        baseCost = 1160,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 117,
                perLevel = 0.3,
                coef = 0.143,
            },
        }
    },
    [10187] = { -- Blizzard(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        duration = 8,
        baseCost = 1400,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 149,
                perLevel = 0.4,
                coef = 0.143,
            },
        }
    },
    [10191] = { -- Mana Shield(Rank 4)
        spellLevel = 44,
        maxLevel = 51,
        duration = 60,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 390,
                coef = 0.5,
            },
        }
    },
    [10192] = { -- Mana Shield(Rank 5)
        spellLevel = 52,
        maxLevel = 59,
        duration = 60,
        baseCost = 120,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 480,
                coef = 0.5,
            },
        }
    },
    [10193] = { -- Mana Shield(Rank 6)
        spellLevel = 60,
        maxLevel = 67,
        duration = 60,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 570,
                coef = 0.5,
            },
        }
    },
    [10197] = { -- Fire Blast(Rank 6)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 2,
                min = 332,
                max = 395,
                perLevel = 2.6,
                coef = 0.429,
            },
        }
    },
    [10199] = { -- Fire Blast(Rank 7)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 340,
        effects = {
            [1] = {
                effectType = 2,
                min = 431,
                max = 510,
                perLevel = 3,
                coef = 0.429,
            },
        }
    },
    [10201] = { -- Arcane Explosion(Rank 5)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 315,
        effects = {
            [1] = {
                effectType = 2,
                min = 186,
                max = 203,
                perLevel = 1.1,
                coef = 0.214,
            },
        }
    },
    [10202] = { -- Arcane Explosion(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 390,
        effects = {
            [1] = {
                effectType = 2,
                min = 243,
                max = 264,
                perLevel = 1.3,
                coef = 0.214,
            },
        }
    },
    [10205] = { -- Scorch(Rank 5)
        spellLevel = 46,
        maxLevel = 50,
        baseCost = 115,
        effects = {
            [1] = {
                effectType = 2,
                min = 162,
                max = 193,
                perLevel = 1.7,
                coef = 0.429,
            },
        }
    },
    [10206] = { -- Scorch(Rank 6)
        spellLevel = 52,
        maxLevel = 56,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 2,
                min = 200,
                max = 240,
                perLevel = 1.9,
                coef = 0.429,
            },
        }
    },
    [10207] = { -- Scorch(Rank 7)
        spellLevel = 58,
        maxLevel = 62,
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 2,
                min = 233,
                max = 276,
                perLevel = 2.1,
                coef = 0.429,
            },
        }
    },
    [10211] = { -- Arcane Missiles(Rank 6)
        spellLevel = 48,
        maxLevel = 52,
        duration = 5,
        baseCost = 500,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 151,
                perLevel = 0.8,
                coef = 0.286,
            },
        }
    },
    [10212] = { -- Arcane Missiles(Rank 7)
        spellLevel = 56,
        maxLevel = 60,
        duration = 5,
        baseCost = 595,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 192,
                perLevel = 0.9,
                coef = 0.286,
            },
        }
    },
    [10215] = { -- Flamestrike(Rank 5)
        spellLevel = 48,
        maxLevel = 53,
        duration = 8,
        baseCost = 815,
        effects = {
            [1] = {
                effectType = 2,
                min = 291,
                max = 360,
                perLevel = 1.5,
                coef = 0.236,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 66,
                coef = 0.03,
            },
        }
    },
    [10216] = { -- Flamestrike(Rank 6)
        spellLevel = 56,
        maxLevel = 61,
        duration = 8,
        baseCost = 990,
        effects = {
            [1] = {
                effectType = 2,
                min = 375,
                max = 460,
                perLevel = 1.7,
                coef = 0.236,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 85,
                coef = 0.03,
            },
        }
    },
    [10223] = { -- Fire Ward(Rank 4)
        spellLevel = 50,
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
    [10225] = { -- Fire Ward(Rank 5)
        spellLevel = 60,
        maxLevel = 68,
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
    [10230] = { -- Frost Nova(Rank 4)
        spellLevel = 54,
        maxLevel = 59,
        duration = 8,
        baseCost = 145,
        effects = {
            [1] = {
                effectType = 2,
                min = 71,
                max = 80,
                perLevel = 0.5,
                coef = 0.043,
            },
        }
    },
    [11113] = { -- Blast Wave(Rank 1)
        spellLevel = 30,
        maxLevel = 36,
        duration = 6,
        baseCost = 215,
        effects = {
            [1] = {
                effectType = 2,
                min = 154,
                max = 187,
                perLevel = 1,
                coef = 0.193,
            },
        }
    },
    [11366] = { -- Pyroblast(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 12,
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 2,
                min = 141,
                max = 188,
                perLevel = 1.9,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 14,
                coef = 0.05,
            },
        }
    },
    [11426] = { -- Ice Barrier(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        duration = 60,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 438,
                perLevel = 2.8,
                coef = 0.3,
            },
        }
    },
    [12505] = { -- Pyroblast(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        duration = 12,
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 2,
                min = 180,
                max = 237,
                perLevel = 2.2,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 18,
                coef = 0.05,
            },
        }
    },
    [12522] = { -- Pyroblast(Rank 3)
        spellLevel = 30,
        maxLevel = 36,
        duration = 12,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 2,
                min = 255,
                max = 328,
                perLevel = 2.6,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 24,
                coef = 0.05,
            },
        }
    },
    [12523] = { -- Pyroblast(Rank 4)
        spellLevel = 36,
        maxLevel = 42,
        duration = 12,
        baseCost = 240,
        effects = {
            [1] = {
                effectType = 2,
                min = 329,
                max = 420,
                perLevel = 3,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 31,
                coef = 0.05,
            },
        }
    },
    [12524] = { -- Pyroblast(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 12,
        baseCost = 285,
        effects = {
            [1] = {
                effectType = 2,
                min = 407,
                max = 516,
                perLevel = 3.4,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 39,
                coef = 0.05,
            },
        }
    },
    [12525] = { -- Pyroblast(Rank 6)
        spellLevel = 48,
        maxLevel = 54,
        duration = 12,
        baseCost = 335,
        effects = {
            [1] = {
                effectType = 2,
                min = 503,
                max = 632,
                perLevel = 3.8,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 47,
                coef = 0.05,
            },
        }
    },
    [12526] = { -- Pyroblast(Rank 7)
        spellLevel = 54,
        maxLevel = 60,
        duration = 12,
        baseCost = 385,
        effects = {
            [1] = {
                effectType = 2,
                min = 600,
                max = 751,
                perLevel = 4.2,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 57,
                coef = 0.05,
            },
        }
    },
    [13018] = { -- Blast Wave(Rank 2)
        spellLevel = 36,
        maxLevel = 42,
        duration = 6,
        baseCost = 270,
        effects = {
            [1] = {
                effectType = 2,
                min = 201,
                max = 242,
                perLevel = 1.2,
                coef = 0.193,
            },
        }
    },
    [13019] = { -- Blast Wave(Rank 3)
        spellLevel = 44,
        maxLevel = 50,
        duration = 6,
        baseCost = 355,
        effects = {
            [1] = {
                effectType = 2,
                min = 277,
                max = 330,
                perLevel = 1.4,
                coef = 0.193,
            },
        }
    },
    [13020] = { -- Blast Wave(Rank 4)
        spellLevel = 52,
        maxLevel = 58,
        duration = 6,
        baseCost = 450,
        effects = {
            [1] = {
                effectType = 2,
                min = 365,
                max = 434,
                perLevel = 1.6,
                coef = 0.193,
            },
        }
    },
    [13021] = { -- Blast Wave(Rank 5)
        spellLevel = 60,
        maxLevel = 66,
        duration = 6,
        baseCost = 545,
        effects = {
            [1] = {
                effectType = 2,
                min = 462,
                max = 545,
                perLevel = 1.9,
                coef = 0.193,
            },
        }
    },
    [13031] = { -- Ice Barrier(Rank 2)
        spellLevel = 46,
        maxLevel = 52,
        duration = 60,
        baseCost = 360,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 549,
                perLevel = 3.2,
                coef = 0.3,
            },
        }
    },
    [13032] = { -- Ice Barrier(Rank 3)
        spellLevel = 52,
        maxLevel = 58,
        duration = 60,
        baseCost = 420,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 678,
                perLevel = 3.6,
                coef = 0.3,
            },
        }
    },
    [13033] = { -- Ice Barrier(Rank 4)
        spellLevel = 58,
        maxLevel = 64,
        duration = 60,
        baseCost = 480,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 818,
                perLevel = 4,
                coef = 0.3,
            },
        }
    },
    [18809] = { -- Pyroblast(Rank 8)
        spellLevel = 60,
        maxLevel = 66,
        duration = 12,
        baseCost = 440,
        effects = {
            [1] = {
                effectType = 2,
                min = 708,
                max = 899,
                perLevel = 4.6,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 67,
                coef = 0.05,
            },
        }
    },
    [25304] = { -- Frostbolt(Rank 11)
        spellLevel = 60,
        maxLevel = 64,
        duration = 9,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 2,
                min = 515,
                max = 556,
                perLevel = 3.2,
                coef = 0.814,
            },
        }
    },
    [25306] = { -- Fireball(Rank 12)
        spellLevel = 60,
        maxLevel = 64,
        duration = 8,
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 2,
                min = 596,
                max = 761,
                perLevel = 3.8,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 19,
                coef = 0,
            },
        }
    },
    [25345] = { -- Arcane Missiles(Rank 8)
        spellLevel = 60,
        maxLevel = 64,
        duration = 5,
        baseCost = 655,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 230,
                perLevel = 1,
                coef = 0.286,
            },
        }
    },
    [27070] = { -- Fireball(Rank 13)
        spellLevel = 66,
        maxLevel = 70,
        duration = 8,
        baseCost = 425,
        effects = {
            [1] = {
                effectType = 2,
                min = 633,
                max = 806,
                perLevel = 4,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 21,
                coef = 0,
            },
        }
    },
    [27071] = { -- Frostbolt(Rank 12)
        spellLevel = 63,
        maxLevel = 67,
        duration = 9,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 2,
                min = 536,
                max = 579,
                perLevel = 3.2,
                coef = 0.814,
            },
        }
    },
    [27072] = { -- Frostbolt(Rank 13)
        spellLevel = 69,
        maxLevel = 73,
        duration = 9,
        baseCost = 330,
        effects = {
            [1] = {
                effectType = 2,
                min = 597,
                max = 644,
                perLevel = 3.5,
                coef = 0.814,
            },
        }
    },
    [27073] = { -- Scorch(Rank 8)
        spellLevel = 65,
        maxLevel = 69,
        baseCost = 165,
        effects = {
            [1] = {
                effectType = 2,
                min = 269,
                max = 318,
                perLevel = 2.3,
                coef = 0.429,
            },
        }
    },
    [27074] = { -- Scorch(Rank 9)
        spellLevel = 70,
        maxLevel = 74,
        baseCost = 180,
        effects = {
            [1] = {
                effectType = 2,
                min = 305,
                max = 362,
                perLevel = 2.5,
                coef = 0.429,
            },
        }
    },
    [27075] = { -- Arcane Missiles(Rank 9)
        spellLevel = 64,
        maxLevel = 68,
        duration = 5,
        baseCost = 685,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 240,
                perLevel = 1.1,
                coef = 0.286,
            },
        }
    },
    [27078] = { -- Fire Blast(Rank 8)
        spellLevel = 61,
        maxLevel = 66,
        baseCost = 400,
        effects = {
            [1] = {
                effectType = 2,
                min = 539,
                max = 638,
                perLevel = 3.3,
                coef = 0.429,
            },
        }
    },
    [27079] = { -- Fire Blast(Rank 9)
        spellLevel = 70,
        maxLevel = 75,
        baseCost = 465,
        effects = {
            [1] = {
                effectType = 2,
                min = 664,
                max = 787,
                perLevel = 3.7,
                coef = 0.429,
            },
        }
    },
    [27080] = { -- Arcane Explosion(Rank 7)
        spellLevel = 62,
        maxLevel = 67,
        baseCost = 465,
        effects = {
            [1] = {
                effectType = 2,
                min = 306,
                max = 331,
                perLevel = 1.5,
                coef = 0.214,
            },
        }
    },
    [27082] = { -- Arcane Explosion(Rank 8)
        spellLevel = 70,
        maxLevel = 75,
        baseCost = 545,
        effects = {
            [1] = {
                effectType = 2,
                min = 377,
                max = 408,
                perLevel = 1.6,
                coef = 0.214,
            },
        }
    },
    [27085] = { -- Blizzard(Rank 7)
        spellLevel = 68,
        maxLevel = 73,
        duration = 8,
        baseCost = 1645,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 184,
                perLevel = 0.4,
                coef = 0.143,
            },
        }
    },
    [27086] = { -- Flamestrike(Rank 7)
        spellLevel = 64,
        maxLevel = 69,
        duration = 8,
        baseCost = 1175,
        effects = {
            [1] = {
                effectType = 2,
                min = 471,
                max = 576,
                perLevel = 1.9,
                coef = 0.236,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 106,
                coef = 0.03,
            },
        }
    },
    [27087] = { -- Cone of Cold(Rank 6)
        spellLevel = 65,
        maxLevel = 70,
        duration = 8,
        baseCost = 645,
        effects = {
            [1] = {
                effectType = 2,
                min = 410,
                max = 449,
                perLevel = 1.7,
                coef = 0.193,
            },
        }
    },
    [27088] = { -- Frost Nova(Rank 5)
        spellLevel = 67,
        maxLevel = 74,
        duration = 8,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
                min = 99,
                max = 112,
                perLevel = 0.5,
                coef = 0.043,
            },
        }
    },
    [27128] = { -- Fire Ward(Rank 6)
        spellLevel = 69,
        maxLevel = 78,
        duration = 30,
        baseCost = 360,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 1125,
                coef = 0,
            },
        }
    },
    [27131] = { -- Mana Shield(Rank 7)
        spellLevel = 68,
        maxLevel = 75,
        duration = 60,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 715,
                coef = 0.5,
            },
        }
    },
    [27132] = { -- Pyroblast(Rank 9)
        spellLevel = 66,
        maxLevel = 72,
        duration = 12,
        baseCost = 460,
        effects = {
            [1] = {
                effectType = 2,
                min = 846,
                max = 1075,
                perLevel = 5,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 78,
                coef = 0.05,
            },
        }
    },
    [27133] = { -- Blast Wave(Rank 6)
        spellLevel = 65,
        maxLevel = 71,
        duration = 6,
        baseCost = 555,
        effects = {
            [1] = {
                effectType = 2,
                min = 533,
                max = 628,
                perLevel = 2.1,
                coef = 0.193,
            },
        }
    },
    [27134] = { -- Ice Barrier(Rank 5)
        spellLevel = 64,
        maxLevel = 70,
        duration = 60,
        baseCost = 495,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 925,
                perLevel = 4.4,
                coef = 0.3,
            },
        }
    },
    [28609] = { -- Frost Ward(Rank 5)
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
    [30451] = { -- Arcane Blast(Rank 1)
        spellLevel = 64,
        maxLevel = 68,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 2,
                min = 648,
                max = 753,
                perLevel = 5,
                coef = 0.714,
            },
        }
    },
    [30455] = { -- Ice Lance(Rank 1)
        spellLevel = 66,
        maxLevel = 70,
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 2,
                min = 161,
                max = 188,
                perLevel = 3.15,
                coef = 0.143,
            },
        }
    },
    [30482] = { -- Molten Armor(Rank 1)
        spellLevel = 62,
        maxLevel = 0,
        duration = 1800,
        baseCost = 630,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = -1,
                min = 75,
                coef = 0,
            },
        }
    },
    [31661] = { -- Dragon's Breath(Rank 1)
        spellLevel = 50,
        maxLevel = 58,
        duration = 3,
        baseCost = 475,
        effects = {
            [1] = {
                effectType = 2,
                min = 370,
                max = 431,
                perLevel = 1.5,
                coef = 0.193,
            },
        }
    },
    [32796] = { -- Frost Ward(Rank 6)
        spellLevel = 70,
        maxLevel = 78,
        duration = 30,
        baseCost = 360,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 1125,
                coef = 0,
            },
        }
    },
    [33041] = { -- Dragon's Breath(Rank 2)
        spellLevel = 56,
        maxLevel = 62,
        duration = 3,
        baseCost = 575,
        effects = {
            [1] = {
                effectType = 2,
                min = 454,
                max = 527,
                perLevel = 1.6,
                coef = 0.193,
            },
        }
    },
    [33042] = { -- Dragon's Breath(Rank 3)
        spellLevel = 64,
        maxLevel = 70,
        duration = 3,
        baseCost = 660,
        effects = {
            [1] = {
                effectType = 2,
                min = 574,
                max = 667,
                perLevel = 1.8,
                coef = 0.193,
            },
        }
    },
    [33043] = { -- Dragon's Breath(Rank 4)
        spellLevel = 70,
        maxLevel = 76,
        duration = 3,
        baseCost = 700,
        effects = {
            [1] = {
                effectType = 2,
                min = 680,
                max = 791,
                perLevel = 2,
                coef = 0.193,
            },
        }
    },
    [33405] = { -- Ice Barrier(Rank 6)
        spellLevel = 70,
        maxLevel = 76,
        duration = 60,
        baseCost = 565,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 1075,
                perLevel = 4.8,
                coef = 0.3,
            },
        }
    },
    [33933] = { -- Blast Wave(Rank 7)
        spellLevel = 70,
        maxLevel = 76,
        duration = 6,
        baseCost = 620,
        effects = {
            [1] = {
                effectType = 2,
                min = 616,
                max = 725,
                perLevel = 2.3,
                coef = 0.193,
            },
        }
    },
    [33938] = { -- Pyroblast(Rank 10)
        spellLevel = 70,
        maxLevel = 76,
        duration = 12,
        baseCost = 500,
        effects = {
            [1] = {
                effectType = 2,
                min = 939,
                max = 1192,
                perLevel = 5.4,
                coef = 1.15,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 89,
                coef = 0.05,
            },
        }
    },
    [38692] = { -- Fireball(Rank 14)
        spellLevel = 70,
        maxLevel = 74,
        duration = 8,
        baseCost = 465,
        effects = {
            [1] = {
                effectType = 2,
                min = 717,
                max = 914,
                perLevel = 4.2,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                min = 21,
                coef = 0,
            },
        }
    },
    [38697] = { -- Frostbolt(Rank 14)
        spellLevel = 70,
        maxLevel = 74,
        duration = 9,
        baseCost = 345,
        effects = {
            [1] = {
                effectType = 2,
                min = 630,
                max = 681,
                perLevel = 3.8,
                coef = 0.814,
            },
        }
    },
    [38699] = { -- Arcane Missiles(Rank 10)
        spellLevel = 64,
        maxLevel = 68,
        duration = 5,
        baseCost = 740,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 260,
                perLevel = 1.2,
                coef = 0.286,
            },
        }
    },
    [38704] = { -- Arcane Missiles(Rank 11)
        spellLevel = 64,
        maxLevel = 68,
        duration = 5,
        baseCost = 785,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                min = 280,
                perLevel = 1.3,
                coef = 0.286,
            },
        }
    },
};

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
            21230, -- "Fireball
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
            43515, -- Cosmetic - Ashli's Fireball
            43520, -- Cosmetic - Ashli's Fireball 01
            43525, -- Cosmetic - Ashli's Fireball 02
            43993, -- Harpoon(Rank 1)
            49512, -- Fireball
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
            43245, -- Fire Blast
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
            21229, -- "Frostbolt
            25304, -- Frostbolt(Rank 11)
            27071, -- Frostbolt(Rank 12)
            27072, -- Frostbolt(Rank 13)
            38697, -- Frostbolt(Rank 14)
            46580, -- TEST - Frostfire 2(Rank 1)
        },
        [64] = {
            122, -- Frost Nova(Rank 1)
            865, -- Frost Nova(Rank 2)
            6131, -- Frost Nova(Rank 3)
            10230, -- Frost Nova(Rank 4)
            27088, -- Frost Nova(Rank 5)
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
            28863, -- Void Zone
            30539, -- Void Zone
            30744, -- Lesser Shadow Fissure
            32366, -- Summon Void Zone
            36119, -- Void Zone
            37014, -- Void Zone
            37063, -- Void Zone
            39893, -- Ron's Test Spell #3
            39894, -- Ron's Test Spell #2
            42198, -- Blizzard(Rank 7)
            42208, -- Blizzard(Rank 1)
            42209, -- Blizzard(Rank 2)
            42210, -- Blizzard(Rank 3)
            42211, -- Blizzard(Rank 4)
            42212, -- Blizzard(Rank 5)
            42213, -- Blizzard(Rank 6)
            44178, -- Blizzard
            46195, -- Blizzard
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
            46984, -- Cone of Cold
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
        },
        [65536] = {
            1953, -- Blink
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
            43245, -- Fire Blast
            44137, -- Rocket Launch
            44138, -- Rocket Launch
            46187, -- Rocket Launch
            46188, -- Rocket Launch
        },
        [262144] = {
            30482, -- Molten Armor(Rank 1)
            35915, -- Molten Armor
            35917, -- Fiery Intellect
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
            25304, -- Frostbolt(Rank 11)
            25641, -- Frost Ward
            27071, -- Frostbolt(Rank 12)
            27072, -- Frostbolt(Rank 13)
            27085, -- Blizzard(Rank 7)
            27087, -- Cone of Cold(Rank 6)
            27088, -- Frost Nova(Rank 5)
            27124, -- Ice Armor(Rank 5)
            27618, -- Blizzard(Rank 6)
            27619, -- Ice Block
            28609, -- Frost Ward(Rank 5)
            28863, -- Void Zone
            30095, -- Cone of Cold
            30539, -- Void Zone
            30744, -- Lesser Shadow Fissure
            31256, -- Frost Armor
            31687, -- Summon Water Elemental
            32366, -- Summon Void Zone
            32796, -- Frost Ward(Rank 6)
            35188, -- Chilling Touch
            36119, -- Void Zone
            36881, -- Ice Armor
            37014, -- Void Zone
            37063, -- Void Zone
            37265, -- Cone of Cold
            38384, -- Cone of Cold
            38644, -- Cone of Cold
            38697, -- Frostbolt(Rank 14)
            39893, -- Ron's Test Spell #3
            39894, -- Ron's Test Spell #2
            42198, -- Blizzard(Rank 7)
            42208, -- Blizzard(Rank 1)
            42209, -- Blizzard(Rank 2)
            42210, -- Blizzard(Rank 3)
            42211, -- Blizzard(Rank 4)
            42212, -- Blizzard(Rank 5)
            42213, -- Blizzard(Rank 6)
            44178, -- Blizzard
            46195, -- Blizzard
            46580, -- TEST - Frostfire 2(Rank 1)
            46744, -- Chilling Touch
            46984, -- Cone of Cold
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
            25304, -- Frostbolt(Rank 11)
            27071, -- Frostbolt(Rank 12)
            27072, -- Frostbolt(Rank 13)
            27087, -- Cone of Cold(Rank 6)
            30095, -- Cone of Cold
            31257, -- Chilled
            34752, -- Freezing Touch
            37265, -- Cone of Cold
            38384, -- Cone of Cold
            38644, -- Cone of Cold
            38697, -- Frostbolt(Rank 14)
            46580, -- TEST - Frostfire 2(Rank 1)
            46745, -- Chilling Touch
            46984, -- Cone of Cold
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
        },
        [8388608] = {
            11113, -- Blast Wave(Rank 1)
            13018, -- Blast Wave(Rank 2)
            13019, -- Blast Wave(Rank 3)
            13020, -- Blast Wave(Rank 4)
            13021, -- Blast Wave(Rank 5)
            27133, -- Blast Wave(Rank 6)
            31661, -- Dragon's Breath(Rank 1)
            33041, -- Dragon's Breath(Rank 2)
            33042, -- Dragon's Breath(Rank 3)
            33043, -- Dragon's Breath(Rank 4)
            33933, -- Blast Wave(Rank 7)
        },
        [16777216] = {
            118, -- Polymorph(Rank 1)
            12824, -- Polymorph(Rank 2)
            12825, -- Polymorph(Rank 3)
            12826, -- Polymorph(Rank 4)
            28271, -- Polymorph(Rank 1: Turtle)
            28272, -- Polymorph(Rank 1: Pig)
            32826, -- Polymorph Cast Visual(Rank 1)
            32990, -- Enchanting Cast Visual(Rank 1)
            32991, -- Nature Cast Visual(Rank 1)
            32992, -- Ice Cast Visual(Rank 1)
            32993, -- Fire Cast Visual(Rank 1)
            45461, -- Fire Channel Visual(Rank 1)
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
        },
        [67108864] = {
            12051, -- Evocation
            34679, -- Archmage Vargoth's Ritual
            36506, -- Energy Charge
        },
        [134217728] = {
            12654, -- Ignite
        },
        [268435456] = {
            6117, -- Mage Armor(Rank 1)
            22782, -- Mage Armor(Rank 2)
            22783, -- Mage Armor(Rank 3)
            27125, -- Mage Armor(Rank 4)
        },
        [536870912] = {
            30451, -- Arcane Blast(Rank 1)
            35927, -- Arcane Blast
            38881, -- Arcane Blast
        },
        [1073741824] = {
            587, -- Conjure Food(Rank 1)
            597, -- Conjure Food(Rank 2)
            759, -- Conjure Mana Agate
            990, -- Conjure Food(Rank 3)
            3552, -- Conjure Mana Jade
            5504, -- Conjure Water(Rank 1)
            5505, -- Conjure Water(Rank 2)
            5506, -- Conjure Water(Rank 3)
            6127, -- Conjure Water(Rank 4)
            6129, -- Conjure Food(Rank 4)
            10053, -- Conjure Mana Citrine
            10054, -- Conjure Mana Ruby
            10138, -- Conjure Water(Rank 5)
            10139, -- Conjure Water(Rank 6)
            10140, -- Conjure Water(Rank 7)
            10144, -- Conjure Food(Rank 5)
            10145, -- Conjure Food(Rank 6)
            27090, -- Conjure Water(Rank 9)
            27101, -- Conjure Mana Emerald
            28612, -- Conjure Food(Rank 7)
            29975, -- Conjure Water(Rank 8)
            33717, -- Conjure Food(Rank 8)
            36412, -- Summon Nether Spikes
            36879, -- Conjure Water
            36883, -- Conjure Mana Diamond
            37420, -- Conjure Water(Rank 8)
            43521, -- Create Darkrune
        },
        [2147483648] = {
            66, -- Invisibility
            130, -- Slow Fall
            475, -- Remove Lesser Curse
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
            49358, -- Teleport: Stonard
            49359, -- Teleport: Theramore
            49360, -- Portal: Theramore
            49361, -- Portal: Stonard
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
            45438, -- Ice Block
            46604, -- Ice Block
        },
        [2] = {
            12536, -- Clearcasting
        },
        [4] = {
            11958, -- Cold Snap
        },
        [8] = {
            34913, -- Molten Armor(Rank 1)
            35916, -- Molten Armor
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
        },
        [512] = {
            11071, -- Frostbite(Rank 1)
            12496, -- Frostbite(Rank 2)
            12497, -- Frostbite(Rank 3)
        },
        [16384] = {
            12472, -- Icy Veins
        },
    },
    [3] = {
    },
    [4] = {
    },
};


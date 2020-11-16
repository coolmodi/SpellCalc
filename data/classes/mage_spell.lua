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
        isBinary = true,
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
};

_addon.spellRankInfo = {
    [10] = { -- Blizzard(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 25,
                perLevel = 0.1,
                coef = 0.042,
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
                coef = 0.129,
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
        maxLevel = 0,
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
                coef = 0.029,
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
                coef = 0.111,
            },
        }
    },
    [1463] = { -- Mana Shield(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 60,
        baseCost = 40,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 120,
                coef = 0,
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
                coef = 0.134,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 12,
                coef = 0.017,
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
                coef = 0.157,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 22,
                coef = 0.02,
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
                coef = 0.132,
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
                coef = 0.204,
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
                coef = 0.24,
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
                coef = 0.029,
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
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 44,
                perLevel = 0.2,
                coef = 0.042,
            },
        }
    },
    [6143] = { -- Frost Ward(Rank 1)
        spellLevel = 22,
        maxLevel = 0,
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
                coef = 0.24,
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
                coef = 0.24,
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
                coef = 0.157,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 35,
                coef = 0.02,
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
                coef = 0.157,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 49,
                coef = 0.02,
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
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 65,
                perLevel = 0.2,
                coef = 0.042,
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
                coef = 0.143,
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
                coef = 0.143,
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
                coef = 0.143,
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
        maxLevel = 0,
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
        maxLevel = 0,
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
        maxLevel = 0,
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
        maxLevel = 0,
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
                coef = 0.129,
            },
        }
    },
    [8494] = { -- Mana Shield(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 60,
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 210,
                coef = 0,
            },
        }
    },
    [8495] = { -- Mana Shield(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 60,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 300,
                coef = 0,
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
                coef = 0.129,
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
                coef = 0.129,
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
                coef = 0.129,
            },
        }
    },
    [10177] = { -- Frost Ward(Rank 4)
        spellLevel = 52,
        maxLevel = 0,
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
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 90,
                perLevel = 0.3,
                coef = 0.042,
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
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 117,
                perLevel = 0.3,
                coef = 0.042,
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
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                min = 149,
                perLevel = 0.4,
                coef = 0.042,
            },
        }
    },
    [10191] = { -- Mana Shield(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 60,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 390,
                coef = 0,
            },
        }
    },
    [10192] = { -- Mana Shield(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 60,
        baseCost = 120,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 480,
                coef = 0,
            },
        }
    },
    [10193] = { -- Mana Shield(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 60,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 97,
                min = 570,
                coef = 0,
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
                coef = 0.143,
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
                coef = 0.143,
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
                coef = 0.24,
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
                coef = 0.24,
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
                coef = 0.157,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 66,
                coef = 0.02,
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
                coef = 0.157,
            },
            [2] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 2,
                min = 85,
                coef = 0.02,
            },
        }
    },
    [10223] = { -- Fire Ward(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
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
        maxLevel = 0,
        duration = 30,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 920,
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
                coef = 0.029,
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
                coef = 0.129,
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
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 14,
                coef = 0.15,
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
                coef = 0.1,
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
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 18,
                coef = 0.15,
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
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 24,
                coef = 0.15,
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
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 31,
                coef = 0.15,
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
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 39,
                coef = 0.15,
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
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 47,
                coef = 0.15,
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
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 57,
                coef = 0.15,
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
                coef = 0.129,
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
                coef = 0.129,
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
                coef = 0.129,
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
                coef = 0.129,
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
                coef = 0.1,
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
                coef = 0.1,
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
                coef = 0.1,
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
                min = 716,
                max = 891,
                perLevel = 4.6,
                coef = 1,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                min = 67,
                coef = 0.15,
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
                coef = 0.24,
            },
        }
    },
    [28609] = { -- Frost Ward(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 30,
        baseCost = 320,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                min = 920,
                coef = 0,
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
            21229, -- "Frostbolt
            25304, -- Frostbolt(Rank 11)
            29163, -- Copy of Frostbolt(Rank 1)
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
            25345, -- Arcane Missiles(Rank 8)
            28270, -- Polymorph: Cow
            28271, -- Polymorph(Turtle)
            28272, -- Polymorph(Pig)
            29124, -- Polymorph
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
        },
        [268435456] = {
            6117, -- Mage Armor(Rank 1)
            22782, -- Mage Armor(Rank 2)
            22783, -- Mage Armor(Rank 3)
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
        },
    },
    [2] = {
    },
    [3] = {
    },
    [4] = {
    },
};


-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(10)] = { -- Blizzard
        school = 5,
        isChannel = true,
    },
    [GetSpellInfo(116)] = { -- Frostbolt
        school = 5,
        isBinary = true,
    },
    [GetSpellInfo(120)] = { -- Cone of Cold
        school = 5,
        isBinary = true,
    },
    [GetSpellInfo(122)] = { -- Frost Nova
        school = 5,
        isBinary = true,
    },
    [GetSpellInfo(133)] = { -- Fireball
        school = 3,
    },
    [GetSpellInfo(543)] = { -- Fire Ward
        school = 3,
        isAbsorbShield = true,
        forceSchoolScaling = true,
    },
    [GetSpellInfo(1449)] = { -- Arcane Explosion
        school = 7,
    },
    [GetSpellInfo(1463)] = { -- Mana Shield
        school = 7,
        isAbsorbShield = true,
        forceSchoolScaling = true,
    },
    [GetSpellInfo(2120)] = { -- Flamestrike
        school = 3,
    },
    [GetSpellInfo(2136)] = { -- Fire Blast
        school = 3,
    },
    [GetSpellInfo(2948)] = { -- Scorch
        school = 3,
    },
    [GetSpellInfo(5143)] = { -- Arcane Missiles
        school = 7,
        isChannel = true,
        forceCanCrit = true,
    },
    [GetSpellInfo(6143)] = { -- Frost Ward
        school = 5,
        isAbsorbShield = true,
        forceSchoolScaling = true,
    },
    [GetSpellInfo(11113)] = { -- Blast Wave
        school = 3,
        isBinary = true,
    },
    [GetSpellInfo(11426)] = { -- Ice Barrier
        school = 5,
        isAbsorbShield = true,
        forceSchoolScaling = true,
    },
    [GetSpellInfo(12505)] = { -- Pyroblast
        school = 3,
    },
};

_addon.spellRankInfo = {
    [10] = { -- Blizzard(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                min = 14,
                max = 23,
                perLevel = 0.6,
                coef = 0.123,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 31,
                max = 46,
                perLevel = 0.8,
                coef = 0.271,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 53,
                max = 74,
                perLevel = 1,
                coef = 0.5,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                min = 165,
                coef = 0,
            },
        }
    },
    [837] = { -- Frostbolt(Rank 3)
        spellLevel = 14,
        maxLevel = 18,
        duration = 6,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                min = 120,
                coef = 0,
            },
        }
    },
    [2120] = { -- Flamestrike(Rank 1)
        spellLevel = 16,
        maxLevel = 21,
        duration = 8,
        effects = {
            [1] = {
                min = 52,
                max = 69,
                perLevel = 0.6,
                coef = 0.134,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 96,
                max = 123,
                perLevel = 0.8,
                coef = 0.157,
            },
            [2] = {
                isDuration = true,
                tickPeriod = 2,
                min = 22,
                coef = 0.02,
            },
        }
    },
    [2136] = { -- Fire Blast(Rank 1)
        spellLevel = 6,
        maxLevel = 11,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                min = 84,
                max = 117,
                perLevel = 1.3,
                coef = 0.793,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 165,
                coef = 0,
            },
        }
    },
    [7322] = { -- Frostbolt(Rank 4)
        spellLevel = 20,
        maxLevel = 24,
        duration = 7,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                min = 139,
                max = 188,
                perLevel = 1.8,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 199,
                max = 266,
                perLevel = 2.1,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 255,
                max = 336,
                perLevel = 2.4,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 154,
                max = 193,
                perLevel = 1,
                coef = 0.157,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 220,
                max = 273,
                perLevel = 1.3,
                coef = 0.157,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                min = 290,
                coef = 0,
            },
        }
    },
    [8458] = { -- Fire Ward(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 470,
                coef = 0,
            },
        }
    },
    [8461] = { -- Frost Ward(Rank 2)
        spellLevel = 32,
        maxLevel = 0,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 290,
                coef = 0,
            },
        }
    },
    [8462] = { -- Frost Ward(Rank 3)
        spellLevel = 42,
        maxLevel = 0,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 470,
                coef = 0,
            },
        }
    },
    [8492] = { -- Cone of Cold(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                min = 210,
                coef = 0,
            },
        }
    },
    [8495] = { -- Mana Shield(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 60,
        effects = {
            [1] = {
                isHeal = true,
                min = 300,
                coef = 0,
            },
        }
    },
    [10148] = { -- Fireball(Rank 8)
        spellLevel = 42,
        maxLevel = 46,
        duration = 8,
        effects = {
            [1] = {
                min = 318,
                max = 415,
                perLevel = 2.7,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 392,
                max = 507,
                perLevel = 3,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 475,
                max = 610,
                perLevel = 3.4,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 561,
                max = 716,
                perLevel = 3.7,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
                min = 675,
                coef = 0,
            },
        }
    },
    [10179] = { -- Frostbolt(Rank 8)
        spellLevel = 44,
        maxLevel = 48,
        duration = 9,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 390,
                coef = 0,
            },
        }
    },
    [10192] = { -- Mana Shield(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 60,
        effects = {
            [1] = {
                isHeal = true,
                min = 480,
                coef = 0,
            },
        }
    },
    [10193] = { -- Mana Shield(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 60,
        effects = {
            [1] = {
                isHeal = true,
                min = 570,
                coef = 0,
            },
        }
    },
    [10197] = { -- Fire Blast(Rank 6)
        spellLevel = 46,
        maxLevel = 51,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 291,
                max = 360,
                perLevel = 1.5,
                coef = 0.157,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 375,
                max = 460,
                perLevel = 1.7,
                coef = 0.157,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 675,
                coef = 0,
            },
        }
    },
    [10225] = { -- Fire Ward(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 30,
        effects = {
            [1] = {
                isHeal = true,
                min = 920,
                coef = 0,
            },
        }
    },
    [10230] = { -- Frost Nova(Rank 4)
        spellLevel = 54,
        maxLevel = 59,
        duration = 8,
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                min = 154,
                max = 187,
                perLevel = 1,
                coef = 0.129,
            },
        }
    },
    [11426] = { -- Ice Barrier(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        duration = 60,
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                min = 180,
                max = 237,
                perLevel = 2.2,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 255,
                max = 328,
                perLevel = 2.6,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 329,
                max = 420,
                perLevel = 3,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 407,
                max = 516,
                perLevel = 3.4,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 503,
                max = 632,
                perLevel = 3.8,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                min = 600,
                max = 751,
                perLevel = 4.2,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                isHeal = true,
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
        effects = {
            [1] = {
                min = 716,
                max = 891,
                perLevel = 4.6,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
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
        effects = {
            [1] = {
                min = 596,
                max = 761,
                perLevel = 3.8,
                coef = 1,
            },
            [2] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isDuration = true,
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
        effects = {
            [1] = {
                isHeal = true,
                min = 920,
                coef = 0,
            },
        }
    },
};


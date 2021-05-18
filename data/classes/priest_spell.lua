-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(6603)] = { -- Attack
        school = 1,
        defType = 2,
    },
    [GetSpellInfo(585)] = { -- Smite
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2050)] = { -- Lesser Heal
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(589)] = { -- Shadow Word: Pain
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(17)] = { -- Power Word: Shield
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(139)] = { -- Renew
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(8092)] = { -- Mind Blast
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(13908)] = { -- Desperate Prayer
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(10797)] = { -- Starshards
        school = 7,
        defType = 1,
    },
    [GetSpellInfo(2652)] = { -- Touch of Weakness
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(2054)] = { -- Heal
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2061)] = { -- Flash Heal
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(14914)] = { -- Holy Fire
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2944)] = { -- Devouring Plague
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(18137)] = { -- Shadowguard
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(15237)] = { -- Holy Nova
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(15407)] = { -- Mind Flay
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
    },
    [GetSpellInfo(596)] = { -- Prayer of Healing
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(2060)] = { -- Greater Heal
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(37563)] = { -- Renewal
        school = 2,
        defType = 0,
    },
    [GetSpellInfo(34861)] = { -- Circle of Healing
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(34914)] = { -- Vampiric Touch
        school = 6,
        defType = 1,
    },
    [GetSpellInfo(44041)] = { -- Chastise
        school = 2,
        isBinary = true,
        GCD = 0.5,
        defType = 1,
    },
    [GetSpellInfo(32546)] = { -- Binding Heal
        school = 2,
        defType = 1,
    },
    [GetSpellInfo(33076)] = { -- Prayer of Mending
        school = 2,
        defType = 0,
        noCrit = true,
        forceHeal = true,
    },
    [GetSpellInfo(32379)] = { -- Shadow Word: Death
        school = 6,
        defType = 1,
    },
};

_addon.spellRankInfo = {
    [17] = { -- Power Word: Shield(Rank 1)
        spellLevel = 6,
        maxLevel = 11,
        duration = 30,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 44,
                valueRange = 0,
                valuePerLevel = 0.8,
                coef = 0.1425,
            },
        }
    },
    [139] = { -- Renew(Rank 1)
        spellLevel = 8,
        maxLevel = 13,
        duration = 15,
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 9,
                valueRange = 0,
                coef = 0.11,
            },
        }
    },
    [585] = { -- Smite(Rank 1)
        spellLevel = 1,
        maxLevel = 6,
        baseCost = 20,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 4,
                valuePerLevel = 0.5,
                coef = 0.123,
            },
        }
    },
    [589] = { -- Shadow Word: Pain(Rank 1)
        spellLevel = 4,
        maxLevel = 0,
        duration = 18,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 5,
                valueRange = 0,
                coef = 0.0732,
            },
        }
    },
    [591] = { -- Smite(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 6,
                valuePerLevel = 0.6,
                coef = 0.271,
            },
        }
    },
    [592] = { -- Power Word: Shield(Rank 2)
        spellLevel = 12,
        maxLevel = 17,
        duration = 30,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 88,
                valueRange = 0,
                valuePerLevel = 1.2,
                coef = 0.21,
            },
        }
    },
    [594] = { -- Shadow Word: Pain(Rank 2)
        spellLevel = 10,
        maxLevel = 0,
        duration = 18,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 11,
                valueRange = 0,
                coef = 0.114,
            },
        }
    },
    [596] = { -- Prayer of Healing(Rank 1)
        spellLevel = 30,
        maxLevel = 39,
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 301,
                valueRange = 20,
                valuePerLevel = 1.3,
                coef = 0.429,
            },
        }
    },
    [598] = { -- Smite(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 60,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 54,
                valueRange = 8,
                valuePerLevel = 0.9,
                coef = 0.554,
            },
        }
    },
    [600] = { -- Power Word: Shield(Rank 3)
        spellLevel = 18,
        maxLevel = 23,
        duration = 30,
        baseCost = 130,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 158,
                valueRange = 0,
                valuePerLevel = 1.6,
                coef = 0.2775,
            },
        }
    },
    [970] = { -- Shadow Word: Pain(Rank 3)
        spellLevel = 18,
        maxLevel = 0,
        duration = 18,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 22,
                valueRange = 0,
                coef = 0.169,
            },
        }
    },
    [984] = { -- Smite(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 91,
                valueRange = 14,
                valuePerLevel = 1.3,
                coef = 0.714,
            },
        }
    },
    [992] = { -- Shadow Word: Pain(Rank 4)
        spellLevel = 26,
        maxLevel = 0,
        duration = 18,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 39,
                valueRange = 0,
                coef = 0.183,
            },
        }
    },
    [996] = { -- Prayer of Healing(Rank 2)
        spellLevel = 40,
        maxLevel = 49,
        baseCost = 560,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 444,
                valueRange = 28,
                valuePerLevel = 1.6,
                coef = 0.429,
            },
        }
    },
    [1004] = { -- Smite(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 150,
                valueRange = 20,
                valuePerLevel = 1.6,
                coef = 0.714,
            },
        }
    },
    [2050] = { -- Lesser Heal(Rank 1)
        spellLevel = 1,
        maxLevel = 3,
        baseCost = 30,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 46,
                valueRange = 10,
                valuePerLevel = 0.9,
                coef = 0.123,
            },
        }
    },
    [2052] = { -- Lesser Heal(Rank 2)
        spellLevel = 4,
        maxLevel = 9,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 71,
                valueRange = 14,
                valuePerLevel = 1.1,
                coef = 0.229,
            },
        }
    },
    [2053] = { -- Lesser Heal(Rank 3)
        spellLevel = 10,
        maxLevel = 15,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 135,
                valueRange = 22,
                valuePerLevel = 1.6,
                coef = 0.446,
            },
        }
    },
    [2054] = { -- Heal(Rank 1)
        spellLevel = 16,
        maxLevel = 21,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 295,
                valueRange = 46,
                valuePerLevel = 2.4,
                coef = 0.729,
            },
        }
    },
    [2055] = { -- Heal(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 429,
                valueRange = 62,
                valuePerLevel = 3.2,
                coef = 0.857,
            },
        }
    },
    [2060] = { -- Greater Heal(Rank 1)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 370,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 899,
                valueRange = 114,
                valuePerLevel = 5.1,
                coef = 0.857,
            },
        }
    },
    [2061] = { -- Flash Heal(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 193,
                valueRange = 44,
                valuePerLevel = 1.9,
                coef = 0.429,
            },
        }
    },
    [2652] = { -- Touch of Weakness(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 600,
        baseCost = 25,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                valueBase = 8,
                valueRange = 0,
                coef = 0.067,
            },
        }
    },
    [2767] = { -- Shadow Word: Pain(Rank 5)
        spellLevel = 34,
        maxLevel = 0,
        duration = 18,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 61,
                valueRange = 0,
                coef = 0.183,
            },
        }
    },
    [2944] = { -- Devouring Plague(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 24,
        baseCost = 215,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 19,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [3747] = { -- Power Word: Shield(Rank 4)
        spellLevel = 24,
        maxLevel = 29,
        duration = 30,
        baseCost = 175,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 234,
                valueRange = 0,
                valuePerLevel = 2,
                coef = 0.3,
            },
        }
    },
    [6060] = { -- Smite(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 212,
                valueRange = 28,
                valuePerLevel = 2,
                coef = 0.714,
            },
        }
    },
    [6063] = { -- Heal(Rank 3)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 255,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 566,
                valueRange = 76,
                valuePerLevel = 4,
                coef = 0.857,
            },
        }
    },
    [6064] = { -- Heal(Rank 4)
        spellLevel = 34,
        maxLevel = 39,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 712,
                valueRange = 92,
                valuePerLevel = 4.5,
                coef = 0.857,
            },
        }
    },
    [6065] = { -- Power Word: Shield(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        duration = 30,
        baseCost = 210,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 301,
                valueRange = 0,
                valuePerLevel = 2.3,
                coef = 0.3,
            },
        }
    },
    [6066] = { -- Power Word: Shield(Rank 6)
        spellLevel = 36,
        maxLevel = 41,
        duration = 30,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 381,
                valueRange = 0,
                valuePerLevel = 2.6,
                coef = 0.3,
            },
        }
    },
    [6074] = { -- Renew(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        duration = 15,
        baseCost = 65,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.155,
            },
        }
    },
    [6075] = { -- Renew(Rank 3)
        spellLevel = 20,
        maxLevel = 25,
        duration = 15,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 35,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [6076] = { -- Renew(Rank 4)
        spellLevel = 26,
        maxLevel = 31,
        duration = 15,
        baseCost = 140,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 49,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [6077] = { -- Renew(Rank 5)
        spellLevel = 32,
        maxLevel = 37,
        duration = 15,
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 63,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [6078] = { -- Renew(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        duration = 15,
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 80,
                valueRange = 0,
                coef = 0.2,
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
    [8092] = { -- Mind Blast(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 39,
                valueRange = 4,
                valuePerLevel = 0.6,
                coef = 0.268,
            },
        }
    },
    [8102] = { -- Mind Blast(Rank 2)
        spellLevel = 16,
        maxLevel = 21,
        baseCost = 80,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 72,
                valueRange = 6,
                valuePerLevel = 0.9,
                coef = 0.364,
            },
        }
    },
    [8103] = { -- Mind Blast(Rank 3)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 110,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 112,
                valueRange = 8,
                valuePerLevel = 1.1,
                coef = 0.429,
            },
        }
    },
    [8104] = { -- Mind Blast(Rank 4)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 150,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 167,
                valueRange = 10,
                valuePerLevel = 1.4,
                coef = 0.429,
            },
        }
    },
    [8105] = { -- Mind Blast(Rank 5)
        spellLevel = 34,
        maxLevel = 39,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 217,
                valueRange = 14,
                valuePerLevel = 1.6,
                coef = 0.429,
            },
        }
    },
    [8106] = { -- Mind Blast(Rank 6)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 225,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 279,
                valueRange = 18,
                valuePerLevel = 1.9,
                coef = 0.429,
            },
        }
    },
    [9472] = { -- Flash Heal(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        baseCost = 155,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 258,
                valueRange = 56,
                valuePerLevel = 2.2,
                coef = 0.429,
            },
        }
    },
    [9473] = { -- Flash Heal(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 327,
                valueRange = 66,
                valuePerLevel = 2.5,
                coef = 0.429,
            },
        }
    },
    [9474] = { -- Flash Heal(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 215,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 400,
                valueRange = 78,
                valuePerLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [10797] = { -- Starshards(Rank 1)
        spellLevel = 10,
        maxLevel = 16,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 12,
                valueRange = 0,
                coef = 0.167,
            },
        }
    },
    [10892] = { -- Shadow Word: Pain(Rank 6)
        spellLevel = 42,
        maxLevel = 0,
        duration = 18,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 85,
                valueRange = 0,
                coef = 0.183,
            },
        }
    },
    [10893] = { -- Shadow Word: Pain(Rank 7)
        spellLevel = 50,
        maxLevel = 0,
        duration = 18,
        baseCost = 385,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 112,
                valueRange = 0,
                coef = 0.183,
            },
        }
    },
    [10894] = { -- Shadow Word: Pain(Rank 8)
        spellLevel = 58,
        maxLevel = 0,
        duration = 18,
        baseCost = 470,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 142,
                valueRange = 0,
                coef = 0.183,
            },
        }
    },
    [10898] = { -- Power Word: Shield(Rank 7)
        spellLevel = 42,
        maxLevel = 47,
        duration = 30,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 484,
                valueRange = 0,
                valuePerLevel = 3,
                coef = 0.3,
            },
        }
    },
    [10899] = { -- Power Word: Shield(Rank 8)
        spellLevel = 48,
        maxLevel = 53,
        duration = 30,
        baseCost = 355,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 605,
                valueRange = 0,
                valuePerLevel = 3.4,
                coef = 0.3,
            },
        }
    },
    [10900] = { -- Power Word: Shield(Rank 9)
        spellLevel = 54,
        maxLevel = 59,
        duration = 30,
        baseCost = 425,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 763,
                valueRange = 0,
                valuePerLevel = 3.9,
                coef = 0.3,
            },
        }
    },
    [10901] = { -- Power Word: Shield(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        duration = 30,
        baseCost = 500,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 942,
                valueRange = 0,
                valuePerLevel = 4.3,
                coef = 0.3,
            },
        }
    },
    [10915] = { -- Flash Heal(Rank 5)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 265,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 518,
                valueRange = 98,
                valuePerLevel = 3.3,
                coef = 0.429,
            },
        }
    },
    [10916] = { -- Flash Heal(Rank 6)
        spellLevel = 50,
        maxLevel = 55,
        baseCost = 315,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 644,
                valueRange = 120,
                valuePerLevel = 3.7,
                coef = 0.429,
            },
        }
    },
    [10917] = { -- Flash Heal(Rank 7)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 812,
                valueRange = 146,
                valuePerLevel = 4.2,
                coef = 0.429,
            },
        }
    },
    [10927] = { -- Renew(Rank 7)
        spellLevel = 44,
        maxLevel = 49,
        duration = 15,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 102,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [10928] = { -- Renew(Rank 8)
        spellLevel = 50,
        maxLevel = 55,
        duration = 15,
        baseCost = 305,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 130,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [10929] = { -- Renew(Rank 9)
        spellLevel = 56,
        maxLevel = 61,
        duration = 15,
        baseCost = 365,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 162,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [10933] = { -- Smite(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 287,
                valueRange = 36,
                valuePerLevel = 2.3,
                coef = 0.714,
            },
        }
    },
    [10934] = { -- Smite(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 280,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 371,
                valueRange = 44,
                valuePerLevel = 2.7,
                coef = 0.714,
            },
        }
    },
    [10945] = { -- Mind Blast(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 265,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 346,
                valueRange = 20,
                valuePerLevel = 2.1,
                coef = 0.429,
            },
        }
    },
    [10946] = { -- Mind Blast(Rank 8)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 310,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 425,
                valueRange = 24,
                valuePerLevel = 2.4,
                coef = 0.429,
            },
        }
    },
    [10947] = { -- Mind Blast(Rank 9)
        spellLevel = 58,
        maxLevel = 63,
        baseCost = 350,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 503,
                valueRange = 28,
                valuePerLevel = 2.6,
                coef = 0.429,
            },
        }
    },
    [10960] = { -- Prayer of Healing(Rank 3)
        spellLevel = 50,
        maxLevel = 59,
        baseCost = 770,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 657,
                valueRange = 38,
                valuePerLevel = 2,
                coef = 0.429,
            },
        }
    },
    [10961] = { -- Prayer of Healing(Rank 4)
        spellLevel = 60,
        maxLevel = 69,
        baseCost = 1030,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 939,
                valueRange = 52,
                valuePerLevel = 2.4,
                coef = 0.429,
            },
        }
    },
    [10963] = { -- Greater Heal(Rank 2)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 455,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1149,
                valueRange = 140,
                valuePerLevel = 5.8,
                coef = 0.857,
            },
        }
    },
    [10964] = { -- Greater Heal(Rank 3)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 545,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1437,
                valueRange = 172,
                valuePerLevel = 6.6,
                coef = 0.857,
            },
        }
    },
    [10965] = { -- Greater Heal(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        baseCost = 655,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1798,
                valueRange = 208,
                valuePerLevel = 7.5,
                coef = 0.857,
            },
        }
    },
    [13908] = { -- Desperate Prayer(Rank 1)
        spellLevel = 10,
        maxLevel = 16,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 134,
                valueRange = 36,
                valuePerLevel = 2.4,
                coef = 0.268,
            },
        }
    },
    [14914] = { -- Holy Fire(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 10,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 78,
                valueRange = 20,
                valuePerLevel = 1.5,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 6,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [15237] = { -- Holy Nova(Rank 1)
        spellLevel = 20,
        maxLevel = 26,
        baseCost = 185,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 28,
                valueRange = 4,
                valuePerLevel = 0.2,
                coef = 0.161,
            },
            [2] = {
                effectType = 64,
                valueBase = 23455,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [15261] = { -- Holy Fire(Rank 8)
        spellLevel = 60,
        maxLevel = 66,
        duration = 10,
        baseCost = 255,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 355,
                valueRange = 94,
                valuePerLevel = 3.4,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 29,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [15262] = { -- Holy Fire(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        duration = 10,
        baseCost = 95,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 96,
                valueRange = 24,
                valuePerLevel = 1.7,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 8,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [15263] = { -- Holy Fire(Rank 3)
        spellLevel = 30,
        maxLevel = 36,
        duration = 10,
        baseCost = 125,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 132,
                valueRange = 34,
                valuePerLevel = 2,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 11,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [15264] = { -- Holy Fire(Rank 4)
        spellLevel = 36,
        maxLevel = 42,
        duration = 10,
        baseCost = 145,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 165,
                valueRange = 44,
                valuePerLevel = 2.2,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 13,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [15265] = { -- Holy Fire(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 10,
        baseCost = 170,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 204,
                valueRange = 54,
                valuePerLevel = 2.5,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 17,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [15266] = { -- Holy Fire(Rank 6)
        spellLevel = 48,
        maxLevel = 54,
        duration = 10,
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 254,
                valueRange = 68,
                valuePerLevel = 2.9,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 20,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [15267] = { -- Holy Fire(Rank 7)
        spellLevel = 54,
        maxLevel = 60,
        duration = 10,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 304,
                valueRange = 82,
                valuePerLevel = 3.2,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 25,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [15407] = { -- Mind Flay(Rank 1)
        spellLevel = 20,
        maxLevel = 28,
        duration = 3,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 25,
                valueRange = 0,
                coef = 0.19,
            },
        }
    },
    [15430] = { -- Holy Nova(Rank 2)
        spellLevel = 28,
        maxLevel = 34,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 50,
                valueRange = 8,
                valuePerLevel = 0.4,
                coef = 0.161,
            },
            [2] = {
                effectType = 64,
                valueBase = 23458,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [15431] = { -- Holy Nova(Rank 3)
        spellLevel = 36,
        maxLevel = 42,
        baseCost = 400,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 76,
                valueRange = 12,
                valuePerLevel = 0.6,
                coef = 0.161,
            },
            [2] = {
                effectType = 64,
                valueBase = 23459,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [17311] = { -- Mind Flay(Rank 2)
        spellLevel = 28,
        maxLevel = 36,
        duration = 3,
        baseCost = 70,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 42,
                valueRange = 0,
                coef = 0.19,
            },
        }
    },
    [17312] = { -- Mind Flay(Rank 3)
        spellLevel = 36,
        maxLevel = 44,
        duration = 3,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 62,
                valueRange = 0,
                coef = 0.19,
            },
        }
    },
    [17313] = { -- Mind Flay(Rank 4)
        spellLevel = 44,
        maxLevel = 52,
        duration = 3,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 87,
                valueRange = 0,
                coef = 0.19,
            },
        }
    },
    [17314] = { -- Mind Flay(Rank 5)
        spellLevel = 52,
        maxLevel = 60,
        duration = 3,
        baseCost = 165,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 110,
                valueRange = 0,
                coef = 0.19,
            },
        }
    },
    [18137] = { -- Shadowguard(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 600,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [18807] = { -- Mind Flay(Rank 6)
        spellLevel = 60,
        maxLevel = 68,
        duration = 3,
        baseCost = 205,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 142,
                valueRange = 0,
                coef = 0.19,
            },
        }
    },
    [19236] = { -- Desperate Prayer(Rank 2)
        spellLevel = 18,
        maxLevel = 24,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 263,
                valueRange = 62,
                valuePerLevel = 3.4,
                coef = 0.396,
            },
        }
    },
    [19238] = { -- Desperate Prayer(Rank 3)
        spellLevel = 26,
        maxLevel = 32,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 447,
                valueRange = 96,
                valuePerLevel = 4.5,
                coef = 0.429,
            },
        }
    },
    [19240] = { -- Desperate Prayer(Rank 4)
        spellLevel = 34,
        maxLevel = 40,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 588,
                valueRange = 120,
                valuePerLevel = 5.3,
                coef = 0.429,
            },
        }
    },
    [19241] = { -- Desperate Prayer(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 834,
                valueRange = 160,
                valuePerLevel = 6.4,
                coef = 0.429,
            },
        }
    },
    [19242] = { -- Desperate Prayer(Rank 6)
        spellLevel = 50,
        maxLevel = 56,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1101,
                valueRange = 204,
                valuePerLevel = 7.4,
                coef = 0.429,
            },
        }
    },
    [19243] = { -- Desperate Prayer(Rank 7)
        spellLevel = 58,
        maxLevel = 64,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1324,
                valueRange = 238,
                valuePerLevel = 8.2,
                coef = 0.429,
            },
        }
    },
    [19261] = { -- Touch of Weakness(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 600,
        baseCost = 45,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                valueBase = 15,
                valueRange = 0,
                coef = 0.107,
            },
        }
    },
    [19262] = { -- Touch of Weakness(Rank 3)
        spellLevel = 30,
        maxLevel = 0,
        duration = 600,
        baseCost = 75,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                valueBase = 24,
                valueRange = 0,
                coef = 0.107,
            },
        }
    },
    [19264] = { -- Touch of Weakness(Rank 4)
        spellLevel = 40,
        maxLevel = 0,
        duration = 600,
        baseCost = 105,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                valueBase = 35,
                valueRange = 0,
                coef = 0.107,
            },
        }
    },
    [19265] = { -- Touch of Weakness(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        duration = 600,
        baseCost = 145,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                valueBase = 48,
                valueRange = 0,
                coef = 0.107,
            },
        }
    },
    [19266] = { -- Touch of Weakness(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 600,
        baseCost = 195,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                valueBase = 64,
                valueRange = 0,
                coef = 0.107,
            },
        }
    },
    [19276] = { -- Devouring Plague(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 24,
        baseCost = 350,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 34,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [19277] = { -- Devouring Plague(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 24,
        baseCost = 495,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 50,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [19278] = { -- Devouring Plague(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 24,
        baseCost = 645,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 68,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [19279] = { -- Devouring Plague(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 24,
        baseCost = 810,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 89,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [19280] = { -- Devouring Plague(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 24,
        baseCost = 985,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 113,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [19296] = { -- Starshards(Rank 2)
        spellLevel = 18,
        maxLevel = 24,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 23,
                valueRange = 0,
                coef = 0.167,
            },
        }
    },
    [19299] = { -- Starshards(Rank 3)
        spellLevel = 26,
        maxLevel = 32,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 40,
                valueRange = 0,
                coef = 0.167,
            },
        }
    },
    [19302] = { -- Starshards(Rank 4)
        spellLevel = 34,
        maxLevel = 40,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 58,
                valueRange = 0,
                coef = 0.167,
            },
        }
    },
    [19303] = { -- Starshards(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 79,
                valueRange = 0,
                coef = 0.167,
            },
        }
    },
    [19304] = { -- Starshards(Rank 6)
        spellLevel = 50,
        maxLevel = 56,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 105,
                valueRange = 0,
                coef = 0.167,
            },
        }
    },
    [19305] = { -- Starshards(Rank 7)
        spellLevel = 58,
        maxLevel = 64,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 130,
                valueRange = 0,
                coef = 0.167,
            },
        }
    },
    [19308] = { -- Shadowguard(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 600,
        baseCost = 85,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                valueBase = 35,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [19309] = { -- Shadowguard(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 600,
        baseCost = 120,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                valueBase = 51,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [19310] = { -- Shadowguard(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 600,
        baseCost = 160,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                valueBase = 70,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [19311] = { -- Shadowguard(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 600,
        baseCost = 200,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                valueBase = 90,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [19312] = { -- Shadowguard(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 600,
        baseCost = 250,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                valueBase = 116,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [22009] = { -- Greater Heal
        spellLevel = 32,
        maxLevel = 37,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 63,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [23455] = { -- Holy Nova(Rank 1)
        spellLevel = 20,
        maxLevel = 26,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 52,
                valueRange = 8,
                valuePerLevel = 0.4,
                coef = 0.161,
            },
        }
    },
    [23458] = { -- Holy Nova(Rank 2)
        spellLevel = 28,
        maxLevel = 34,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 86,
                valueRange = 12,
                valuePerLevel = 0.5,
                coef = 0.161,
            },
        }
    },
    [23459] = { -- Holy Nova(Rank 3)
        spellLevel = 36,
        maxLevel = 42,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 121,
                valueRange = 18,
                valuePerLevel = 0.6,
                coef = 0.161,
            },
        }
    },
    [25210] = { -- Greater Heal(Rank 6)
        spellLevel = 63,
        maxLevel = 67,
        baseCost = 750,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2074,
                valueRange = 336,
                valuePerLevel = 8.4,
                coef = 0.857,
            },
        }
    },
    [25213] = { -- Greater Heal(Rank 7)
        spellLevel = 68,
        maxLevel = 72,
        baseCost = 825,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2396,
                valueRange = 388,
                valuePerLevel = 9.3,
                coef = 0.857,
            },
        }
    },
    [25217] = { -- Power Word: Shield(Rank 11)
        spellLevel = 65,
        maxLevel = 69,
        duration = 30,
        baseCost = 540,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 1125,
                valueRange = 0,
                valuePerLevel = 4.7,
                coef = 0.3,
            },
        }
    },
    [25218] = { -- Power Word: Shield(Rank 12)
        spellLevel = 70,
        maxLevel = 74,
        duration = 30,
        baseCost = 600,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 1265,
                valueRange = 0,
                valuePerLevel = 5.1,
                coef = 0.3,
            },
        }
    },
    [25221] = { -- Renew(Rank 11)
        spellLevel = 65,
        maxLevel = 69,
        duration = 15,
        baseCost = 430,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 202,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [25222] = { -- Renew(Rank 12)
        spellLevel = 70,
        maxLevel = 74,
        duration = 15,
        baseCost = 450,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 222,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [25233] = { -- Flash Heal(Rank 8)
        spellLevel = 61,
        maxLevel = 65,
        baseCost = 400,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 913,
                valueRange = 146,
                valuePerLevel = 4.7,
                coef = 0.429,
            },
        }
    },
    [25235] = { -- Flash Heal(Rank 9)
        spellLevel = 67,
        maxLevel = 71,
        baseCost = 470,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1101,
                valueRange = 178,
                valuePerLevel = 5.2,
                coef = 0.429,
            },
        }
    },
    [25308] = { -- Prayer of Healing(Rank 6)
        spellLevel = 68,
        maxLevel = 75,
        baseCost = 1255,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1246,
                valueRange = 70,
                valuePerLevel = 2.8,
                coef = 0.429,
            },
        }
    },
    [25314] = { -- Greater Heal(Rank 5)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 710,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1966,
                valueRange = 228,
                valuePerLevel = 8.1,
                coef = 0.857,
            },
        }
    },
    [25315] = { -- Renew(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCost = 410,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 194,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [25316] = { -- Prayer of Healing(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        baseCost = 1070,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 997,
                valueRange = 56,
                valuePerLevel = 2.5,
                coef = 0.429,
            },
        }
    },
    [25329] = { -- Holy Nova(Rank 7)
        spellLevel = 68,
        maxLevel = 74,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 384,
                valueRange = 62,
                valuePerLevel = 1,
                coef = 0.161,
            },
        }
    },
    [25331] = { -- Holy Nova(Rank 7)
        spellLevel = 68,
        maxLevel = 74,
        baseCost = 875,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 242,
                valueRange = 38,
                valuePerLevel = 1.4,
                coef = 0.161,
            },
            [2] = {
                effectType = 64,
                valueBase = 25329,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [25363] = { -- Smite(Rank 9)
        spellLevel = 61,
        maxLevel = 66,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 405,
                valueRange = 48,
                valuePerLevel = 3.4,
                coef = 0.714,
            },
        }
    },
    [25364] = { -- Smite(Rank 10)
        spellLevel = 69,
        maxLevel = 75,
        baseCost = 385,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 545,
                valueRange = 66,
                valuePerLevel = 4.1,
                coef = 0.714,
            },
        }
    },
    [25367] = { -- Shadow Word: Pain(Rank 9)
        spellLevel = 65,
        maxLevel = 0,
        duration = 18,
        baseCost = 510,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 167,
                valueRange = 0,
                coef = 0.183,
            },
        }
    },
    [25368] = { -- Shadow Word: Pain(Rank 10)
        spellLevel = 70,
        maxLevel = 0,
        duration = 18,
        baseCost = 575,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 206,
                valueRange = 0,
                coef = 0.183,
            },
        }
    },
    [25372] = { -- Mind Blast(Rank 10)
        spellLevel = 63,
        maxLevel = 68,
        baseCost = 380,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 557,
                valueRange = 30,
                valuePerLevel = 2.9,
                coef = 0.429,
            },
        }
    },
    [25375] = { -- Mind Blast(Rank 11)
        spellLevel = 69,
        maxLevel = 74,
        baseCost = 450,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 708,
                valueRange = 40,
                valuePerLevel = 3.2,
                coef = 0.429,
            },
        }
    },
    [25384] = { -- Holy Fire(Rank 9)
        spellLevel = 66,
        maxLevel = 72,
        duration = 10,
        baseCost = 290,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 412,
                valueRange = 110,
                valuePerLevel = 3.6,
                coef = 0.857,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 33,
                valueRange = 0,
                coef = 0.033,
            },
        }
    },
    [25387] = { -- Mind Flay(Rank 7)
        spellLevel = 68,
        maxLevel = 76,
        duration = 3,
        baseCost = 230,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 176,
                valueRange = 0,
                coef = 0.19,
            },
        }
    },
    [25437] = { -- Desperate Prayer(Rank 8)
        spellLevel = 66,
        maxLevel = 72,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1601,
                valueRange = 286,
                valuePerLevel = 9.1,
                coef = 0.429,
            },
        }
    },
    [25446] = { -- Starshards(Rank 8)
        spellLevel = 66,
        maxLevel = 72,
        duration = 15,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 157,
                valueRange = 0,
                coef = 0.167,
            },
        }
    },
    [25461] = { -- Touch of Weakness(Rank 7)
        spellLevel = 70,
        maxLevel = 0,
        duration = 600,
        baseCost = 235,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 1,
                valueBase = 80,
                valueRange = 0,
                coef = 0.107,
            },
        }
    },
    [25467] = { -- Devouring Plague(Rank 7)
        spellLevel = 68,
        maxLevel = 0,
        duration = 24,
        baseCost = 1145,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 152,
                valueRange = 0,
                coef = 0.1,
            },
        }
    },
    [25477] = { -- Shadowguard(Rank 7)
        spellLevel = 68,
        maxLevel = 0,
        duration = 600,
        baseCost = 270,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                charges = 3,
                valueBase = 130,
                valueRange = 0,
                coef = 0.267,
            },
        }
    },
    [27799] = { -- Holy Nova(Rank 4)
        spellLevel = 44,
        maxLevel = 50,
        baseCost = 520,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 106,
                valueRange = 16,
                valuePerLevel = 0.8,
                coef = 0.161,
            },
            [2] = {
                effectType = 64,
                valueBase = 27803,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [27800] = { -- Holy Nova(Rank 5)
        spellLevel = 52,
        maxLevel = 58,
        baseCost = 635,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 140,
                valueRange = 22,
                valuePerLevel = 1,
                coef = 0.161,
            },
            [2] = {
                effectType = 64,
                valueBase = 27804,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [27801] = { -- Holy Nova(Rank 6)
        spellLevel = 60,
        maxLevel = 66,
        baseCost = 750,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 181,
                valueRange = 28,
                valuePerLevel = 1.2,
                coef = 0.161,
            },
            [2] = {
                effectType = 64,
                valueBase = 27805,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [27803] = { -- Holy Nova(Rank 4)
        spellLevel = 44,
        maxLevel = 50,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 161,
                valueRange = 26,
                valuePerLevel = 0.7,
                coef = 0.161,
            },
        }
    },
    [27804] = { -- Holy Nova(Rank 5)
        spellLevel = 52,
        maxLevel = 58,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 235,
                valueRange = 36,
                valuePerLevel = 0.8,
                coef = 0.161,
            },
        }
    },
    [27805] = { -- Holy Nova(Rank 6)
        spellLevel = 60,
        maxLevel = 66,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 302,
                valueRange = 48,
                valuePerLevel = 0.9,
                coef = 0.161,
            },
        }
    },
    [32379] = { -- Shadow Word: Death(Rank 1)
        spellLevel = 62,
        maxLevel = 69,
        baseCost = 243,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 450,
                valueRange = 72,
                coef = 0.429,
            },
        }
    },
    [32546] = { -- Binding Heal(Rank 1)
        spellLevel = 64,
        maxLevel = 70,
        baseCost = 705,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1042,
                valueRange = 296,
                valuePerLevel = 1.9,
                coef = 0.429,
            },
        }
    },
    [32996] = { -- Shadow Word: Death(Rank 2)
        spellLevel = 70,
        maxLevel = 77,
        baseCost = 309,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 572,
                valueRange = 92,
                coef = 0.429,
            },
        }
    },
    [33076] = { -- Prayer of Mending(Rank 1)
        spellLevel = 68,
        maxLevel = 74,
        baseCost = 390,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                charges = 5,
                valueBase = 801,
                valueRange = -1,
                coef = 0.429,
            },
        }
    },
    [34861] = { -- Circle of Healing(Rank 1)
        spellLevel = 50,
        maxLevel = 54,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 246,
                valueRange = 24,
                valuePerLevel = 1,
                coef = 0.214,
            },
        }
    },
    [34863] = { -- Circle of Healing(Rank 2)
        spellLevel = 56,
        maxLevel = 60,
        baseCost = 337,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 288,
                valueRange = 30,
                valuePerLevel = 1.2,
                coef = 0.214,
            },
        }
    },
    [34864] = { -- Circle of Healing(Rank 3)
        spellLevel = 60,
        maxLevel = 64,
        baseCost = 375,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 327,
                valueRange = 34,
                valuePerLevel = 1.4,
                coef = 0.214,
            },
        }
    },
    [34865] = { -- Circle of Healing(Rank 4)
        spellLevel = 65,
        maxLevel = 69,
        baseCost = 412,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 370,
                valueRange = 38,
                valuePerLevel = 1.6,
                coef = 0.214,
            },
        }
    },
    [34866] = { -- Circle of Healing(Rank 5)
        spellLevel = 70,
        maxLevel = 74,
        baseCost = 450,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 409,
                valueRange = 42,
                valuePerLevel = 1.8,
                coef = 0.214,
            },
        }
    },
    [34914] = { -- Vampiric Touch(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 15,
        baseCost = 325,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 90,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [34916] = { -- Vampiric Touch(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 15,
        baseCost = 400,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 120,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [34917] = { -- Vampiric Touch(Rank 3)
        spellLevel = 70,
        maxLevel = 79,
        duration = 15,
        baseCost = 425,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 130,
                valueRange = 0,
                coef = 0.2,
            },
        }
    },
    [37563] = { -- Renewal(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        duration = 9,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 50,
                valueRange = 0,
                coef = 0,
            },
        }
    },
    [44041] = { -- Chastise(Rank 1)
        spellLevel = 20,
        maxLevel = 29,
        duration = 2,
        baseCost = 50,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 47,
                valueRange = 6,
                coef = 0.143,
            },
        }
    },
    [44043] = { -- Chastise(Rank 2)
        spellLevel = 30,
        maxLevel = 39,
        duration = 2,
        baseCost = 100,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 93,
                valueRange = 14,
                coef = 0.143,
            },
        }
    },
    [44044] = { -- Chastise(Rank 3)
        spellLevel = 40,
        maxLevel = 49,
        duration = 2,
        baseCost = 135,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 139,
                valueRange = 22,
                coef = 0.143,
            },
        }
    },
    [44045] = { -- Chastise(Rank 4)
        spellLevel = 50,
        maxLevel = 59,
        duration = 2,
        baseCost = 180,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 209,
                valueRange = 32,
                coef = 0,
            },
        }
    },
    [44046] = { -- Chastise(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        duration = 2,
        baseCost = 225,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 278,
                valueRange = 44,
                coef = 0.143,
            },
        }
    },
    [44047] = { -- Chastise(Rank 6)
        spellLevel = 70,
        maxLevel = 79,
        duration = 2,
        baseCost = 300,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 370,
                valueRange = 60,
                coef = 0.143,
            },
        }
    },
};

_addon.spellClassSet = {
    [1] = {
        [1] = {
            17, -- Power Word: Shield(Rank 1)
            592, -- Power Word: Shield(Rank 2)
            600, -- Power Word: Shield(Rank 3)
            3747, -- Power Word: Shield(Rank 4)
            6065, -- Power Word: Shield(Rank 5)
            6066, -- Power Word: Shield(Rank 6)
            10898, -- Power Word: Shield(Rank 7)
            10899, -- Power Word: Shield(Rank 8)
            10900, -- Power Word: Shield(Rank 9)
            10901, -- Power Word: Shield(Rank 10)
            25217, -- Power Word: Shield(Rank 11)
            25218, -- Power Word: Shield(Rank 12)
            27607, -- Power Word: Shield(Rank 10)
            27779, -- Divine Protection
            44175, -- Power Word: Shield
            44291, -- Power Word: Shield
            46193, -- Power Word: Shield
        },
        [2] = {
            588, -- Inner Fire(Rank 1)
            602, -- Inner Fire(Rank 3)
            1006, -- Inner Fire(Rank 4)
            7128, -- Inner Fire(Rank 2)
            10951, -- Inner Fire(Rank 5)
            10952, -- Inner Fire(Rank 6)
            16329, -- Juju Might
            25431, -- Inner Fire(Rank 7)
        },
        [4] = {
            15286, -- Vampiric Embrace
            22751, -- Fury of the Frostwolf
            23693, -- Stormpike's Salvation
            23964, -- Bloodrager's Requiem
            28418, -- General's Warcry
            28419, -- General's Warcry
            28420, -- General's Warcry
        },
        [8] = {
            1243, -- Power Word: Fortitude(Rank 1)
            1244, -- Power Word: Fortitude(Rank 2)
            1245, -- Power Word: Fortitude(Rank 3)
            2791, -- Power Word: Fortitude(Rank 4)
            10937, -- Power Word: Fortitude(Rank 5)
            10938, -- Power Word: Fortitude(Rank 6)
            16873, -- Holy Word: Fortitude(Rank 6)
            21562, -- Prayer of Fortitude(Rank 1)
            21564, -- Prayer of Fortitude(Rank 2)
            23947, -- Power Word: Fortitude(Rank 5)
            23948, -- Power Word: Fortitude(Rank 6)
            25389, -- Power Word: Fortitude(Rank 7)
            25392, -- Prayer of Fortitude(Rank 3)
            31807, -- Mark of War
            31808, -- Mark of Lore
            31810, -- Mark of Lore
            31811, -- Mark of Lore
            31812, -- Mark of War
            31813, -- Mark of War
            31814, -- Mark of War
            31815, -- Mark of Lore
            32025, -- Test Buff (DND)
            39231, -- Prayer of Fortitude(Rank 3)
        },
        [16] = {
            8129, -- Mana Burn(Rank 1)
            8131, -- Mana Burn(Rank 2)
            10874, -- Mana Burn(Rank 3)
            10875, -- Mana Burn(Rank 4)
            10876, -- Mana Burn(Rank 5)
            25379, -- Mana Burn(Rank 6)
            25380, -- Mana Burn(Rank 7)
        },
        [32] = {
            14752, -- Divine Spirit(Rank 1)
            14818, -- Divine Spirit(Rank 2)
            14819, -- Divine Spirit(Rank 3)
            21074, -- Test NPC Resurrection(Rank 1)
            25312, -- Divine Spirit(Rank 5)
            27681, -- Prayer of Spirit(Rank 1)
            27841, -- Divine Spirit(Rank 4)
            32999, -- Prayer of Spirit(Rank 2)
            39234, -- Divine Spirit(Rank 4)
        },
        [64] = {
            139, -- Renew(Rank 1)
            6074, -- Renew(Rank 2)
            6075, -- Renew(Rank 3)
            6076, -- Renew(Rank 4)
            6077, -- Renew(Rank 5)
            6078, -- Renew(Rank 6)
            10927, -- Renew(Rank 7)
            10928, -- Renew(Rank 8)
            10929, -- Renew(Rank 9)
            25221, -- Renew(Rank 11)
            25222, -- Renew(Rank 12)
            25315, -- Renew(Rank 10)
            27606, -- Renew(Rank 9)
            32125, -- Medicinal Swamp Moss
            44174, -- Renew
            46192, -- Renew
        },
        [128] = {
            585, -- Smite(Rank 1)
            591, -- Smite(Rank 2)
            598, -- Smite(Rank 3)
            984, -- Smite(Rank 4)
            1004, -- Smite(Rank 5)
            6060, -- Smite(Rank 6)
            10933, -- Smite(Rank 7)
            10934, -- Smite(Rank 8)
            25363, -- Smite(Rank 9)
            25364, -- Smite(Rank 10)
        },
        [256] = {
            976, -- Shadow Protection(Rank 1)
            10957, -- Shadow Protection(Rank 2)
            10958, -- Shadow Protection(Rank 3)
            16874, -- Shadow Protection(Rank 3)
            17151, -- Shadow Barrier
            25433, -- Shadow Protection(Rank 4)
            27683, -- Prayer of Shadow Protection(Rank 1)
            37539, -- Nether Protection
            39236, -- Prayer of Shadow Protection(Rank 1)
            39374, -- Prayer of Shadow Protection(Rank 2)
        },
        [512] = {
            596, -- Prayer of Healing(Rank 1)
            996, -- Prayer of Healing(Rank 2)
            10960, -- Prayer of Healing(Rank 3)
            10961, -- Prayer of Healing(Rank 4)
            25308, -- Prayer of Healing(Rank 6)
            25316, -- Prayer of Healing(Rank 5)
            30604, -- Prayer of Healing
        },
        [1024] = {
            2054, -- Heal(Rank 1)
            2055, -- Heal(Rank 2)
            6063, -- Heal(Rank 3)
            6064, -- Heal(Rank 4)
            37382, -- Health Link(Rank 1)
            38395, -- Siphon Essence
        },
        [2048] = {
            2061, -- Flash Heal(Rank 1)
            9472, -- Flash Heal(Rank 2)
            9473, -- Flash Heal(Rank 3)
            9474, -- Flash Heal(Rank 4)
            10915, -- Flash Heal(Rank 5)
            10916, -- Flash Heal(Rank 6)
            10917, -- Flash Heal(Rank 7)
            17137, -- Flash Heal
            17138, -- Flash Heal
            17843, -- Flash Heal
            25233, -- Flash Heal(Rank 8)
            25235, -- Flash Heal(Rank 9)
            27608, -- Flash Heal(Rank 7)
            29564, -- Greater Heal
            33641, -- Flash of Light
            34176, -- QA Heal Coefficient 1(QASpell)
            35096, -- Greater Heal
            38580, -- Greater Heal
            38588, -- Flash Heal
            41378, -- Greater Heal
            42420, -- Flash Heal
            43431, -- Flash Heal
            43575, -- Flash Heal
        },
        [4096] = {
            2060, -- Greater Heal(Rank 1)
            10963, -- Greater Heal(Rank 2)
            10964, -- Greater Heal(Rank 3)
            10965, -- Greater Heal(Rank 4)
            15068, -- TEST Heal Self
            25210, -- Greater Heal(Rank 6)
            25213, -- Greater Heal(Rank 7)
            25314, -- Greater Heal(Rank 5)
            26565, -- Heal Brethren
            39321, -- Heal Self
        },
        [8192] = {
            8092, -- Mind Blast(Rank 1)
            8102, -- Mind Blast(Rank 2)
            8103, -- Mind Blast(Rank 3)
            8104, -- Mind Blast(Rank 4)
            8105, -- Mind Blast(Rank 5)
            8106, -- Mind Blast(Rank 6)
            10945, -- Mind Blast(Rank 7)
            10946, -- Mind Blast(Rank 8)
            10947, -- Mind Blast(Rank 9)
            25372, -- Mind Blast(Rank 10)
            25375, -- Mind Blast(Rank 11)
        },
        [16384] = {
            586, -- Fade(Rank 1)
            9578, -- Fade(Rank 2)
            9579, -- Fade(Rank 3)
            9592, -- Fade(Rank 4)
            10941, -- Fade(Rank 5)
            10942, -- Fade(Rank 6)
            25429, -- Fade(Rank 7)
        },
        [32768] = {
            589, -- Shadow Word: Pain(Rank 1)
            594, -- Shadow Word: Pain(Rank 2)
            970, -- Shadow Word: Pain(Rank 3)
            992, -- Shadow Word: Pain(Rank 4)
            2767, -- Shadow Word: Pain(Rank 5)
            10892, -- Shadow Word: Pain(Rank 6)
            10893, -- Shadow Word: Pain(Rank 7)
            10894, -- Shadow Word: Pain(Rank 8)
            25367, -- Shadow Word: Pain(Rank 9)
            25368, -- Shadow Word: Pain(Rank 10)
            27605, -- Shadow Word: Pain(Rank 8)
        },
        [65536] = {
            8122, -- Psychic Scream(Rank 1)
            8124, -- Psychic Scream(Rank 2)
            10888, -- Psychic Scream(Rank 3)
            10890, -- Psychic Scream(Rank 4)
            27610, -- Psychic Scream(Rank 4)
        },
        [131072] = {
            605, -- Mind Control(Rank 1)
            10911, -- Mind Control(Rank 2)
            10912, -- Mind Control(Rank 3)
            16053, -- Dominion of Soul
            32974, -- Cinematic - Mind Control(Rank 1)
            32976, -- Cinematic - Mind Control(Rank 1)
            34630, -- Scrap Reaver X6000
            38915, -- Mental Interference(0)
            39219, -- Death's Door Fel Cannon
        },
        [262144] = {
            2050, -- Lesser Heal(Rank 1)
            2052, -- Lesser Heal(Rank 2)
            2053, -- Lesser Heal(Rank 3)
        },
        [524288] = {
            2943, -- Touch of Weakness(Rank 1)
            16875, -- Divine Spirit(Rank 3)
            19249, -- Touch of Weakness(Rank 2)
            19251, -- Touch of Weakness(Rank 3)
            19252, -- Touch of Weakness(Rank 4)
            19253, -- Touch of Weakness(Rank 5)
            19254, -- Touch of Weakness(Rank 6)
            25460, -- Touch of Weakness(Rank 7)
        },
        [1048576] = {
            14914, -- Holy Fire(Rank 1)
            15261, -- Holy Fire(Rank 8)
            15262, -- Holy Fire(Rank 2)
            15263, -- Holy Fire(Rank 3)
            15264, -- Holy Fire(Rank 4)
            15265, -- Holy Fire(Rank 5)
            15266, -- Holy Fire(Rank 6)
            15267, -- Holy Fire(Rank 7)
            17140, -- Holy Fire
            17141, -- Holy Fire
            17142, -- Holy Fire
            18165, -- Holy Fire
            18167, -- Holy Fire
            23860, -- Holy Fire
            25384, -- Holy Fire(Rank 9)
            29563, -- Holy Fire
            36947, -- Holy Fire
            38585, -- Holy Fire
        },
        [2097152] = {
            10797, -- Starshards(Rank 1)
            19296, -- Starshards(Rank 2)
            19299, -- Starshards(Rank 3)
            19302, -- Starshards(Rank 4)
            19303, -- Starshards(Rank 5)
            19304, -- Starshards(Rank 6)
            19305, -- Starshards(Rank 7)
            25446, -- Starshards(Rank 8)
            27636, -- Starshards
        },
        [4194304] = {
            15237, -- Holy Nova(Rank 1)
            15430, -- Holy Nova(Rank 2)
            15431, -- Holy Nova(Rank 3)
            20694, -- Holy Nova
            23858, -- Holy Nova
            24022, -- Cleanse Nova
            25331, -- Holy Nova(Rank 7)
            27799, -- Holy Nova(Rank 4)
            27800, -- Holy Nova(Rank 5)
            27801, -- Holy Nova(Rank 6)
            29514, -- Holy Nova
            34222, -- Sunseeker Blessing
            34944, -- Holy Nova
            35261, -- Arcane Nova
            35740, -- Holy Nova
            36985, -- Holy Nova
            37669, -- Holy Nova
            38589, -- Holy Nova
            38936, -- Arcane Nova
            40096, -- Holy Nova
            41380, -- Holy Nova
            46564, -- Holy Nova
        },
        [8388608] = {
            15407, -- Mind Flay(Rank 1)
            16568, -- Mind Flay
            17165, -- Mind Flay
            17311, -- Mind Flay(Rank 2)
            17312, -- Mind Flay(Rank 3)
            17313, -- Mind Flay(Rank 4)
            17314, -- Mind Flay(Rank 5)
            18807, -- Mind Flay(Rank 6)
            22203, -- Blue Beam
            22205, -- Trigger Blue Beam
            22313, -- Purple Hands
            22800, -- Entangling Roots
            22802, -- Choking Spores
            22919, -- Mind Flay
            23642, -- Corruption
            23953, -- Mind Flay
            23979, -- Holy Wrath
            25387, -- Mind Flay(Rank 7)
            26044, -- Mind Flay
            26143, -- Mind Flay
            27286, -- Shadow Wrath
            27640, -- Baron Rivendare's Soul Drain
            28309, -- Purple Beam
            28310, -- Mind Flay
            28516, -- Sunwell Torrent
            28883, -- Holy Wrath
            29407, -- Mind Flay
            29420, -- Wretched Tap
            29570, -- Mind Flay
            31806, -- Blue Beam
            31902, -- Purple Beam
            32000, -- Mind Sear
            32024, -- Soul Sear
            32417, -- Mind Flay
            32445, -- Holy Wrath
            32638, -- Divide Spirit
            32862, -- Drain Soul
            32930, -- Blue Beam
            33628, -- Lightning Tether
            34209, -- Blue Beam
            34211, -- Blue Beam
            34212, -- Blue Beam
            34223, -- Fiery Hands
            34224, -- Shadowy Hands
            34225, -- Frosty Hands
            34226, -- Charged Hands
            34227, -- Magic Hands
            34228, -- Holy Hands
            34303, -- Nether Charge
            34373, -- Flame Reflection
            34374, -- Frost Reflection
            34375, -- Nature Reflection
            34376, -- Shadow Reflection
            34380, -- Arcane Reflection
            34381, -- Holy Reflection
            34398, -- Flame Energy
            34399, -- Shadow Energy
            34401, -- Arcane Energy
            34402, -- Nature Energy
            34403, -- Holy Energy
            34404, -- Frost Energy
            34430, -- Purple Beam
            35424, -- Soul Shadows
            35427, -- Blade's Edge Purple Beam
            35460, -- Fury of the Dreghood Elders
            35493, -- Forked Lightning Tether
            35507, -- Mind Flay
            35839, -- Drain Soul
            35919, -- Welding Beam
            35960, -- Blade's Edge Multi Gold Beam
            35961, -- Blade's Edge Multi Gold Beam (02)
            35962, -- Blade's Edge Multi Gold Beam (03)
            36000, -- Blade's Edge Purple Beam (02)
            36314, -- The Seer's Presence
            36384, -- Skartax Purple Beam
            36414, -- Focused Bursts
            36415, -- Arcane Glare
            36416, -- Shadow Glare
            36417, -- Fiery Glare
            36447, -- Mind Sear
            36452, -- Blade's Edge Arakkoa Mind Control Beam
            36457, -- Random Bursts
            36458, -- Random Bursts
            36475, -- Focused Bursts
            36508, -- Energy Surge
            36580, -- Warp Storm
            36692, -- Blade's Edge Arakkoa Mind Control Beam 02
            36859, -- Mind Rend
            36924, -- Mind Rend
            36927, -- Bone Wastes - Tomb Event Purple Beam
            36929, -- Mind Rend
            37199, -- Dertrok Mind Control
            37216, -- Crystal Control
            37276, -- Mind Flay
            37330, -- Mind Flay
            37372, -- Shadow Wrath
            37621, -- Mind Flay
            37654, -- Lightning Tether
            37986, -- Ancient Fire
            38015, -- Blue Beam
            38034, -- Blue Beam
            38243, -- Mind Flay
            38444, -- Energize Headpiece
            38482, -- Disrupt Dark Conclave Ritual
            38632, -- Cosmetic Purple Beam
            38821, -- Lightning Tether
            38822, -- Lightning Tether
            38880, -- Forked Lightning Tether
            38985, -- Focused Bursts
            38987, -- Focused Bursts
            38988, -- Fiery Glare
            38989, -- Arcane Glare
            38990, -- Shadow Glare
            39017, -- Mind Rend
            39021, -- Mind Rend
            39538, -- ZapTemp
            40225, -- Blue Beam
            40842, -- Mind Flay
            40954, -- TEST - LAB - Shade of Akama(Rank 7)
            41264, -- Energy Surge
            42396, -- Mind Flay
        },
        [16777216] = {
            13908, -- Desperate Prayer(Rank 1)
            19236, -- Desperate Prayer(Rank 2)
            19238, -- Desperate Prayer(Rank 3)
            19240, -- Desperate Prayer(Rank 4)
            19241, -- Desperate Prayer(Rank 5)
            19242, -- Desperate Prayer(Rank 6)
            19243, -- Desperate Prayer(Rank 7)
            25437, -- Desperate Prayer(Rank 8)
        },
        [33554432] = {
            2944, -- Devouring Plague(Rank 1)
            19276, -- Devouring Plague(Rank 2)
            19277, -- Devouring Plague(Rank 3)
            19278, -- Devouring Plague(Rank 4)
            19279, -- Devouring Plague(Rank 5)
            19280, -- Devouring Plague(Rank 6)
            25467, -- Devouring Plague(Rank 7)
            28377, -- Shadowguard(Rank 1)
            28378, -- Shadowguard(Rank 2)
            28379, -- Shadowguard(Rank 3)
            28380, -- Shadowguard(Rank 4)
            28381, -- Shadowguard(Rank 5)
            28382, -- Shadowguard(Rank 6)
            28385, -- Shadowguard(Rank 7)
        },
        [67108864] = {
            2096, -- Mind Vision(Rank 1)
            2652, -- Touch of Weakness(Rank 1)
            9035, -- Hex of Weakness(Rank 1)
            10909, -- Mind Vision(Rank 2)
            15487, -- Silence
            19261, -- Touch of Weakness(Rank 2)
            19262, -- Touch of Weakness(Rank 3)
            19264, -- Touch of Weakness(Rank 4)
            19265, -- Touch of Weakness(Rank 5)
            19266, -- Touch of Weakness(Rank 6)
            19281, -- Hex of Weakness(Rank 2)
            19282, -- Hex of Weakness(Rank 3)
            19283, -- Hex of Weakness(Rank 4)
            19284, -- Hex of Weakness(Rank 5)
            19285, -- Hex of Weakness(Rank 6)
            25461, -- Touch of Weakness(Rank 7)
            25470, -- Hex of Weakness(Rank 7)
            25816, -- Hex of Weakness(Rank 6)
            32926, -- Lurk
            40789, -- Zoom Out
            40791, -- Zoom Out
            40792, -- Zoom In
            40793, -- Zoom In
            41233, -- Brute Cologne
            42129, -- First Person Camera
            45468, -- Mind Vision
        },
        [134217728] = {
            15007, -- Resurrection Sickness
            23455, -- Holy Nova(Rank 1)
            23458, -- Holy Nova(Rank 2)
            23459, -- Holy Nova(Rank 3)
            25329, -- Holy Nova(Rank 7)
            27803, -- Holy Nova(Rank 4)
            27804, -- Holy Nova(Rank 5)
            27805, -- Holy Nova(Rank 6)
        },
        [268435456] = {
            15068, -- TEST Heal Self
            17137, -- Flash Heal
            17138, -- Flash Heal
            17843, -- Flash Heal
            29564, -- Greater Heal
            33641, -- Flash of Light
            34861, -- Circle of Healing(Rank 1)
            34863, -- Circle of Healing(Rank 2)
            34864, -- Circle of Healing(Rank 3)
            34865, -- Circle of Healing(Rank 4)
            34866, -- Circle of Healing(Rank 5)
            35096, -- Greater Heal
            38580, -- Greater Heal
            38588, -- Flash Heal
            39321, -- Heal Self
            41378, -- Greater Heal
            42420, -- Flash Heal
            43431, -- Flash Heal
            43575, -- Flash Heal
        },
        [536870912] = {
            6788, -- Weakened Soul
            22752, -- Fevered Exhaustion
        },
        [1073741824] = {
            724, -- Lightwell(Rank 1)
            2006, -- Resurrection(Rank 1)
            2010, -- Resurrection(Rank 2)
            9484, -- Shackle Undead(Rank 1)
            9485, -- Shackle Undead(Rank 2)
            10880, -- Resurrection(Rank 3)
            10881, -- Resurrection(Rank 4)
            10955, -- Shackle Undead(Rank 3)
            15090, -- Dispel Magic
            17201, -- Dispel Magic
            20770, -- Resurrection(Rank 5)
            23859, -- Dispel Magic
            25435, -- Resurrection(Rank 6)
            25808, -- Dispel
            27870, -- Lightwell(Rank 2)
            27871, -- Lightwell(Rank 3)
            28275, -- Lightwell(Rank 4)
            30036, -- Steal Magic
            32841, -- Mass Resurrection
            34433, -- Shadowfiend(Rank 1)
            39649, -- Summon Shadowfiends
            40081, -- Free Friend
            40135, -- Shackle Undead
            40751, -- Disrupt Magic
            40769, -- Shivan Self Cleansing
            41159, -- Summon Shadowfiends
            43577, -- Dispel Magic
        },
        [2147483648] = {
            1706, -- Levitate
            2651, -- Elune's Grace
            2652, -- Touch of Weakness(Rank 1)
            6346, -- Fear Ward
            9035, -- Hex of Weakness(Rank 1)
            10060, -- Power Infusion
            13896, -- Feedback(Rank 1)
            15090, -- Dispel Magic
            15229, -- Crystal Restore
            15473, -- Shadowform
            15487, -- Silence
            16329, -- Juju Might
            16873, -- Holy Word: Fortitude(Rank 6)
            16874, -- Shadow Protection(Rank 3)
            16875, -- Divine Spirit(Rank 3)
            17151, -- Shadow Barrier
            17201, -- Dispel Magic
            18137, -- Shadowguard(Rank 1)
            19261, -- Touch of Weakness(Rank 2)
            19262, -- Touch of Weakness(Rank 3)
            19264, -- Touch of Weakness(Rank 4)
            19265, -- Touch of Weakness(Rank 5)
            19266, -- Touch of Weakness(Rank 6)
            19271, -- Feedback(Rank 2)
            19273, -- Feedback(Rank 3)
            19274, -- Feedback(Rank 4)
            19275, -- Feedback(Rank 5)
            19281, -- Hex of Weakness(Rank 2)
            19282, -- Hex of Weakness(Rank 3)
            19283, -- Hex of Weakness(Rank 4)
            19284, -- Hex of Weakness(Rank 5)
            19285, -- Hex of Weakness(Rank 6)
            19308, -- Shadowguard(Rank 2)
            19309, -- Shadowguard(Rank 3)
            19310, -- Shadowguard(Rank 4)
            19311, -- Shadowguard(Rank 5)
            19312, -- Shadowguard(Rank 6)
            20694, -- Holy Nova
            22751, -- Fury of the Frostwolf
            22822, -- Starshards
            22823, -- Starshards
            23693, -- Stormpike's Salvation
            23858, -- Holy Nova
            23859, -- Dispel Magic
            23964, -- Bloodrager's Requiem
            24022, -- Cleanse Nova
            25441, -- Feedback(Rank 6)
            25461, -- Touch of Weakness(Rank 7)
            25470, -- Hex of Weakness(Rank 7)
            25477, -- Shadowguard(Rank 7)
            25808, -- Dispel
            25816, -- Hex of Weakness(Rank 6)
            27609, -- Dispel Magic(Rank 2)
            27985, -- Floating
            27986, -- Levitate
            28133, -- Cure Disease
            28418, -- General's Warcry
            28419, -- General's Warcry
            28420, -- General's Warcry
            29514, -- Holy Nova
            30036, -- Steal Magic
            30238, -- Lordaeron's Blessing
            32548, -- Symbol of Hope
            33206, -- Pain Suppression
            34222, -- Sunseeker Blessing
            34379, -- Bloodgem Infusion
            34433, -- Shadowfiend(Rank 1)
            34944, -- Holy Nova
            35261, -- Arcane Nova
            35749, -- Starfall
            36985, -- Holy Nova
            37669, -- Holy Nova
            38082, -- Mass Dispel
            38589, -- Holy Nova
            38936, -- Arcane Nova
            39649, -- Summon Shadowfiends
            40081, -- Free Friend
            40096, -- Holy Nova
            40751, -- Disrupt Magic
            40769, -- Shivan Self Cleansing
            41159, -- Summon Shadowfiends
            41380, -- Holy Nova
            43577, -- Dispel Magic
            46564, -- Holy Nova
            52970, -- Levitate
        },
    },
    [2] = {
        [1] = {
            527, -- Dispel Magic(Rank 1)
            528, -- Cure Disease
            552, -- Abolish Disease
            988, -- Dispel Magic(Rank 2)
            30238, -- Lordaeron's Blessing
            38082, -- Mass Dispel
        },
        [2] = {
            32379, -- Shadow Word: Death(Rank 1)
            32409, -- Shadow Word: Death(Rank 1)
            32996, -- Shadow Word: Death(Rank 2)
        },
        [4] = {
            32546, -- Binding Heal(Rank 1)
        },
        [8] = {
            15258, -- Shadow Vulnerability(Rank 1)
        },
        [16] = {
            44041, -- Chastise(Rank 1)
            44043, -- Chastise(Rank 2)
            44044, -- Chastise(Rank 3)
            44045, -- Chastise(Rank 4)
            44046, -- Chastise(Rank 5)
            44047, -- Chastise(Rank 6)
        },
        [32] = {
            33076, -- Prayer of Mending(Rank 1)
            39623, -- Ron's Test Spell(Rank 1)
            41635, -- Prayer of Mending(Rank 1)
            351575, -- Prayer of Mending(Rank 1)
        },
        [64] = {
            453, -- Mind Soothe(Rank 1)
            8192, -- Mind Soothe(Rank 2)
            10953, -- Mind Soothe(Rank 3)
            25596, -- Mind Soothe(Rank 4)
        },
        [128] = {
            32375, -- Mass Dispel
            32592, -- Mass Dispel
            39897, -- Mass Dispel
            353184, -- Mass Dispel
        },
        [256] = {
            34433, -- Shadowfiend(Rank 1)
            39649, -- Summon Shadowfiends
            41159, -- Summon Shadowfiends
        },
        [512] = {
            34754, -- Clearcasting
        },
        [1024] = {
            34914, -- Vampiric Touch(Rank 1)
            34916, -- Vampiric Touch(Rank 2)
            34917, -- Vampiric Touch(Rank 3)
        },
        [2048] = {
            15473, -- Shadowform
        },
        [4096] = {
            586, -- Fade(Rank 1)
            1706, -- Levitate
            2651, -- Elune's Grace
            2652, -- Touch of Weakness(Rank 1)
            2944, -- Devouring Plague(Rank 1)
            6346, -- Fear Ward
            9035, -- Hex of Weakness(Rank 1)
            9484, -- Shackle Undead(Rank 1)
            9485, -- Shackle Undead(Rank 2)
            9578, -- Fade(Rank 2)
            9579, -- Fade(Rank 3)
            9592, -- Fade(Rank 4)
            10060, -- Power Infusion
            10941, -- Fade(Rank 5)
            10942, -- Fade(Rank 6)
            10955, -- Shackle Undead(Rank 3)
            14743, -- Focused Casting(Rank 1)
            14751, -- Inner Focus
            14893, -- Inspiration(Rank 1)
            15269, -- Blackout(Rank 1)
            15271, -- Spirit Tap(Rank 1)
            15357, -- Inspiration(Rank 2)
            15359, -- Inspiration(Rank 3)
            15487, -- Silence
            18137, -- Shadowguard(Rank 1)
            19261, -- Touch of Weakness(Rank 2)
            19262, -- Touch of Weakness(Rank 3)
            19264, -- Touch of Weakness(Rank 4)
            19265, -- Touch of Weakness(Rank 5)
            19266, -- Touch of Weakness(Rank 6)
            19276, -- Devouring Plague(Rank 2)
            19277, -- Devouring Plague(Rank 3)
            19278, -- Devouring Plague(Rank 4)
            19279, -- Devouring Plague(Rank 5)
            19280, -- Devouring Plague(Rank 6)
            19281, -- Hex of Weakness(Rank 2)
            19282, -- Hex of Weakness(Rank 3)
            19283, -- Hex of Weakness(Rank 4)
            19284, -- Hex of Weakness(Rank 5)
            19285, -- Hex of Weakness(Rank 6)
            19308, -- Shadowguard(Rank 2)
            19309, -- Shadowguard(Rank 3)
            19310, -- Shadowguard(Rank 4)
            19311, -- Shadowguard(Rank 5)
            19312, -- Shadowguard(Rank 6)
            25429, -- Fade(Rank 7)
            25461, -- Touch of Weakness(Rank 7)
            25467, -- Devouring Plague(Rank 7)
            25470, -- Hex of Weakness(Rank 7)
            25477, -- Shadowguard(Rank 7)
            27813, -- Blessed Recovery(Rank 1)
            27817, -- Blessed Recovery(Rank 2)
            27818, -- Blessed Recovery(Rank 3)
            27828, -- Focused Casting(Rank 2)
            32548, -- Symbol of Hope
            33143, -- Blessed Resilience(Rank 1)
            33151, -- Surge of Light(Rank 1)
            33206, -- Pain Suppression
            45237, -- Focused Will(Rank 1)
            45241, -- Focused Will(Rank 2)
            45242, -- Focused Will(Rank 3)
        },
    },
    [3] = {
    },
    [4] = {
    },
};


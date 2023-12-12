-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {
    [17] = { -- Power Word: Shield(Rank 1)
        spellLevel = 6,
        maxLevel = 11,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 44,
                valueRange = 0,
                valuePerLevel = 0.8,
                coef = 0.38323,
                coefAP = 0,
            },
        }
    },
    [139] = { -- Renew(Rank 1)
        spellLevel = 8,
        maxLevel = 13,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 9,
                valueRange = 0,
                coef = 0.207,
                coefAP = 0,
            },
        }
    },
    [585] = { -- Smite(Rank 1)
        spellLevel = 1,
        maxLevel = 6,
        baseCostPct = 9,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 4,
                valuePerLevel = 0.5,
                coef = 0.123,
                coefAP = 0,
            },
        }
    },
    [589] = { -- Shadow Word: Pain(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 5,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [591] = { -- Smite(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCostPct = 12,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 6,
                valuePerLevel = 0.6,
                coef = 0.271,
                coefAP = 0,
            },
        }
    },
    [592] = { -- Power Word: Shield(Rank 2)
        spellLevel = 12,
        maxLevel = 17,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 88,
                valueRange = 0,
                valuePerLevel = 1.2,
                coef = 0.56476,
                coefAP = 0,
            },
        }
    },
    [594] = { -- Shadow Word: Pain(Rank 2)
        spellLevel = 10,
        maxLevel = 17,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 10,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [596] = { -- Prayer of Healing(Rank 1)
        spellLevel = 30,
        maxLevel = 39,
        baseCostPct = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 301,
                valueRange = 20,
                valuePerLevel = 1.3,
                coef = 0.526,
                coefAP = 0,
            },
        }
    },
    [598] = { -- Smite(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 54,
                valueRange = 8,
                valuePerLevel = 0.9,
                coef = 0.554,
                coefAP = 0,
            },
        }
    },
    [600] = { -- Power Word: Shield(Rank 3)
        spellLevel = 18,
        maxLevel = 23,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 158,
                valueRange = 0,
                valuePerLevel = 1.6,
                coef = 0.74629,
                coefAP = 0,
            },
        }
    },
    [970] = { -- Shadow Word: Pain(Rank 3)
        spellLevel = 18,
        maxLevel = 25,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [984] = { -- Smite(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 91,
                valueRange = 14,
                valuePerLevel = 1.3,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [992] = { -- Shadow Word: Pain(Rank 4)
        spellLevel = 26,
        maxLevel = 33,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 35,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [996] = { -- Prayer of Healing(Rank 2)
        spellLevel = 40,
        maxLevel = 49,
        baseCostPct = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 444,
                valueRange = 28,
                valuePerLevel = 1.6,
                coef = 0.526,
                coefAP = 0,
            },
        }
    },
    [1004] = { -- Smite(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 150,
                valueRange = 20,
                valuePerLevel = 1.6,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [2050] = { -- Lesser Heal(Rank 1)
        spellLevel = 1,
        maxLevel = 3,
        baseCostPct = 16,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 46,
                valueRange = 10,
                valuePerLevel = 0.9,
                coef = 0.231,
                coefAP = 0,
            },
        }
    },
    [2052] = { -- Lesser Heal(Rank 2)
        spellLevel = 4,
        maxLevel = 9,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 71,
                valueRange = 14,
                valuePerLevel = 1.1,
                coef = 0.431,
                coefAP = 0,
            },
        }
    },
    [2053] = { -- Lesser Heal(Rank 3)
        spellLevel = 10,
        maxLevel = 15,
        baseCostPct = 27,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 135,
                valueRange = 22,
                valuePerLevel = 1.6,
                coef = 0.839,
                coefAP = 0,
            },
        }
    },
    [2054] = { -- Heal(Rank 1)
        spellLevel = 16,
        maxLevel = 21,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 295,
                valueRange = 46,
                valuePerLevel = 2.4,
                coef = 1.371,
                coefAP = 0,
            },
        }
    },
    [2055] = { -- Heal(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 429,
                valueRange = 62,
                valuePerLevel = 3.2,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [2060] = { -- Greater Heal(Rank 1)
        spellLevel = 40,
        maxLevel = 45,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 899,
                valueRange = 114,
                valuePerLevel = 5.1,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [2061] = { -- Flash Heal(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 193,
                valueRange = 44,
                valuePerLevel = 1.9,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [2767] = { -- Shadow Word: Pain(Rank 5)
        spellLevel = 34,
        maxLevel = 41,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 55,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [2944] = { -- Devouring Plague(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 19,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [3747] = { -- Power Word: Shield(Rank 4)
        spellLevel = 24,
        maxLevel = 29,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 234,
                valueRange = 0,
                valuePerLevel = 2,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [6060] = { -- Smite(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 212,
                valueRange = 28,
                valuePerLevel = 2,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [6063] = { -- Heal(Rank 3)
        spellLevel = 28,
        maxLevel = 33,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 566,
                valueRange = 76,
                valuePerLevel = 4,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [6064] = { -- Heal(Rank 4)
        spellLevel = 34,
        maxLevel = 39,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 712,
                valueRange = 92,
                valuePerLevel = 4.5,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [6065] = { -- Power Word: Shield(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 301,
                valueRange = 0,
                valuePerLevel = 2.3,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [6066] = { -- Power Word: Shield(Rank 6)
        spellLevel = 36,
        maxLevel = 41,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 381,
                valueRange = 0,
                valuePerLevel = 2.6,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [6074] = { -- Renew(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.291,
                coefAP = 0,
            },
        }
    },
    [6075] = { -- Renew(Rank 3)
        spellLevel = 20,
        maxLevel = 25,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 35,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [6076] = { -- Renew(Rank 4)
        spellLevel = 26,
        maxLevel = 31,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 49,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [6077] = { -- Renew(Rank 5)
        spellLevel = 32,
        maxLevel = 37,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 63,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [6078] = { -- Renew(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 80,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [8092] = { -- Mind Blast(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 39,
                valueRange = 4,
                valuePerLevel = 0.6,
                coef = 0.268,
                coefAP = 0,
            },
        }
    },
    [8102] = { -- Mind Blast(Rank 2)
        spellLevel = 16,
        maxLevel = 21,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 72,
                valueRange = 6,
                valuePerLevel = 0.9,
                coef = 0.364,
                coefAP = 0,
            },
        }
    },
    [8103] = { -- Mind Blast(Rank 3)
        spellLevel = 22,
        maxLevel = 27,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 112,
                valueRange = 8,
                valuePerLevel = 1.1,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8104] = { -- Mind Blast(Rank 4)
        spellLevel = 28,
        maxLevel = 33,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 167,
                valueRange = 10,
                valuePerLevel = 1.4,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8105] = { -- Mind Blast(Rank 5)
        spellLevel = 34,
        maxLevel = 39,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 217,
                valueRange = 14,
                valuePerLevel = 1.6,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8106] = { -- Mind Blast(Rank 6)
        spellLevel = 40,
        maxLevel = 45,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 279,
                valueRange = 18,
                valuePerLevel = 1.9,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [9472] = { -- Flash Heal(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 258,
                valueRange = 56,
                valuePerLevel = 2.2,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [9473] = { -- Flash Heal(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 327,
                valueRange = 66,
                valuePerLevel = 2.5,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [9474] = { -- Flash Heal(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 400,
                valueRange = 78,
                valuePerLevel = 2.8,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [10892] = { -- Shadow Word: Pain(Rank 6)
        spellLevel = 42,
        maxLevel = 49,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 77,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [10893] = { -- Shadow Word: Pain(Rank 7)
        spellLevel = 50,
        maxLevel = 57,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 101,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [10894] = { -- Shadow Word: Pain(Rank 8)
        spellLevel = 58,
        maxLevel = 64,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 128,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [10898] = { -- Power Word: Shield(Rank 7)
        spellLevel = 42,
        maxLevel = 47,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 484,
                valueRange = 0,
                valuePerLevel = 3,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [10899] = { -- Power Word: Shield(Rank 8)
        spellLevel = 48,
        maxLevel = 53,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 605,
                valueRange = 0,
                valuePerLevel = 3.4,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [10900] = { -- Power Word: Shield(Rank 9)
        spellLevel = 54,
        maxLevel = 59,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 763,
                valueRange = 0,
                valuePerLevel = 3.9,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [10901] = { -- Power Word: Shield(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 942,
                valueRange = 0,
                valuePerLevel = 4.3,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [10915] = { -- Flash Heal(Rank 5)
        spellLevel = 44,
        maxLevel = 49,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 518,
                valueRange = 98,
                valuePerLevel = 3.3,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [10916] = { -- Flash Heal(Rank 6)
        spellLevel = 50,
        maxLevel = 55,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 644,
                valueRange = 120,
                valuePerLevel = 3.7,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [10917] = { -- Flash Heal(Rank 7)
        spellLevel = 56,
        maxLevel = 61,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 812,
                valueRange = 146,
                valuePerLevel = 4.2,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [10927] = { -- Renew(Rank 7)
        spellLevel = 44,
        maxLevel = 49,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 102,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [10928] = { -- Renew(Rank 8)
        spellLevel = 50,
        maxLevel = 55,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 130,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [10929] = { -- Renew(Rank 9)
        spellLevel = 56,
        maxLevel = 61,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 162,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [10933] = { -- Smite(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 287,
                valueRange = 36,
                valuePerLevel = 2.3,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [10934] = { -- Smite(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 371,
                valueRange = 44,
                valuePerLevel = 2.7,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [10945] = { -- Mind Blast(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 346,
                valueRange = 20,
                valuePerLevel = 2.1,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [10946] = { -- Mind Blast(Rank 8)
        spellLevel = 52,
        maxLevel = 57,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 425,
                valueRange = 24,
                valuePerLevel = 2.4,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [10947] = { -- Mind Blast(Rank 9)
        spellLevel = 58,
        maxLevel = 63,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 503,
                valueRange = 28,
                valuePerLevel = 2.6,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [10960] = { -- Prayer of Healing(Rank 3)
        spellLevel = 50,
        maxLevel = 59,
        baseCostPct = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 657,
                valueRange = 38,
                valuePerLevel = 2,
                coef = 0.526,
                coefAP = 0,
            },
        }
    },
    [10961] = { -- Prayer of Healing(Rank 4)
        spellLevel = 60,
        maxLevel = 69,
        baseCostPct = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 939,
                valueRange = 52,
                valuePerLevel = 2.4,
                coef = 0.526,
                coefAP = 0,
            },
        }
    },
    [10963] = { -- Greater Heal(Rank 2)
        spellLevel = 46,
        maxLevel = 51,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1149,
                valueRange = 140,
                valuePerLevel = 5.8,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [10964] = { -- Greater Heal(Rank 3)
        spellLevel = 52,
        maxLevel = 57,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1437,
                valueRange = 172,
                valuePerLevel = 6.6,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [10965] = { -- Greater Heal(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1798,
                valueRange = 208,
                valuePerLevel = 7.5,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [14914] = { -- Holy Fire(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 102,
                valueRange = 26,
                valuePerLevel = 1.5,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 3,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [15237] = { -- Holy Nova(Rank 1)
        spellLevel = 20,
        maxLevel = 26,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 28,
                valueRange = 4,
                valuePerLevel = 0.2,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 23455,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [15261] = { -- Holy Fire(Rank 8)
        spellLevel = 60,
        maxLevel = 66,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 639,
                valueRange = 172,
                valuePerLevel = 3.4,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 18,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [15262] = { -- Holy Fire(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 137,
                valueRange = 36,
                valuePerLevel = 1.7,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 4,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [15263] = { -- Holy Fire(Rank 3)
        spellLevel = 30,
        maxLevel = 36,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 200,
                valueRange = 52,
                valuePerLevel = 2,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 6,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [15264] = { -- Holy Fire(Rank 4)
        spellLevel = 36,
        maxLevel = 42,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 267,
                valueRange = 72,
                valuePerLevel = 2.2,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 8,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [15265] = { -- Holy Fire(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 348,
                valueRange = 92,
                valuePerLevel = 2.5,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 10,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [15266] = { -- Holy Fire(Rank 6)
        spellLevel = 48,
        maxLevel = 54,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 430,
                valueRange = 116,
                valuePerLevel = 2.9,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 13,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [15267] = { -- Holy Fire(Rank 7)
        spellLevel = 54,
        maxLevel = 60,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 529,
                valueRange = 142,
                valuePerLevel = 3.2,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 16,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [15407] = { -- Mind Flay(Rank 1)
        spellLevel = 20,
        maxLevel = 28,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 15,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0.271,
                coefAP = 0,
            },
        }
    },
    [15430] = { -- Holy Nova(Rank 2)
        spellLevel = 28,
        maxLevel = 34,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 50,
                valueRange = 8,
                valuePerLevel = 0.4,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 23458,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [15431] = { -- Holy Nova(Rank 3)
        spellLevel = 36,
        maxLevel = 42,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 76,
                valueRange = 12,
                valuePerLevel = 0.6,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 23459,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [17311] = { -- Mind Flay(Rank 2)
        spellLevel = 28,
        maxLevel = 36,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 36,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [17312] = { -- Mind Flay(Rank 3)
        spellLevel = 36,
        maxLevel = 44,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 53,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [17313] = { -- Mind Flay(Rank 4)
        spellLevel = 44,
        maxLevel = 52,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 74,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [17314] = { -- Mind Flay(Rank 5)
        spellLevel = 52,
        maxLevel = 60,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 94,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [18807] = { -- Mind Flay(Rank 6)
        spellLevel = 60,
        maxLevel = 68,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 121,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19236] = { -- Desperate Prayer(Rank 1)
        spellLevel = 20,
        maxLevel = 26,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 263,
                valueRange = 62,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [19238] = { -- Desperate Prayer(Rank 2)
        spellLevel = 26,
        maxLevel = 32,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 447,
                valueRange = 96,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [19240] = { -- Desperate Prayer(Rank 3)
        spellLevel = 34,
        maxLevel = 40,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 588,
                valueRange = 120,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [19241] = { -- Desperate Prayer(Rank 4)
        spellLevel = 42,
        maxLevel = 48,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 834,
                valueRange = 160,
                valuePerLevel = 6.4,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [19242] = { -- Desperate Prayer(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1101,
                valueRange = 204,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [19243] = { -- Desperate Prayer(Rank 6)
        spellLevel = 58,
        maxLevel = 0,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1324,
                valueRange = 238,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [19276] = { -- Devouring Plague(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 34,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [19277] = { -- Devouring Plague(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 50,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [19278] = { -- Devouring Plague(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 68,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [19279] = { -- Devouring Plague(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 89,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [19280] = { -- Devouring Plague(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 113,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [23455] = { -- Holy Nova(Rank 1)
        spellLevel = 20,
        maxLevel = 26,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 52,
                valueRange = 8,
                valuePerLevel = 0.4,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [23458] = { -- Holy Nova(Rank 2)
        spellLevel = 28,
        maxLevel = 34,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 86,
                valueRange = 12,
                valuePerLevel = 0.5,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [23459] = { -- Holy Nova(Rank 3)
        spellLevel = 36,
        maxLevel = 42,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 121,
                valueRange = 18,
                valuePerLevel = 0.6,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [25210] = { -- Greater Heal(Rank 6)
        spellLevel = 63,
        maxLevel = 67,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2074,
                valueRange = 336,
                valuePerLevel = 8.4,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [25213] = { -- Greater Heal(Rank 7)
        spellLevel = 68,
        maxLevel = 72,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2396,
                valueRange = 388,
                valuePerLevel = 9.3,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [25217] = { -- Power Word: Shield(Rank 11)
        spellLevel = 65,
        maxLevel = 69,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 1125,
                valueRange = 0,
                valuePerLevel = 4.7,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [25218] = { -- Power Word: Shield(Rank 12)
        spellLevel = 70,
        maxLevel = 74,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 1265,
                valueRange = 0,
                valuePerLevel = 5.1,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [25221] = { -- Renew(Rank 11)
        spellLevel = 65,
        maxLevel = 69,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 202,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [25222] = { -- Renew(Rank 12)
        spellLevel = 70,
        maxLevel = 74,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 222,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [25233] = { -- Flash Heal(Rank 8)
        spellLevel = 61,
        maxLevel = 65,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 913,
                valueRange = 146,
                valuePerLevel = 4.7,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [25235] = { -- Flash Heal(Rank 9)
        spellLevel = 67,
        maxLevel = 71,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1101,
                valueRange = 178,
                valuePerLevel = 5.2,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [25308] = { -- Prayer of Healing(Rank 6)
        spellLevel = 68,
        maxLevel = 75,
        baseCostPct = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1246,
                valueRange = 70,
                valuePerLevel = 2.8,
                coef = 0.526,
                coefAP = 0,
            },
        }
    },
    [25314] = { -- Greater Heal(Rank 5)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1966,
                valueRange = 228,
                valuePerLevel = 8.1,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [25315] = { -- Renew(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 194,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [25316] = { -- Prayer of Healing(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        baseCostPct = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 997,
                valueRange = 56,
                valuePerLevel = 2.5,
                coef = 0.526,
                coefAP = 0,
            },
        }
    },
    [25329] = { -- Holy Nova(Rank 7)
        spellLevel = 68,
        maxLevel = 74,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 384,
                valueRange = 62,
                valuePerLevel = 1,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [25331] = { -- Holy Nova(Rank 7)
        spellLevel = 68,
        maxLevel = 74,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 242,
                valueRange = 38,
                valuePerLevel = 1.4,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25329,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25363] = { -- Smite(Rank 9)
        spellLevel = 61,
        maxLevel = 66,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 405,
                valueRange = 48,
                valuePerLevel = 3.4,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [25364] = { -- Smite(Rank 10)
        spellLevel = 69,
        maxLevel = 73,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 545,
                valueRange = 66,
                valuePerLevel = 4.1,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [25367] = { -- Shadow Word: Pain(Rank 9)
        spellLevel = 65,
        maxLevel = 69,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 151,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [25368] = { -- Shadow Word: Pain(Rank 10)
        spellLevel = 70,
        maxLevel = 74,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 186,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [25372] = { -- Mind Blast(Rank 10)
        spellLevel = 63,
        maxLevel = 68,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 557,
                valueRange = 30,
                valuePerLevel = 2.9,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [25375] = { -- Mind Blast(Rank 11)
        spellLevel = 69,
        maxLevel = 73,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 708,
                valueRange = 40,
                valuePerLevel = 3.2,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [25384] = { -- Holy Fire(Rank 9)
        spellLevel = 66,
        maxLevel = 70,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 705,
                valueRange = 190,
                valuePerLevel = 3.6,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 21,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [25387] = { -- Mind Flay(Rank 7)
        spellLevel = 68,
        maxLevel = 72,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 150,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0.271,
                coefAP = 0,
            },
        }
    },
    [25437] = { -- Desperate Prayer(Rank 7)
        spellLevel = 66,
        maxLevel = 0,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1601,
                valueRange = 286,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [25467] = { -- Devouring Plague(Rank 7)
        spellLevel = 68,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 136,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [27799] = { -- Holy Nova(Rank 4)
        spellLevel = 44,
        maxLevel = 50,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 106,
                valueRange = 16,
                valuePerLevel = 0.8,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 27803,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27800] = { -- Holy Nova(Rank 5)
        spellLevel = 52,
        maxLevel = 58,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 140,
                valueRange = 22,
                valuePerLevel = 1,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 27804,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27801] = { -- Holy Nova(Rank 6)
        spellLevel = 60,
        maxLevel = 66,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 181,
                valueRange = 28,
                valuePerLevel = 1.2,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 27805,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27803] = { -- Holy Nova(Rank 4)
        spellLevel = 44,
        maxLevel = 50,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 161,
                valueRange = 26,
                valuePerLevel = 0.7,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [27804] = { -- Holy Nova(Rank 5)
        spellLevel = 52,
        maxLevel = 58,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 235,
                valueRange = 36,
                valuePerLevel = 0.8,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [27805] = { -- Holy Nova(Rank 6)
        spellLevel = 60,
        maxLevel = 66,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 302,
                valueRange = 48,
                valuePerLevel = 0.9,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [32379] = { -- Shadow Word: Death(Rank 1)
        spellLevel = 62,
        maxLevel = 69,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 450,
                valueRange = 72,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [32546] = { -- Binding Heal(Rank 1)
        spellLevel = 64,
        maxLevel = 71,
        baseCostPct = 27,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1042,
                valueRange = 296,
                valuePerLevel = 1.9,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [32996] = { -- Shadow Word: Death(Rank 2)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 572,
                valueRange = 92,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [33076] = { -- Prayer of Mending(Rank 1)
        spellLevel = 68,
        maxLevel = 72,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        forceHeal = true,
        charges = 5,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 800,
                valueRange = 0,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [34861] = { -- Circle of Healing(Rank 1)
        spellLevel = 50,
        maxLevel = 54,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 343,
                valueRange = 36,
                valuePerLevel = 1,
                coef = 0.402,
                coefAP = 0,
            },
        }
    },
    [34863] = { -- Circle of Healing(Rank 2)
        spellLevel = 56,
        maxLevel = 60,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 403,
                valueRange = 42,
                valuePerLevel = 1.2,
                coef = 0.402,
                coefAP = 0,
            },
        }
    },
    [34864] = { -- Circle of Healing(Rank 3)
        spellLevel = 60,
        maxLevel = 64,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 458,
                valueRange = 48,
                valuePerLevel = 1.4,
                coef = 0.402,
                coefAP = 0,
            },
        }
    },
    [34865] = { -- Circle of Healing(Rank 4)
        spellLevel = 65,
        maxLevel = 69,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 518,
                valueRange = 54,
                valuePerLevel = 1.6,
                coef = 0.402,
                coefAP = 0,
            },
        }
    },
    [34866] = { -- Circle of Healing(Rank 5)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 572,
                valueRange = 60,
                valuePerLevel = 1.8,
                coef = 0.402,
                coefAP = 0,
            },
        }
    },
    [34914] = { -- Vampiric Touch(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 15,
        baseCostPct = 16,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 90,
                valueRange = 0,
                coef = 0.4,
                coefAP = 0,
            },
        }
    },
    [34916] = { -- Vampiric Touch(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 15,
        baseCostPct = 16,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 120,
                valueRange = 0,
                coef = 0.4,
                coefAP = 0,
            },
        }
    },
    [34917] = { -- Vampiric Touch(Rank 3)
        spellLevel = 70,
        maxLevel = 74,
        duration = 15,
        baseCostPct = 16,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 130,
                valueRange = 0,
                coef = 0.4,
                coefAP = 0,
            },
        }
    },
    [47540] = { -- Penance(Rank 1)
        spellLevel = 60,
        maxLevel = 69,
        duration = 2,
        baseCostPct = 16,
        school = 2,
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
                triggeredSpell = 47750,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 47666,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [47666] = { -- Penance(Rank 1)
        spellLevel = 60,
        maxLevel = 69,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 240,
                valueRange = 0,
                coef = 0.229,
                coefAP = 0,
            },
        }
    },
    [47750] = { -- Penance(Rank 1)
        spellLevel = 60,
        maxLevel = 69,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 670,
                valueRange = 86,
                coef = 0.537,
                coefAP = 0,
            },
        }
    },
    [48045] = { -- Mind Sear(Rank 1)
        spellLevel = 75,
        maxLevel = 79,
        duration = 5,
        baseCostPct = 28,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 1,
                valueRange = 0,
                triggeredSpell = 49821,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48062] = { -- Greater Heal(Rank 8)
        spellLevel = 73,
        maxLevel = 77,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3395,
                valueRange = 550,
                valuePerLevel = 13.2,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [48063] = { -- Greater Heal(Rank 9)
        spellLevel = 78,
        maxLevel = 82,
        baseCostPct = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3950,
                valueRange = 640,
                valuePerLevel = 15.4,
                coef = 1.611,
                coefAP = 0,
            },
        }
    },
    [48065] = { -- Power Word: Shield(Rank 13)
        spellLevel = 75,
        maxLevel = 79,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 1920,
                valueRange = 0,
                valuePerLevel = 7.7,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [48066] = { -- Power Word: Shield(Rank 14)
        spellLevel = 80,
        maxLevel = 84,
        duration = 30,
        baseCostPct = 23,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 2230,
                valueRange = 0,
                valuePerLevel = 9,
                coef = 0.8068,
                coefAP = 0,
            },
        }
    },
    [48067] = { -- Renew(Rank 13)
        spellLevel = 75,
        maxLevel = 79,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 247,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [48068] = { -- Renew(Rank 14)
        spellLevel = 80,
        maxLevel = 84,
        duration = 15,
        baseCostPct = 17,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 280,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [48070] = { -- Flash Heal(Rank 10)
        spellLevel = 73,
        maxLevel = 78,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1578,
                valueRange = 254,
                valuePerLevel = 8,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48071] = { -- Flash Heal(Rank 11)
        spellLevel = 79,
        maxLevel = 84,
        baseCostPct = 18,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1887,
                valueRange = 306,
                valuePerLevel = 9.7,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48072] = { -- Prayer of Healing(Rank 7)
        spellLevel = 76,
        maxLevel = 82,
        baseCostPct = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 2091,
                valueRange = 118,
                valuePerLevel = 4.7,
                coef = 0.526,
                coefAP = 0,
            },
        }
    },
    [48075] = { -- Holy Nova(Rank 8)
        spellLevel = 75,
        maxLevel = 79,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 611,
                valueRange = 98,
                valuePerLevel = 1.6,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [48076] = { -- Holy Nova(Rank 9)
        spellLevel = 80,
        maxLevel = 84,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 713,
                valueRange = 114,
                valuePerLevel = 1.9,
                coef = 0.303,
                coefAP = 0,
            },
        }
    },
    [48077] = { -- Holy Nova(Rank 8)
        spellLevel = 75,
        maxLevel = 79,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 333,
                valueRange = 54,
                valuePerLevel = 2,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 48075,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48078] = { -- Holy Nova(Rank 9)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 398,
                valueRange = 64,
                valuePerLevel = 3,
                coef = 0.161,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 48076,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48088] = { -- Circle of Healing(Rank 6)
        spellLevel = 75,
        maxLevel = 79,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 825,
                valueRange = 86,
                valuePerLevel = 2,
                coef = 0.402,
                coefAP = 0,
            },
        }
    },
    [48089] = { -- Circle of Healing(Rank 7)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 958,
                valueRange = 100,
                valuePerLevel = 3,
                coef = 0.402,
                coefAP = 0,
            },
        }
    },
    [48112] = { -- Prayer of Mending(Rank 2)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        forceHeal = true,
        charges = 5,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 905,
                valueRange = 0,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48113] = { -- Prayer of Mending(Rank 3)
        spellLevel = 79,
        maxLevel = 84,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        forceHeal = true,
        charges = 5,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 1043,
                valueRange = 0,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48119] = { -- Binding Heal(Rank 2)
        spellLevel = 72,
        maxLevel = 76,
        baseCostPct = 27,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1619,
                valueRange = 462,
                valuePerLevel = 3,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48120] = { -- Binding Heal(Rank 3)
        spellLevel = 78,
        maxLevel = 82,
        baseCostPct = 27,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1952,
                valueRange = 556,
                valuePerLevel = 3.6,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48122] = { -- Smite(Rank 11)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 604,
                valueRange = 72,
                valuePerLevel = 5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [48123] = { -- Smite(Rank 12)
        spellLevel = 79,
        maxLevel = 83,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 707,
                valueRange = 86,
                valuePerLevel = 6,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [48124] = { -- Shadow Word: Pain(Rank 11)
        spellLevel = 75,
        maxLevel = 79,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 196,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [48125] = { -- Shadow Word: Pain(Rank 12)
        spellLevel = 80,
        maxLevel = 84,
        duration = 18,
        baseCostPct = 22,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 230,
                valueRange = 0,
                coef = 0.1833,
                coefAP = 0,
            },
        }
    },
    [48126] = { -- Mind Blast(Rank 12)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 837,
                valueRange = 46,
                valuePerLevel = 4,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [48127] = { -- Mind Blast(Rank 13)
        spellLevel = 79,
        maxLevel = 83,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 992,
                valueRange = 56,
                valuePerLevel = 5,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [48134] = { -- Holy Fire(Rank 10)
        spellLevel = 72,
        maxLevel = 76,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 732,
                valueRange = 196,
                valuePerLevel = 4,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 41,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [48135] = { -- Holy Fire(Rank 11)
        spellLevel = 78,
        maxLevel = 82,
        duration = 7,
        baseCostPct = 11,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 890,
                valueRange = 240,
                valuePerLevel = 5,
                coef = 0.571,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 50,
                valueRange = 0,
                coef = 0.024,
                coefAP = 0,
            },
        }
    },
    [48155] = { -- Mind Flay(Rank 8)
        spellLevel = 74,
        maxLevel = 78,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 164,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0.271,
                coefAP = 0,
            },
        }
    },
    [48156] = { -- Mind Flay(Rank 9)
        spellLevel = 80,
        maxLevel = 84,
        duration = 3,
        baseCostPct = 9,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 227,
                tickPeriod = 1,
                valueBase = 196,
                valueRange = 0,
                triggeredSpell = 58381,
                coef = 0.271,
                coefAP = 0,
            },
        }
    },
    [48157] = { -- Shadow Word: Death(Rank 3)
        spellLevel = 75,
        maxLevel = 79,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 639,
                valueRange = 102,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [48158] = { -- Shadow Word: Death(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 750,
                valueRange = 120,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [48159] = { -- Vampiric Touch(Rank 4)
        spellLevel = 75,
        maxLevel = 79,
        duration = 15,
        baseCostPct = 16,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 147,
                valueRange = 0,
                coef = 0.4,
                coefAP = 0,
            },
        }
    },
    [48160] = { -- Vampiric Touch(Rank 5)
        spellLevel = 80,
        maxLevel = 84,
        duration = 15,
        baseCostPct = 16,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 170,
                valueRange = 0,
                coef = 0.4,
                coefAP = 0,
            },
        }
    },
    [48172] = { -- Desperate Prayer(Rank 8)
        spellLevel = 73,
        maxLevel = 0,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3111,
                valueRange = 558,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48173] = { -- Desperate Prayer(Rank 9)
        spellLevel = 80,
        maxLevel = 0,
        baseCostPct = 21,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3716,
                valueRange = 668,
                coef = 0.807,
                coefAP = 0,
            },
        }
    },
    [48299] = { -- Devouring Plague(Rank 8)
        spellLevel = 73,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 143,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [48300] = { -- Devouring Plague(Rank 9)
        spellLevel = 79,
        maxLevel = 0,
        duration = 24,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 172,
                valueRange = 0,
                coef = 0.185,
                coefAP = 0,
            },
        }
    },
    [49821] = { -- Mind Sear(Rank 1)
        spellLevel = 75,
        maxLevel = 79,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 183,
                valueRange = 14,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [52983] = { -- Penance(Rank 2)
        spellLevel = 70,
        maxLevel = 74,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 805,
                valueRange = 104,
                coef = 0.537,
                coefAP = 0,
            },
        }
    },
    [52984] = { -- Penance(Rank 3)
        spellLevel = 75,
        maxLevel = 79,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1278,
                valueRange = 164,
                coef = 0.537,
                coefAP = 0,
            },
        }
    },
    [52985] = { -- Penance(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1484,
                valueRange = 192,
                coef = 0.537,
                coefAP = 0,
            },
        }
    },
    [52998] = { -- Penance(Rank 2)
        spellLevel = 70,
        maxLevel = 74,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 292,
                valueRange = 0,
                coef = 0.229,
                coefAP = 0,
            },
        }
    },
    [52999] = { -- Penance(Rank 3)
        spellLevel = 75,
        maxLevel = 79,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 333,
                valueRange = 0,
                coef = 0.229,
                coefAP = 0,
            },
        }
    },
    [53000] = { -- Penance(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 375,
                valueRange = 0,
                coef = 0.229,
                coefAP = 0,
            },
        }
    },
    [53005] = { -- Penance(Rank 2)
        spellLevel = 70,
        maxLevel = 74,
        duration = 2,
        baseCostPct = 16,
        school = 2,
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
                triggeredSpell = 52983,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 52998,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53006] = { -- Penance(Rank 3)
        spellLevel = 75,
        maxLevel = 79,
        duration = 2,
        baseCostPct = 16,
        school = 2,
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
                triggeredSpell = 52984,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 52999,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53007] = { -- Penance(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        duration = 2,
        baseCostPct = 16,
        school = 2,
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
                triggeredSpell = 52985,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 53000,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [53022] = { -- Mind Sear(Rank 2)
        spellLevel = 80,
        maxLevel = 84,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 212,
                valueRange = 16,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [53023] = { -- Mind Sear(Rank 2)
        spellLevel = 80,
        maxLevel = 84,
        duration = 5,
        baseCostPct = 28,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 1,
                valueRange = 0,
                triggeredSpell = 53022,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [58381] = { -- Mind Flay(Rank 9)
        spellLevel = 0,
        maxLevel = 0,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 0,
                valueRange = 0,
                coef = 0.257,
                coefAP = 0,
            },
        }
    },
    [64843] = { -- Divine Hymn(Rank 1)
        spellLevel = 80,
        maxLevel = 84,
        duration = 8,
        baseCostPct = 63,
        school = 2,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 2,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 64844,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [64844] = { -- Divine Hymn
        spellLevel = 80,
        maxLevel = 84,
        duration = 8,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 3024,
                valueRange = 318,
                coef = 0.564,
                coefAP = 0,
            },
        }
    },
};

---@type SpellClassSet
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
            48065, -- Power Word: Shield(Rank 13)
            48066, -- Power Word: Shield(Rank 14)
            71548, -- Power Word: Shield
            71780, -- Power Word: Shield
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
            48040, -- Inner Fire(Rank 8)
            48168, -- Inner Fire(Rank 9)
        },
        [4] = {
            15286, -- Vampiric Embrace
            22751, -- Fury of the Frostwolf
            23693, -- Stormpike's Salvation
            23964, -- Bloodrager's Requiem
            28418, -- General's Warcry
            28419, -- General's Warcry
            28420, -- General's Warcry
            71269, -- Vampiric Embrace
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
            43939, -- Prayer of Fortitude(Rank 3)
            48161, -- Power Word: Fortitude(Rank 8)
            48162, -- Prayer of Fortitude(Rank 4)
            63613, -- CK Test Disarm(Rank 8)
        },
        [16] = {
            8129, -- Mana Burn
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
            48073, -- Divine Spirit(Rank 6)
            48074, -- Prayer of Spirit(Rank 3)
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
            48067, -- Renew(Rank 13)
            48068, -- Renew(Rank 14)
            51956, -- Death Pact
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
            48122, -- Smite(Rank 11)
            48123, -- Smite(Rank 12)
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
            48169, -- Shadow Protection(Rank 5)
            48170, -- Prayer of Shadow Protection(Rank 3)
        },
        [512] = {
            596, -- Prayer of Healing(Rank 1)
            996, -- Prayer of Healing(Rank 2)
            10960, -- Prayer of Healing(Rank 3)
            10961, -- Prayer of Healing(Rank 4)
            25308, -- Prayer of Healing(Rank 6)
            25316, -- Prayer of Healing(Rank 5)
            30604, -- Prayer of Healing
            48072, -- Prayer of Healing(Rank 7)
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
            43516, -- Flash Heal
            43575, -- Flash Heal
            47536, -- Rapture(Rank 2)
            48070, -- Flash Heal(Rank 10)
            48071, -- Flash Heal(Rank 11)
            49348, -- Greater Heal
            56331, -- Flash Heal
            56919, -- Flash Heal
            57766, -- Flash of Light
            57775, -- Greater Heal
            59997, -- Flash of Light
            60003, -- Greater Heal
            61965, -- Greater Heal
            62334, -- Greater Heal
            62442, -- Greater Heal
            62809, -- Great Heal
            63760, -- Greater Heal
            67254, -- Blazing Light
            71930, -- Flash of Light
            71931, -- Greater Heal
            72484, -- Debug Heal
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
            47536, -- Rapture(Rank 2)
            48062, -- Greater Heal(Rank 8)
            48063, -- Greater Heal(Rank 9)
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
            48126, -- Mind Blast(Rank 12)
            48127, -- Mind Blast(Rank 13)
        },
        [16384] = {
            586, -- Fade
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
            48124, -- Shadow Word: Pain(Rank 11)
            48125, -- Shadow Word: Pain(Rank 12)
        },
        [65536] = {
            8122, -- Psychic Scream(Rank 1)
            8124, -- Psychic Scream(Rank 2)
            10888, -- Psychic Scream(Rank 3)
            10890, -- Psychic Scream(Rank 4)
            27610, -- Psychic Scream(Rank 4)
        },
        [131072] = {
            605, -- Mind Control
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
            16875, -- Divine Spirit(Rank 3)
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
            48134, -- Holy Fire(Rank 10)
            48135, -- Holy Fire(Rank 11)
        },
        [2097152] = {
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
            47586, -- Twin Disciplines(Rank 1)
            47587, -- Twin Disciplines(Rank 2)
            47588, -- Twin Disciplines(Rank 3)
            48077, -- Holy Nova(Rank 8)
            48078, -- Holy Nova(Rank 9)
            52802, -- Twin Disciplines(Rank 4)
            52803, -- Twin Disciplines(Rank 5)
            57771, -- Holy Nova
        },
        [8388608] = {
            16568, -- Mind Flay
            17165, -- Mind Flay
            22203, -- Blue Beam
            22205, -- Trigger Blue Beam
            22313, -- Purple Hands
            22800, -- Entangling Roots
            22802, -- Choking Spores
            22919, -- Mind Flay
            23642, -- Corruption
            23953, -- Mind Flay
            23979, -- Holy Wrath
            26044, -- Mind Flay
            26143, -- Mind Flay
            27286, -- Shadow Wrath
            27640, -- Baron Rivendare's Soul Drain
            28309, -- Purple Beam
            28310, -- Mind Flay
            28516, -- Sunwell Torrent
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
            43512, -- Mind Flay
            47581, -- Pain and Suffering(Rank 2)
            52292, -- Pestilience Test
            52586, -- Mind Flay
            52778, -- Welding Beam
            53638, -- Holy Wrath
            57941, -- Mind Flay
            58381, -- Mind Flay(Rank 9)
            59166, -- Welding Beam
            59367, -- Mind Flay
            59974, -- Mind Flay
            60181, -- Arcane Stream
            60472, -- Mind Flay
            61998, -- Welding Beam
        },
        [16777216] = {
            19236, -- Desperate Prayer(Rank 1)
            19238, -- Desperate Prayer(Rank 2)
            19240, -- Desperate Prayer(Rank 3)
            19241, -- Desperate Prayer(Rank 4)
            19242, -- Desperate Prayer(Rank 5)
            19243, -- Desperate Prayer(Rank 6)
            25437, -- Desperate Prayer(Rank 7)
            48172, -- Desperate Prayer(Rank 8)
            48173, -- Desperate Prayer(Rank 9)
        },
        [33554432] = {
            2944, -- Devouring Plague(Rank 1)
            19276, -- Devouring Plague(Rank 2)
            19277, -- Devouring Plague(Rank 3)
            19278, -- Devouring Plague(Rank 4)
            19279, -- Devouring Plague(Rank 5)
            19280, -- Devouring Plague(Rank 6)
            25467, -- Devouring Plague(Rank 7)
            48299, -- Devouring Plague(Rank 8)
            48300, -- Devouring Plague(Rank 9)
        },
        [67108864] = {
            2096, -- Mind Vision(Rank 1)
            10909, -- Mind Vision(Rank 2)
            25816, -- Hex of Weakness(Rank 6)
            32926, -- Lurk
            40789, -- Zoom Out
            40791, -- Zoom Out
            40792, -- Zoom In
            40793, -- Zoom In
            41233, -- Brute Cologne
            42129, -- First Person Camera
            45468, -- Mind Vision
            48301, -- Mind Trauma
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
            48075, -- Holy Nova(Rank 8)
            48076, -- Holy Nova(Rank 9)
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
            43516, -- Flash Heal
            43575, -- Flash Heal
            48088, -- Circle of Healing(Rank 6)
            48089, -- Circle of Healing(Rank 7)
            49306, -- Circle of Healing(Rank 7)
            49348, -- Greater Heal
            56331, -- Flash Heal
            56919, -- Flash Heal
            57766, -- Flash of Light
            57775, -- Greater Heal
            59997, -- Flash of Light
            60003, -- Greater Heal
            61965, -- Greater Heal
            62334, -- Greater Heal
            62442, -- Greater Heal
            62809, -- Great Heal
            63760, -- Greater Heal
            67254, -- Blazing Light
            71930, -- Flash of Light
            71931, -- Greater Heal
            72484, -- Debug Heal
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
            34433, -- Shadowfiend
            39649, -- Summon Shadowfiends
            40081, -- Free Friend
            40135, -- Shackle Undead
            40751, -- Disrupt Magic
            40769, -- Shivan Self Cleansing
            41159, -- Summon Shadowfiends
            43577, -- Dispel Magic
            47788, -- Guardian Spirit
            48086, -- Lightwell(Rank 5)
            48087, -- Lightwell(Rank 6)
            48171, -- Resurrection(Rank 7)
            51035, -- Gan'jo's Resurrection(Rank 7)
            55598, -- Cleanse Magic
        },
        [2147483648] = {
            1706, -- Levitate
            6346, -- Fear Ward
            10060, -- Power Infusion
            15090, -- Dispel Magic
            15229, -- Crystal Restore
            15473, -- Shadowform
            16329, -- Juju Might
            16873, -- Holy Word: Fortitude(Rank 6)
            16874, -- Shadow Protection(Rank 3)
            16875, -- Divine Spirit(Rank 3)
            17151, -- Shadow Barrier
            17201, -- Dispel Magic
            20694, -- Holy Nova
            22751, -- Fury of the Frostwolf
            22822, -- Starshards
            22823, -- Starshards
            23693, -- Stormpike's Salvation
            23858, -- Holy Nova
            23859, -- Dispel Magic
            23964, -- Bloodrager's Requiem
            24022, -- Cleanse Nova
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
            33206, -- Pain Suppression
            34222, -- Sunseeker Blessing
            34379, -- Bloodgem Infusion
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
            47788, -- Guardian Spirit
            48301, -- Mind Trauma
            49868, -- Shadowform
            52970, -- Levitate
            55598, -- Cleanse Magic
            71167, -- Shadowform
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
            49946, -- Chaff(Rank 1)
            55677, -- Glyph of Dispel Magic
        },
        [2] = {
            32379, -- Shadow Word: Death(Rank 1)
            32996, -- Shadow Word: Death(Rank 2)
            48157, -- Shadow Word: Death(Rank 3)
            48158, -- Shadow Word: Death(Rank 4)
        },
        [4] = {
            32546, -- Binding Heal(Rank 1)
            48119, -- Binding Heal(Rank 2)
            48120, -- Binding Heal(Rank 3)
        },
        [8] = {
            15258, -- Shadow Weaving(Rank 1)
        },
        [32] = {
            33076, -- Prayer of Mending(Rank 1)
            33110, -- Prayer of Mending
            41635, -- Prayer of Mending(Rank 1)
            48110, -- Prayer of Mending(Rank 2)
            48111, -- Prayer of Mending(Rank 3)
            48112, -- Prayer of Mending(Rank 2)
            48113, -- Prayer of Mending(Rank 3)
            351575, -- Prayer of Mending(Rank 1)
        },
        [64] = {
            453, -- Mind Soothe
        },
        [128] = {
            32375, -- Mass Dispel
            32592, -- Mass Dispel
            39897, -- Mass Dispel
            43241, -- Mass Dispel - Cosmetic
            353184, -- Mass Dispel
        },
        [256] = {
            34433, -- Shadowfiend
            39649, -- Summon Shadowfiends
            41159, -- Summon Shadowfiends
        },
        [512] = {
            34754, -- Holy Concentration
            63724, -- Holy Concentration
            63725, -- Holy Concentration
        },
        [1024] = {
            34914, -- Vampiric Touch(Rank 1)
            34916, -- Vampiric Touch(Rank 2)
            34917, -- Vampiric Touch(Rank 3)
            48159, -- Vampiric Touch(Rank 4)
            48160, -- Vampiric Touch(Rank 5)
        },
        [2048] = {
            15473, -- Shadowform
            49868, -- Shadowform
            71167, -- Shadowform
        },
        [4096] = {
            586, -- Fade
            1706, -- Levitate
            2944, -- Devouring Plague(Rank 1)
            6346, -- Fear Ward
            9484, -- Shackle Undead(Rank 1)
            9485, -- Shackle Undead(Rank 2)
            10060, -- Power Infusion
            10955, -- Shackle Undead(Rank 3)
            14743, -- Focused Casting(Rank 1)
            14751, -- Inner Focus
            14893, -- Inspiration(Rank 1)
            15271, -- Spirit Tap(Rank 1)
            15357, -- Inspiration(Rank 2)
            15359, -- Inspiration(Rank 3)
            15487, -- Silence
            19276, -- Devouring Plague(Rank 2)
            19277, -- Devouring Plague(Rank 3)
            19278, -- Devouring Plague(Rank 4)
            19279, -- Devouring Plague(Rank 5)
            19280, -- Devouring Plague(Rank 6)
            25467, -- Devouring Plague(Rank 7)
            27813, -- Blessed Recovery(Rank 1)
            27817, -- Blessed Recovery(Rank 2)
            27818, -- Blessed Recovery(Rank 3)
            27828, -- Focused Casting(Rank 2)
            33143, -- Blessed Resilience(Rank 1)
            33151, -- Surge of Light(Rank 1)
            33206, -- Pain Suppression
            45237, -- Focused Will(Rank 1)
            45241, -- Focused Will(Rank 2)
            45242, -- Focused Will(Rank 3)
            47753, -- Divine Aegis(Rank 1)
            47930, -- Grace
            48299, -- Devouring Plague(Rank 8)
            48300, -- Devouring Plague(Rank 9)
            48301, -- Mind Trauma
            49694, -- Improved Spirit Tap(Rank 1)
            50779, -- Blood Rune Mastery
            54704, -- Divine Aegis(Rank 1)
            59000, -- Improved Spirit Tap(Rank 2)
            63731, -- Serendipity
            63734, -- Serendipity
            63735, -- Serendipity
        },
        [8192] = {
            32409, -- Shadow Word: Death
        },
        [16384] = {
            33619, -- Reflective Shield
        },
        [32768] = {
            47666, -- Penance(Rank 1)
            52998, -- Penance(Rank 2)
            52999, -- Penance(Rank 3)
            53000, -- Penance(Rank 4)
        },
        [65536] = {
            47536, -- Rapture(Rank 2)
            47750, -- Penance(Rank 1)
            47757, -- Penance(Rank 1)
            52983, -- Penance(Rank 2)
            52984, -- Penance(Rank 3)
            52985, -- Penance(Rank 4)
            52986, -- Penance(Rank 2)
            52987, -- Penance(Rank 3)
            52988, -- Penance(Rank 4)
        },
        [131072] = {
            34753, -- Holy Concentration(Rank 1)
            34859, -- Holy Concentration(Rank 2)
            34860, -- Holy Concentration(Rank 3)
        },
        [262144] = {
            47585, -- Dispersion
            60069, -- Dispersion
        },
        [524288] = {
            49821, -- Mind Sear(Rank 1)
            53022, -- Mind Sear(Rank 2)
        },
        [1048576] = {
            48045, -- Mind Sear(Rank 1)
            53023, -- Mind Sear(Rank 2)
        },
        [2097152] = {
            15487, -- Silence
            55742, -- Accelerated
        },
        [4194304] = {
            27790, -- Holy Reach(Rank 2)
            64843, -- Divine Hymn(Rank 1)
        },
        [8388608] = {
            47540, -- Penance(Rank 1)
            53005, -- Penance(Rank 2)
            53006, -- Penance(Rank 3)
            53007, -- Penance(Rank 4)
        },
        [16777216] = {
            47753, -- Divine Aegis(Rank 1)
            54704, -- Divine Aegis(Rank 1)
        },
        [33554432] = {
            6346, -- Fear Ward
        },
        [67108864] = {
            9484, -- Shackle Undead(Rank 1)
            9485, -- Shackle Undead(Rank 2)
            10955, -- Shackle Undead(Rank 3)
        },
        [134217728] = {
            48153, -- Guardian Spirit
        },
        [268435456] = {
            33206, -- Pain Suppression
        },
        [536870912] = {
            10060, -- Power Infusion
        },
        [1073741824] = {
            14751, -- Inner Focus
        },
        [2147483648] = {
            2096, -- Mind Vision(Rank 1)
            10909, -- Mind Vision(Rank 2)
        },
    },
    [3] = {
        [1] = {
            1706, -- Levitate
        },
        [4] = {
            64844, -- Divine Hymn
        },
        [8] = {
            63675, -- Improved Devouring Plague
            75999, -- Improved Devouring Plague
        },
        [16] = {
            64901, -- Hymn of Hope
            64904, -- Hymn of Hope
        },
        [32] = {
            59887, -- Borrowed Time
            59888, -- Borrowed Time
            59889, -- Borrowed Time
            59890, -- Borrowed Time
            59891, -- Borrowed Time
        },
        [64] = {
            15407, -- Mind Flay(Rank 1)
            17311, -- Mind Flay(Rank 2)
            17312, -- Mind Flay(Rank 3)
            17313, -- Mind Flay(Rank 4)
            17314, -- Mind Flay(Rank 5)
            18807, -- Mind Flay(Rank 6)
            25387, -- Mind Flay(Rank 7)
            48155, -- Mind Flay(Rank 8)
            48156, -- Mind Flay(Rank 9)
            61978, -- Ron's Test Spell #5(Rank 9)
        },
        [128] = {
            47757, -- Penance(Rank 1)
            47758, -- Penance(Rank 1)
            52986, -- Penance(Rank 2)
            52987, -- Penance(Rank 3)
            52988, -- Penance(Rank 4)
            53001, -- Penance(Rank 2)
            53002, -- Penance(Rank 3)
            53003, -- Penance(Rank 4)
        },
        [512] = {
            20711, -- Spirit of Redemption
            27827, -- Spirit of Redemption
        },
        [1024] = {
            17, -- Power Word: Shield(Rank 1)
            139, -- Renew(Rank 1)
            528, -- Cure Disease
            552, -- Abolish Disease
            586, -- Fade
            588, -- Inner Fire(Rank 1)
            589, -- Shadow Word: Pain(Rank 1)
            592, -- Power Word: Shield(Rank 2)
            594, -- Shadow Word: Pain(Rank 2)
            600, -- Power Word: Shield(Rank 3)
            602, -- Inner Fire(Rank 3)
            970, -- Shadow Word: Pain(Rank 3)
            976, -- Shadow Protection(Rank 1)
            992, -- Shadow Word: Pain(Rank 4)
            1006, -- Inner Fire(Rank 4)
            1243, -- Power Word: Fortitude(Rank 1)
            1244, -- Power Word: Fortitude(Rank 2)
            1245, -- Power Word: Fortitude(Rank 3)
            1706, -- Levitate
            2767, -- Shadow Word: Pain(Rank 5)
            2791, -- Power Word: Fortitude(Rank 4)
            2944, -- Devouring Plague(Rank 1)
            3747, -- Power Word: Shield(Rank 4)
            6065, -- Power Word: Shield(Rank 5)
            6066, -- Power Word: Shield(Rank 6)
            6074, -- Renew(Rank 2)
            6075, -- Renew(Rank 3)
            6076, -- Renew(Rank 4)
            6077, -- Renew(Rank 5)
            6078, -- Renew(Rank 6)
            6346, -- Fear Ward
            7128, -- Inner Fire(Rank 2)
            10060, -- Power Infusion
            10892, -- Shadow Word: Pain(Rank 6)
            10893, -- Shadow Word: Pain(Rank 7)
            10894, -- Shadow Word: Pain(Rank 8)
            10898, -- Power Word: Shield(Rank 7)
            10899, -- Power Word: Shield(Rank 8)
            10900, -- Power Word: Shield(Rank 9)
            10901, -- Power Word: Shield(Rank 10)
            10927, -- Renew(Rank 7)
            10928, -- Renew(Rank 8)
            10929, -- Renew(Rank 9)
            10937, -- Power Word: Fortitude(Rank 5)
            10938, -- Power Word: Fortitude(Rank 6)
            10951, -- Inner Fire(Rank 5)
            10952, -- Inner Fire(Rank 6)
            10957, -- Shadow Protection(Rank 2)
            10958, -- Shadow Protection(Rank 3)
            14743, -- Focused Casting(Rank 1)
            14751, -- Inner Focus
            14752, -- Divine Spirit(Rank 1)
            14818, -- Divine Spirit(Rank 2)
            14819, -- Divine Spirit(Rank 3)
            14914, -- Holy Fire(Rank 1)
            15258, -- Shadow Weaving(Rank 1)
            15261, -- Holy Fire(Rank 8)
            15262, -- Holy Fire(Rank 2)
            15263, -- Holy Fire(Rank 3)
            15264, -- Holy Fire(Rank 4)
            15265, -- Holy Fire(Rank 5)
            15266, -- Holy Fire(Rank 6)
            15267, -- Holy Fire(Rank 7)
            15271, -- Spirit Tap(Rank 1)
            15407, -- Mind Flay(Rank 1)
            17311, -- Mind Flay(Rank 2)
            17312, -- Mind Flay(Rank 3)
            17313, -- Mind Flay(Rank 4)
            17314, -- Mind Flay(Rank 5)
            18807, -- Mind Flay(Rank 6)
            19276, -- Devouring Plague(Rank 2)
            19277, -- Devouring Plague(Rank 3)
            19278, -- Devouring Plague(Rank 4)
            19279, -- Devouring Plague(Rank 5)
            19280, -- Devouring Plague(Rank 6)
            21562, -- Prayer of Fortitude(Rank 1)
            21564, -- Prayer of Fortitude(Rank 2)
            25217, -- Power Word: Shield(Rank 11)
            25218, -- Power Word: Shield(Rank 12)
            25221, -- Renew(Rank 11)
            25222, -- Renew(Rank 12)
            25312, -- Divine Spirit(Rank 5)
            25315, -- Renew(Rank 10)
            25367, -- Shadow Word: Pain(Rank 9)
            25368, -- Shadow Word: Pain(Rank 10)
            25384, -- Holy Fire(Rank 9)
            25387, -- Mind Flay(Rank 7)
            25389, -- Power Word: Fortitude(Rank 7)
            25392, -- Prayer of Fortitude(Rank 3)
            25431, -- Inner Fire(Rank 7)
            25433, -- Shadow Protection(Rank 4)
            25467, -- Devouring Plague(Rank 7)
            27683, -- Prayer of Shadow Protection(Rank 1)
            27813, -- Blessed Recovery(Rank 1)
            27817, -- Blessed Recovery(Rank 2)
            27818, -- Blessed Recovery(Rank 3)
            27828, -- Focused Casting(Rank 2)
            27841, -- Divine Spirit(Rank 4)
            33076, -- Prayer of Mending(Rank 1)
            33151, -- Surge of Light(Rank 1)
            33206, -- Pain Suppression
            34754, -- Holy Concentration
            34914, -- Vampiric Touch(Rank 1)
            34916, -- Vampiric Touch(Rank 2)
            34917, -- Vampiric Touch(Rank 3)
            39374, -- Prayer of Shadow Protection(Rank 2)
            41635, -- Prayer of Mending(Rank 1)
            45237, -- Focused Will(Rank 1)
            45241, -- Focused Will(Rank 2)
            45242, -- Focused Will(Rank 3)
            47585, -- Dispersion
            47753, -- Divine Aegis(Rank 1)
            47788, -- Guardian Spirit
            47930, -- Grace
            48040, -- Inner Fire(Rank 8)
            48065, -- Power Word: Shield(Rank 13)
            48066, -- Power Word: Shield(Rank 14)
            48067, -- Renew(Rank 13)
            48068, -- Renew(Rank 14)
            48073, -- Divine Spirit(Rank 6)
            48110, -- Prayer of Mending(Rank 2)
            48111, -- Prayer of Mending(Rank 3)
            48112, -- Prayer of Mending(Rank 2)
            48113, -- Prayer of Mending(Rank 3)
            48124, -- Shadow Word: Pain(Rank 11)
            48125, -- Shadow Word: Pain(Rank 12)
            48134, -- Holy Fire(Rank 10)
            48135, -- Holy Fire(Rank 11)
            48153, -- Guardian Spirit
            48155, -- Mind Flay(Rank 8)
            48159, -- Vampiric Touch(Rank 4)
            48160, -- Vampiric Touch(Rank 5)
            48161, -- Power Word: Fortitude(Rank 8)
            48162, -- Prayer of Fortitude(Rank 4)
            48168, -- Inner Fire(Rank 9)
            48169, -- Shadow Protection(Rank 5)
            48170, -- Prayer of Shadow Protection(Rank 3)
            48299, -- Devouring Plague(Rank 8)
            48300, -- Devouring Plague(Rank 9)
            49694, -- Improved Spirit Tap(Rank 1)
            54704, -- Divine Aegis(Rank 1)
            59000, -- Improved Spirit Tap(Rank 2)
            59887, -- Borrowed Time
            59888, -- Borrowed Time
            59889, -- Borrowed Time
            59890, -- Borrowed Time
            59891, -- Borrowed Time
            60069, -- Dispersion
            63613, -- CK Test Disarm(Rank 8)
            63724, -- Holy Concentration
            63725, -- Holy Concentration
            63731, -- Serendipity
            63734, -- Serendipity
            63735, -- Serendipity
        },
        [2048] = {
            47788, -- Guardian Spirit
        },
        [4096] = {
            63544, -- Empowered Renew
        },
        [8192] = {
            64044, -- Psychic Horror
        },
        [16384] = {
            7001, -- Lightwell Renew(Rank 1)
            27873, -- Lightwell Renew(Rank 2)
            27874, -- Lightwell Renew(Rank 3)
            28276, -- Lightwell Renew(Rank 4)
            48084, -- Lightwell Renew(Rank 5)
            48085, -- Lightwell Renew(Rank 6)
        },
        [32768] = {
            56160, -- Glyph of Power Word: Shield
        },
        [2147483648] = {
            59544, -- Gift of the Naaru(Racial)
        },
    },
    [4] = {
    },
};

---@type ClassGlyphs
_addon.classGlyphs = {
    [55683] = { -- Glyph of Holy Nova
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {134217728, 0, 0, 0},
            value = 20,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {4194304, 0, 0, 0},
            value = 20,
        },
    },
    [55674] = { -- Glyph of Renew
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {64, 0, 0, 0},
            value = -3000,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {64, 0, 0, 0},
            value = 25,
        },
    },
};


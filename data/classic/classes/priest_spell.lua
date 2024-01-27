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
        baseCost = 45,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 44,
                valueRange = 0,
                valuePerLevel = 0.80000001192,
                coef = 0.0475,
                coefAP = 0,
            },
        }
    },
    [139] = { -- Renew(Rank 1)
        spellLevel = 8,
        maxLevel = 13,
        duration = 15,
        baseCost = 30,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 9,
                valueRange = 0,
                coef = 0.1099999994,
                coefAP = 0,
            },
        }
    },
    [585] = { -- Smite(Rank 1)
        spellLevel = 1,
        maxLevel = 6,
        baseCost = 20,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 13,
                valueRange = 4,
                valuePerLevel = 0.5,
                coef = 0.1230000034,
                coefAP = 0,
            },
        }
    },
    [589] = { -- Shadow Word: Pain(Rank 1)
        spellLevel = 4,
        maxLevel = 0,
        duration = 18,
        baseCost = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 5,
                valueRange = 0,
                coef = 0.06700000167,
                coefAP = 0,
            },
        }
    },
    [591] = { -- Smite(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 30,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 6,
                valuePerLevel = 0.60000002384,
                coef = 0.27099999785,
                coefAP = 0,
            },
        }
    },
    [592] = { -- Power Word: Shield(Rank 2)
        spellLevel = 12,
        maxLevel = 17,
        duration = 30,
        baseCost = 80,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 88,
                valueRange = 0,
                valuePerLevel = 1.20000004768,
                coef = 0.07,
                coefAP = 0,
            },
        }
    },
    [594] = { -- Shadow Word: Pain(Rank 2)
        spellLevel = 10,
        maxLevel = 0,
        duration = 18,
        baseCost = 50,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 11,
                valueRange = 0,
                coef = 0.10400000215,
                coefAP = 0,
            },
        }
    },
    [596] = { -- Prayer of Healing(Rank 1)
        spellLevel = 30,
        maxLevel = 39,
        baseCost = 410,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 301,
                valueRange = 20,
                valuePerLevel = 1.29999995232,
                coef = 0.28600001335,
                coefAP = 0,
            },
        }
    },
    [598] = { -- Smite(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 60,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 54,
                valueRange = 8,
                valuePerLevel = 0.89999997616,
                coef = 0.55400002003,
                coefAP = 0,
            },
        }
    },
    [600] = { -- Power Word: Shield(Rank 3)
        spellLevel = 18,
        maxLevel = 23,
        duration = 30,
        baseCost = 130,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 158,
                valueRange = 0,
                valuePerLevel = 1.60000002384,
                coef = 0.0925,
                coefAP = 0,
            },
        }
    },
    [970] = { -- Shadow Word: Pain(Rank 3)
        spellLevel = 18,
        maxLevel = 0,
        duration = 18,
        baseCost = 95,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 22,
                valueRange = 0,
                coef = 0.15399999917,
                coefAP = 0,
            },
        }
    },
    [984] = { -- Smite(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 95,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 91,
                valueRange = 14,
                valuePerLevel = 1.29999995232,
                coef = 0.71399998665,
                coefAP = 0,
            },
        }
    },
    [992] = { -- Shadow Word: Pain(Rank 4)
        spellLevel = 26,
        maxLevel = 0,
        duration = 18,
        baseCost = 155,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 39,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [996] = { -- Prayer of Healing(Rank 2)
        spellLevel = 40,
        maxLevel = 49,
        baseCost = 560,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 444,
                valueRange = 28,
                valuePerLevel = 1.60000002384,
                coef = 0.28600001335,
                coefAP = 0,
            },
        }
    },
    [1004] = { -- Smite(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        baseCost = 140,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 150,
                valueRange = 20,
                valuePerLevel = 1.60000002384,
                coef = 0.71399998665,
                coefAP = 0,
            },
        }
    },
    [2050] = { -- Lesser Heal(Rank 1)
        spellLevel = 1,
        maxLevel = 3,
        baseCost = 30,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 46,
                valueRange = 10,
                valuePerLevel = 0.89999997616,
                coef = 0.1230000034,
                coefAP = 0,
            },
        }
    },
    [2052] = { -- Lesser Heal(Rank 2)
        spellLevel = 4,
        maxLevel = 9,
        baseCost = 45,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 71,
                valueRange = 14,
                valuePerLevel = 1.10000002384,
                coef = 0.22900000215,
                coefAP = 0,
            },
        }
    },
    [2053] = { -- Lesser Heal(Rank 3)
        spellLevel = 10,
        maxLevel = 15,
        baseCost = 75,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 135,
                valueRange = 22,
                valuePerLevel = 1.60000002384,
                coef = 0.44600000978,
                coefAP = 0,
            },
        }
    },
    [2054] = { -- Heal(Rank 1)
        spellLevel = 16,
        maxLevel = 21,
        baseCost = 155,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 295,
                valueRange = 46,
                valuePerLevel = 2.40000009537,
                coef = 0.72899997234,
                coefAP = 0,
            },
        }
    },
    [2055] = { -- Heal(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 205,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 429,
                valueRange = 62,
                valuePerLevel = 3.20000004768,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [2060] = { -- Greater Heal(Rank 1)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 370,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 899,
                valueRange = 114,
                valuePerLevel = 5.09999990463,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [2061] = { -- Flash Heal(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 125,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 193,
                valueRange = 44,
                valuePerLevel = 1.89999997616,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [2652] = { -- Touch of Weakness(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 600,
        baseCost = 25,
        school = 6,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 2943,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [2767] = { -- Shadow Word: Pain(Rank 5)
        spellLevel = 34,
        maxLevel = 0,
        duration = 18,
        baseCost = 230,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 61,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [2943] = { -- Touch of Weakness(Rank 1)
        spellLevel = 10,
        maxLevel = 0,
        duration = 120,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 8,
                valueRange = 0,
                coef = 0.06700000167,
                coefAP = 0,
            },
        }
    },
    [2944] = { -- Devouring Plague(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 24,
        baseCost = 215,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 19,
                valueRange = 0,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [3747] = { -- Power Word: Shield(Rank 4)
        spellLevel = 24,
        maxLevel = 29,
        duration = 30,
        baseCost = 175,
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
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [6060] = { -- Smite(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 185,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 212,
                valueRange = 28,
                valuePerLevel = 2,
                coef = 0.71399998665,
                coefAP = 0,
            },
        }
    },
    [6063] = { -- Heal(Rank 3)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 255,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 566,
                valueRange = 76,
                valuePerLevel = 4,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [6064] = { -- Heal(Rank 4)
        spellLevel = 34,
        maxLevel = 39,
        baseCost = 305,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 712,
                valueRange = 92,
                valuePerLevel = 4.5,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [6065] = { -- Power Word: Shield(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        duration = 30,
        baseCost = 210,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 301,
                valueRange = 0,
                valuePerLevel = 2.29999995232,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [6066] = { -- Power Word: Shield(Rank 6)
        spellLevel = 36,
        maxLevel = 41,
        duration = 30,
        baseCost = 250,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 381,
                valueRange = 0,
                valuePerLevel = 2.59999990463,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [6074] = { -- Renew(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        duration = 15,
        baseCost = 65,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 20,
                valueRange = 0,
                coef = 0.15500000119,
                coefAP = 0,
            },
        }
    },
    [6075] = { -- Renew(Rank 3)
        spellLevel = 20,
        maxLevel = 25,
        duration = 15,
        baseCost = 105,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 35,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [6076] = { -- Renew(Rank 4)
        spellLevel = 26,
        maxLevel = 31,
        duration = 15,
        baseCost = 140,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 49,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [6077] = { -- Renew(Rank 5)
        spellLevel = 32,
        maxLevel = 37,
        duration = 15,
        baseCost = 170,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 63,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [6078] = { -- Renew(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        duration = 15,
        baseCost = 205,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 80,
                valueRange = 0,
                coef = 0.20000000298,
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
    [8092] = { -- Mind Blast(Rank 1)
        spellLevel = 10,
        maxLevel = 15,
        baseCost = 50,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 39,
                valueRange = 4,
                valuePerLevel = 0.60000002384,
                coef = 0.26800000668,
                coefAP = 0,
            },
        }
    },
    [8102] = { -- Mind Blast(Rank 2)
        spellLevel = 16,
        maxLevel = 21,
        baseCost = 80,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 72,
                valueRange = 6,
                valuePerLevel = 0.89999997616,
                coef = 0.36399999261,
                coefAP = 0,
            },
        }
    },
    [8103] = { -- Mind Blast(Rank 3)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 110,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 112,
                valueRange = 8,
                valuePerLevel = 1.10000002384,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8104] = { -- Mind Blast(Rank 4)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 150,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 167,
                valueRange = 10,
                valuePerLevel = 1.39999997616,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8105] = { -- Mind Blast(Rank 5)
        spellLevel = 34,
        maxLevel = 39,
        baseCost = 185,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 217,
                valueRange = 14,
                valuePerLevel = 1.60000002384,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [8106] = { -- Mind Blast(Rank 6)
        spellLevel = 40,
        maxLevel = 45,
        baseCost = 225,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 279,
                valueRange = 18,
                valuePerLevel = 1.89999997616,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [9472] = { -- Flash Heal(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        baseCost = 155,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 258,
                valueRange = 56,
                valuePerLevel = 2.20000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [9473] = { -- Flash Heal(Rank 3)
        spellLevel = 32,
        maxLevel = 37,
        baseCost = 185,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 327,
                valueRange = 66,
                valuePerLevel = 2.5,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [9474] = { -- Flash Heal(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 215,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 400,
                valueRange = 78,
                valuePerLevel = 2.79999995232,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10797] = { -- Starshards(Rank 1)
        spellLevel = 10,
        maxLevel = 16,
        duration = 6,
        baseCost = 50,
        school = 7,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 14,
                valueRange = 0,
                coef = 0.10400000215,
                coefAP = 0,
            },
        }
    },
    [10892] = { -- Shadow Word: Pain(Rank 6)
        spellLevel = 42,
        maxLevel = 0,
        duration = 18,
        baseCost = 305,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 85,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [10893] = { -- Shadow Word: Pain(Rank 7)
        spellLevel = 50,
        maxLevel = 0,
        duration = 18,
        baseCost = 385,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 112,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [10894] = { -- Shadow Word: Pain(Rank 8)
        spellLevel = 58,
        maxLevel = 0,
        duration = 18,
        baseCost = 470,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 142,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [10898] = { -- Power Word: Shield(Rank 7)
        spellLevel = 42,
        maxLevel = 47,
        duration = 30,
        baseCost = 300,
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
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10899] = { -- Power Word: Shield(Rank 8)
        spellLevel = 48,
        maxLevel = 53,
        duration = 30,
        baseCost = 355,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 605,
                valueRange = 0,
                valuePerLevel = 3.40000009537,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10900] = { -- Power Word: Shield(Rank 9)
        spellLevel = 54,
        maxLevel = 59,
        duration = 30,
        baseCost = 425,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 763,
                valueRange = 0,
                valuePerLevel = 3.90000009537,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10901] = { -- Power Word: Shield(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        duration = 30,
        baseCost = 500,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                forceScaleWithHeal = true,
                valueBase = 942,
                valueRange = 0,
                valuePerLevel = 4.30000019073,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [10915] = { -- Flash Heal(Rank 5)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 265,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 518,
                valueRange = 98,
                valuePerLevel = 3.29999995232,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10916] = { -- Flash Heal(Rank 6)
        spellLevel = 50,
        maxLevel = 55,
        baseCost = 315,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 644,
                valueRange = 120,
                valuePerLevel = 3.70000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10917] = { -- Flash Heal(Rank 7)
        spellLevel = 56,
        maxLevel = 61,
        baseCost = 380,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 812,
                valueRange = 146,
                valuePerLevel = 4.19999980927,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10927] = { -- Renew(Rank 7)
        spellLevel = 44,
        maxLevel = 49,
        duration = 15,
        baseCost = 250,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 102,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [10928] = { -- Renew(Rank 8)
        spellLevel = 50,
        maxLevel = 55,
        duration = 15,
        baseCost = 305,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 130,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [10929] = { -- Renew(Rank 9)
        spellLevel = 56,
        maxLevel = 61,
        duration = 15,
        baseCost = 365,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 162,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [10933] = { -- Smite(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 230,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 287,
                valueRange = 36,
                valuePerLevel = 2.29999995232,
                coef = 0.71399998665,
                coefAP = 0,
            },
        }
    },
    [10934] = { -- Smite(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 280,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 371,
                valueRange = 44,
                valuePerLevel = 2.70000004768,
                coef = 0.71399998665,
                coefAP = 0,
            },
        }
    },
    [10945] = { -- Mind Blast(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 265,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 346,
                valueRange = 20,
                valuePerLevel = 2.09999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10946] = { -- Mind Blast(Rank 8)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 310,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 425,
                valueRange = 24,
                valuePerLevel = 2.40000009537,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10947] = { -- Mind Blast(Rank 9)
        spellLevel = 58,
        maxLevel = 63,
        baseCost = 350,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 503,
                valueRange = 28,
                valuePerLevel = 2.59999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10960] = { -- Prayer of Healing(Rank 3)
        spellLevel = 50,
        maxLevel = 59,
        baseCost = 770,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 657,
                valueRange = 38,
                valuePerLevel = 2,
                coef = 0.28600001335,
                coefAP = 0,
            },
        }
    },
    [10961] = { -- Prayer of Healing(Rank 4)
        spellLevel = 60,
        maxLevel = 69,
        baseCost = 1030,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 939,
                valueRange = 52,
                valuePerLevel = 2.40000009537,
                coef = 0.28600001335,
                coefAP = 0,
            },
        }
    },
    [10963] = { -- Greater Heal(Rank 2)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 455,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1149,
                valueRange = 140,
                valuePerLevel = 5.80000019073,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [10964] = { -- Greater Heal(Rank 3)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 545,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1437,
                valueRange = 172,
                valuePerLevel = 6.59999990463,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [10965] = { -- Greater Heal(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        baseCost = 655,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1798,
                valueRange = 208,
                valuePerLevel = 7.5,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [13908] = { -- Desperate Prayer(Rank 1)
        spellLevel = 10,
        maxLevel = 16,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 134,
                valueRange = 36,
                valuePerLevel = 2.40000009537,
                coef = 0.26800000668,
                coefAP = 0,
            },
        }
    },
    [14914] = { -- Holy Fire(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        duration = 10,
        baseCost = 85,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 78,
                valueRange = 20,
                valuePerLevel = 1.5,
                coef = 0.75,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 6,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [15237] = { -- Holy Nova(Rank 1)
        spellLevel = 20,
        maxLevel = 26,
        baseCost = 185,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 28,
                valueRange = 4,
                valuePerLevel = 0.20000000298,
                coef = 0.10700000077,
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
        duration = 10,
        baseCost = 255,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 355,
                valueRange = 94,
                valuePerLevel = 3.40000009537,
                coef = 0.75,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 29,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [15262] = { -- Holy Fire(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        duration = 10,
        baseCost = 95,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 96,
                valueRange = 24,
                valuePerLevel = 1.70000004768,
                coef = 0.75,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 8,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [15263] = { -- Holy Fire(Rank 3)
        spellLevel = 30,
        maxLevel = 36,
        duration = 10,
        baseCost = 125,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 132,
                valueRange = 34,
                valuePerLevel = 2,
                coef = 0.75,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 11,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [15264] = { -- Holy Fire(Rank 4)
        spellLevel = 36,
        maxLevel = 42,
        duration = 10,
        baseCost = 145,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 165,
                valueRange = 44,
                valuePerLevel = 2.20000004768,
                coef = 0.75,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 13,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [15265] = { -- Holy Fire(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 10,
        baseCost = 170,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 204,
                valueRange = 54,
                valuePerLevel = 2.5,
                coef = 0.75,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 17,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [15266] = { -- Holy Fire(Rank 6)
        spellLevel = 48,
        maxLevel = 54,
        duration = 10,
        baseCost = 200,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 254,
                valueRange = 68,
                valuePerLevel = 2.90000009537,
                coef = 0.75,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 20,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [15267] = { -- Holy Fire(Rank 7)
        spellLevel = 54,
        maxLevel = 60,
        duration = 10,
        baseCost = 230,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 304,
                valueRange = 82,
                valuePerLevel = 3.20000004768,
                coef = 0.75,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 25,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [15407] = { -- Mind Flay(Rank 1)
        spellLevel = 20,
        maxLevel = 28,
        duration = 3,
        baseCost = 45,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 25,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [15430] = { -- Holy Nova(Rank 2)
        spellLevel = 28,
        maxLevel = 34,
        baseCost = 290,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 50,
                valueRange = 8,
                valuePerLevel = 0.40000000596,
                coef = 0.10700000077,
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
        baseCost = 400,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 76,
                valueRange = 12,
                valuePerLevel = 0.60000002384,
                coef = 0.10700000077,
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
        baseCost = 70,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 42,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [17312] = { -- Mind Flay(Rank 3)
        spellLevel = 36,
        maxLevel = 44,
        duration = 3,
        baseCost = 100,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 62,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [17313] = { -- Mind Flay(Rank 4)
        spellLevel = 44,
        maxLevel = 52,
        duration = 3,
        baseCost = 135,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 87,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [17314] = { -- Mind Flay(Rank 5)
        spellLevel = 52,
        maxLevel = 60,
        duration = 3,
        baseCost = 165,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 110,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [18137] = { -- Shadowguard(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 600,
        baseCost = 50,
        school = 6,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 20,
                valueRange = 0,
                triggeredSpell = 28377,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [18807] = { -- Mind Flay(Rank 6)
        spellLevel = 60,
        maxLevel = 68,
        duration = 3,
        baseCost = 205,
        school = 6,
        isChannel = true,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 142,
                valueRange = 0,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [19236] = { -- Desperate Prayer(Rank 2)
        spellLevel = 18,
        maxLevel = 24,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 263,
                valueRange = 62,
                valuePerLevel = 3.40000009537,
                coef = 0.39599999785,
                coefAP = 0,
            },
        }
    },
    [19238] = { -- Desperate Prayer(Rank 3)
        spellLevel = 26,
        maxLevel = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 447,
                valueRange = 96,
                valuePerLevel = 4.5,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [19240] = { -- Desperate Prayer(Rank 4)
        spellLevel = 34,
        maxLevel = 40,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 588,
                valueRange = 120,
                valuePerLevel = 5.30000019073,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [19241] = { -- Desperate Prayer(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 834,
                valueRange = 160,
                valuePerLevel = 6.40000009537,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [19242] = { -- Desperate Prayer(Rank 6)
        spellLevel = 50,
        maxLevel = 56,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1101,
                valueRange = 204,
                valuePerLevel = 7.40000009537,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [19243] = { -- Desperate Prayer(Rank 7)
        spellLevel = 58,
        maxLevel = 64,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1324,
                valueRange = 238,
                valuePerLevel = 8.19999980927,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [19249] = { -- Touch of Weakness(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 120,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 15,
                valueRange = 0,
                coef = 0.10700000077,
                coefAP = 0,
            },
        }
    },
    [19251] = { -- Touch of Weakness(Rank 3)
        spellLevel = 30,
        maxLevel = 0,
        duration = 120,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 24,
                valueRange = 0,
                coef = 0.10700000077,
                coefAP = 0,
            },
        }
    },
    [19252] = { -- Touch of Weakness(Rank 4)
        spellLevel = 40,
        maxLevel = 0,
        duration = 120,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 35,
                valueRange = 0,
                coef = 0.10700000077,
                coefAP = 0,
            },
        }
    },
    [19253] = { -- Touch of Weakness(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        duration = 120,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 48,
                valueRange = 0,
                coef = 0.10700000077,
                coefAP = 0,
            },
        }
    },
    [19254] = { -- Touch of Weakness(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 120,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 64,
                valueRange = 0,
                coef = 0.10700000077,
                coefAP = 0,
            },
        }
    },
    [19261] = { -- Touch of Weakness(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 600,
        baseCost = 45,
        school = 6,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 19249,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19262] = { -- Touch of Weakness(Rank 3)
        spellLevel = 30,
        maxLevel = 0,
        duration = 600,
        baseCost = 75,
        school = 6,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 19251,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19264] = { -- Touch of Weakness(Rank 4)
        spellLevel = 40,
        maxLevel = 0,
        duration = 600,
        baseCost = 105,
        school = 6,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 19252,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19265] = { -- Touch of Weakness(Rank 5)
        spellLevel = 50,
        maxLevel = 0,
        duration = 600,
        baseCost = 145,
        school = 6,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 19253,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19266] = { -- Touch of Weakness(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 600,
        baseCost = 195,
        school = 6,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 19254,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19276] = { -- Devouring Plague(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 24,
        baseCost = 350,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 34,
                valueRange = 0,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [19277] = { -- Devouring Plague(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 24,
        baseCost = 495,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 50,
                valueRange = 0,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [19278] = { -- Devouring Plague(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 24,
        baseCost = 645,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 68,
                valueRange = 0,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [19279] = { -- Devouring Plague(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 24,
        baseCost = 810,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 89,
                valueRange = 0,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [19280] = { -- Devouring Plague(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 24,
        baseCost = 985,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 3,
                valueBase = 113,
                valueRange = 0,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [19296] = { -- Starshards(Rank 2)
        spellLevel = 18,
        maxLevel = 24,
        duration = 6,
        baseCost = 85,
        school = 7,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 27,
                valueRange = 0,
                coef = 0.15399999917,
                coefAP = 0,
            },
        }
    },
    [19299] = { -- Starshards(Rank 3)
        spellLevel = 26,
        maxLevel = 32,
        duration = 6,
        baseCost = 140,
        school = 7,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 48,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [19302] = { -- Starshards(Rank 4)
        spellLevel = 34,
        maxLevel = 40,
        duration = 6,
        baseCost = 190,
        school = 7,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 69,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [19303] = { -- Starshards(Rank 5)
        spellLevel = 42,
        maxLevel = 48,
        duration = 6,
        baseCost = 245,
        school = 7,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 95,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [19304] = { -- Starshards(Rank 6)
        spellLevel = 50,
        maxLevel = 56,
        duration = 6,
        baseCost = 300,
        school = 7,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 126,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [19305] = { -- Starshards(Rank 7)
        spellLevel = 58,
        maxLevel = 64,
        duration = 6,
        baseCost = 350,
        school = 7,
        isChannel = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 156,
                valueRange = 0,
                coef = 0.16699999571,
                coefAP = 0,
            },
        }
    },
    [19308] = { -- Shadowguard(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        duration = 600,
        baseCost = 85,
        school = 6,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 35,
                valueRange = 0,
                triggeredSpell = 28378,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [19309] = { -- Shadowguard(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        duration = 600,
        baseCost = 120,
        school = 6,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 51,
                valueRange = 0,
                triggeredSpell = 28379,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [19310] = { -- Shadowguard(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 600,
        baseCost = 160,
        school = 6,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 70,
                valueRange = 0,
                triggeredSpell = 28380,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [19311] = { -- Shadowguard(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        duration = 600,
        baseCost = 200,
        school = 6,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 90,
                valueRange = 0,
                triggeredSpell = 28381,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [19312] = { -- Shadowguard(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 600,
        baseCost = 250,
        school = 6,
        defType = 1,
        charges = 3,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 42,
                valueBase = 116,
                valueRange = 0,
                triggeredSpell = 28382,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [22009] = { -- Greater Heal
        spellLevel = 32,
        maxLevel = 37,
        duration = 15,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 63,
                valueRange = 0,
                coef = 0.20000000298,
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
                valuePerLevel = 0.40000000596,
                coef = 0.10700000077,
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
                coef = 0.10700000077,
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
                valuePerLevel = 0.60000002384,
                coef = 0.10700000077,
                coefAP = 0,
            },
        }
    },
    [25314] = { -- Greater Heal(Rank 5)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 710,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1966,
                valueRange = 228,
                valuePerLevel = 8.10000038147,
                coef = 0.85699999332,
                coefAP = 0,
            },
        }
    },
    [25315] = { -- Renew(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCost = 410,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 3,
                valueBase = 194,
                valueRange = 0,
                coef = 0.20000000298,
                coefAP = 0,
            },
        }
    },
    [25316] = { -- Prayer of Healing(Rank 5)
        spellLevel = 60,
        maxLevel = 69,
        baseCost = 1070,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1041,
                valueRange = 58,
                valuePerLevel = 2.5,
                coef = 0.28600001335,
                coefAP = 0,
            },
        }
    },
    [27799] = { -- Holy Nova(Rank 4)
        spellLevel = 44,
        maxLevel = 50,
        baseCost = 520,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 106,
                valueRange = 16,
                valuePerLevel = 0.80000001192,
                coef = 0.10700000077,
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
        baseCost = 635,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 140,
                valueRange = 22,
                valuePerLevel = 1,
                coef = 0.10700000077,
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
        baseCost = 750,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 181,
                valueRange = 28,
                valuePerLevel = 1.20000004768,
                coef = 0.10700000077,
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
                valuePerLevel = 0.69999998808,
                coef = 0.10700000077,
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
                valuePerLevel = 0.80000001192,
                coef = 0.10700000077,
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
                valuePerLevel = 0.89999997616,
                coef = 0.10700000077,
                coefAP = 0,
            },
        }
    },
    [28377] = { -- Shadowguard(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        school = 6,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 20,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [28378] = { -- Shadowguard(Rank 2)
        spellLevel = 28,
        maxLevel = 0,
        school = 6,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 35,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [28379] = { -- Shadowguard(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        school = 6,
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
    [28380] = { -- Shadowguard(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        school = 6,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 70,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [28381] = { -- Shadowguard(Rank 5)
        spellLevel = 52,
        maxLevel = 0,
        school = 6,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 90,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [28382] = { -- Shadowguard(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        school = 6,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 116,
                valueRange = 0,
                coef = 0.26699998975,
                coefAP = 0,
            },
        }
    },
    [401859] = { -- Prayer of Mending
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 15,
        school = 2,
        defType = 1,
        forceHeal = true,
        charges = 5,
        useScalingFormula = "810healpower",
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 93,
                valueRange = 0,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [401946] = { -- Circle of Healing
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 56,
        school = 2,
        defType = 1,
        useScalingFormula = "810healpower",
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 162,
                valueRange = 18,
                coef = 0.21400000155,
                coefAP = 0,
            },
        }
    },
    [401955] = { -- Shadow Word: Death
        spellLevel = 1,
        maxLevel = 0,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        useScalingFormula = "810damagepower",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 532,
                valueRange = 44,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [402174] = { -- Penance
        spellLevel = 1,
        maxLevel = 0,
        duration = 2,
        baseCostPct = 16,
        school = 2,
        isChannel = true,
        defType = 0,
        usePeriodicHaste = true,
        useScalingFormula = "810damagepower",
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 402289,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 402284,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [402284] = { -- Penance
        spellLevel = 1,
        maxLevel = 0,
        school = 2,
        defType = 1,
        useScalingFormula = "810damagepower",
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 128,
                valueRange = 0,
                coef = 0.28499999642,
                coefAP = 0,
            },
        }
    },
    [402289] = { -- Penance
        spellLevel = 1,
        maxLevel = 0,
        school = 2,
        defType = 1,
        useScalingFormula = "810healpower",
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 106,
                valueRange = 0,
                coef = 0.28499999642,
                coefAP = 0,
            },
        }
    },
    [413259] = { -- Mind Sear
        spellLevel = 1,
        maxLevel = 0,
        duration = 5,
        baseCostPct = 28,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        useScalingFormula = "810damagepower",
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 25,
                valueRange = 0,
                triggeredSpell = 413260,
                coef = 0.15000000596,
                coefAP = 0,
            },
        }
    },
    [413260] = { -- Mind Sear
        spellLevel = 1,
        maxLevel = 0,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 70,
                valueRange = 8,
                coef = 0.28600001335,
                coefAP = 0,
            },
        }
    },
    [425204] = { -- Void Plague
        spellLevel = 1,
        maxLevel = 0,
        duration = 18,
        baseCostPct = 13,
        school = 6,
        defType = 1,
        useScalingFormula = "810damagepower",
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 117,
                valueRange = 0,
                coef = 0.20000000298,
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
            27607, -- Power Word: Shield(Rank 10)
            27779, -- Divine Protection
        },
        [2] = {
            588, -- Inner Fire(Rank 1)
            602, -- Inner Fire(Rank 3)
            1006, -- Inner Fire(Rank 4)
            7128, -- Inner Fire(Rank 2)
            10951, -- Inner Fire(Rank 5)
            10952, -- Inner Fire(Rank 6)
            16329, -- Juju Might
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
        },
        [16] = {
            8129, -- Mana Burn(Rank 1)
            8131, -- Mana Burn(Rank 2)
            10874, -- Mana Burn(Rank 3)
            10875, -- Mana Burn(Rank 4)
            10876, -- Mana Burn(Rank 5)
        },
        [32] = {
            21074, -- Test NPC Resurrection(Rank 1)
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
            15229, -- Crystal Restore
            25315, -- Renew(Rank 10)
            27606, -- Renew(Rank 9)
            425268, -- Renew(Rank 1)
            425269, -- Renew(Rank 2)
            425270, -- Renew(Rank 3)
            425271, -- Renew(Rank 4)
            425272, -- Renew(Rank 5)
            425273, -- Renew(Rank 6)
            425274, -- Renew(Rank 7)
            425275, -- Renew(Rank 8)
            425276, -- Renew(Rank 9)
            425277, -- Renew(Rank 10)
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
        },
        [256] = {
            976, -- Shadow Protection(Rank 1)
            10957, -- Shadow Protection(Rank 2)
            10958, -- Shadow Protection(Rank 3)
            16874, -- Shadow Protection(Rank 3)
            17151, -- Shadow Barrier
            27683, -- Prayer of Shadow Protection(Rank 1)
        },
        [512] = {
            596, -- Prayer of Healing(Rank 1)
            996, -- Prayer of Healing(Rank 2)
            10960, -- Prayer of Healing(Rank 3)
            10961, -- Prayer of Healing(Rank 4)
            25316, -- Prayer of Healing(Rank 5)
        },
        [1024] = {
            2054, -- Heal(Rank 1)
            2055, -- Heal(Rank 2)
            6063, -- Heal(Rank 3)
            6064, -- Heal(Rank 4)
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
            27608, -- Flash Heal(Rank 7)
        },
        [4096] = {
            2060, -- Greater Heal(Rank 1)
            10963, -- Greater Heal(Rank 2)
            10964, -- Greater Heal(Rank 3)
            10965, -- Greater Heal(Rank 4)
            15068, -- TEST Heal Self
            25314, -- Greater Heal(Rank 5)
            26565, -- Heal Brethren
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
        },
        [16384] = {
            586, -- Fade(Rank 1)
            9578, -- Fade(Rank 2)
            9579, -- Fade(Rank 3)
            9592, -- Fade(Rank 4)
            10941, -- Fade(Rank 5)
            10942, -- Fade(Rank 6)
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
        },
        [2097152] = {
            10797, -- Starshards(Rank 1)
            19296, -- Starshards(Rank 2)
            19299, -- Starshards(Rank 3)
            19302, -- Starshards(Rank 4)
            19303, -- Starshards(Rank 5)
            19304, -- Starshards(Rank 6)
            19305, -- Starshards(Rank 7)
            27636, -- Starshards
        },
        [4194304] = {
            15237, -- Holy Nova(Rank 1)
            15430, -- Holy Nova(Rank 2)
            15431, -- Holy Nova(Rank 3)
            20694, -- Holy Nova
            23458, -- Holy Nova(Rank 2)
            23858, -- Holy Nova
            24022, -- Cleanse Nova
            27799, -- Holy Nova(Rank 4)
            27800, -- Holy Nova(Rank 5)
            27801, -- Holy Nova(Rank 6)
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
            22803, -- Dire Maul Trap - Summon
            22821, -- Warpwood Spores
            22919, -- Mind Flay
            23642, -- Corruption
            23953, -- Mind Flay
            23979, -- Holy Wrath
            24152, -- Whipweed Roots
            26044, -- Mind Flay
            26143, -- Mind Flay
            27286, -- Shadow Wrath
            27640, -- Baron Rivendare's Soul Drain
            28309, -- Copy of Corruption
            28310, -- Mind Flay
            28883, -- Holy Wrath
            29407, -- Mind Flay
            412526, -- Mind Flay
        },
        [16777216] = {
            13908, -- Desperate Prayer(Rank 1)
            19236, -- Desperate Prayer(Rank 2)
            19238, -- Desperate Prayer(Rank 3)
            19240, -- Desperate Prayer(Rank 4)
            19241, -- Desperate Prayer(Rank 5)
            19242, -- Desperate Prayer(Rank 6)
            19243, -- Desperate Prayer(Rank 7)
        },
        [33554432] = {
            2944, -- Devouring Plague(Rank 1)
            19276, -- Devouring Plague(Rank 2)
            19277, -- Devouring Plague(Rank 3)
            19278, -- Devouring Plague(Rank 4)
            19279, -- Devouring Plague(Rank 5)
            19280, -- Devouring Plague(Rank 6)
            28377, -- Shadowguard(Rank 1)
            28378, -- Shadowguard(Rank 2)
            28379, -- Shadowguard(Rank 3)
            28380, -- Shadowguard(Rank 4)
            28381, -- Shadowguard(Rank 5)
            28382, -- Shadowguard(Rank 6)
        },
        [67108864] = {
            453, -- Mind Soothe(Rank 1)
            2096, -- Mind Vision(Rank 1)
            2652, -- Touch of Weakness(Rank 1)
            8192, -- Mind Soothe(Rank 2)
            9035, -- Hex of Weakness(Rank 1)
            10909, -- Mind Vision(Rank 2)
            10953, -- Mind Soothe(Rank 3)
            15258, -- Shadow Vulnerability(Rank 1)
            15286, -- Vampiric Embrace
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
            25816, -- Hex of Weakness(Rank 6)
            402791, -- Curse of Shadow
            402792, -- Curse of the Elements
            402794, -- Curse of Tongues
        },
        [134217728] = {
            15007, -- Resurrection Sickness
            23455, -- Holy Nova(Rank 1)
            23458, -- Holy Nova(Rank 2)
            23459, -- Holy Nova(Rank 3)
            27803, -- Holy Nova(Rank 4)
            27804, -- Holy Nova(Rank 5)
            27805, -- Holy Nova(Rank 6)
        },
        [268435456] = {
            15068, -- TEST Heal Self
            17137, -- Flash Heal
            17138, -- Flash Heal
            17843, -- Flash Heal
            401946, -- Circle of Healing
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
            25808, -- Dispel
            27870, -- Lightwell(Rank 2)
            27871, -- Lightwell(Rank 3)
            402799, -- Homunculi
            402801, -- Homunculi
            402802, -- Homunculi
            420882, -- Resurrection(Rank 5)
            420883, -- Resurrection(Rank 4)
            420884, -- Resurrection(Rank 3)
            420885, -- Resurrection(Rank 2)
        },
        [2147483648] = {
            453, -- Mind Soothe(Rank 1)
            527, -- Dispel Magic(Rank 1)
            528, -- Cure Disease
            552, -- Abolish Disease
            988, -- Dispel Magic(Rank 2)
            1706, -- Levitate
            2651, -- Elune's Grace(Rank 1)
            2652, -- Touch of Weakness(Rank 1)
            6346, -- Fear Ward
            8192, -- Mind Soothe(Rank 2)
            9035, -- Hex of Weakness(Rank 1)
            10060, -- Power Infusion
            10953, -- Mind Soothe(Rank 3)
            13896, -- Feedback(Rank 1)
            14752, -- Divine Spirit(Rank 1)
            14818, -- Divine Spirit(Rank 2)
            14819, -- Divine Spirit(Rank 3)
            15090, -- Dispel Magic
            15229, -- Crystal Restore
            15286, -- Vampiric Embrace
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
            19289, -- Elune's Grace(Rank 2)
            19291, -- Elune's Grace(Rank 3)
            19292, -- Elune's Grace(Rank 4)
            19293, -- Elune's Grace(Rank 5)
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
            25808, -- Dispel
            25816, -- Hex of Weakness(Rank 6)
            27609, -- Dispel Magic(Rank 2)
            27681, -- Prayer of Spirit(Rank 1)
            27841, -- Divine Spirit(Rank 4)
            27986, -- Levitate
            28133, -- Cure Disease
            28418, -- General's Warcry
            28419, -- General's Warcry
            28420, -- General's Warcry
            30238, -- Lordaeron's Blessing
            421248, -- Shadowguard(Rank 1)
        },
    },
    [2] = {
        [1] = {
            527, -- Dispel Magic(Rank 1)
            528, -- Cure Disease
            552, -- Abolish Disease
            988, -- Dispel Magic(Rank 2)
            30238, -- Lordaeron's Blessing
        },
        [2] = {
            401955, -- Shadow Word: Death
        },
        [32] = {
            401859, -- Prayer of Mending
            401863, -- Prayer of Mending
            401877, -- Prayer of Mending
            401880, -- Prayer of Mending
        },
        [4096] = {
            402362, -- White
            402368, -- Black
            402791, -- Curse of Shadow
            402792, -- Curse of the Elements
            402794, -- Curse of Tongues
        },
        [8192] = {
            401962, -- Shadow Word: Death
        },
        [32768] = {
            402284, -- Penance
        },
        [65536] = {
            402277, -- Penance
            402289, -- Penance
        },
        [524288] = {
            413260, -- Mind Sear
        },
        [1048576] = {
            413259, -- Mind Sear
        },
        [8388608] = {
            402174, -- Penance
        },
    },
    [3] = {
        [128] = {
            402261, -- Penance
            402277, -- Penance
        },
        [1024] = {
            401859, -- Prayer of Mending
            401877, -- Prayer of Mending
        },
        [16777216] = {
            425207, -- Power Word: Barrier
        },
        [67108864] = {
            402799, -- Homunculi
            402801, -- Homunculi
            402802, -- Homunculi
        },
    },
    [4] = {
        [268435456] = {
            425204, -- Void Plague
        },
    },
};


-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PALADIN" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {
    [635] = { -- Holy Light(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCost = 35,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 39,
                valueRange = 8,
                valuePerLevel = 0.80000001192,
                coef = 0.205,
                coefAP = 0,
            },
        }
    },
    [639] = { -- Holy Light(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCost = 60,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 76,
                valueRange = 14,
                valuePerLevel = 1.10000002384,
                coef = 0.339,
                coefAP = 0,
            },
        }
    },
    [647] = { -- Holy Light(Rank 3)
        spellLevel = 14,
        maxLevel = 19,
        baseCost = 110,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 159,
                valueRange = 28,
                valuePerLevel = 1.70000004768,
                coef = 0.554,
                coefAP = 0,
            },
        }
    },
    [879] = { -- Exorcism(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 85,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 84,
                valueRange = 12,
                valuePerLevel = 1.20000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [1026] = { -- Holy Light(Rank 4)
        spellLevel = 22,
        maxLevel = 27,
        baseCost = 190,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 310,
                valueRange = 46,
                valuePerLevel = 2.40000009537,
                coef = 0.7142857142857143,
                coefAP = 0,
            },
        }
    },
    [1042] = { -- Holy Light(Rank 5)
        spellLevel = 30,
        maxLevel = 35,
        baseCost = 275,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 491,
                valueRange = 62,
                valuePerLevel = 3.09999990463,
                coef = 0.7142857142857143,
                coefAP = 0,
            },
        }
    },
    [2812] = { -- Holy Wrath(Rank 1)
        spellLevel = 50,
        maxLevel = 54,
        baseCost = 645,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 362,
                valueRange = 66,
                valuePerLevel = 1.60000002384,
                coef = 0.18999999762,
                coefAP = 0,
            },
        }
    },
    [3472] = { -- Holy Light(Rank 6)
        spellLevel = 38,
        maxLevel = 43,
        baseCost = 365,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 698,
                valueRange = 82,
                valuePerLevel = 3.79999995232,
                coef = 0.7142857142857143,
                coefAP = 0,
            },
        }
    },
    [5614] = { -- Exorcism(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        baseCost = 135,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 152,
                valueRange = 20,
                valuePerLevel = 1.60000002384,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [5615] = { -- Exorcism(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        baseCost = 180,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 217,
                valueRange = 28,
                valuePerLevel = 2,
                coef = 0.42899999022,
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
    [7294] = { -- Retribution Aura(Rank 1)
        spellLevel = 16,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                valueBase = 5,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10298] = { -- Retribution Aura(Rank 2)
        spellLevel = 26,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                valueBase = 8,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10299] = { -- Retribution Aura(Rank 3)
        spellLevel = 36,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                valueBase = 12,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10300] = { -- Retribution Aura(Rank 4)
        spellLevel = 46,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                valueBase = 16,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10301] = { -- Retribution Aura(Rank 5)
        spellLevel = 56,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 35,
                auraType = 15,
                valueBase = 20,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [10312] = { -- Exorcism(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 235,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 304,
                valueRange = 38,
                valuePerLevel = 2.40000009537,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10313] = { -- Exorcism(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 285,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 393,
                valueRange = 46,
                valuePerLevel = 2.79999995232,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10314] = { -- Exorcism(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 345,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 505,
                valueRange = 58,
                valuePerLevel = 3.20000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [10318] = { -- Holy Wrath(Rank 2)
        spellLevel = 60,
        maxLevel = 64,
        baseCost = 805,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 490,
                valueRange = 86,
                valuePerLevel = 1.89999997616,
                coef = 0.18999999762,
                coefAP = 0,
            },
        }
    },
    [10328] = { -- Holy Light(Rank 7)
        spellLevel = 46,
        maxLevel = 51,
        baseCost = 465,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 945,
                valueRange = 108,
                valuePerLevel = 4.59999990463,
                coef = 0.7142857142857143,
                coefAP = 0,
            },
        }
    },
    [10329] = { -- Holy Light(Rank 8)
        spellLevel = 54,
        maxLevel = 59,
        baseCost = 580,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1246,
                valueRange = 142,
                valuePerLevel = 5.19999980927,
                coef = 0.7142857142857143,
                coefAP = 0,
            },
        }
    },
    [19742] = { -- Blessing of Wisdom(Rank 1)
        spellLevel = 14,
        maxLevel = 0,
        duration = 300,
        baseCost = 30,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 24,
                valueBase = 10,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19750] = { -- Flash of Light(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        baseCost = 35,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 62,
                valueRange = 10,
                valuePerLevel = 1,
                coef = 0.42857142857142855,
                coefAP = 0,
            },
        }
    },
    [19850] = { -- Blessing of Wisdom(Rank 2)
        spellLevel = 24,
        maxLevel = 0,
        duration = 300,
        baseCost = 45,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 24,
                valueBase = 15,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19852] = { -- Blessing of Wisdom(Rank 3)
        spellLevel = 34,
        maxLevel = 0,
        duration = 300,
        baseCost = 65,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 24,
                valueBase = 20,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19853] = { -- Blessing of Wisdom(Rank 4)
        spellLevel = 44,
        maxLevel = 0,
        duration = 300,
        baseCost = 90,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 24,
                valueBase = 25,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19854] = { -- Blessing of Wisdom(Rank 5)
        spellLevel = 54,
        maxLevel = 0,
        duration = 300,
        baseCost = 115,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 24,
                valueBase = 30,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [19939] = { -- Flash of Light(Rank 2)
        spellLevel = 26,
        maxLevel = 31,
        baseCost = 50,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 96,
                valueRange = 14,
                valuePerLevel = 1.29999995232,
                coef = 0.42857142857142855,
                coefAP = 0,
            },
        }
    },
    [19940] = { -- Flash of Light(Rank 3)
        spellLevel = 34,
        maxLevel = 39,
        baseCost = 70,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 145,
                valueRange = 18,
                valuePerLevel = 1.60000002384,
                coef = 0.42857142857142855,
                coefAP = 0,
            },
        }
    },
    [19941] = { -- Flash of Light(Rank 4)
        spellLevel = 42,
        maxLevel = 47,
        baseCost = 90,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 197,
                valueRange = 24,
                valuePerLevel = 1.89999997616,
                coef = 0.42857142857142855,
                coefAP = 0,
            },
        }
    },
    [19942] = { -- Flash of Light(Rank 5)
        spellLevel = 50,
        maxLevel = 55,
        baseCost = 115,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 267,
                valueRange = 32,
                valuePerLevel = 2.20000004768,
                coef = 0.42857142857142855,
                coefAP = 0,
            },
        }
    },
    [19943] = { -- Flash of Light(Rank 6)
        spellLevel = 58,
        maxLevel = 63,
        baseCost = 140,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 343,
                valueRange = 40,
                valuePerLevel = 2.59999990463,
                coef = 0.42857142857142855,
                coefAP = 0,
            },
        }
    },
    [20116] = { -- Consecration(Rank 2)
        spellLevel = 30,
        maxLevel = 0,
        duration = 8,
        baseCost = 235,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 15,
                valueRange = 0,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [20154] = { -- Seal of Righteousness(Rank 1)
        spellLevel = 1,
        maxLevel = 7,
        duration = 30,
        baseCost = 20,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 108,
                valueRange = 0,
                valuePerLevel = 18,
                coef = 0.02899999917,
                coefAP = 0,
            },
        }
    },
    [20187] = { -- Judgement of Righteousness(Rank 1)
        spellLevel = 1,
        maxLevel = 7,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 0,
                valueRange = 0,
                valuePerLevel = 1.79999995232,
                coef = 0.1439999938,
                coefAP = 0,
            },
        }
    },
    [20280] = { -- Judgement of Righteousness(Rank 2)
        spellLevel = 10,
        maxLevel = 16,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 25,
                valueRange = 2,
                valuePerLevel = 1.89999997616,
                coef = 0.31200000644,
                coefAP = 0,
            },
        }
    },
    [20281] = { -- Judgement of Righteousness(Rank 3)
        spellLevel = 18,
        maxLevel = 24,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 39,
                valueRange = 4,
                valuePerLevel = 2.40000009537,
                coef = 0.4620000124,
                coefAP = 0,
            },
        }
    },
    [20282] = { -- Judgement of Righteousness(Rank 4)
        spellLevel = 26,
        maxLevel = 32,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 57,
                valueRange = 6,
                valuePerLevel = 2.79999995232,
                coef = 0.5,
                coefAP = 0,
            },
        }
    },
    [20283] = { -- Judgement of Righteousness(Rank 5)
        spellLevel = 34,
        maxLevel = 40,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 78,
                valueRange = 8,
                valuePerLevel = 3.09999990463,
                coef = 0.5,
                coefAP = 0,
            },
        }
    },
    [20284] = { -- Judgement of Righteousness(Rank 6)
        spellLevel = 42,
        maxLevel = 48,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 102,
                valueRange = 10,
                valuePerLevel = 3.79999995232,
                coef = 0.5,
                coefAP = 0,
            },
        }
    },
    [20285] = { -- Judgement of Righteousness(Rank 7)
        spellLevel = 50,
        maxLevel = 56,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 131,
                valueRange = 12,
                valuePerLevel = 4.09999990463,
                coef = 0.5,
                coefAP = 0,
            },
        }
    },
    [20286] = { -- Judgement of Righteousness(Rank 8)
        spellLevel = 58,
        maxLevel = 64,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 162,
                valueRange = 16,
                valuePerLevel = 4.09999990463,
                coef = 0.5,
                coefAP = 0,
            },
        }
    },
    [20287] = { -- Seal of Righteousness(Rank 2)
        spellLevel = 10,
        maxLevel = 16,
        duration = 30,
        baseCost = 40,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 216,
                valueRange = 0,
                valuePerLevel = 17,
                coef = 0.06300000101,
                coefAP = 0,
            },
        }
    },
    [20288] = { -- Seal of Righteousness(Rank 3)
        spellLevel = 18,
        maxLevel = 24,
        duration = 30,
        baseCost = 60,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 352,
                valueRange = 0,
                valuePerLevel = 23,
                coef = 0.09300000221,
                coefAP = 0,
            },
        }
    },
    [20289] = { -- Seal of Righteousness(Rank 4)
        spellLevel = 26,
        maxLevel = 32,
        duration = 30,
        baseCost = 90,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 541,
                valueRange = 0,
                valuePerLevel = 31,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [20290] = { -- Seal of Righteousness(Rank 5)
        spellLevel = 34,
        maxLevel = 40,
        duration = 30,
        baseCost = 120,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 785,
                valueRange = 0,
                valuePerLevel = 37,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [20291] = { -- Seal of Righteousness(Rank 6)
        spellLevel = 42,
        maxLevel = 48,
        duration = 30,
        baseCost = 140,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 1082,
                valueRange = 0,
                valuePerLevel = 41,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [20292] = { -- Seal of Righteousness(Rank 7)
        spellLevel = 50,
        maxLevel = 56,
        duration = 30,
        baseCost = 170,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 1407,
                valueRange = 0,
                valuePerLevel = 47,
                coef = 0.10000000149,
                coefAP = 0,
            },
        }
    },
    [20293] = { -- Seal of Righteousness(Rank 8)
        spellLevel = 58,
        maxLevel = 64,
        duration = 30,
        baseCost = 200,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 1786,
                valueRange = 0,
                valuePerLevel = 47,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20375] = { -- Seal of Command(Rank 1)
        spellLevel = 20,
        maxLevel = 28,
        duration = 30,
        baseCost = 65,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                valueBase = 0,
                valueRange = 0,
                coef = 0.28999999166,
                coefAP = 0,
            },
        }
    },
    [20467] = { -- Judgement of Command(Rank 1)
        spellLevel = 20,
        maxLevel = 28,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 93,
                valueRange = 8,
                valuePerLevel = 5.59999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [20473] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        baseCost = 225,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25914,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25912,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20912] = { -- Blessing of Sanctuary(Rank 2)
        spellLevel = 40,
        maxLevel = 0,
        duration = 300,
        baseCost = 85,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 21,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20913] = { -- Blessing of Sanctuary(Rank 3)
        spellLevel = 50,
        maxLevel = 0,
        duration = 300,
        baseCost = 110,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 28,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20914] = { -- Blessing of Sanctuary(Rank 4)
        spellLevel = 60,
        maxLevel = 0,
        duration = 300,
        baseCost = 135,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 35,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20915] = { -- Seal of Command(Rank 2)
        spellLevel = 30,
        maxLevel = 38,
        duration = 30,
        baseCost = 110,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                valueBase = 0,
                valueRange = 0,
                coef = 0.28999999166,
                coefAP = 0,
            },
        }
    },
    [20918] = { -- Seal of Command(Rank 3)
        spellLevel = 40,
        maxLevel = 48,
        duration = 30,
        baseCost = 140,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                valueBase = 0,
                valueRange = 0,
                coef = 0.28999999166,
                coefAP = 0,
            },
        }
    },
    [20919] = { -- Seal of Command(Rank 4)
        spellLevel = 50,
        maxLevel = 58,
        duration = 30,
        baseCost = 180,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                valueBase = 0,
                valueRange = 0,
                coef = 0.28999999166,
                coefAP = 0,
            },
        }
    },
    [20920] = { -- Seal of Command(Rank 5)
        spellLevel = 60,
        maxLevel = 68,
        duration = 30,
        baseCost = 210,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                weaponCoef = 0.7,
                valueBase = 0,
                valueRange = 0,
                coef = 0.28999999166,
                coefAP = 0,
            },
        }
    },
    [20922] = { -- Consecration(Rank 3)
        spellLevel = 40,
        maxLevel = 0,
        duration = 8,
        baseCost = 320,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 24,
                valueRange = 0,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [20923] = { -- Consecration(Rank 4)
        spellLevel = 50,
        maxLevel = 0,
        duration = 8,
        baseCost = 435,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 35,
                valueRange = 0,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [20924] = { -- Consecration(Rank 5)
        spellLevel = 60,
        maxLevel = 0,
        duration = 8,
        baseCost = 565,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 48,
                valueRange = 0,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
    [20927] = { -- Holy Shield(Rank 2)
        spellLevel = 50,
        maxLevel = 0,
        duration = 10,
        baseCost = 195,
        school = 2,
        defType = 1,
        charges = 4,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 95,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [20928] = { -- Holy Shield(Rank 3)
        spellLevel = 60,
        maxLevel = 0,
        duration = 10,
        baseCost = 240,
        school = 2,
        defType = 1,
        charges = 4,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 130,
                valueRange = 0,
                coef = 0.05000000075,
                coefAP = 0,
            },
        }
    },
    [20929] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 0,
        baseCost = 275,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25913,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25911,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20930] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        baseCost = 325,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25903,
                coef = 0,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 25902,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [20963] = { -- Judgement of Command(Rank 2)
        spellLevel = 30,
        maxLevel = 38,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 146,
                valueRange = 14,
                valuePerLevel = 6.09999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [20964] = { -- Judgement of Command(Rank 3)
        spellLevel = 40,
        maxLevel = 48,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 204,
                valueRange = 20,
                valuePerLevel = 5.59999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [20965] = { -- Judgement of Command(Rank 4)
        spellLevel = 50,
        maxLevel = 58,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 261,
                valueRange = 26,
                valuePerLevel = 6.09999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [20966] = { -- Judgement of Command(Rank 5)
        spellLevel = 60,
        maxLevel = 68,
        school = 2,
        defType = 2,
        cantDogeParryBlock = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 339,
                valueRange = 34,
                valuePerLevel = 6.09999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [21084] = { -- Seal of Righteousness(Rank 1)
        spellLevel = 1,
        maxLevel = 7,
        duration = 30,
        baseCost = 20,
        school = 2,
        defType = 2,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 108,
                valueRange = 0,
                valuePerLevel = 18,
                coef = 0.02899999917,
                coefAP = 0,
            },
        }
    },
    [23590] = { -- Judgement
        spellLevel = 0,
        maxLevel = 0,
        school = 2,
        defType = 0,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 60,
                valueRange = 6,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [24239] = { -- Hammer of Wrath(Rank 3)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 425,
        school = 2,
        GCD = 1,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 504,
                valueRange = 52,
                valuePerLevel = 3.09999990463,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [24274] = { -- Hammer of Wrath(Rank 2)
        spellLevel = 52,
        maxLevel = 57,
        baseCost = 360,
        school = 2,
        GCD = 1,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 399,
                valueRange = 42,
                valuePerLevel = 2.70000004768,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [24275] = { -- Hammer of Wrath(Rank 1)
        spellLevel = 44,
        maxLevel = 49,
        baseCost = 295,
        school = 2,
        GCD = 1,
        defType = 3,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 304,
                valueRange = 32,
                valuePerLevel = 2.40000009537,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [25290] = { -- Blessing of Wisdom(Rank 6)
        spellLevel = 60,
        maxLevel = 0,
        duration = 300,
        baseCost = 125,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 24,
                valueBase = 33,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25292] = { -- Holy Light(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        baseCost = 660,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 1590,
                valueRange = 180,
                valuePerLevel = 5.80000019073,
                coef = 0.7142857142857143,
                coefAP = 0,
            },
        }
    },
    [25894] = { -- Greater Blessing of Wisdom(Rank 1)
        spellLevel = 54,
        maxLevel = 0,
        duration = 900,
        baseCost = 230,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 24,
                valueBase = 30,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25899] = { -- Greater Blessing of Sanctuary(Rank 1)
        spellLevel = 60,
        maxLevel = 0,
        duration = 900,
        baseCost = 270,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 43,
                valueBase = 35,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [25902] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 365,
                valueRange = 30,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [25903] = { -- Holy Shock(Rank 3)
        spellLevel = 56,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 365,
                valueRange = 30,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [25911] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 279,
                valueRange = 22,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [25912] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 204,
                valueRange = 16,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [25913] = { -- Holy Shock(Rank 2)
        spellLevel = 48,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 279,
                valueRange = 22,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [25914] = { -- Holy Shock(Rank 1)
        spellLevel = 40,
        maxLevel = 0,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 10,
                valueBase = 204,
                valueRange = 16,
                coef = 0.42899999022,
                coefAP = 0,
            },
        }
    },
    [25918] = { -- Greater Blessing of Wisdom(Rank 2)
        spellLevel = 60,
        maxLevel = 0,
        duration = 900,
        baseCost = 250,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 24,
                valueBase = 33,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [26573] = { -- Consecration(Rank 1)
        spellLevel = 20,
        maxLevel = 0,
        duration = 8,
        baseCost = 135,
        school = 2,
        defType = 1,
        effects = {
            [1] = {
                effectType = 27,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 8,
                valueRange = 0,
                coef = 0.04199999943,
                coefAP = 0,
            },
        }
    },
};

_addon.aurasPlayer[21084] = { -- Seal of Righteousness(Rank 1)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20187
    }
};

_addon.aurasPlayer[20287] = { -- Seal of Righteousness(Rank 2)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20280
    }
};

_addon.aurasPlayer[20288] = { -- Seal of Righteousness(Rank 3)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20281
    }
};

_addon.aurasPlayer[20289] = { -- Seal of Righteousness(Rank 4)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20282
    }
};

_addon.aurasPlayer[20375] = { -- Seal of Command(Rank 1)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20467
    }
};

_addon.aurasPlayer[20915] = { -- Seal of Command(Rank 2)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20963
    }
};

_addon.aurasPlayer[20290] = { -- Seal of Righteousness(Rank 5)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20283
    }
};

_addon.aurasPlayer[20918] = { -- Seal of Command(Rank 3)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20964
    }
};

_addon.aurasPlayer[20291] = { -- Seal of Righteousness(Rank 6)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20284
    }
};

_addon.aurasPlayer[20919] = { -- Seal of Command(Rank 4)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20965
    }
};

_addon.aurasPlayer[20292] = { -- Seal of Righteousness(Rank 7)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20285
    }
};

_addon.aurasPlayer[20293] = { -- Seal of Righteousness(Rank 8)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20286
    }
};

_addon.aurasPlayer[20920] = { -- Seal of Command(Rank 5)
    {
        type = _addon.CONST.EFFECT_TYPE.JUDGEMENT_SPELL,
        value = 20966
    }
};

---@type SpellClassSet
_addon.spellClassSet = {
    [1] = {
        [1] = {
            22270, -- Divine Intervention (NEWTEST)
            25780, -- Righteous Fury
        },
        [2] = {
            19740, -- Blessing of Might(Rank 1)
            19834, -- Blessing of Might(Rank 2)
            19835, -- Blessing of Might(Rank 3)
            19836, -- Blessing of Might(Rank 4)
            19837, -- Blessing of Might(Rank 5)
            19838, -- Blessing of Might(Rank 6)
            25291, -- Blessing of Might(Rank 7)
            25782, -- Greater Blessing of Might(Rank 1)
            25916, -- Greater Blessing of Might(Rank 2)
        },
        [4] = {
            20066, -- Repentance
        },
        [8] = {
            7294, -- Retribution Aura(Rank 1)
            10298, -- Retribution Aura(Rank 2)
            10299, -- Retribution Aura(Rank 3)
            10300, -- Retribution Aura(Rank 4)
            10301, -- Retribution Aura(Rank 5)
        },
        [16] = {
            1044, -- Blessing of Freedom
        },
        [32] = {
            20116, -- Consecration(Rank 2)
            20922, -- Consecration(Rank 3)
            20923, -- Consecration(Rank 4)
            20924, -- Consecration(Rank 5)
            26573, -- Consecration(Rank 1)
        },
        [64] = {
            465, -- Devotion Aura(Rank 1)
            643, -- Devotion Aura(Rank 3)
            1032, -- Devotion Aura(Rank 5)
            10290, -- Devotion Aura(Rank 2)
            10291, -- Devotion Aura(Rank 4)
            10292, -- Devotion Aura(Rank 6)
            10293, -- Devotion Aura(Rank 7)
        },
        [128] = {
            1022, -- Blessing of Protection(Rank 1)
            5599, -- Blessing of Protection(Rank 2)
            10278, -- Blessing of Protection(Rank 3)
            23415, -- Improved Blessing of Protection
            25282, -- Shield of Rajaxx
        },
        [256] = {
            1038, -- Blessing of Salvation
            25895, -- Greater Blessing of Salvation
        },
        [512] = {
            20162, -- Seal of the Crusader(Rank 2)
            20305, -- Seal of the Crusader(Rank 3)
            20306, -- Seal of the Crusader(Rank 4)
            20307, -- Seal of the Crusader(Rank 5)
            20308, -- Seal of the Crusader(Rank 6)
            21082, -- Seal of the Crusader(Rank 1)
        },
        [1024] = {
            20187, -- Judgement of Righteousness(Rank 1)
            20280, -- Judgement of Righteousness(Rank 2)
            20281, -- Judgement of Righteousness(Rank 3)
            20282, -- Judgement of Righteousness(Rank 4)
            20283, -- Judgement of Righteousness(Rank 5)
            20284, -- Judgement of Righteousness(Rank 6)
            20285, -- Judgement of Righteousness(Rank 7)
            20286, -- Judgement of Righteousness(Rank 8)
        },
        [2048] = {
            853, -- Hammer of Justice(Rank 1)
            5588, -- Hammer of Justice(Rank 2)
            5589, -- Hammer of Justice(Rank 3)
            10308, -- Hammer of Justice(Rank 4)
        },
        [4096] = {
            4987, -- Cleanse
            27847, -- Cleanse Cost Reduced
            28852, -- Improved Seal of the Crusader
        },
        [8192] = {
            19993, -- Flash of Light
        },
        [16384] = {
            19968, -- Holy Light
            19980, -- Holy Light
            19981, -- Holy Light
            19982, -- Holy Light
        },
        [32768] = {
            633, -- Lay on Hands(Rank 1)
            2800, -- Lay on Hands(Rank 2)
            10310, -- Lay on Hands(Rank 3)
        },
        [65536] = {
            19742, -- Blessing of Wisdom(Rank 1)
            19850, -- Blessing of Wisdom(Rank 2)
            19852, -- Blessing of Wisdom(Rank 3)
            19853, -- Blessing of Wisdom(Rank 4)
            19854, -- Blessing of Wisdom(Rank 5)
            25290, -- Blessing of Wisdom(Rank 6)
            25894, -- Greater Blessing of Wisdom(Rank 1)
            25918, -- Greater Blessing of Wisdom(Rank 2)
        },
        [131072] = {
            19746, -- Concentration Aura
            27733, -- Ironweave Battlesuit
        },
        [262144] = {
            20167, -- Seal of Light(Rank 1)
            20168, -- Seal of Wisdom(Rank 1)
            20333, -- Seal of Light(Rank 2)
            20334, -- Seal of Light(Rank 3)
            20340, -- Seal of Light(Rank 4)
            20350, -- Seal of Wisdom(Rank 2)
            20351, -- Seal of Wisdom(Rank 3)
        },
        [524288] = {
            20185, -- Judgement of Light(Rank 1)
            20186, -- Judgement of Wisdom(Rank 1)
            20344, -- Judgement of Light(Rank 2)
            20345, -- Judgement of Light(Rank 3)
            20346, -- Judgement of Light(Rank 4)
            20354, -- Judgement of Wisdom(Rank 2)
            20355, -- Judgement of Wisdom(Rank 3)
            25751, -- Copy of Judgement of Light(Rank 4)
            25752, -- Judgement of Light
            25753, -- Judgement of Light
            25757, -- Judgement of Wisdom
            25758, -- Judgement of Wisdom
        },
        [1048576] = {
            20184, -- Judgement of Justice(Rank 1)
        },
        [2097152] = {
            20473, -- Holy Shock(Rank 1)
            20929, -- Holy Shock(Rank 2)
            20930, -- Holy Shock(Rank 3)
            25902, -- Holy Shock(Rank 3)
            25903, -- Holy Shock(Rank 3)
            25911, -- Holy Shock(Rank 2)
            25912, -- Holy Shock(Rank 1)
            25913, -- Holy Shock(Rank 2)
            25914, -- Holy Shock(Rank 1)
        },
        [8388608] = {
            20271, -- Judgement
        },
        [16777216] = {
            20217, -- Blessing of Kings
            25898, -- Greater Blessing of Kings
        },
        [33554432] = {
            20375, -- Seal of Command(Rank 1)
            20915, -- Seal of Command(Rank 2)
            20918, -- Seal of Command(Rank 3)
            20919, -- Seal of Command(Rank 4)
            20920, -- Seal of Command(Rank 5)
        },
        [67108864] = {
            19876, -- Shadow Resistance Aura(Rank 1)
            19888, -- Frost Resistance Aura(Rank 1)
            19891, -- Fire Resistance Aura(Rank 1)
            19895, -- Shadow Resistance Aura(Rank 2)
            19896, -- Shadow Resistance Aura(Rank 3)
            19897, -- Frost Resistance Aura(Rank 2)
            19898, -- Frost Resistance Aura(Rank 3)
            19899, -- Fire Resistance Aura(Rank 2)
            19900, -- Fire Resistance Aura(Rank 3)
            20218, -- Sanctity Aura
        },
        [134217728] = {
            20154, -- Seal of Righteousness(Rank 1)
            20164, -- Seal of Justice
            20165, -- Seal of Light(Rank 1)
            20166, -- Seal of Wisdom(Rank 1)
            20287, -- Seal of Righteousness(Rank 2)
            20288, -- Seal of Righteousness(Rank 3)
            20289, -- Seal of Righteousness(Rank 4)
            20290, -- Seal of Righteousness(Rank 5)
            20291, -- Seal of Righteousness(Rank 6)
            20292, -- Seal of Righteousness(Rank 7)
            20293, -- Seal of Righteousness(Rank 8)
            20347, -- Seal of Light(Rank 2)
            20348, -- Seal of Light(Rank 3)
            20349, -- Seal of Light(Rank 4)
            20356, -- Seal of Wisdom(Rank 2)
            20357, -- Seal of Wisdom(Rank 3)
            21084, -- Seal of Righteousness(Rank 1)
            407798, -- Seal of Martyrdom
            407799, -- Seal of Martyrdom
        },
        [268435456] = {
            1022, -- Blessing of Protection(Rank 1)
            1038, -- Blessing of Salvation
            1044, -- Blessing of Freedom
            5599, -- Blessing of Protection(Rank 2)
            6940, -- Blessing of Sacrifice(Rank 1)
            10278, -- Blessing of Protection(Rank 3)
            19740, -- Blessing of Might(Rank 1)
            19742, -- Blessing of Wisdom(Rank 1)
            19834, -- Blessing of Might(Rank 2)
            19835, -- Blessing of Might(Rank 3)
            19836, -- Blessing of Might(Rank 4)
            19837, -- Blessing of Might(Rank 5)
            19838, -- Blessing of Might(Rank 6)
            19850, -- Blessing of Wisdom(Rank 2)
            19852, -- Blessing of Wisdom(Rank 3)
            19853, -- Blessing of Wisdom(Rank 4)
            19854, -- Blessing of Wisdom(Rank 5)
            19977, -- Blessing of Light(Rank 1)
            19978, -- Blessing of Light(Rank 2)
            19979, -- Blessing of Light(Rank 3)
            20217, -- Blessing of Kings
            20729, -- Blessing of Sacrifice(Rank 2)
            20911, -- Blessing of Sanctuary(Rank 1)
            20912, -- Blessing of Sanctuary(Rank 2)
            20913, -- Blessing of Sanctuary(Rank 3)
            20914, -- Blessing of Sanctuary(Rank 4)
            23415, -- Improved Blessing of Protection
            25282, -- Shield of Rajaxx
            25290, -- Blessing of Wisdom(Rank 6)
            25291, -- Blessing of Might(Rank 7)
            25782, -- Greater Blessing of Might(Rank 1)
            25890, -- Greater Blessing of Light(Rank 1)
            25894, -- Greater Blessing of Wisdom(Rank 1)
            25895, -- Greater Blessing of Salvation
            25898, -- Greater Blessing of Kings
            25899, -- Greater Blessing of Sanctuary(Rank 1)
            25916, -- Greater Blessing of Might(Rank 2)
            25918, -- Greater Blessing of Wisdom(Rank 2)
        },
        [536870912] = {
            20188, -- Judgement of the Crusader(Rank 2)
            20300, -- Judgement of the Crusader(Rank 3)
            20301, -- Judgement of the Crusader(Rank 4)
            20302, -- Judgement of the Crusader(Rank 5)
            20303, -- Judgement of the Crusader(Rank 6)
            21183, -- Judgement of the Crusader(Rank 1)
            25942, -- Judgement of the Crusader
            25943, -- Judgement of the Crusader
            29203, -- Healing Way
        },
        [1073741824] = {
            19750, -- Flash of Light(Rank 1)
            19939, -- Flash of Light(Rank 2)
            19940, -- Flash of Light(Rank 3)
            19941, -- Flash of Light(Rank 4)
            19942, -- Flash of Light(Rank 5)
            19943, -- Flash of Light(Rank 6)
        },
        [2147483648] = {
            635, -- Holy Light(Rank 1)
            639, -- Holy Light(Rank 2)
            647, -- Holy Light(Rank 3)
            1026, -- Holy Light(Rank 4)
            1042, -- Holy Light(Rank 5)
            3472, -- Holy Light(Rank 6)
            10328, -- Holy Light(Rank 7)
            10329, -- Holy Light(Rank 8)
            25292, -- Holy Light(Rank 9)
        },
    },
    [2] = {
        [2] = {
            879, -- Exorcism(Rank 1)
            1152, -- Purify
            4987, -- Cleanse
            5614, -- Exorcism(Rank 2)
            5615, -- Exorcism(Rank 3)
            10312, -- Exorcism(Rank 4)
            10313, -- Exorcism(Rank 5)
            10314, -- Exorcism(Rank 6)
            415068, -- Exorcism(Rank 1)
            415069, -- Exorcism(Rank 2)
            415070, -- Exorcism(Rank 3)
            415071, -- Exorcism(Rank 4)
            415072, -- Exorcism(Rank 5)
            415073, -- Exorcism(Rank 6)
        },
        [8192] = {
            409324, -- Ancestral Guidance
        },
        [32768] = {
            407676, -- Crusader Strike
        },
        [65536] = {
            25903, -- Holy Shock(Rank 3)
            25913, -- Holy Shock(Rank 2)
            25914, -- Holy Shock(Rank 1)
        },
        [131072] = {
            407778, -- Divine Storm
            407782, -- Divine Storm
        },
        [16777216] = {
            407613, -- Beacon of Light
            407615, -- Beacon of Light
        },
    },
    [3] = {
        [4] = {
            407804, -- Divine Sacrifice
        },
    },
    [4] = {
        [2147483648] = {
            407627, -- Righteous Fury
        },
    },
};


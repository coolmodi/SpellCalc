-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

---@type SpellInfoTable
_addon.spellInfo = {
    [172] = { -- Corruption(Rank 1)
        spellLevel = 4,
        maxLevel = 9,
        duration = 12,
        baseCostPct = 9,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 10,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [348] = { -- Immolate(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 8,
                valueRange = 0,
                valuePerLevel = 0.6,
                coef = 0.058,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 4,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [603] = { -- Curse of Doom(Rank 1)
        spellLevel = 60,
        maxLevel = 69,
        duration = 60,
        baseCostPct = 15,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 60,
                valueBase = 3200,
                valueRange = 0,
                coef = 2,
                coefAP = 0,
            },
        }
    },
    [686] = { -- Shadow Bolt(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 12,
                valueRange = 4,
                valuePerLevel = 0.4,
                coef = 0.14,
                coefAP = 0,
            },
        }
    },
    [689] = { -- Drain Life(Rank 1)
        spellLevel = 14,
        maxLevel = 19,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 10,
                valueRange = 0,
                coef = 0.111,
                coefAP = 0,
            },
        }
    },
    [695] = { -- Shadow Bolt(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 23,
                valueRange = 6,
                valuePerLevel = 0.6,
                coef = 0.299,
                coefAP = 0,
            },
        }
    },
    [699] = { -- Drain Life(Rank 2)
        spellLevel = 22,
        maxLevel = 27,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 17,
                valueRange = 0,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [705] = { -- Shadow Bolt(Rank 3)
        spellLevel = 12,
        maxLevel = 17,
        baseCostPct = 16,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 48,
                valueRange = 8,
                valuePerLevel = 0.9,
                coef = 0.56,
                coefAP = 0,
            },
        }
    },
    [707] = { -- Immolate(Rank 2)
        spellLevel = 10,
        maxLevel = 15,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 19,
                valueRange = 0,
                valuePerLevel = 0.9,
                coef = 0.125,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 8,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [709] = { -- Drain Life(Rank 3)
        spellLevel = 30,
        maxLevel = 35,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 29,
                valueRange = 0,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [755] = { -- Health Funnel(Rank 1)
        spellLevel = 12,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 12,
                valueRange = 0,
                coef = 0.376,
                coefAP = 0,
            },
        }
    },
    [980] = { -- Curse of Agony(Rank 1)
        spellLevel = 8,
        maxLevel = 17,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 7,
                valueRange = 0,
                coef = 0.0548,
                coefAP = 0,
            },
        }
    },
    [1014] = { -- Curse of Agony(Rank 2)
        spellLevel = 18,
        maxLevel = 27,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 15,
                valueRange = 0,
                coef = 0.0923,
                coefAP = 0,
            },
        }
    },
    [1088] = { -- Shadow Bolt(Rank 4)
        spellLevel = 20,
        maxLevel = 25,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 86,
                valueRange = 12,
                valuePerLevel = 1.2,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [1094] = { -- Immolate(Rank 3)
        spellLevel = 20,
        maxLevel = 25,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 45,
                valueRange = 0,
                valuePerLevel = 1.5,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 18,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [1106] = { -- Shadow Bolt(Rank 5)
        spellLevel = 28,
        maxLevel = 33,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 142,
                valueRange = 20,
                valuePerLevel = 1.6,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [1120] = { -- Drain Soul(Rank 1)
        spellLevel = 10,
        maxLevel = 23,
        duration = 15,
        baseCostPct = 14,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 11,
                valueRange = 0,
                coef = 0.268,
                coefAP = 0,
            },
        }
    },
    [1122] = { -- Inferno(Summon)
        spellLevel = 50,
        maxLevel = 0,
        duration = 60,
        baseCostPct = 80,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 22703,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [1949] = { -- Hellfire(Rank 1)
        spellLevel = 30,
        maxLevel = 40,
        duration = 15,
        baseCostPct = 64,
        school = 3,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 83,
                valueRange = 0,
                valuePerLevel = 0.4,
                coef = 0.095,
                coefAP = 0,
            },
        }
    },
    [2941] = { -- Immolate(Rank 4)
        spellLevel = 30,
        maxLevel = 35,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 90,
                valueRange = 0,
                valuePerLevel = 2.1,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 33,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [3698] = { -- Health Funnel(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 24,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [3699] = { -- Health Funnel(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 43,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [3700] = { -- Health Funnel(Rank 4)
        spellLevel = 36,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 64,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [5676] = { -- Searing Pain(Rank 1)
        spellLevel = 18,
        maxLevel = 24,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 34,
                valueRange = 8,
                valuePerLevel = 0.7,
                coef = 0.396,
                coefAP = 0,
            },
        }
    },
    [5740] = { -- Rain of Fire(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        duration = 8,
        baseCostPct = 57,
        school = 3,
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
                triggeredSpell = 42223,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6217] = { -- Curse of Agony(Rank 3)
        spellLevel = 28,
        maxLevel = 37,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 27,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [6219] = { -- Rain of Fire(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        duration = 8,
        baseCostPct = 57,
        school = 3,
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
                triggeredSpell = 42224,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [6222] = { -- Corruption(Rank 2)
        spellLevel = 14,
        maxLevel = 19,
        duration = 15,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 18,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [6223] = { -- Corruption(Rank 3)
        spellLevel = 24,
        maxLevel = 29,
        duration = 18,
        baseCostPct = 14,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 37,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [6229] = { -- Shadow Ward(Rank 1)
        spellLevel = 32,
        maxLevel = 41,
        duration = 30,
        baseCostPct = 12,
        school = 6,
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
    [6353] = { -- Soul Fire(Rank 1)
        spellLevel = 48,
        maxLevel = 54,
        baseCostPct = 9,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 623,
                valueRange = 160,
                valuePerLevel = 2.9,
                coef = 1.15,
                coefAP = 0,
            },
        }
    },
    [6789] = { -- Death Coil(Rank 1)
        spellLevel = 42,
        maxLevel = 48,
        duration = 3,
        baseCostPct = 23,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 244,
                valueRange = 0,
                valuePerLevel = 2.2,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [7641] = { -- Shadow Bolt(Rank 6)
        spellLevel = 36,
        maxLevel = 41,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 204,
                valueRange = 26,
                valuePerLevel = 1.9,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [7648] = { -- Corruption(Rank 4)
        spellLevel = 34,
        maxLevel = 39,
        duration = 18,
        baseCostPct = 14,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 54,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [7651] = { -- Drain Life(Rank 4)
        spellLevel = 38,
        maxLevel = 43,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 41,
                valueRange = 0,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [8288] = { -- Drain Soul(Rank 2)
        spellLevel = 24,
        maxLevel = 37,
        duration = 15,
        baseCostPct = 14,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 31,
                valueRange = 0,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [8289] = { -- Drain Soul(Rank 3)
        spellLevel = 38,
        maxLevel = 51,
        duration = 15,
        baseCostPct = 14,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 59,
                valueRange = 0,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [11659] = { -- Shadow Bolt(Rank 7)
        spellLevel = 44,
        maxLevel = 49,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 281,
                valueRange = 34,
                valuePerLevel = 2.3,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [11660] = { -- Shadow Bolt(Rank 8)
        spellLevel = 52,
        maxLevel = 57,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 360,
                valueRange = 42,
                valuePerLevel = 2.6,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [11661] = { -- Shadow Bolt(Rank 9)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 455,
                valueRange = 52,
                valuePerLevel = 3,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [11665] = { -- Immolate(Rank 5)
        spellLevel = 40,
        maxLevel = 45,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 134,
                valueRange = 0,
                valuePerLevel = 2.7,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 51,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [11667] = { -- Immolate(Rank 6)
        spellLevel = 50,
        maxLevel = 55,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 192,
                valueRange = 0,
                valuePerLevel = 3.2,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 73,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [11668] = { -- Immolate(Rank 7)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 258,
                valueRange = 0,
                valuePerLevel = 3.8,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 97,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [11671] = { -- Corruption(Rank 5)
        spellLevel = 44,
        maxLevel = 49,
        duration = 18,
        baseCostPct = 14,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 81,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [11672] = { -- Corruption(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        duration = 18,
        baseCostPct = 14,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 111,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [11675] = { -- Drain Soul(Rank 4)
        spellLevel = 52,
        maxLevel = 66,
        duration = 15,
        baseCostPct = 14,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 91,
                valueRange = 0,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [11677] = { -- Rain of Fire(Rank 3)
        spellLevel = 46,
        maxLevel = 51,
        duration = 8,
        baseCostPct = 57,
        school = 3,
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
                triggeredSpell = 42225,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [11678] = { -- Rain of Fire(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        duration = 8,
        baseCostPct = 57,
        school = 3,
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
                triggeredSpell = 42226,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [11683] = { -- Hellfire(Rank 2)
        spellLevel = 42,
        maxLevel = 52,
        duration = 15,
        baseCostPct = 64,
        school = 3,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 139,
                valueRange = 0,
                valuePerLevel = 0.5,
                coef = 0.095,
                coefAP = 0,
            },
        }
    },
    [11684] = { -- Hellfire(Rank 3)
        spellLevel = 54,
        maxLevel = 64,
        duration = 15,
        baseCostPct = 64,
        school = 3,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 208,
                valueRange = 0,
                valuePerLevel = 0.7,
                coef = 0.095,
                coefAP = 0,
            },
        }
    },
    [11693] = { -- Health Funnel(Rank 5)
        spellLevel = 44,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 89,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [11694] = { -- Health Funnel(Rank 6)
        spellLevel = 52,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 119,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [11695] = { -- Health Funnel(Rank 7)
        spellLevel = 60,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 153,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [11699] = { -- Drain Life(Rank 5)
        spellLevel = 46,
        maxLevel = 51,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 55,
                valueRange = 0,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [11700] = { -- Drain Life(Rank 6)
        spellLevel = 54,
        maxLevel = 59,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 71,
                valueRange = 0,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [11711] = { -- Curse of Agony(Rank 4)
        spellLevel = 38,
        maxLevel = 47,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 42,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [11712] = { -- Curse of Agony(Rank 5)
        spellLevel = 48,
        maxLevel = 57,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 65,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [11713] = { -- Curse of Agony(Rank 6)
        spellLevel = 58,
        maxLevel = 66,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 87,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [11739] = { -- Shadow Ward(Rank 2)
        spellLevel = 42,
        maxLevel = 51,
        duration = 30,
        baseCostPct = 12,
        school = 6,
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
    [11740] = { -- Shadow Ward(Rank 3)
        spellLevel = 52,
        maxLevel = 59,
        duration = 30,
        baseCostPct = 12,
        school = 6,
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
    [17877] = { -- Shadowburn(Rank 1)
        spellLevel = 20,
        maxLevel = 24,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 87,
                valueRange = 12,
                valuePerLevel = 1.2,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [17919] = { -- Searing Pain(Rank 2)
        spellLevel = 26,
        maxLevel = 32,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 59,
                valueRange = 12,
                valuePerLevel = 1,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [17920] = { -- Searing Pain(Rank 3)
        spellLevel = 34,
        maxLevel = 40,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 86,
                valueRange = 18,
                valuePerLevel = 1.2,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [17921] = { -- Searing Pain(Rank 4)
        spellLevel = 42,
        maxLevel = 48,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 122,
                valueRange = 24,
                valuePerLevel = 1.5,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [17922] = { -- Searing Pain(Rank 5)
        spellLevel = 50,
        maxLevel = 56,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 158,
                valueRange = 30,
                valuePerLevel = 1.7,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [17923] = { -- Searing Pain(Rank 6)
        spellLevel = 58,
        maxLevel = 64,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 204,
                valueRange = 36,
                valuePerLevel = 2,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [17924] = { -- Soul Fire(Rank 2)
        spellLevel = 56,
        maxLevel = 62,
        baseCostPct = 9,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 703,
                valueRange = 178,
                valuePerLevel = 3.1,
                coef = 1.15,
                coefAP = 0,
            },
        }
    },
    [17925] = { -- Death Coil(Rank 2)
        spellLevel = 50,
        maxLevel = 56,
        duration = 3,
        baseCostPct = 23,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 319,
                valueRange = 0,
                valuePerLevel = 2.6,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [17926] = { -- Death Coil(Rank 3)
        spellLevel = 58,
        maxLevel = 64,
        duration = 3,
        baseCostPct = 23,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 400,
                valueRange = 0,
                valuePerLevel = 3,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [17962] = { -- Conflagrate
        spellLevel = 1,
        maxLevel = 0,
        duration = 6,
        baseCostPct = 16,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 4,
                valueBase = 0,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [18867] = { -- Shadowburn(Rank 2)
        spellLevel = 24,
        maxLevel = 30,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 115,
                valueRange = 16,
                valuePerLevel = 1.4,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [18868] = { -- Shadowburn(Rank 3)
        spellLevel = 32,
        maxLevel = 38,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 186,
                valueRange = 24,
                valuePerLevel = 1.8,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [18869] = { -- Shadowburn(Rank 4)
        spellLevel = 40,
        maxLevel = 46,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 261,
                valueRange = 32,
                valuePerLevel = 2.2,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [18870] = { -- Shadowburn(Rank 5)
        spellLevel = 48,
        maxLevel = 54,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 350,
                valueRange = 42,
                valuePerLevel = 2.6,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [18871] = { -- Shadowburn(Rank 6)
        spellLevel = 56,
        maxLevel = 62,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 450,
                valueRange = 52,
                valuePerLevel = 3,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [22703] = { -- Inferno Effect
        spellLevel = 50,
        maxLevel = 0,
        duration = 2,
        school = 3,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 200,
                valueRange = 0,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [25307] = { -- Shadow Bolt(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 482,
                valueRange = 56,
                valuePerLevel = 3.1,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [25309] = { -- Immolate(Rank 8)
        spellLevel = 60,
        maxLevel = 65,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 279,
                valueRange = 0,
                valuePerLevel = 3.9,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 102,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [25311] = { -- Corruption(Rank 7)
        spellLevel = 60,
        maxLevel = 64,
        duration = 18,
        baseCostPct = 14,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 137,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [27209] = { -- Shadow Bolt(Rank 11)
        spellLevel = 69,
        maxLevel = 74,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 541,
                valueRange = 62,
                valuePerLevel = 3.4,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [27210] = { -- Searing Pain(Rank 7)
        spellLevel = 65,
        maxLevel = 69,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 243,
                valueRange = 44,
                valuePerLevel = 2.4,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [27211] = { -- Soul Fire(Rank 3)
        spellLevel = 64,
        maxLevel = 68,
        baseCostPct = 9,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 839,
                valueRange = 212,
                valuePerLevel = 3.5,
                coef = 1.15,
                coefAP = 0,
            },
        }
    },
    [27212] = { -- Rain of Fire(Rank 5)
        spellLevel = 69,
        maxLevel = 74,
        duration = 8,
        baseCostPct = 57,
        school = 3,
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
                triggeredSpell = 42218,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27213] = { -- Hellfire(Rank 4)
        spellLevel = 68,
        maxLevel = 78,
        duration = 15,
        baseCostPct = 64,
        school = 3,
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
                triggeredSpell = 27214,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 306,
                valueRange = 0,
                valuePerLevel = 0.8,
                coef = 0.095,
                coefAP = 0,
            },
        }
    },
    [27214] = { -- Hellfire Effect(Rank 4)
        spellLevel = 68,
        maxLevel = 78,
        school = 3,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 306,
                valueRange = 0,
                valuePerLevel = 0.8,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [27215] = { -- Immolate(Rank 9)
        spellLevel = 69,
        maxLevel = 74,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 327,
                valueRange = 0,
                valuePerLevel = 4.3,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 123,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [27216] = { -- Corruption(Rank 8)
        spellLevel = 65,
        maxLevel = 70,
        duration = 18,
        baseCostPct = 14,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 150,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [27217] = { -- Drain Soul(Rank 5)
        spellLevel = 67,
        maxLevel = 76,
        duration = 15,
        baseCostPct = 14,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 124,
                valueRange = 0,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [27218] = { -- Curse of Agony(Rank 7)
        spellLevel = 67,
        maxLevel = 72,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 113,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [27219] = { -- Drain Life(Rank 7)
        spellLevel = 62,
        maxLevel = 67,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 87,
                valueRange = 0,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [27220] = { -- Drain Life(Rank 8)
        spellLevel = 69,
        maxLevel = 74,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 108,
                valueRange = 0,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [27223] = { -- Death Coil(Rank 4)
        spellLevel = 68,
        maxLevel = 74,
        duration = 3,
        baseCostPct = 23,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 519,
                valueRange = 0,
                valuePerLevel = 3.4,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [27243] = { -- Seed of Corruption(Rank 1)
        spellLevel = 70,
        maxLevel = 0,
        duration = 18,
        baseCostPct = 34,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 174,
                valueRange = 0,
                coef = 0.25,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 27285,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [27259] = { -- Health Funnel(Rank 8)
        spellLevel = 67,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 188,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [27263] = { -- Shadowburn(Rank 7)
        spellLevel = 63,
        maxLevel = 69,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 518,
                valueRange = 60,
                valuePerLevel = 3.4,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [27285] = { -- Seed of Corruption(Rank 1)
        spellLevel = 70,
        maxLevel = 0,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1110,
                valueRange = 180,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [28610] = { -- Shadow Ward(Rank 4)
        spellLevel = 60,
        maxLevel = 69,
        duration = 30,
        baseCostPct = 12,
        school = 6,
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
    [29722] = { -- Incinerate(Rank 1)
        spellLevel = 64,
        maxLevel = 69,
        baseCostPct = 14,
        school = 3,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 403,
                valueRange = 64,
                valuePerLevel = 2.6,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [30108] = { -- Unstable Affliction(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 15,
        baseCostPct = 15,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 110,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [30283] = { -- Shadowfury(Rank 1)
        spellLevel = 50,
        maxLevel = 59,
        duration = 3,
        baseCostPct = 27,
        school = 6,
        isBinary = true,
        GCD = 0.5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 343,
                valueRange = 64,
                valuePerLevel = 1.6,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [30404] = { -- Unstable Affliction(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 15,
        baseCostPct = 15,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 140,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [30405] = { -- Unstable Affliction(Rank 3)
        spellLevel = 70,
        maxLevel = 74,
        duration = 15,
        baseCostPct = 15,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 175,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [30413] = { -- Shadowfury(Rank 2)
        spellLevel = 60,
        maxLevel = 69,
        duration = 3,
        baseCostPct = 27,
        school = 6,
        isBinary = true,
        GCD = 0.5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 459,
                valueRange = 88,
                valuePerLevel = 1.9,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [30414] = { -- Shadowfury(Rank 3)
        spellLevel = 70,
        maxLevel = 74,
        duration = 3,
        baseCostPct = 27,
        school = 6,
        isBinary = true,
        GCD = 0.5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 612,
                valueRange = 116,
                valuePerLevel = 2.2,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [30459] = { -- Searing Pain(Rank 8)
        spellLevel = 70,
        maxLevel = 76,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 270,
                valueRange = 50,
                valuePerLevel = 2.8,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [30545] = { -- Soul Fire(Rank 4)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 9,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1003,
                valueRange = 254,
                valuePerLevel = 3.8,
                coef = 1.15,
                coefAP = 0,
            },
        }
    },
    [30546] = { -- Shadowburn(Rank 8)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 597,
                valueRange = 68,
                valuePerLevel = 3.8,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [30910] = { -- Curse of Doom(Rank 2)
        spellLevel = 70,
        maxLevel = 0,
        duration = 60,
        baseCostPct = 15,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 60,
                valueBase = 4200,
                valueRange = 0,
                coef = 2,
                coefAP = 0,
            },
        }
    },
    [32231] = { -- Incinerate(Rank 2)
        spellLevel = 70,
        maxLevel = 74,
        baseCostPct = 14,
        school = 3,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 444,
                valueRange = 70,
                valuePerLevel = 2.8,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [42218] = { -- Rain of Fire(Rank 5)
        spellLevel = 69,
        maxLevel = 74,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 452,
                valueRange = 0,
                valuePerLevel = 0.8,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [42223] = { -- Rain of Fire(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 60,
                valueRange = 0,
                valuePerLevel = 0.3,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [42224] = { -- Rain of Fire(Rank 2)
        spellLevel = 34,
        maxLevel = 39,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 136,
                valueRange = 0,
                valuePerLevel = 0.4,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [42225] = { -- Rain of Fire(Rank 3)
        spellLevel = 46,
        maxLevel = 51,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 220,
                valueRange = 0,
                valuePerLevel = 0.5,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [42226] = { -- Rain of Fire(Rank 4)
        spellLevel = 58,
        maxLevel = 63,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 321,
                valueRange = 0,
                valuePerLevel = 0.6,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [47206] = { -- Atrocity(Rank 1)
        spellLevel = 60,
        maxLevel = 0,
        duration = 18,
        baseCostPct = 21,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 150,
                valueRange = 0,
                coef = 0.156,
                coefAP = 0,
            },
        }
    },
    [47808] = { -- Shadow Bolt(Rank 12)
        spellLevel = 74,
        maxLevel = 79,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 596,
                valueRange = 68,
                valuePerLevel = 3.8,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [47809] = { -- Shadow Bolt(Rank 13)
        spellLevel = 79,
        maxLevel = 84,
        baseCostPct = 17,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 690,
                valueRange = 80,
                valuePerLevel = 4.4,
                coef = 0.857,
                coefAP = 0,
            },
        }
    },
    [47810] = { -- Immolate(Rank 10)
        spellLevel = 75,
        maxLevel = 79,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 370,
                valueRange = 0,
                valuePerLevel = 5,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 139,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [47811] = { -- Immolate(Rank 11)
        spellLevel = 80,
        maxLevel = 84,
        duration = 15,
        baseCostPct = 17,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 460,
                valueRange = 0,
                valuePerLevel = 6,
                coef = 0.2,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 157,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [47812] = { -- Corruption(Rank 9)
        spellLevel = 71,
        maxLevel = 76,
        duration = 18,
        baseCostPct = 14,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 164,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [47813] = { -- Corruption(Rank 10)
        spellLevel = 77,
        maxLevel = 82,
        duration = 18,
        baseCostPct = 14,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 180,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [47814] = { -- Searing Pain(Rank 9)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 295,
                valueRange = 54,
                valuePerLevel = 4.1,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [47815] = { -- Searing Pain(Rank 10)
        spellLevel = 79,
        maxLevel = 83,
        baseCostPct = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 343,
                valueRange = 62,
                valuePerLevel = 4.8,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [47817] = { -- Rain of Fire(Rank 6)
        spellLevel = 72,
        maxLevel = 76,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 538,
                valueRange = 0,
                valuePerLevel = 1.6,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [47818] = { -- Rain of Fire(Rank 7)
        spellLevel = 79,
        maxLevel = 83,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 675,
                valueRange = 0,
                valuePerLevel = 2,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [47819] = { -- Rain of Fire(Rank 6)
        spellLevel = 72,
        maxLevel = 76,
        duration = 8,
        baseCostPct = 57,
        school = 3,
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
                triggeredSpell = 47817,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [47820] = { -- Rain of Fire(Rank 7)
        spellLevel = 79,
        maxLevel = 83,
        duration = 8,
        baseCostPct = 57,
        school = 3,
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
                triggeredSpell = 47818,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [47822] = { -- Hellfire Effect(Rank 5)
        spellLevel = 78,
        maxLevel = 88,
        school = 3,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 451,
                valueRange = 0,
                valuePerLevel = 1,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [47823] = { -- Hellfire(Rank 5)
        spellLevel = 78,
        maxLevel = 88,
        duration = 15,
        baseCostPct = 64,
        school = 3,
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
                triggeredSpell = 47822,
                coef = 1,
                coefAP = 0,
            },
            [2] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 1,
                valueBase = 451,
                valueRange = 0,
                valuePerLevel = 1,
                coef = 0.095,
                coefAP = 0,
            },
        }
    },
    [47824] = { -- Soul Fire(Rank 5)
        spellLevel = 75,
        maxLevel = 79,
        baseCostPct = 9,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1137,
                valueRange = 286,
                valuePerLevel = 4,
                coef = 1.15,
                coefAP = 0,
            },
        }
    },
    [47825] = { -- Soul Fire(Rank 6)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 9,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1323,
                valueRange = 334,
                valuePerLevel = 5,
                coef = 1.15,
                coefAP = 0,
            },
        }
    },
    [47826] = { -- Shadowburn(Rank 9)
        spellLevel = 75,
        maxLevel = 79,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 662,
                valueRange = 76,
                valuePerLevel = 5,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [47827] = { -- Shadowburn(Rank 10)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 20,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 775,
                valueRange = 90,
                valuePerLevel = 6,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [47833] = { -- Seed of Corruption(Rank 2)
        spellLevel = 75,
        maxLevel = 0,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1383,
                valueRange = 224,
                valuePerLevel = 1,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [47834] = { -- Seed of Corruption(Rank 3)
        spellLevel = 80,
        maxLevel = 0,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1633,
                valueRange = 264,
                valuePerLevel = 2,
                coef = 0.286,
                coefAP = 0,
            },
        }
    },
    [47835] = { -- Seed of Corruption(Rank 2)
        spellLevel = 75,
        maxLevel = 0,
        duration = 18,
        baseCostPct = 34,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 216,
                valueRange = 0,
                coef = 0.25,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 47833,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [47836] = { -- Seed of Corruption(Rank 3)
        spellLevel = 80,
        maxLevel = 0,
        duration = 18,
        baseCostPct = 34,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 253,
                valueRange = 0,
                coef = 0.25,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 47834,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [47837] = { -- Incinerate(Rank 3)
        spellLevel = 74,
        maxLevel = 78,
        baseCostPct = 14,
        school = 3,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 485,
                valueRange = 78,
                valuePerLevel = 3,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [47838] = { -- Incinerate(Rank 4)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 14,
        school = 3,
        defType = 1,
        charges = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 582,
                valueRange = 94,
                valuePerLevel = 4,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [47841] = { -- Unstable Affliction(Rank 4)
        spellLevel = 75,
        maxLevel = 79,
        duration = 15,
        baseCostPct = 15,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 197,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [47843] = { -- Unstable Affliction(Rank 5)
        spellLevel = 80,
        maxLevel = 84,
        duration = 15,
        baseCostPct = 15,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 230,
                valueRange = 0,
                coef = 0.2,
                coefAP = 0,
            },
        }
    },
    [47846] = { -- Shadowfury(Rank 4)
        spellLevel = 75,
        maxLevel = 79,
        duration = 3,
        baseCostPct = 27,
        school = 6,
        isBinary = true,
        GCD = 0.5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 822,
                valueRange = 156,
                valuePerLevel = 3,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [47847] = { -- Shadowfury(Rank 5)
        spellLevel = 80,
        maxLevel = 84,
        duration = 3,
        baseCostPct = 27,
        school = 6,
        isBinary = true,
        GCD = 0.5,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 968,
                valueRange = 184,
                valuePerLevel = 4,
                coef = 0.193,
                coefAP = 0,
            },
        }
    },
    [47855] = { -- Drain Soul(Rank 6)
        spellLevel = 77,
        maxLevel = 86,
        duration = 15,
        baseCostPct = 14,
        school = 6,
        isChannel = true,
        defType = 1,
        charges = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 3,
                valueBase = 142,
                valueRange = 0,
                coef = 0.429,
                coefAP = 0,
            },
        }
    },
    [47856] = { -- Health Funnel(Rank 9)
        spellLevel = 76,
        maxLevel = 0,
        duration = 10,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 8,
                tickPeriod = 1,
                valueBase = 520,
                valueRange = 0,
                coef = 0.538,
                coefAP = 0,
            },
        }
    },
    [47857] = { -- Drain Life(Rank 9)
        spellLevel = 78,
        maxLevel = 83,
        duration = 5,
        baseCostPct = 17,
        school = 6,
        isChannel = true,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 53,
                tickPeriod = 1,
                valueBase = 133,
                valueRange = 0,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [47859] = { -- Death Coil(Rank 5)
        spellLevel = 73,
        maxLevel = 77,
        duration = 3,
        baseCostPct = 23,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 670,
                valueRange = 0,
                valuePerLevel = 4,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [47860] = { -- Death Coil(Rank 6)
        spellLevel = 78,
        maxLevel = 82,
        duration = 3,
        baseCostPct = 23,
        school = 6,
        isBinary = true,
        defType = 1,
        effects = {
            [1] = {
                effectType = 9,
                valueBase = 790,
                valueRange = 0,
                valuePerLevel = 5,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [47863] = { -- Curse of Agony(Rank 8)
        spellLevel = 73,
        maxLevel = 78,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 120,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [47864] = { -- Curse of Agony(Rank 9)
        spellLevel = 79,
        maxLevel = 84,
        duration = 24,
        baseCostPct = 10,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 145,
                valueRange = 0,
                coef = 0.1,
                coefAP = 0,
            },
        }
    },
    [47867] = { -- Curse of Doom(Rank 3)
        spellLevel = 80,
        maxLevel = 0,
        duration = 60,
        baseCostPct = 15,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 60,
                valueBase = 7300,
                valueRange = 0,
                coef = 2,
                coefAP = 0,
            },
        }
    },
    [47890] = { -- Shadow Ward(Rank 5)
        spellLevel = 72,
        maxLevel = 77,
        duration = 30,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 2750,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [47891] = { -- Shadow Ward(Rank 6)
        spellLevel = 78,
        maxLevel = 83,
        duration = 30,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 69,
                valueBase = 3300,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [47897] = { -- Shadowflame(Rank 1)
        spellLevel = 75,
        maxLevel = 83,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 520,
                valueRange = 48,
                valuePerLevel = 2,
                coef = 0.107,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 47960,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [47960] = { -- Shadowflame
        spellLevel = 75,
        maxLevel = 83,
        duration = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 136,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [48181] = { -- Haunt(Rank 1)
        spellLevel = 60,
        maxLevel = 64,
        duration = 12,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 405,
                valueRange = 68,
                coef = 0.4286,
                coefAP = 0,
            },
        }
    },
    [50581] = { -- Shadow Cleave(Demon)
        spellLevel = 60,
        maxLevel = 0,
        baseCostPct = 4,
        school = 6,
        GCD = 0,
        defType = 2,
        onNextSwing = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 110,
                valueRange = 0,
                coef = 0.214,
                coefAP = 0,
            },
        }
    },
    [50589] = { -- Immolation Aura(Demon)
        spellLevel = 60,
        maxLevel = 0,
        duration = 15,
        baseCostPct = 64,
        school = 3,
        defType = 1,
        usePeriodicHaste = true,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 23,
                tickPeriod = 1,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 50590,
                coef = 1,
                coefAP = 0,
            },
        }
    },
    [50590] = { -- Immolation(Rank 1)
        spellLevel = 60,
        maxLevel = 0,
        school = 3,
        defType = 1,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 251,
                valueRange = 0,
                valuePerLevel = 11.5,
                coef = 0.143,
                coefAP = 0,
            },
        }
    },
    [50796] = { -- Chaos Bolt(Rank 1)
        spellLevel = 60,
        maxLevel = 65,
        baseCostPct = 7,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 837,
                valueRange = 224,
                valuePerLevel = 5.5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [59161] = { -- Haunt(Rank 2)
        spellLevel = 70,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 487,
                valueRange = 82,
                coef = 0.4286,
                coefAP = 0,
            },
        }
    },
    [59163] = { -- Haunt(Rank 3)
        spellLevel = 75,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 550,
                valueRange = 92,
                coef = 0.4286,
                coefAP = 0,
            },
        }
    },
    [59164] = { -- Haunt(Rank 4)
        spellLevel = 80,
        maxLevel = 0,
        duration = 12,
        baseCostPct = 12,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 645,
                valueRange = 108,
                coef = 0.4286,
                coefAP = 0,
            },
        }
    },
    [59170] = { -- Chaos Bolt(Rank 2)
        spellLevel = 70,
        maxLevel = 0,
        baseCostPct = 7,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1077,
                valueRange = 290,
                valuePerLevel = 5.5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [59171] = { -- Chaos Bolt(Rank 3)
        spellLevel = 75,
        maxLevel = 0,
        baseCostPct = 7,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1217,
                valueRange = 328,
                valuePerLevel = 5.5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [59172] = { -- Chaos Bolt(Rank 4)
        spellLevel = 80,
        maxLevel = 0,
        baseCostPct = 7,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 1429,
                valueRange = 384,
                valuePerLevel = 5.5,
                coef = 0.714,
                coefAP = 0,
            },
        }
    },
    [61290] = { -- Shadowflame(Rank 2)
        spellLevel = 80,
        maxLevel = 84,
        baseCostPct = 25,
        school = 6,
        defType = 1,
        effects = {
            [1] = {
                effectType = 2,
                valueBase = 615,
                valueRange = 56,
                valuePerLevel = 2.5,
                coef = 0.107,
                coefAP = 0,
            },
            [2] = {
                effectType = 64,
                valueBase = 0,
                valueRange = 0,
                triggeredSpell = 61291,
                coef = 0,
                coefAP = 0,
            },
        }
    },
    [61291] = { -- Shadowflame
        spellLevel = 75,
        maxLevel = 83,
        duration = 8,
        school = 3,
        defType = 1,
        effects = {
            [1] = {
                effectType = 6,
                auraType = 3,
                tickPeriod = 2,
                valueBase = 161,
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
            686, -- Shadow Bolt(Rank 1)
            695, -- Shadow Bolt(Rank 2)
            705, -- Shadow Bolt(Rank 3)
            1088, -- Shadow Bolt(Rank 4)
            1106, -- Shadow Bolt(Rank 5)
            7641, -- Shadow Bolt(Rank 6)
            11659, -- Shadow Bolt(Rank 7)
            11660, -- Shadow Bolt(Rank 8)
            11661, -- Shadow Bolt(Rank 9)
            25307, -- Shadow Bolt(Rank 10)
            27209, -- Shadow Bolt(Rank 11)
            34177, -- QA Damage Coefficient 1(QASpell)
            47808, -- Shadow Bolt(Rank 12)
            47809, -- Shadow Bolt(Rank 13)
            48687, -- Shadow Bolt Volley(Rank 1)
            68073, -- CKTest Bolt(Rank 1)
        },
        [2] = {
            172, -- Corruption(Rank 1)
            6222, -- Corruption(Rank 2)
            6223, -- Corruption(Rank 3)
            7648, -- Corruption(Rank 4)
            11671, -- Corruption(Rank 5)
            11672, -- Corruption(Rank 6)
            18376, -- Corruption
            21068, -- Corruption
            25311, -- Corruption(Rank 7)
            27216, -- Corruption(Rank 8)
            30938, -- Corruption
            31405, -- Corruption
            32063, -- Corruption
            32197, -- Corruption
            37113, -- Corruption
            39212, -- Corruption
            39621, -- Corruption
            41988, -- Corruption
            47206, -- Atrocity(Rank 1)
            47782, -- Corruption
            47812, -- Corruption(Rank 9)
            47813, -- Corruption(Rank 10)
            56898, -- Corruption
            58811, -- Corruption
        },
        [4] = {
            265, -- Area Death
            348, -- Immolate(Rank 1)
            707, -- Immolate(Rank 2)
            1094, -- Immolate(Rank 3)
            2941, -- Immolate(Rank 4)
            11665, -- Immolate(Rank 5)
            11667, -- Immolate(Rank 6)
            11668, -- Immolate(Rank 7)
            12256, -- Add Moogly Radius (PT)
            25309, -- Immolate(Rank 8)
            27215, -- Immolate(Rank 9)
            30879, -- Permanent Area Damage 50k(QASpell)
            35958, -- Mana Bomb Explosion
            44267, -- Immolate
            46191, -- Immolate
            47249, -- Copy of Immolate(Rank 9)
            47810, -- Immolate(Rank 10)
            47811, -- Immolate(Rank 11)
            54090, -- Area Despawn
        },
        [8] = {
            689, -- Drain Life(Rank 1)
            699, -- Drain Life(Rank 2)
            709, -- Drain Life(Rank 3)
            7651, -- Drain Life(Rank 4)
            11699, -- Drain Life(Rank 5)
            11700, -- Drain Life(Rank 6)
            27219, -- Drain Life(Rank 7)
            27220, -- Drain Life(Rank 8)
            30412, -- Drain Life
            47857, -- Drain Life(Rank 9)
            358742, -- Drain Life(Rank 8)
        },
        [16] = {
            5138, -- Drain Mana
        },
        [32] = {
            5740, -- Rain of Fire(Rank 1)
            6219, -- Rain of Fire(Rank 2)
            11677, -- Rain of Fire(Rank 3)
            11678, -- Rain of Fire(Rank 4)
            19474, -- Rain of Fire(Rank 1)
            27212, -- Rain of Fire(Rank 5)
            39273, -- Rain of Fire(Rank 1)
            42218, -- Rain of Fire(Rank 5)
            42223, -- Rain of Fire(Rank 1)
            42224, -- Rain of Fire(Rank 2)
            42225, -- Rain of Fire(Rank 3)
            42226, -- Rain of Fire(Rank 4)
            42227, -- Rain of Fire(Rank 1)
            47817, -- Rain of Fire(Rank 6)
            47818, -- Rain of Fire(Rank 7)
            47819, -- Rain of Fire(Rank 6)
            47820, -- Rain of Fire(Rank 7)
        },
        [64] = {
            1949, -- Hellfire(Rank 1)
            5857, -- Hellfire Effect(Rank 1)
            11681, -- Hellfire Effect(Rank 2)
            11682, -- Hellfire Effect(Rank 3)
            11683, -- Hellfire(Rank 2)
            11684, -- Hellfire(Rank 3)
            24826, -- Infernal Fire
            27213, -- Hellfire(Rank 4)
            27214, -- Hellfire Effect(Rank 4)
            30859, -- Hellfire
            30860, -- Hellfire Effect
            33915, -- Void Drain
            34659, -- Hellfire
            34660, -- Hellfire
            36311, -- Scan Ground Effect
            39055, -- Flames of Chaos
            39056, -- Flames of Chaos
            39131, -- Hellfire
            39132, -- Hellfire
            40717, -- Hellfire
            40718, -- Hellfire
            42270, -- Hellfire
            43438, -- Hellfire
            43465, -- Hellfire
            45024, -- Russell's Test Hellfire Effect!!(Rank 1)
            47822, -- Hellfire Effect(Rank 5)
            47823, -- Hellfire(Rank 5)
            48319, -- Nightmare(Rank 1)
            48379, -- Nightmare Effect(Rank 1)
        },
        [128] = {
            17877, -- Shadowburn(Rank 1)
            18867, -- Shadowburn(Rank 2)
            18868, -- Shadowburn(Rank 3)
            18869, -- Shadowburn(Rank 4)
            18870, -- Shadowburn(Rank 5)
            18871, -- Shadowburn(Rank 6)
            27263, -- Shadowburn(Rank 7)
            30546, -- Shadowburn(Rank 8)
            47826, -- Shadowburn(Rank 9)
            47827, -- Shadowburn(Rank 10)
        },
        [256] = {
            5676, -- Searing Pain(Rank 1)
            17919, -- Searing Pain(Rank 2)
            17920, -- Searing Pain(Rank 3)
            17921, -- Searing Pain(Rank 4)
            17922, -- Searing Pain(Rank 5)
            17923, -- Searing Pain(Rank 6)
            27210, -- Searing Pain(Rank 7)
            30459, -- Searing Pain(Rank 8)
            47814, -- Searing Pain(Rank 9)
            47815, -- Searing Pain(Rank 10)
        },
        [512] = {
            31425, -- Spore Explode
            32327, -- Spore Explosion
            32328, -- Spore Eruption
            37966, -- Spore Explosion
            41960, -- Incinerate
        },
        [1024] = {
            980, -- Curse of Agony(Rank 1)
            1014, -- Curse of Agony(Rank 2)
            6217, -- Curse of Agony(Rank 3)
            11711, -- Curse of Agony(Rank 4)
            11712, -- Curse of Agony(Rank 5)
            11713, -- Curse of Agony(Rank 6)
            27218, -- Curse of Agony(Rank 7)
            28608, -- Test Curse of Agony(Rank 6)
            47863, -- Curse of Agony(Rank 8)
            47864, -- Curse of Agony(Rank 9)
            69404, -- Curse of Agony
        },
        [2048] = {
            1098, -- Enslave Demon(Rank 1)
            11725, -- Enslave Demon(Rank 2)
            11726, -- Enslave Demon(Rank 3)
            20882, -- Enslave Demon
            61191, -- Enslave Demon(Rank 4)
        },
        [4096] = {
            3110, -- Firebolt(Rank 1)
            7799, -- Firebolt(Rank 2)
            7800, -- Firebolt(Rank 3)
            7801, -- Firebolt(Rank 4)
            7802, -- Firebolt(Rank 5)
            11762, -- Firebolt(Rank 6)
            11763, -- Firebolt(Rank 7)
            20801, -- Firebolt
            27267, -- Firebolt(Rank 8)
            30050, -- Firebolt
            30180, -- Firebolt
            31707, -- Waterbolt
            36227, -- Firebolt
            36905, -- Firebolt
            36906, -- Firebolt
            38239, -- Firebolt
            39022, -- Firebolt
            39023, -- Firebolt
            44164, -- Firebolt
            44577, -- Firebolt
            46044, -- Firebolt
            47964, -- Firebolt(Rank 9)
            58438, -- Ignite
            72898, -- Waterbolt
        },
        [8192] = {
            7814, -- Lash of Pain(Rank 1)
            7815, -- Lash of Pain(Rank 2)
            7816, -- Lash of Pain(Rank 3)
            11778, -- Lash of Pain(Rank 4)
            11779, -- Lash of Pain(Rank 5)
            11780, -- Lash of Pain(Rank 6)
            27274, -- Lash of Pain(Rank 7)
            47991, -- Lash of Pain(Rank 8)
            47992, -- Lash of Pain(Rank 9)
        },
        [16384] = {
            1120, -- Drain Soul(Rank 1)
            8288, -- Drain Soul(Rank 2)
            8289, -- Drain Soul(Rank 3)
            11675, -- Drain Soul(Rank 4)
            27217, -- Drain Soul(Rank 5)
            47855, -- Drain Soul(Rank 6)
        },
        [32768] = {
            702, -- Curse of Weakness(Rank 1)
            1108, -- Curse of Weakness(Rank 2)
            6205, -- Curse of Weakness(Rank 3)
            7646, -- Curse of Weakness(Rank 4)
            11707, -- Curse of Weakness(Rank 5)
            11708, -- Curse of Weakness(Rank 6)
            27224, -- Curse of Weakness(Rank 7)
            30909, -- Curse of Weakness(Rank 8)
            50511, -- Curse of Weakness(Rank 9)
        },
        [65536] = {
            5720, -- Healthstone
            5723, -- Greater Healthstone
            6262, -- Minor Healthstone
            6263, -- Lesser Healthstone
            11732, -- Major Healthstone
            18671, -- Curse of Agony
            23468, -- Minor Healthstone
            23469, -- Minor Healthstone
            23470, -- Lesser Healthstone
            23471, -- Lesser Healthstone
            23472, -- Healthstone
            23473, -- Healthstone
            23474, -- Greater Healthstone
            23475, -- Greater Healthstone
            23476, -- Major Healthstone
            23477, -- Major Healthstone
            27235, -- Master Healthstone
            27236, -- Master Healthstone
            27237, -- Master Healthstone
            41237, -- Charged Crystal Focus
            47872, -- Master Healthstone
            47873, -- Master Healthstone
            47874, -- Master Healthstone
            47875, -- Master Healthstone
            47876, -- Master Healthstone
            47877, -- Master Healthstone
        },
        [131072] = {
            32789, -- Spellstone Critical Bonus
            32793, -- Spellstone Critical Bonus
            32794, -- Spellstone Critical Bonus
            32795, -- Spellstone Critical Bonus
            55172, -- Spellstone - 10 Haste
            55176, -- Spellstone - 20 Haste
            55180, -- Spellstone - 30 Haste
            55189, -- Spellstone - 40 Haste
            55191, -- Spellstone - 50 Haste
            55195, -- Spellstone - 60 Haste
        },
        [262144] = {
            1454, -- Life Tap(Rank 1)
            1455, -- Life Tap(Rank 2)
            1456, -- Life Tap(Rank 3)
            11687, -- Life Tap(Rank 4)
            11688, -- Life Tap(Rank 5)
            11689, -- Life Tap(Rank 6)
            24893, -- Black Sapphire
            27222, -- Life Tap(Rank 7)
            31818, -- Life Tap
            32553, -- Life Tap
            32554, -- Mana Feed - Drain Mana
            50982, -- Power Conversion(Rank 7)
            57946, -- Life Tap(Rank 8)
        },
        [524288] = {
            6789, -- Death Coil(Rank 1)
            17925, -- Death Coil(Rank 2)
            17926, -- Death Coil(Rank 3)
            27223, -- Death Coil(Rank 4)
            28412, -- Death Coil
            46283, -- Death Coil
            47859, -- Death Coil(Rank 5)
            47860, -- Death Coil(Rank 6)
        },
        [1048576] = {
            693, -- Create Soulstone(Rank 1)
            2362, -- Create Spellstone(Rank 1)
            5699, -- Create Healthstone(Rank 3)
            6201, -- Create Healthstone(Rank 1)
            6202, -- Create Healthstone(Rank 2)
            6366, -- Create Firestone(Rank 1)
            11729, -- Create Healthstone(Rank 4)
            11730, -- Create Healthstone(Rank 5)
            17727, -- Create Spellstone(Rank 2)
            17728, -- Create Spellstone(Rank 3)
            17951, -- Create Firestone(Rank 2)
            17952, -- Create Firestone(Rank 3)
            17953, -- Create Firestone(Rank 4)
            20018, -- Create Healthstone (Major)
            20022, -- Create Soulstone
            20752, -- Create Soulstone(Rank 2)
            20755, -- Create Soulstone(Rank 3)
            20756, -- Create Soulstone(Rank 4)
            20757, -- Create Soulstone(Rank 5)
            27230, -- Create Healthstone(Rank 6)
            27238, -- Create Soulstone(Rank 6)
            27250, -- Create Firestone(Rank 5)
            28023, -- Create Healthstone
            28172, -- Create Spellstone(Rank 4)
            47871, -- Create Healthstone(Rank 7)
            47878, -- Create Healthstone(Rank 8)
            47884, -- Create Soulstone(Rank 7)
            47886, -- Create Spellstone(Rank 5)
            47888, -- Create Spellstone(Rank 6)
            60219, -- Create Firestone(Rank 6)
            60220, -- Create Firestone(Rank 7)
        },
        [2097152] = {
            54718, -- Firestone - 35 Spell Crit
            55146, -- Firestone - 7 Spell Crit
            55147, -- Firestone - 14 Spell Crit
            55148, -- Firestone - 21 Spell Crit
            55149, -- Firestone - 28 Spell Crit
            55150, -- Firestone - 42 Spell Crit
            55151, -- Firestone - 49 Spell Crit
        },
        [4194304] = {
            18223, -- Curse of Exhaustion
            29539, -- Curse of Exhaustion
            29540, -- Curse of Past Burdens
        },
        [8388608] = {
            2947, -- Fire Shield(Rank 1)
            6307, -- Blood Pact(Rank 1)
            7804, -- Blood Pact(Rank 2)
            7805, -- Blood Pact(Rank 3)
            8316, -- Fire Shield(Rank 2)
            8317, -- Fire Shield(Rank 3)
            11766, -- Blood Pact(Rank 4)
            11767, -- Blood Pact(Rank 5)
            11770, -- Fire Shield(Rank 4)
            11771, -- Fire Shield(Rank 5)
            27268, -- Blood Pact(Rank 6)
            27269, -- Fire Shield(Rank 6)
            36907, -- Fire Shield
            38027, -- Boiling Blood
            41230, -- Prophecy of Blood
            41231, -- Prophecy of Blood
            47982, -- Blood Pact(Rank 7)
            47983, -- Fire Shield(Rank 7)
            50205, -- Boil Blood
            52468, -- Prophecy of Blood
        },
        [16777216] = {
            755, -- Health Funnel(Rank 1)
            3698, -- Health Funnel(Rank 2)
            3699, -- Health Funnel(Rank 3)
            3700, -- Health Funnel(Rank 4)
            11693, -- Health Funnel(Rank 5)
            11694, -- Health Funnel(Rank 6)
            11695, -- Health Funnel(Rank 7)
            19952, -- Heal Ragnaros
            27259, -- Health Funnel(Rank 8)
            40671, -- Health Funnel
            47856, -- Health Funnel(Rank 9)
        },
        [33554432] = {
            3716, -- Torment(Rank 1)
            7809, -- Torment(Rank 2)
            7810, -- Torment(Rank 3)
            7811, -- Torment(Rank 4)
            7812, -- Sacrifice(Rank 1)
            11774, -- Torment(Rank 5)
            11775, -- Torment(Rank 6)
            17735, -- Suffering(Rank 1)
            17750, -- Suffering(Rank 2)
            17751, -- Suffering(Rank 3)
            17752, -- Suffering(Rank 4)
            17767, -- Consume Shadows(Rank 1)
            17850, -- Consume Shadows(Rank 2)
            17851, -- Consume Shadows(Rank 3)
            17852, -- Consume Shadows(Rank 4)
            17853, -- Consume Shadows(Rank 5)
            17854, -- Consume Shadows(Rank 6)
            19438, -- Sacrifice(Rank 2)
            19440, -- Sacrifice(Rank 3)
            19441, -- Sacrifice(Rank 4)
            19442, -- Sacrifice(Rank 5)
            19443, -- Sacrifice(Rank 6)
            26281, -- Taunt
            27270, -- Torment(Rank 7)
            27271, -- Suffering(Rank 5)
            27272, -- Consume Shadows(Rank 7)
            27273, -- Sacrifice(Rank 7)
            27599, -- Shadows Consumed(Rank 7)
            28447, -- Shadow Burst
            32324, -- Shadow Burst
            33698, -- Anguish(Rank 1)
            33699, -- Anguish(Rank 2)
            33700, -- Anguish(Rank 3)
            33701, -- Suffering(Rank 6)
            36472, -- Consume Shadows
            47984, -- Torment(Rank 8)
            47985, -- Sacrifice(Rank 8)
            47986, -- Sacrifice(Rank 9)
            47987, -- Consume Shadows(Rank 8)
            47988, -- Consume Shadows(Rank 9)
            47989, -- Suffering(Rank 7)
            47990, -- Suffering(Rank 8)
            47993, -- Anguish(Rank 4)
        },
        [67108864] = {
            18727, -- Tamed Pet Passive (DND)
            18728, -- Tamed Pet Passive (DND)
            18729, -- Tamed Pet Passive (DND)
            18730, -- Tamed Pet Passive (DND)
            30147, -- Tamed Pet Passive (DND)
        },
        [134217728] = {
            18735, -- Tamed Pet Passive (DND)
            18736, -- Tamed Pet Passive (DND)
            18737, -- Tamed Pet Passive (DND)
            18738, -- Tamed Pet Passive (DND)
            30148, -- Tamed Pet Passive (DND)
        },
        [268435456] = {
            18739, -- Tamed Pet Passive (DND)
            18740, -- Tamed Pet Passive (DND)
            18741, -- Tamed Pet Passive (DND)
            18742, -- Tamed Pet Passive (DND)
            30149, -- Tamed Pet Passive (DND)
        },
        [536870912] = {
            688, -- Summon Imp(Summon)
            691, -- Summon Felhunter(Summon)
            697, -- Summon Voidwalker(Summon)
            712, -- Summon Succubus(Summon)
            713, -- Summon Incubus(Summon)
            25112, -- Summon Voidwalker(Summon)
            30146, -- Summon Felguard(Summon)
        },
        [1073741824] = {
            6358, -- Seduction
            6360, -- Soothing Kiss(Rank 1)
            7813, -- Soothing Kiss(Rank 2)
            7870, -- Lesser Invisibility
            11784, -- Soothing Kiss(Rank 3)
            11785, -- Soothing Kiss(Rank 4)
            27275, -- Soothing Kiss(Rank 5)
            29516, -- Dance Trance
            36241, -- Mad Seduction
            36274, -- Mad Seduced
            36661, -- Confused Ogre
            37200, -- Confused Cansis
        },
        [2147483648] = {
            1010, -- Curse of Idiocy(Rank 1)
            1714, -- Curse of Tongues(Rank 1)
            11719, -- Curse of Tongues(Rank 2)
            18220, -- Dark Pact(Rank 1)
            18937, -- Dark Pact(Rank 2)
            18938, -- Dark Pact(Rank 3)
            27265, -- Dark Pact(Rank 4)
            30659, -- Fel Infusion
            32386, -- Shadow Embrace
            32388, -- Shadow Embrace
            32389, -- Shadow Embrace
            32390, -- Shadow Embrace
            32391, -- Shadow Embrace
            40845, -- Fury
            40851, -- Disgruntled
            59092, -- Dark Pact(Rank 5)
            60448, -- Shadow Embrace
            60465, -- Shadow Embrace
            60466, -- Shadow Embrace
            60467, -- Shadow Embrace
        },
    },
    [2] = {
        [1] = {
            35195, -- Siphon Life
            41597, -- Siphon Life
            50027, -- Tug Soul
        },
        [2] = {
            603, -- Curse of Doom(Rank 1)
            30910, -- Curse of Doom(Rank 2)
            47867, -- Curse of Doom(Rank 3)
        },
        [8] = {
            5484, -- Howl of Terror(Rank 1)
            17928, -- Howl of Terror(Rank 2)
            50577, -- Howl of Terror(Rank 1)
        },
        [16] = {
            27243, -- Seed of Corruption(Rank 1)
            27285, -- Seed of Corruption(Rank 1)
            43991, -- Seed of Corruption(Rank 1)
            47831, -- Seed of Corruption(Rank 2)
            47832, -- Seed of Corruption(Rank 3)
            47833, -- Seed of Corruption(Rank 2)
            47834, -- Seed of Corruption(Rank 3)
            47835, -- Seed of Corruption(Rank 2)
            47836, -- Seed of Corruption(Rank 3)
        },
        [32] = {
            706, -- Demon Armor(Rank 1)
            1086, -- Demon Armor(Rank 2)
            11733, -- Demon Armor(Rank 3)
            11734, -- Demon Armor(Rank 4)
            11735, -- Demon Armor(Rank 5)
            27260, -- Demon Armor(Rank 6)
            44520, -- Fel Armor(Rank 2)
            44977, -- Fel Armor(Rank 2)
            47793, -- Demon Armor(Rank 7)
            47889, -- Demon Armor(Rank 8)
            51261, -- QA Test Buff Spell Two
            51264, -- QA Test Buff Spell Three
        },
        [64] = {
            29722, -- Incinerate(Rank 1)
            32231, -- Incinerate(Rank 2)
            36832, -- Incinerate
            38918, -- Incinerate
            47837, -- Incinerate(Rank 3)
            47838, -- Incinerate(Rank 4)
        },
        [128] = {
            6353, -- Soul Fire(Rank 1)
            17924, -- Soul Fire(Rank 2)
            27211, -- Soul Fire(Rank 3)
            30545, -- Soul Fire(Rank 4)
            47824, -- Soul Fire(Rank 5)
            47825, -- Soul Fire(Rank 6)
        },
        [256] = {
            30108, -- Unstable Affliction(Rank 1)
            30404, -- Unstable Affliction(Rank 2)
            30405, -- Unstable Affliction(Rank 3)
            34438, -- Unstable Affliction
            34439, -- Unstable Affliction
            35183, -- Unstable Affliction
            47841, -- Unstable Affliction(Rank 4)
            47843, -- Unstable Affliction(Rank 5)
        },
        [512] = {
            1490, -- Curse of the Elements(Rank 1)
            11721, -- Curse of the Elements(Rank 2)
            11722, -- Curse of the Elements(Rank 3)
            27228, -- Curse of the Elements(Rank 4)
            36541, -- Curse of Burning Shadows
            36831, -- Curse of the Elements
            43556, -- Curse of the Sepulcher
            44332, -- Curse of the Elements
            47865, -- Curse of the Elements(Rank 5)
        },
        [1024] = {
            5782, -- Fear(Rank 1)
            6213, -- Fear(Rank 2)
            6215, -- Fear(Rank 3)
        },
        [4096] = {
            30283, -- Shadowfury(Rank 1)
            30413, -- Shadowfury(Rank 2)
            30414, -- Shadowfury(Rank 3)
            35373, -- Shadowfury
            39082, -- Shadowfury
            47846, -- Shadowfury(Rank 4)
            47847, -- Shadowfury(Rank 5)
            52592, -- Curse of Fatigue
            59368, -- Curse of Fatigue
        },
        [8192] = {
            35695, -- Pet Passive (DND)
        },
        [16384] = {
            35697, -- Pet Passive (DND)
        },
        [32768] = {
            27285, -- Seed of Corruption(Rank 1)
            43991, -- Seed of Corruption(Rank 1)
            47831, -- Seed of Corruption(Rank 2)
            47832, -- Seed of Corruption(Rank 3)
            47833, -- Seed of Corruption(Rank 2)
            47834, -- Seed of Corruption(Rank 3)
        },
        [65536] = {
            47897, -- Shadowflame(Rank 1)
            61290, -- Shadowflame(Rank 2)
        },
        [131072] = {
            47271, -- Decimate
            50796, -- Chaos Bolt(Rank 1)
            59170, -- Chaos Bolt(Rank 2)
            59171, -- Chaos Bolt(Rank 3)
            59172, -- Chaos Bolt(Rank 4)
            61188, -- Chaotic Mind
            69576, -- Chaos Bolt
        },
        [262144] = {
            48181, -- Haunt(Rank 1)
            59161, -- Haunt(Rank 2)
            59163, -- Haunt(Rank 3)
            59164, -- Haunt(Rank 4)
        },
        [1048576] = {
            53646, -- Demonic Pact(Rank 1)
            54909, -- Demonic Pact(Rank 1)
        },
        [4194304] = {
            54049, -- Shadow Bite(Rank 1)
            54050, -- Shadow Bite(Rank 2)
            54051, -- Shadow Bite(Rank 3)
            54052, -- Shadow Bite(Rank 4)
            54053, -- Shadow Bite(Rank 5)
        },
        [8388608] = {
            17962, -- Conflagrate
        },
        [16777216] = {
            54278, -- Empowered Imp
        },
        [33554432] = {
            54424, -- Fel Intelligence(Rank 1)
            57564, -- Fel Intelligence(Rank 2)
            57565, -- Fel Intelligence(Rank 3)
            57566, -- Fel Intelligence(Rank 4)
            57567, -- Fel Intelligence(Rank 5)
        },
        [67108864] = {
            3026, -- Use Soulstone
            20758, -- Use Soulstone
            20759, -- Use Soulstone
            20760, -- Use Soulstone
            20761, -- Use Soulstone
            27240, -- Use Soulstone
            47882, -- Use Soulstone
        },
        [134217728] = {
            710, -- Banish(Rank 1)
            18647, -- Banish(Rank 2)
        },
        [268435456] = {
            6358, -- Seduction
        },
        [536870912] = {
            28176, -- Fel Armor(Rank 1)
            28189, -- Fel Armor(Rank 2)
            47892, -- Fel Armor(Rank 3)
            47893, -- Fel Armor(Rank 4)
        },
        [1073741824] = {
            2585, -- Eye of Kilrogg Passive (DND)(Rank 1)
        },
        [2147483648] = {
            29893, -- Ritual of Souls(Rank 1)
            58887, -- Ritual of Souls(Rank 2)
        },
    },
    [3] = {
        [1] = {
            22703, -- Inferno Effect
        },
        [2] = {
            47960, -- Shadowflame
            61291, -- Shadowflame
        },
        [4] = {
            5697, -- Unending Breath
        },
        [8] = {
            32851, -- Demonic Frenzy
        },
        [16] = {
            687, -- Demon Skin(Rank 1)
            696, -- Demon Skin(Rank 2)
        },
        [32] = {
            48018, -- Demonic Circle: Summon
            48020, -- Demonic Circle: Teleport
        },
        [64] = {
            126, -- Eye of Kilrogg(Summon)
            132, -- Detect Invisibility
            698, -- Ritual of Summoning
            6229, -- Shadow Ward(Rank 1)
            11739, -- Shadow Ward(Rank 2)
            11740, -- Shadow Ward(Rank 3)
            18540, -- Ritual of Doom
            19028, -- Soul Link
            28610, -- Shadow Ward(Rank 4)
            47193, -- Demonic Empowerment
            47890, -- Shadow Ward(Rank 5)
            47891, -- Shadow Ward(Rank 6)
            61993, -- Ritual of Summoning
            61994, -- Ritual of Summoning
            62735, -- Ritual of Summoning Test
        },
        [128] = {
            18708, -- Fel Domination
        },
        [256] = {
            58691, -- Pandemic
        },
        [1024] = {
            19505, -- Devour Magic(Rank 1)
            19731, -- Devour Magic(Rank 2)
            19734, -- Devour Magic(Rank 3)
            19736, -- Devour Magic(Rank 4)
            27276, -- Devour Magic(Rank 5)
            27277, -- Devour Magic(Rank 6)
            48011, -- Devour Magic(Rank 7)
        },
        [2048] = {
            1714, -- Curse of Tongues(Rank 1)
            11719, -- Curse of Tongues(Rank 2)
        },
        [4096] = {
            47193, -- Demonic Empowerment
        },
        [8192] = {
            47241, -- Metamorphosis
        },
        [16384] = {
            25228, -- Soul Link
        },
        [32768] = {
            18220, -- Dark Pact(Rank 1)
            18937, -- Dark Pact(Rank 2)
            18938, -- Dark Pact(Rank 3)
            27265, -- Dark Pact(Rank 4)
            59092, -- Dark Pact(Rank 5)
        },
    },
    [4] = {
    },
};

---@type ClassGlyphs
_addon.classGlyphs = {
    [56242] = { -- Glyph of Incinerate
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 64, 0, 0},
            value = 5,
        },
    },
    [56241] = { -- Glyph of Curse of Agony
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {1024, 0, 0, 0},
            value = 4000,
        },
    },
    [56232] = { -- Glyph of Death Coil
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {524288, 0, 0, 0},
            value = 500,
        },
    },
    [56228] = { -- Glyph of Immolate
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {4, 0, 0, 0},
            value = 10,
        },
    },
    [56226] = { -- Glyph of Searing Pain
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
            affectSpell = {256, 0, 0, 0},
            value = 20,
        },
    },
    [70947] = { -- Glyph of Quick Decay
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_ALLOW_PERIODIC_HASTE,
            affectSpell = {2, 0, 0, 0},
            value = 1,
        },
    },
};


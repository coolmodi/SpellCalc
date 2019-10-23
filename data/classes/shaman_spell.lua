-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(331)] = {
        school = 4,
    },
    [GetSpellInfo(1064)] = {
        school = 4,
    },
    [GetSpellInfo(8004)] = {
        school = 4,
    },
};

_addon.spellRankInfo = {
    [331] = { -- Healing Wave(Rank 1)
        spellLevel = 1,
        maxLevel = 5,
        effects = {
            [1] = {
                isHeal = true,
                min = 34,
                max = 45,
                perLevel = 0.7,
                coef = 0.123,
            },
        }
    },
    [332] = { -- Healing Wave(Rank 2)
        spellLevel = 6,
        maxLevel = 11,
        effects = {
            [1] = {
                isHeal = true,
                min = 64,
                max = 79,
                perLevel = 1,
                coef = 0.271,
            },
        }
    },
    [547] = { -- Healing Wave(Rank 3)
        spellLevel = 12,
        maxLevel = 17,
        effects = {
            [1] = {
                isHeal = true,
                min = 129,
                max = 156,
                perLevel = 1.5,
                coef = 0.5,
            },
        }
    },
    [913] = { -- Healing Wave(Rank 4)
        spellLevel = 18,
        maxLevel = 23,
        effects = {
            [1] = {
                isHeal = true,
                min = 268,
                max = 317,
                perLevel = 2.3,
                coef = 0.793,
            },
        }
    },
    [939] = { -- Healing Wave(Rank 5)
        spellLevel = 24,
        maxLevel = 29,
        effects = {
            [1] = {
                isHeal = true,
                min = 376,
                max = 441,
                perLevel = 2.7,
                coef = 0.857,
            },
        }
    },
    [959] = { -- Healing Wave(Rank 6)
        spellLevel = 32,
        maxLevel = 37,
        effects = {
            [1] = {
                isHeal = true,
                min = 536,
                max = 623,
                perLevel = 3.3,
                coef = 0.857,
            },
        }
    },
    [1064] = { -- Chain Heal(Rank 1)
        spellLevel = 40,
        maxLevel = 45,
        effects = {
            [1] = {
                isHeal = true,
                min = 320,
                max = 369,
                perLevel = 2.5,
                coef = 0.714,
            },
        }
    },
    [8004] = { -- Lesser Healing Wave(Rank 1)
        spellLevel = 20,
        maxLevel = 25,
        effects = {
            [1] = {
                isHeal = true,
                min = 162,
                max = 187,
                perLevel = 1.7,
                coef = 0.429,
            },
        }
    },
    [8005] = { -- Healing Wave(Rank 7)
        spellLevel = 40,
        maxLevel = 45,
        effects = {
            [1] = {
                isHeal = true,
                min = 740,
                max = 855,
                perLevel = 3.9,
                coef = 0.857,
            },
        }
    },
    [8008] = { -- Lesser Healing Wave(Rank 2)
        spellLevel = 28,
        maxLevel = 33,
        effects = {
            [1] = {
                isHeal = true,
                min = 247,
                max = 282,
                perLevel = 2.1,
                coef = 0.429,
            },
        }
    },
    [8010] = { -- Lesser Healing Wave(Rank 3)
        spellLevel = 36,
        maxLevel = 41,
        effects = {
            [1] = {
                isHeal = true,
                min = 337,
                max = 382,
                perLevel = 2.5,
                coef = 0.429,
            },
        }
    },
    [10395] = { -- Healing Wave(Rank 8)
        spellLevel = 48,
        maxLevel = 53,
        effects = {
            [1] = {
                isHeal = true,
                min = 1017,
                max = 1168,
                perLevel = 4.7,
                coef = 0.857,
            },
        }
    },
    [10396] = { -- Healing Wave(Rank 9)
        spellLevel = 56,
        maxLevel = 61,
        effects = {
            [1] = {
                isHeal = true,
                min = 1367,
                max = 1562,
                perLevel = 5.5,
                coef = 0.857,
            },
        }
    },
    [10466] = { -- Lesser Healing Wave(Rank 4)
        spellLevel = 44,
        maxLevel = 49,
        effects = {
            [1] = {
                isHeal = true,
                min = 458,
                max = 515,
                perLevel = 3,
                coef = 0.429,
            },
        }
    },
    [10467] = { -- Lesser Healing Wave(Rank 5)
        spellLevel = 52,
        maxLevel = 57,
        effects = {
            [1] = {
                isHeal = true,
                min = 631,
                max = 706,
                perLevel = 3.6,
                coef = 0.429,
            },
        }
    },
    [10468] = { -- Lesser Healing Wave(Rank 6)
        spellLevel = 60,
        maxLevel = 65,
        effects = {
            [1] = {
                isHeal = true,
                min = 832,
                max = 929,
                perLevel = 4.2,
                coef = 0.429,
            },
        }
    },
    [10622] = { -- Chain Heal(Rank 2)
        spellLevel = 46,
        maxLevel = 51,
        effects = {
            [1] = {
                isHeal = true,
                min = 405,
                max = 466,
                perLevel = 2.8,
                coef = 0.714,
            },
        }
    },
    [10623] = { -- Chain Heal(Rank 3)
        spellLevel = 54,
        maxLevel = 59,
        effects = {
            [1] = {
                isHeal = true,
                min = 551,
                max = 630,
                perLevel = 3.3,
                coef = 0.714,
            },
        }
    },
    [25357] = { -- Healing Wave(Rank 10)
        spellLevel = 60,
        maxLevel = 65,
        effects = {
            [1] = {
                isHeal = true,
                min = 1620,
                max = 1851,
                perLevel = 5.5,
                coef = 0.857,
            },
        }
    },
};


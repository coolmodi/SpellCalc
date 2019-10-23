-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "HUNTER" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(136)] = { -- Mend Pet
        school = 4,
        isChannel = true,
    },
    [GetSpellInfo(1978)] = { -- Serpent Sting
        school = 4,
    },
    [GetSpellInfo(3044)] = { -- Arcane Shot
        school = 7,
    },
};

_addon.spellRankInfo = {
    [136] = { -- Mend Pet(Rank 1)
        spellLevel = 12,
        maxLevel = 0,
        duration = 5,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 20,
                coef = 0.14,
            },
        }
    },
    [1978] = { -- Serpent Sting(Rank 1)
        spellLevel = 4,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 4,
                coef = 0.08,
            },
        }
    },
    [3044] = { -- Arcane Shot(Rank 1)
        spellLevel = 6,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 13,
                coef = 0.204,
            },
        }
    },
    [3111] = { -- Mend Pet(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 5,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 38,
                coef = 0.2,
            },
        }
    },
    [3661] = { -- Mend Pet(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 5,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 68,
                coef = 0.2,
            },
        }
    },
    [3662] = { -- Mend Pet(Rank 4)
        spellLevel = 36,
        maxLevel = 0,
        duration = 5,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 103,
                coef = 0.2,
            },
        }
    },
    [13542] = { -- Mend Pet(Rank 5)
        spellLevel = 44,
        maxLevel = 0,
        duration = 5,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 142,
                coef = 0.2,
            },
        }
    },
    [13543] = { -- Mend Pet(Rank 6)
        spellLevel = 52,
        maxLevel = 0,
        duration = 5,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 189,
                coef = 0.2,
            },
        }
    },
    [13544] = { -- Mend Pet(Rank 7)
        spellLevel = 60,
        maxLevel = 0,
        duration = 5,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 245,
                coef = 0.2,
            },
        }
    },
    [13549] = { -- Serpent Sting(Rank 2)
        spellLevel = 10,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 8,
                coef = 0.125,
            },
        }
    },
    [13550] = { -- Serpent Sting(Rank 3)
        spellLevel = 18,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 16,
                coef = 0.185,
            },
        }
    },
    [13551] = { -- Serpent Sting(Rank 4)
        spellLevel = 26,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 28,
                coef = 0.2,
            },
        }
    },
    [13552] = { -- Serpent Sting(Rank 5)
        spellLevel = 34,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 42,
                coef = 0.2,
            },
        }
    },
    [13553] = { -- Serpent Sting(Rank 6)
        spellLevel = 42,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 58,
                coef = 0.2,
            },
        }
    },
    [13554] = { -- Serpent Sting(Rank 7)
        spellLevel = 50,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 77,
                coef = 0.2,
            },
        }
    },
    [13555] = { -- Serpent Sting(Rank 8)
        spellLevel = 58,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 98,
                coef = 0.2,
            },
        }
    },
    [14281] = { -- Arcane Shot(Rank 2)
        spellLevel = 12,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 21,
                coef = 0.3,
            },
        }
    },
    [14282] = { -- Arcane Shot(Rank 3)
        spellLevel = 20,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 33,
                coef = 0.429,
            },
        }
    },
    [14283] = { -- Arcane Shot(Rank 4)
        spellLevel = 28,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 59,
                coef = 0.429,
            },
        }
    },
    [14284] = { -- Arcane Shot(Rank 5)
        spellLevel = 36,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 83,
                coef = 0.429,
            },
        }
    },
    [14285] = { -- Arcane Shot(Rank 6)
        spellLevel = 44,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 115,
                coef = 0.429,
            },
        }
    },
    [14286] = { -- Arcane Shot(Rank 7)
        spellLevel = 52,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 145,
                coef = 0.429,
            },
        }
    },
    [14287] = { -- Arcane Shot(Rank 8)
        spellLevel = 60,
        maxLevel = 0,
        effects = {
            [1] = {
                min = 183,
                coef = 0.429,
            },
        }
    },
    [25295] = { -- Serpent Sting(Rank 9)
        spellLevel = 60,
        maxLevel = 0,
        duration = 15,
        effects = {
            [1] = {
                isDuration = true,
                tickPeriod = 3,
                min = 111,
                coef = 0.2,
            },
        }
    },
};


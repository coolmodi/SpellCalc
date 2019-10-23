-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "HUNTER" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(136)] = {
        school = 4,
        isChannel = true,
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
};


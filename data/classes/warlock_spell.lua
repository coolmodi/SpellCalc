-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(755)] = {
        school = 6,
        isChannel = true,
    },
    [GetSpellInfo(6229)] = {
        school = 6,
        isAbsorbShield = true,
    },
};

_addon.spellRankInfo = {
    [755] = { -- Health Funnel(Rank 1)
        spellLevel = 12,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 12,
                coef = 0,
            },
        }
    },
    [3698] = { -- Health Funnel(Rank 2)
        spellLevel = 20,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 24,
                coef = 0,
            },
        }
    },
    [3699] = { -- Health Funnel(Rank 3)
        spellLevel = 28,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 43,
                coef = 0,
            },
        }
    },
    [3700] = { -- Health Funnel(Rank 4)
        spellLevel = 36,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 64,
                coef = 0,
            },
        }
    },
    [6229] = { -- Shadow Ward(Rank 1)
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
    [11693] = { -- Health Funnel(Rank 5)
        spellLevel = 44,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 89,
                coef = 0,
            },
        }
    },
    [11694] = { -- Health Funnel(Rank 6)
        spellLevel = 52,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 119,
                coef = 0,
            },
        }
    },
    [11695] = { -- Health Funnel(Rank 7)
        spellLevel = 60,
        maxLevel = 0,
        duration = 10,
        effects = {
            [1] = {
                isHeal = true,
                isDuration = true,
                tickPeriod = 1,
                min = 153,
                coef = 0,
            },
        }
    },
    [11739] = { -- Shadow Ward(Rank 2)
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
    [11740] = { -- Shadow Ward(Rank 3)
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
    [28610] = { -- Shadow Ward(Rank 4)
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


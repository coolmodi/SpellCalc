-- GENERATED

local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

_addon.spellBaseInfo = {
    [GetSpellInfo(543)] = {
        school = 3,
        isAbsorbShield = true,
    },
    [GetSpellInfo(6143)] = {
        school = 5,
        isAbsorbShield = true,
    },
    [GetSpellInfo(11426)] = {
        school = 5,
        isAbsorbShield = true,
    },
};

_addon.spellRankInfo = {
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
    [11426] = { -- Ice Barrier(Rank 1)
        spellLevel = 40,
        maxLevel = 46,
        duration = 60,
        effects = {
            [1] = {
                isHeal = true,
                min = 438,
                perLevel = 2.8,
                coef = 0,
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
                coef = 0,
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
                coef = 0,
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
                coef = 0,
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


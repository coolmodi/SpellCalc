---@type AddonEnv
local _addon = select(2, ...);

local SSM = _addon.SCHOOL;

_addon.npcResistances = {
    [12118] = { -- Lucifron
        [SSM.PHYSICAL] = 3009,
        [SSM.FIRE] = 93,
        [SSM.SHADOW] = 186
    },
    [12259] = { -- Gehennas
        [SSM.PHYSICAL] = 3009,
        [SSM.FIRE] = 186,
        [SSM.SHADOW] = 93
    },
    [12264] = { -- Shazzrah
        [SSM.PHYSICAL] = 3009,
        [SSM.FIRE] = 93,
        [SSM.ARCANE] = 186
    },
    [12098] = { -- Sulfuron Harbinger
        [SSM.PHYSICAL] = 3009,
        [SSM.FIRE] = 93
    },
    [11988] = { -- Golemagg
        [SSM.FIRE] = 186
    },
    [12018] = { -- Majordomo Executus
        [SSM.FIRE] = 95
    },
    [15990] = { -- Kel'Thuzad
        [SSM.SHADOW] = 100,
        [SSM.FROST] = 200
    },




    [2955] = { -- TEST: Mottled Boar
        [SSM.PHYSICAL] = 2020,
        [SSM.SHADOW] = 100,
        [SSM.FROST] = 200,
        [SSM.NATURE] = 36
    }
}
local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

local LIGHTNING_SHIELD = GetSpellInfo(8788);

_addon.talentData = {
    { -- Concussion
        tree = 1,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {-1877999613},
                perPoint = 1
            }
        }
    },
    { -- Call of Flame
        tree = 1,
        talent = 5,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                affectSpell = {4096 + 16 + 134217728},
                perPoint = 5
            }
        }
    },
    { -- Elemental Focus
        tree = 1,
        talent = 6,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CLEARCAST_CHANCE_DMG,
                perPoint = 10
            }
        }
    },
    { -- Call of Thunder
        tree = 1,
        talent = 8,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSpell = {3},
                perPoint = 1
            }
        }
    },
    { -- Elemental Fury
        tree = 1,
        talent = 13,
        effects = {
            {
                type = _addon.EFFECT_TYPE.CRIT_MULT,
                affectSpell = {1 + 2 + 1048576 + 268435456 + 2147483648 + 2097152 + 16777216 + 4096 + 16 + 134217728},
                perPoint = 100
            }
        }
    },

    { -- Restorative Totems
        tree = 3,
        talent = 10,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_EFFECT,
                affectSpell = {524288},
                perPoint = 5
            }
        }
    },
    { -- Tidal Mastery
        tree = 3,
        talent = 11,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_CRIT,
                affectSpell = {1475},
                perPoint = 1
            }
        }
    },
    { -- Purification
        tree = 3,
        talent = 14,
        effects = {
            {
                type = _addon.EFFECT_TYPE.MOD_HEALING_DONE,
                affectSpell = {448},
                perPoint = 2
            }
        }
    },
};

_addon.buffData[16166] = { -- Elemental Mastery
    effect = _addon.EFFECT_TYPE.MOD_CRIT,
    affectSpell = {-1877999613},
    value = 100,
};

_addon.buffData[16188] = { -- Nature's Swiftness dummy
    effect = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
    value = 0
};

_addon.buffData[LIGHTNING_SHIELD] = { -- for T3 setbonus
    condition = _addon.BUFF_CONDITIONS.EARTHSHATTERER_8PCS,
    effect = _addon.EFFECT_TYPE.MP5,
    value = 15,
}
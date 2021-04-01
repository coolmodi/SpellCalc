local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "SHAMAN" then
    return;
end

_addon.talentData = {
    { -- Concussion
        tree = 1,
        talent = 2,
        effects = {
            {
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
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
                type = _addon.EFFECT_TYPE.SPELLMOD_PCT_HEALING,
                affectSpell = {448},
                perPoint = 2
            }
        }
    },
};

_addon.aurasPlayer[16166] = { -- Elemental Mastery
    type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
    affectSpell = {-1877999613},
    value = 100,
};

_addon.aurasPlayer[16188] = { -- Nature's Swiftness dummy
    type = _addon.EFFECT_TYPE.TRIGGER_UPDATE,
    value = 0
};

local T3LightningShieldEffect = {
    condition = _addon.BUFF_CONDITIONS.EARTHSHATTERER_8PCS,
    effect = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
    value = 15,
}
_addon.aurasPlayer[324] = T3LightningShieldEffect;
_addon.aurasPlayer[325] = T3LightningShieldEffect;
_addon.aurasPlayer[905] = T3LightningShieldEffect;
_addon.aurasPlayer[945] = T3LightningShieldEffect;
_addon.aurasPlayer[8134] = T3LightningShieldEffect;
_addon.aurasPlayer[10431] = T3LightningShieldEffect;
_addon.aurasPlayer[10432] = T3LightningShieldEffect;
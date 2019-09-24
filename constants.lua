local _, _addon = ...;

-- As used by the API
_addon.SCHOOL = {
    PHYSICAL = 1,
    HOLY = 2,
    FIRE = 3,
    NATURE = 4,
    FROST = 5,
    SHADOW = 6,
    ARCANE = 7
};

-- Internal use for buffs only
_addon.SCHOOL_MASK = {
    PHYSICAL = 0x1,
    HOLY = 0x2,
    FIRE = 0x4,
    NATURE = 0x8,
    FROST = 0x10,
    SHADOW = 0x20,
    ARCANE = 0x40,
    ALL = 0xFF
};

-- Buff/Aura effects
_addon.EFFECT_TYPE = {
    MOD_EFFECT = 1;
    MOD_DMG_DONE = 2,
    MOD_HIT_SPELL = 3,
    FSR_REGEN = 4,
    MOD_CRIT = 5,
    MP5 = 6,
    MOD_HEALING_DONE = 7,
    RESISTANCE_PEN = 8,
    CLEARCAST_CHANCE = 9,
    ILLUMINATION = 10,
    CRIT_MULT = 11,
    IGNITE = 12
};

-- Spell types (What calculation rules to use)
_addon.SPELL_TYPE = {
    SPELL = 1
};

-- Spell effect types (What calculation rules to use)
_addon.SPELL_EFFECT_TYPE = {
    DIRECT_DMG = 1,
    DOT = 2,
    DMG_SHIELD = 3,
    DIRECT_HEAL = 4,
    HOT = 5
};
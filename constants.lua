local _, _addon = ...;

-- As used by the API
_addon.SCHOOL_PHYSICAL = 1;
_addon.SCHOOL_HOLY = 2;
_addon.SCHOOL_FIRE = 3;
_addon.SCHOOL_NATURE = 4;
_addon.SCHOOL_FROST = 5;
_addon.SCHOOL_SHADOW = 6;
_addon.SCHOOL_ARCANE = 7;

-- Internal use for buffs only
_addon.SCHOOL_MASK_PHYSICAL = 0x1;
_addon.SCHOOL_MASK_HOLY = 0x2;
_addon.SCHOOL_MASK_FIRE = 0x4;
_addon.SCHOOL_MASK_NATURE = 0x8;
_addon.SCHOOL_MASK_FROST = 0x10;
_addon.SCHOOL_MASK_SHADOW = 0x20;
_addon.SCHOOL_MASK_ARCANE = 0x40;
_addon.SCHOOL_MASK_ALL = 0xFF;

-- Buff/Aura effects
_addon.EFFECT_TYPE_MOD_EFFECT = 1;
_addon.EFFECT_TYPE_MOD_DMG_DONE = 2;
_addon.EFFECT_TYPE_MOD_HIT_SPELL = 3;
_addon.EFFECT_TYPE_FSR_REGEN = 4;
_addon.EFFECT_TYPE_MOD_CRIT = 5;
_addon.EFFECT_TYPE_MP5 = 6;
_addon.EFFECT_TYPE_MOD_HEALING_DONE = 7;
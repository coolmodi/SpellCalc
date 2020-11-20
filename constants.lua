---@type AddonEnv
local _addon = select(2, ...)

--- As used by the API
---@class SpellSchools
_addon.SCHOOL = {
    PHYSICAL = 1,
    HOLY = 2,
    FIRE = 3,
    NATURE = 4,
    FROST = 5,
    SHADOW = 6,
    ARCANE = 7
};

--- Internal use for buffs only
_addon.SCHOOL_MASK = {
    PHYSICAL = 0x1,
    HOLY = 0x2,
    FIRE = 0x4,
    NATURE = 0x8,
    FROST = 0x10,
    SHADOW = 0x20,
    ARCANE = 0x40,
    ALL = 0xFF,
    ALL_SPELL = 0xFE,
};

--- Buff/Aura effects
_addon.EFFECT_TYPE = {
    MOD_HIT_SPELL = 3,
    FSR_REGEN = 4,
    MOD_CRIT = 5,
    MP5 = 6,
    RESISTANCE_PEN = 8,
    CLEARCAST_CHANCE = 9,
    ILLUMINATION = 10,
    CRIT_MULT = 11,
    IGNITE = 12,
    WL_IMP_SB = 13,
    MAGE_NWR_PROC = 14,
    MOD_DURATION = 15,
    MOD_FLAT_VALUE = 16,
    EXTRA_SP = 17,
    CLEARCAST_CHANCE_DMG = 18,
    EARTHFURY_RETURN = 19,
    CONDITION_TRIGGER = 20,
    DRUID_NATURES_GRACE = 21,
    JUDGEMENT_SPELL = 22,
    MOD_HIT_WEAPON = 23,
    SPELLMOD_EFFECT_PAST_FIRST = 25,
    SPELLMOD_GCD = 26,
    TRIGGER_UPDATE = 27,
    SPELL_MOD_PCT_EFFECT = 28,
    SPELL_MOD_PCT_DAMAGE = 29,
    SPELL_MOD_PCT_HEALING = 30,
    SCHOOL_MOD_PCT_DAMAGE = 31,
    MOD_PCT_HEALING = 32,
    TRIGGER_SPELL_EFFECT = 33,
};

--- Defense type (Decides mitigation types used)
---@class SpellDefenseType
_addon.DEF_TYPE = {
    NONE = 0,
    MAGIC = 1,
    MELEE = 2,
    RANGED = 3
}

--- Spell effect flags
---@class SpellEffectFlags
_addon.SPELL_EFFECT_FLAGS = {
    DURATION = 0x1,
    HEAL = 0x2,
    DMG_SHIELD = 0x4,
    ABSORB = 0x8,
    CHANNEL = 0x10,
    TRIGGER_SPELL_AURA = 0x20,
    AUTO_ATTACK = 0x40,
    DUMMY_AURA = 0x80,
    TRIGGERED_SPELL = 0x100
};

_addon.HEALING_CLASSES = {
    PRIEST = true,
    SHAMAN = true,
    DRUID = true,
    PALADIN = true
}

_addon.MELEE_CLASSES = {
    WARRIOR = true,
    ROGUE = true,
    HUNTER = true,
    SHAMAN = true,
    DRUID = true,
    PALADIN = true
}

_addon.BUFF_CONDITIONS = {
    EARTHSHATTERER_8PCS = 0x1
}

_addon.JUDGEMENT_ID = 20271;

--- Weapon types as localized itemSubType name, equals proficiency name
_addon.WEAPON_TYPES = {
    FISHING_POLE = GetSpellInfo(7738),
    POLEARM = GetSpellInfo(200),
    STAVE = GetSpellInfo(227),
    AXE_2H = GetSpellInfo(197),
    MACE_2H = GetSpellInfo(199),
    SWORD_2H = GetSpellInfo(202),

    DAGGER = GetSpellInfo(1180),
    FIST = GetSpellInfo(15590),
    AXE_1H = GetSpellInfo(196),
    MACE_1H = GetSpellInfo(198),
    SWORD_1H = GetSpellInfo(201),

    BOW = GetSpellInfo(264),
    CROSSBOW = GetSpellInfo(5011),
    GUN = GetSpellInfo(266),

    THROWN = GetSpellInfo(2567),
    UNARMED = GetSpellInfo(203),
    WAND = GetSpellInfo(5009),
}

_addon.WEAPON_TYPES_MASK = {
    -- these are as used in DBC for spells (equipped sub classes)
    AXE_1H      = 0x1,
    AXE_2H      = 0x2,
    BOW         = 0x4,
    GUN         = 0x8,
    MACE_1H     = 0x10,
    MACE_2H     = 0x20,
    POLEARM     = 0x40,
    SWORD_1H    = 0x80,
    SWORD_2H    = 0x100,
    STAVE       = 0x400,
    FIST        = 0x2000,
    MISC        = 0x4000,
    DAGGER      = 0x8000,
    THROWN      = 0x10000,
    CROSSBOW    = 0x40000,
    WAND        = 0x80000,
    FISHING_POLE = 0x100000,

    -- not used by the game, only internally
    UNARMED     = 0x40000000,
}
-- family masks
_addon.WEAPON_TYPES_MASK.ONE_HAND = (
    _addon.WEAPON_TYPES_MASK.AXE_1H
    + _addon.WEAPON_TYPES_MASK.MACE_1H
    + _addon.WEAPON_TYPES_MASK.SWORD_1H
    + _addon.WEAPON_TYPES_MASK.DAGGER
);
_addon.WEAPON_TYPES_MASK.TWO_HAND = (
    _addon.WEAPON_TYPES_MASK.AXE_2H
    + _addon.WEAPON_TYPES_MASK.MACE_2H
    + _addon.WEAPON_TYPES_MASK.SWORD_2H
    + _addon.WEAPON_TYPES_MASK.POLEARM
    + _addon.WEAPON_TYPES_MASK.STAVE
);
_addon.WEAPON_TYPES_MASK.MELEE = _addon.WEAPON_TYPES_MASK.ONE_HAND + _addon.WEAPON_TYPES_MASK.TWO_HAND;
_addon.WEAPON_TYPES_MASK.RANGED = (
    _addon.WEAPON_TYPES_MASK.BOW
    + _addon.WEAPON_TYPES_MASK.GUN
    + _addon.WEAPON_TYPES_MASK.CROSSBOW
);

--- Weapon subclasses as used in DBC
_addon.DBC_WEAPON_SUBCLASSES = {
    [0] = _addon.WEAPON_TYPES_MASK.AXE_1H,
    [1] = _addon.WEAPON_TYPES_MASK.AXE_2H,
    [2] = _addon.WEAPON_TYPES_MASK.BOW,
    [3] = _addon.WEAPON_TYPES_MASK.GUN,
    [4] = _addon.WEAPON_TYPES_MASK.MACE_1H,
    [5] = _addon.WEAPON_TYPES_MASK.MACE_2H,
    [6] = _addon.WEAPON_TYPES_MASK.POLEARM,
    [7] = _addon.WEAPON_TYPES_MASK.SWORD_1H,
    [8] = _addon.WEAPON_TYPES_MASK.SWORD_2H,
    -- whatever 9 is, it's called "Obsolete"
    [10] = _addon.WEAPON_TYPES_MASK.STAVE,
    -- whatever 11 is, it's called "Exotic 1H"
    -- whatever 12 is, it's called "Exotic 2H"
    [13] = _addon.WEAPON_TYPES_MASK.FIST,
    [14] = _addon.WEAPON_TYPES_MASK.MISC,
    [15] = _addon.WEAPON_TYPES_MASK.DAGGER,
    [16] = _addon.WEAPON_TYPES_MASK.THROWN,
    -- 17 is "Spears", don't think that is used for anything
    [18] = _addon.WEAPON_TYPES_MASK.CROSSBOW,
    [19] = _addon.WEAPON_TYPES_MASK.WAND,
    [20] = _addon.WEAPON_TYPES_MASK.FISHING_POLE,
}

--- Resolve WEAPON_TYPES (itemSubType) to their WEAPON_TYPES_MASK
_addon.WEAPON_TYPE_TO_MASK = {
    [_addon.WEAPON_TYPES.FISHING_POLE] = _addon.WEAPON_TYPES_MASK.FISHING_POLE,
    [_addon.WEAPON_TYPES.POLEARM] = _addon.WEAPON_TYPES_MASK.POLEARM,
    [_addon.WEAPON_TYPES.STAVE] = _addon.WEAPON_TYPES_MASK.STAVE,
    [_addon.WEAPON_TYPES.AXE_2H] = _addon.WEAPON_TYPES_MASK.AXE_2H,
    [_addon.WEAPON_TYPES.MACE_2H] = _addon.WEAPON_TYPES_MASK.MACE_2H,
    [_addon.WEAPON_TYPES.SWORD_2H] = _addon.WEAPON_TYPES_MASK.SWORD_2H,

    [_addon.WEAPON_TYPES.DAGGER] = _addon.WEAPON_TYPES_MASK.DAGGER,
    [_addon.WEAPON_TYPES.FIST] = _addon.WEAPON_TYPES_MASK.FIST,
    [_addon.WEAPON_TYPES.AXE_1H] = _addon.WEAPON_TYPES_MASK.AXE_1H,
    [_addon.WEAPON_TYPES.MACE_1H] = _addon.WEAPON_TYPES_MASK.MACE_1H,
    [_addon.WEAPON_TYPES.SWORD_1H] = _addon.WEAPON_TYPES_MASK.SWORD_1H,

    [_addon.WEAPON_TYPES.BOW] = _addon.WEAPON_TYPES_MASK.BOW,
    [_addon.WEAPON_TYPES.CROSSBOW] = _addon.WEAPON_TYPES_MASK.CROSSBOW,
    [_addon.WEAPON_TYPES.GUN] = _addon.WEAPON_TYPES_MASK.GUN,

    [_addon.WEAPON_TYPES.UNARMED] = _addon.WEAPON_TYPES_MASK.UNARMED,
    [_addon.WEAPON_TYPES.THROWN] = _addon.WEAPON_TYPES_MASK.THROWN,
    [_addon.WEAPON_TYPES.WAND] = _addon.WEAPON_TYPES_MASK.WAND,
}

_addon.FISHING_POLES = {
    [6365] = true, -- Strong Fishing Pole
    [6256] = true, -- Fishing Pole
    [6366] = true, -- Darkwood Fishing Pole
    [12225] = true, -- Blump Family Fishing Pole
    [6367] = true, -- Big Iron Fishing Pole
    [19022] = true, -- Nat Pagle's Extreme Angler FC-5000
    [19970] = true -- Arcanite Fishing Pole
}

_addon.SPELL_EFFECT_TYPES = {
    SPELL_EFFECT_SCHOOL_DAMAGE = 2,
    SPELL_EFFECT_APPLY_AURA = 6,
    SPELL_EFFECT_HEALTH_LEECH = 9,
    SPELL_EFFECT_HEAL = 10,
    SPELL_EFFECT_PERSISTENT_AREA_AURA = 27,
    SPELL_EFFECT_APPLY_AREA_AURA_PARTY = 35,
    SPELL_EFFECT_ATTACK = 78,
}

_addon.SPELL_AURA_TYPES = {
    SPELL_AURA_PERIODIC_DAMAGE = 3,
    SPELL_AURA_DUMMY = 4,
    SPELL_AURA_PERIODIC_HEAL = 8,
    SPELL_AURA_DAMAGE_SHIELD = 15,
    SPELL_AURA_PERIODIC_TRIGGER_SPELL = 23,
    SPELL_AURA_PROC_TRIGGER_SPELL = 42,
    SPELL_AURA_PERIODIC_LEECH = 53,
    SPELL_AURA_SCHOOL_ABSORB = 69,
    SPELL_AURA_MANA_SHIELD = 97,
}
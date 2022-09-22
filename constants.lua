---@class AddonEnv
local _A = select(2, ...)

-- Holds addon and API constants.
local CONST = {};

-- As used by the API
---@enum SpellSchool
CONST.SCHOOL = {
    PHYSICAL = 1,
    HOLY = 2,
    FIRE = 3,
    NATURE = 4,
    FROST = 5,
    SHADOW = 6,
    ARCANE = 7
};

-- Internal use for buffs only
CONST.SCHOOL_MASK = {
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

---@enum AddonEffectType
CONST.EFFECT_TYPE = {
    SPELLMOD_FLAT_HIT_CHANCE = 3,
    FSR_SPIRIT_REGEN = 4,
    SPELLMOD_FLAT_CRIT_CHANCE = 5,
    MOD_MANA_PER_5 = 6,
    SCHOOLMOD_RESISTANCE_PENETRATION = 8,
    SPELLMOD_CLEARCAST_CHANCE = 9,
    ILLUMINATION = 10,
    SPELLMOD_PCT_CRIT_MULT = 11,
    -- __UNUSED_12 = 12,
    -- __UNUSED_13 = 13,
    SPELLMOD_MAGE_NWR_PROC = 14,
    SPELLMOD_FLAT_DURATION = 15,
    SPELLMOD_FLAT_VALUE = 16,
    SPELLMOD_FLAT_SPELLPOWER = 17,
    CLEARCAST_CHANCE_DMG = 18,
    EARTHFURY_RETURN = 19,
    -- __UNUSED_20 = 20,
    SPELLMOD_ALLOW_PERIODIC_CRIT = 21,
    JUDGEMENT_SPELL = 22,
    GLOBAL_FLAT_HIT_CHANCE = 23,
    SPELLMOD_EFFECT_PAST_FIRST = 25,
    SPELLMOD_GCD_MS = 26,
    TRIGGER_UPDATE = 27,
    SPELLMOD_PCT_EFFECT = 28,
    SPELLMOD_PCT_DAMAGE_HEALING = 29,
    SCHOOLMOD_PCT_DAMAGE = 31,
    PCT_HEALING = 32,
    SPELLMOD_ADD_TRIGGER_SPELL = 33,
    VERSUSMOD_PCT_DAMAGE = 34,
    VERSUSMOD_PCT_CRIT_DAMAGE = 35,
    VERSUSMOD_FLAT_SPELLPOWER = 36,
    -- SCHOOLMOD_FLAT_CRIT = 37,
    SPELLMOD_FLAT_SPELL_SCALE = 39,
    GLOBAL_FLAT_HIT_CHANCE_SPELL = 40,
    SPELLMOD_PCT_SPELL_SCALE = 41,
    SPELLMOD_CHARGES = 42,
    SPELLMOD_CRIT_MANARESTORE = 43,
    SPELLMOD_MANARESTORE = 44,
    SPELLMOD_EFFECT1_FLAT_SPELLPOWER = 45,
    -- MANA_PER_5_FROM_INT = 46,
    SHAMAN_LIGHTNING_OVERLOAD = 47,
    SCHOOLMOD_PCT_CRIT_BASE_MULT = 48,
    GLOBAL_FLAT_MANARESTORE_AVG = 49,
    BOOLEAN_BITFLAG_SET = 50,
    CLEARCAST_CHANCE = 51,
    SPELLMOD_PCT_OVER_TIME = 52,
    SPELLMOD_ALLOW_PERIODIC_HASTE = 53,
    GLOBAL_MOD_CRITICAL_HEALING = 54,
    SPELLMOD_EXTRA_ON_CRIT = 55,
    SPELLMOD_DOT_ON_HIT = 56,
    SPELLMOD_FLAT_TICKPERIOD = 57,
    VERSUSMOD_FLAT_ATTACKPOWER = 58,
    VERSUSMOD_FLAT_ATTACKPOWER_RANGED = 59,

    TARGET_SCHOOLMOD_RESISTANCE_PCT = 100,
    TARGET_SCHOOLMOD_DMG_TAKEN_PCT = 101,
    TARGET_MECHANICMOD_DMG_TAKEN_PCT = 102,
    TARGET_SCHOOLMOD_CRIT_CHANCE_FLAT = 103,
    TARGET_SCHOOLMOD_HIT_CHANCE_FLAT = 104,
    TARGET_HEALING_RECIEVED = 105,
    TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER = 106,

    SCRIPT_MIN_ID_DO_NOT_USE = 1000,
    SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL = 1001, -- Trigger update if specified own aura changes.
    SCRIPT_TARGET_UPDATE_ON_AURA = 1002, -- Trigger update if specified aura changes.
    SCRIPT_SPELLMOD_DONE_PCT = 1003,
    SCRIPT_SPELLMOD_CRIT_CHANCE = 1004,
    SCRIPT_SET_VALUE = 1005,
    SCRIPT_SPELLMOD_EFFECT_PRE = 1006,
    SCRIPT_AURASCRIPT = 1007, -- Aura application/removal triggers script
    SCRIPT_TARGET_UPDATE_ON_AURA_MECHANIC = 1008,
    SCRIPT_SPELLMOD_EFFECT_BASEVALUES = 1009,
};

CONST.BOOLEAN_FLAGS = {
    PRIEST_T5_2PC = 0x1,
    SANCTIFIED_RETRIBUTION_TALENT = 0x2,
}

-- Mutually exclusive debuff categories.
---@enum DebuffCategory
CONST.DEBUFF_CATEGORY = {
    ARMOR_MAJOR = 1,
    ARMOR_MINOR = 2,
    SPELL_DAMAGE = 3,
    DISEASE_DAMAGE = 4,
    BLEED_DAMAGE = 5,
    PHYSICAL_DAMAGE = 6,
    CRIT_ALL = 7,
    CRIT_SPELL = 8,
    HIT_SPELL = 9,
    HEALING_RECIEVED_POSITIVE = 10,
    HEALING_RECIEVED_NEGATIVE = 11,
    DAMAGE_DONE_ALL = 12,
}

-- Defense type (Decides mitigation types used)
---@enum SpellDefenseType
CONST.DEF_TYPE = {
    NONE = 0,
    MAGIC = 1,
    MELEE = 2,
    RANGED = 3
}

-- Effect flags used in addon.
CONST.ADDON_EFFECT_FLAGS = {
    DURATION = 0x1,
    HEAL = 0x2,
    DMG_SHIELD = 0x4,
    ABSORB = 0x8,
    CHANNEL = 0x10,
    TRIGGER_SPELL_AURA = 0x20,
    AUTO_ATTACK = 0x40,
    DUMMY_AURA = 0x80,
    TRIGGERED_SPELL = 0x100,
    STACKABLE_AURA = 0x200,
    MANA_RESTORE = 0x400,
};

CONST.HEALING_CLASSES = {
    PRIEST = true,
    SHAMAN = true,
    DRUID = true,
    PALADIN = true
}

CONST.MELEE_CLASSES = {
    WARRIOR = true,
    ROGUE = true,
    HUNTER = true,
    SHAMAN = true,
    DRUID = true,
    PALADIN = true,
    DEATHKNIGHT = true
}

-- Judgement of Light.
CONST.JUDGEMENT_ID = 20271;
-- All 3 Judgements.
CONST.JUDGEMENT_IDS = {
    [20271] = true,
    [53407] = true,
    [53408] = true,
}

---@enum WeaponSubclass
CONST.WEAPON_SUBCLASS = {
    AXE_1H = 0,
    AXE_2H = 1,
    BOW = 2,
    GUN = 3,
    MACE_1H = 4,
    MACE_2H = 5,
    POLEARM = 6,
    SWORD_1H = 7,
    SWORD_2H = 8,
    -- WARGLAIVE = 9, -- Not used
    STAFF = 10,
    -- BEARCLAW = 11, -- Not used
    -- CATCLAW = 12, -- Not used
    FIST = 13,
    MISC = 14,
    DAGGER = 15,
    THROWN = 16,
    -- 17 is "Spears", don't think that is ever used for anything
    CROSSBOW = 18,
    WAND = 19,
    FISHING_POLE = 20,
}

-- Weapon mask. Equals 1 << WeaponSubclass.
local WEAPON_TYPES_MASK = {
    -- these are as used in DBC for spells (equipped sub classes)
    AXE_1H       = 0x1,
    AXE_2H       = 0x2,
    BOW          = 0x4,
    GUN          = 0x8,
    MACE_1H      = 0x10,
    MACE_2H      = 0x20,
    POLEARM      = 0x40,
    SWORD_1H     = 0x80,
    SWORD_2H     = 0x100,
    STAVE        = 0x400,
    FIST         = 0x2000,
    MISC         = 0x4000,
    DAGGER       = 0x8000,
    THROWN       = 0x10000,
    CROSSBOW     = 0x40000,
    WAND         = 0x80000,
    FISHING_POLE = 0x100000,
}
WEAPON_TYPES_MASK.ONE_HAND = (
    WEAPON_TYPES_MASK.AXE_1H
        + WEAPON_TYPES_MASK.MACE_1H
        + WEAPON_TYPES_MASK.SWORD_1H
        + WEAPON_TYPES_MASK.DAGGER
        + WEAPON_TYPES_MASK.FIST
    );
WEAPON_TYPES_MASK.TWO_HAND = (
    WEAPON_TYPES_MASK.AXE_2H
        + WEAPON_TYPES_MASK.MACE_2H
        + WEAPON_TYPES_MASK.SWORD_2H
        + WEAPON_TYPES_MASK.POLEARM
        + WEAPON_TYPES_MASK.STAVE
    );
WEAPON_TYPES_MASK.MELEE = WEAPON_TYPES_MASK.ONE_HAND + WEAPON_TYPES_MASK.TWO_HAND;
WEAPON_TYPES_MASK.RANGED = (
    WEAPON_TYPES_MASK.BOW
        + WEAPON_TYPES_MASK.GUN
        + WEAPON_TYPES_MASK.CROSSBOW
    );
CONST.WEAPON_TYPES_MASK = WEAPON_TYPES_MASK;

-- Spell effect types as used by the game.
---@enum SpellEffectType
CONST.SPELL_EFFECT_TYPES = {
    SPELL_EFFECT_SCHOOL_DAMAGE = 2,
    SPELL_EFFECT_APPLY_AURA = 6,
    SPELL_EFFECT_HEALTH_LEECH = 9,
    SPELL_EFFECT_HEAL = 10,
    SPELL_EFFECT_PERSISTENT_AREA_AURA = 27,
    SPELL_EFFECT_WEAPON_PERCENT_DAMAGE = 31,
    SPELL_EFFECT_APPLY_AREA_AURA_PARTY = 35,
    SPELL_EFFECT_WEAPON_DAMAGE = 58,
    SPELL_EFFECT_TRIGGER_SPELL = 64,
    SPELL_EFFECT_HEALTH_FUNNEL = 65,
    SPELL_EFFECT_ATTACK = 78,
    SPELL_EFFECT_NORMALIZED_WEAPON_DMG = 121,
    SPELL_EFFECT_ENERGIZE_PCT = 137,
}

-- Aura types used by the game.
---@enum SpellAuraType
CONST.SPELL_AURA_TYPES = {
    SPELL_AURA_PERIODIC_DAMAGE = 3,
    SPELL_AURA_DUMMY = 4,
    SPELL_AURA_PERIODIC_HEAL = 8,
    SPELL_AURA_DAMAGE_SHIELD = 15,
    SPELL_AURA_OBS_MOD_MANA = 21,
    SPELL_AURA_PERIODIC_TRIGGER_SPELL = 23,
    SPELL_AURA_PERIODIC_ENERGIZE = 24,
    SPELL_AURA_PROC_TRIGGER_SPELL = 42,
    SPELL_AURA_PROC_TRIGGER_DAMAGE = 43,
    SPELL_AURA_PERIODIC_LEECH = 53,
    SPELL_AURA_SCHOOL_ABSORB = 69,
    SPELL_AURA_MANA_SHIELD = 97,
    SPELL_AURA_PERIODIC_TRIGGER_SPELL_WITH_VALUE = 227,
}

-- API creature types.
---@enum CreatureType
CONST.CREATURE_TYPE = {
    BEAST = 1,
    DRAGONKIN = 2,
    DEMON = 3,
    ELEMENTAL = 4,
    GIANT = 5,
    UNDEAD = 6,
    HUMANOID = 7,
    CRITTER = 8,
    MECHANICAL = 9,
    NOT_SPECIFIED = 10,
    TOTEM = 11,
}

-- Creature type mask.
CONST.CREATURE_TYPE_MASK = {
    BEAST = 0x1,
    DRAGONKIN = 0x2,
    DEMON = 0x4,
    ELEMENTAL = 0x8,
    GIANT = 0x10,
    UNDEAD = 0x20,
    HUMANOID = 0x40,
    CRITTER = 0x80,
    MECHANICAL = 0x100,
    NOT_SPECIFIED = 0x200,
    TOTEM = 0x400
}

-- Spell mechanic IDs as used by the game.
---@enum SpellMechanic
CONST.SPELL_MECHANIC = {
    BLEED = 15,
    INFECTED = 22,
}

---@enum PlayerStance
CONST.STANCE_MASK = {
    NONE        = 0x0,
    CAT         = 0x00000001,
    TREE        = 0x00000002,
    BEAR        = 0x00000010,
    BEAR_2      = 0x00000080,
    OWL         = 0x40000000,

    SHADOW      = 0x08000000,

    BERSERKER   = 0x00040000,
    DEFENSIVE   = 0x00020000,
    BATTLE      = 0x00010000,
}

---@type table<integer, PlayerStance>
CONST.STANCE_SPELLS = {
    [768] = CONST.STANCE_MASK.CAT,
    [5487] = CONST.STANCE_MASK.BEAR,
    [9634] = CONST.STANCE_MASK.BEAR_2,
    [24858] = CONST.STANCE_MASK.OWL,
    [33891] = CONST.STANCE_MASK.TREE,
    [2457] = CONST.STANCE_MASK.BATTLE,
    [71] = CONST.STANCE_MASK.DEFENSIVE,
    [2458] = CONST.STANCE_MASK.BERSERKER
}

_A.CONST = CONST;

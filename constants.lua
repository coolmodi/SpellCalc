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
    SPELLMOD_FLAT_HIT_CHANCE = 3,
    FSR_SPIRIT_REGEN = 4,
    SPELLMOD_FLAT_CRIT_CHANCE = 5,
    MOD_MANA_PER_5 = 6,
    SCHOOLMOD_RESISTANCE_PENETRATION = 8,
    SPELLMOD_CLEARCAST_CHANCE = 9,
    ILLUMINATION = 10,
    SPELLMOD_PCT_CRIT_MULT = 11,
    IGNITE = 12,
    WL_IMP_SB = 13,
    SPELLMOD_MAGE_NWR_PROC = 14,
    SPELLMOD_FLAT_DURATION = 15,
    SPELLMOD_FLAT_VALUE = 16,
    SPELLMOD_FLAT_SPELLPOWER = 17,
    CLEARCAST_CHANCE_DMG = 18,
    EARTHFURY_RETURN = 19,
    CONDITION_TRIGGER = 20,
    DRUID_NATURES_GRACE = 21,
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
    SCHOOLMOD_FLAT_CRIT = 37,
    SPELLMOD_FLAT_SPELL_SCALE = 39,
    GLOBAL_FLAT_HIT_CHANCE_SPELL = 40,
    SPELLMOD_PCT_SPELL_SCALE = 41,
    SPELLMOD_CHARGES = 42,
    SPELLMOD_CRIT_MANARESTORE = 43,
    SPELLMOD_MANARESTORE = 44,
    SPELLMOD_EFFECT1_FLAT_SPELLPOWER = 45,
    MANA_PER_5_FROM_INT = 46,
    SHAMAN_LIGHTNING_OVERLOAD = 47,
    GLOBAL_PCT_CRIT_BASE_MULT = 48,
    GLOBAL_FLAT_MANARESTORE_AVG = 49,
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
    TRIGGERED_SPELL = 0x100,
    STACKABLE_AURA = 0x200,
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

}

_addon.JUDGEMENT_ID = 20271;

_addon.WEAPON_SUBCLASS = {
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
}
-- family masks
_addon.WEAPON_TYPES_MASK.ONE_HAND = (
    _addon.WEAPON_TYPES_MASK.AXE_1H
    + _addon.WEAPON_TYPES_MASK.MACE_1H
    + _addon.WEAPON_TYPES_MASK.SWORD_1H
    + _addon.WEAPON_TYPES_MASK.DAGGER
    + _addon.WEAPON_TYPES_MASK.FIST
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

_addon.SPELL_EFFECT_TYPES = {
    SPELL_EFFECT_SCHOOL_DAMAGE = 2,
    SPELL_EFFECT_APPLY_AURA = 6,
    SPELL_EFFECT_HEALTH_LEECH = 9,
    SPELL_EFFECT_HEAL = 10,
    SPELL_EFFECT_PERSISTENT_AREA_AURA = 27,
    SPELL_EFFECT_APPLY_AREA_AURA_PARTY = 35,
    SPELL_EFFECT_TRIGGER_SPELL = 64,
    SPELL_EFFECT_ATTACK = 78,
}

_addon.SPELL_AURA_TYPES = {
    SPELL_AURA_PERIODIC_DAMAGE = 3,
    SPELL_AURA_DUMMY = 4,
    SPELL_AURA_PERIODIC_HEAL = 8,
    SPELL_AURA_DAMAGE_SHIELD = 15,
    SPELL_AURA_PERIODIC_TRIGGER_SPELL = 23,
    SPELL_AURA_PROC_TRIGGER_SPELL = 42,
    SPELL_AURA_PROC_TRIGGER_DAMAGE = 43,
    SPELL_AURA_PERIODIC_LEECH = 53,
    SPELL_AURA_SCHOOL_ABSORB = 69,
    SPELL_AURA_MANA_SHIELD = 97,
}

_addon.CREATURE_TYPE = {
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

_addon.CREATURE_TYPE_MASK = {
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
const enum EFFECT_TYPE {
    SPELL_EFFECT_HEAL = 10,
    SPELL_EFFECT_APPLY_AURA = 6,
    SPELL_EFFECT_PERSISTENT_AREA_AURA = 27,
    SPELL_EFFECT_SCRIPT_EFFECT = 77,
    SPELL_EFFECT_SCHOOL_DAMAGE = 2,
    SPELL_EFFECT_HEALTH_LEECH = 9,
    SPELL_EFFECT_SUMMON_TOTEM_SLOT_CLASSIC = 28, // Seems like all totems share this now
    SPELL_EFFECT_WEAPON_PERCENT_DAMAGE = 31, // if E1 then modify E0!
    SPELL_EFFECT_ATTACK = 78,
    SPELL_EFFECT_WEAPON_DAMAGE = 58,
    SPELL_EFFECT_APPLY_AREA_AURA_PARTY = 35
}

const enum AURA_TYPE {
    SPELL_AURA_PERIODIC_HEAL = 8,
    SPELL_AURA_SCHOOL_ABSORB = 69,
    SPELL_AURA_PERIODIC_DAMAGE = 3,
    SPELL_AURA_PROC_TRIGGER_SPELL = 42,
    SPELL_AURA_PERIODIC_LEECH = 53,
    SPELL_AURA_MANA_SHIELD = 97,
    SPELL_AURA_DAMAGE_SHIELD = 15,
    SPELL_AURA_PERIODIC_TRIGGER_SPELL = 23,
    SPELL_AURA_DUMMY = 4
}

const enum DEFENSE_TYPE {
    MAGIC = 1,
    MELEE = 2,
    RANGED = 3
}

const enum SPELL_ATTR0 {
    SPELL_ATTR_IMPOSSIBLE_DODGE_PARRY_BLOCK = 0x200000,
}

const enum SPELL_ATTR1 {
    SPELL_ATTR_EX_CHANNELED1 = 0x4,
    SPELL_ATTR_EX_CHANNELED2 = 0x40,
    SPELL_ATTR_EX_CHANNELED_ANY = 0x44,
}

const enum SCHOOL_MASK {
    NONE	= 0x00,
    PHYSICAL= 0x01,
    HOLY	= 0x02,
    FIRE	= 0x04,
    NATURE	= 0x08,
    FROST	= 0x10,
    SHADOW	= 0x20,
    ARCANE	= 0x40,
}

interface BaseInfo {
    getspellinfoid: number,
    school: number,
    isChannel: boolean,
    isBinary: boolean,
    gcd: number,
    defenseType: DEFENSE_TYPE,
    cantDogeParryBlock: boolean,
    usedWeaponMask: number
}

interface EffectInfo {
    effectType: number,
    auraType?: number
    min: number,
    max: number,
    perLevel: number,
    coef: number,
    forceScaleWithHeal: boolean,
    period: number,
    charges: number,
    weaponCoef: number,
    chainInfo?: {
        chains: number, 
        mult: number
    }
}

const enum PowerType {
    MANA = 0,
    RAGE = 1,
    ENERGY = 3,
}

interface RankInfo {
    spellnamecomment: string,
    spellLevel: number,
    maxLevel: number,
    duration: number,
    baseCost: number,
    effects: EffectInfo[]
}

interface ClassInfo {
    baseInfo: {[index: string]: BaseInfo},
    rankInfo: {[index: number]: RankInfo},
}

const enum ItemClass {
    ITEM_CLASS_CONSUMABLE   = 0,
    ITEM_CLASS_CONTAINER    = 1,
    ITEM_CLASS_WEAPON       = 2,
    ITEM_CLASS_GEM          = 3,
    ITEM_CLASS_ARMOR        = 4,
    ITEM_CLASS_REAGENT      = 5,
    ITEM_CLASS_PROJECTILE   = 6,
    ITEM_CLASS_TRADE_GOODS  = 7,
    ITEM_CLASS_GENERIC      = 8,
    ITEM_CLASS_RECIPE       = 9,
    ITEM_CLASS_MONEY        = 10,
    ITEM_CLASS_QUIVER       = 11,
    ITEM_CLASS_QUEST        = 12,
    ITEM_CLASS_KEY          = 13,
    ITEM_CLASS_PERMANENT    = 14,
    ITEM_CLASS_MISC         = 15
}
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

const enum SPELL_ATTR1 {
    SPELL_ATTR_EX_CHANNELED1 = 0x4,
    SPELL_ATTR_EX_CHANNELED2 = 0x40,
    SPELL_ATTR_EX_CHANNELED_ANY = 0x44,
}

interface BaseInfo {
    getspellinfoid: number,
    school: number,
    isChannel: boolean,
    isAbsorbShield: boolean,
    forceSchoolScaling: boolean,
    isBinary: boolean,
    forceCanCrit: boolean,
    isSeal: false | string,
    isMelee: boolean,
    isRanged: boolean,
    isAutoAttack: boolean,
    gcd: number
}

interface EffectInfo {
    min: number,
    max: number,
    perLevel: number,
    coef: number,
    isHeal: boolean,
    isDuration: boolean,
    period: number,
    isDmgShield: boolean,
    charges: number,
    weaponCoef: number
}

interface RankInfo {
    spellnamecomment: string,
    spellLevel: number,
    maxLevel: number,
    duration: number,
    effects: EffectInfo[]
}

interface ClassInfo {
    baseInfo: {[index: string]: BaseInfo},
    rankInfo: {[index: number]: RankInfo},
}
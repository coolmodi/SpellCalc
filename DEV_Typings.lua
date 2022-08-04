---@class AddonEnv
local _addon = select(2, ...);

---@class SpellRankEffectData
---@field effectType number
---@field auraType number|nil
---@field forceScaleWithHeal boolean|nil
---@field valueBase number
---@field valueRange number
---@field valuePerLevel number|nil
---@field coef number
---@field coefAP number
---@field weaponCoef number|nil
---@field tickPeriod number|nil In seconds
---@field chains number|nil
---@field chainMult number|nil
---@field auraStacks integer|nil

---@class SpellInfo
---@field school number
---@field isChannel boolean|nil
---@field isBinary boolean|nil
---@field GCD number|nil In seconds
---@field defType number
---@field cantDogeParryBlock boolean|nil
---@field equippedWeaponMask number|nil
---@field noCrit boolean|nil
---@field forceHeal boolean|nil
---@field charges number|nil
---@field spellLevel number
---@field maxLevel number
---@field duration number|nil In seconds
---@field baseCost number|nil
---@field baseCostPct number|nil
---@field usePeriodicHaste boolean|nil
---@field mechanic number|nil
---@field effects table<number, SpellRankEffectData|nil>

---@type SettingsTable
SpellCalc_settings = SpellCalc_settings;

SpellCalcStatScreen = {}

---@type nil|fun():table<string,table>
_addon.ClassSettings = function() end

---@type table<integer, SpellInfo>
_addon.spellInfo = {};

_addon.spellClassSet = {
    ---@type table<integer, integer[]>
    [1] = {},
    ---@type table<integer, integer[]>
    [2] = {},
    ---@type table<integer, integer[]>
    [3] = {},
    ---@type table<integer, integer[]>
    [4] = {},
};

---@alias EffectScript fun(val:number, cs:CalcedSpell, ce:CalcedEffect|nil, spellId:number, si:SpellInfo, scriptType: number)

---@class AuraEffectBase
---@field type integer
---@field affectMask integer|nil
---@field affectSpell integer[]|nil
---@field affectMechanic integer|nil
---@field neededWeaponMask integer|nil
---@field scriptKey string|nil Key for script effect. Must be unique!

---@class UnitAuraEffect : AuraEffectBase
---@field value integer|nil
---@field scriptValue string|nil Get value from scriptKey.

---@class SetBonusAuraEffect : UnitAuraEffect
---@field need integer The number of set items needed for the effect to be active.

---@class ItemSetData
---@field name string
---@field effects SetBonusAuraEffect[]

---@type table<number, ItemSetData>
_addon.itemSetData = {}

---@type table<number, UnitAuraEffect[]>
_addon.itemEffects = {};

---@type table<number, UnitAuraEffect[]>
_addon.aurasPlayer = {};

---@class EnchantData : UnitAuraEffect
---@field name string

---@type table<number, EnchantData>
_addon.enchantData = {};

---@class TargetAuraEffect : UnitAuraEffect
---@field hasStacks boolean|nil Does the debuff have stacks (e.g. Sunder Armor).
---@field debuffCategory number Debuffs effects from same category don't stack with eacho ther.

---@type table<number, TargetAuraEffect[]>
_addon.aurasTarget = {};

---@class TalentEffect : AuraEffectBase
---@field base integer|nil
---@field perPoint integer|nil
---@field values integer[]|nil

---@class TalentDataEntry
---@field tree integer
---@field talent integer
---@field effects TalentEffect[]

---@class TalentDataRawEntry
---@field tree integer
---@field tier integer
---@field column integer
---@field effects TalentEffect[]

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {}

---@type table<number, UnitAuraEffect[]>
_addon.classGlyphs = {}

---@type UnitAuraEffect[]
_addon.classPassives = {};

---@type table<string, EffectScript>
_addon.classScripts = {};
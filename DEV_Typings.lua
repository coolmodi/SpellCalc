---@diagnostic disable: missing-return
---@class AddonEnv
local _addon = select(2, ...);

---@class SpellEffectData
---@field effectType SpellEffectType
---@field auraType SpellAuraType|nil
---@field forceScaleWithHeal boolean|nil
---@field valueBase integer
---@field valueRange integer
---@field valuePerLevel number|nil
---@field triggeredSpell integer|nil
---@field coef number
---@field coefAP number
---@field weaponCoef number|nil
---@field tickPeriod integer|nil In seconds
---@field chains integer|nil
---@field chainMult number|nil
---@field auraStacks integer|nil
---@field mechanic SpellMechanic|nil
---@field perResouce integer|nil

---@class SpellInfo
---@field school SpellSchool
---@field isChannel boolean|nil
---@field isBinary boolean|nil
---@field GCD number|nil In seconds
---@field defType SpellDefenseType
---@field cantDogeParryBlock boolean|nil
---@field equippedWeaponMask integer|nil
---@field noCrit boolean|nil
---@field forceHeal boolean|nil
---@field charges integer|nil
---@field spellLevel integer
---@field maxLevel integer
---@field duration integer|nil In seconds
---@field baseCost integer|nil
---@field baseCostPct integer|nil
---@field usePeriodicHaste boolean|nil
---@field extraTickAtApplication boolean|nil
---@field onNextSwing boolean|nil
---@field isOffhandAttack boolean|nil
---@field useScalingFormula {id:integer, label:string}|nil
---@field effects SpellEffectData[]

---@class SettingsTable
---@field debug boolean

SpellCalcStatScreen = {}

---@type nil|fun():table<string,table>
_addon.ClassSettings = function() end

---@alias SpellInfoTable table<integer, SpellInfo>

---@alias SpellClassSet table<integer, table<integer, integer[]>>

---@alias EffectScript fun(val:integer, cs:CalcedSpell, ce:CalcedEffect|nil, spellId:number, si:SpellInfo, scriptType: AddonEffectType, spellName:string)
---@alias AuraScript fun(apply:boolean, auraId:integer, fromPlayer:boolean, scriptType: AddonEffectType, cacheValue:integer|nil, value:integer):integer|nil

---@class AuraEffectBase
---@field type AddonEffectType
---@field affectMask integer|nil
---@field affectSpell integer[]|nil
---@field affectMechanic SpellMechanic|nil
---@field neededWeaponMask integer|nil
---@field scriptKey string|nil Key for script effect. Must be unique!
---@field auraCategory DebuffCategory|nil Effects from same category don't stack with each other.
---@field requiredStance PlayerStance|nil
---@field onlyPersonal boolean|nil

---@class UnitAuraEffect : AuraEffectBase
---@field value integer|nil
---@field scriptValue string|nil Get value from scriptKey.
---@field hasStacks boolean|nil Does the aura have stacks (e.g. Sunder Armor).

---@class SetBonusAuraEffect : UnitAuraEffect
---@field need integer The number of set items needed for the effect to be active.

---@class ItemSetData
---@field name string
---@field effects SetBonusAuraEffect[]

---@alias ItemSetDataTable table<integer, ItemSetData>

---@alias ItemEffects table<integer, UnitAuraEffect[]>
---@alias SetItemDataTable table<integer, integer>

---@class EnchantData : UnitAuraEffect
---@field name string
---@field requireSlot string|nil MH or OH

---@class TalentEffect : AuraEffectBase
---@field perPoint integer|nil
---@field values integer[]|nil

---@class TalentDataRawEntry
---@field tree integer
---@field tier integer
---@field column integer
---@field effects TalentEffect[]

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {}

---@alias ClassGlyphs table<integer, UnitAuraEffect[]>

---@class AddonEnv
---@field classGlyphs ClassGlyphs

---@type UnitAuraEffect[]
_addon.classPassives = {};
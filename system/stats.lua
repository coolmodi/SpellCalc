---@class AddonEnv
local _addon = select(2, ...);

---@return UniformStat
local function UniformStat()
    ---@class UniformStat
    ---@field val integer
    ---@field buffs string[]
    return {
        ---@type number
        val = 0,
        ---@type string[]
        buffs = {}
    }
end

---@return UniformStatMult
local function UniformStatMult()
    ---@class UniformStatMult
    ---@field val number
    ---@field vals table<string, integer>
    ---@field buffs string[]
    return {
        currentMult = 1,
        vals = {},
        buffs = {}
    }
end

local function SchoolStatTable()
    local SCHOOL = _addon.CONST.SCHOOL;
    -- Keys are school types found in _addon.CONST.SCHOOL
    ---@type table<SpellSchool, UniformStat>
    local schoolTable = {
        [SCHOOL.PHYSICAL] = UniformStat(),
        [SCHOOL.HOLY] = UniformStat(),
        [SCHOOL.FIRE] = UniformStat(),
        [SCHOOL.NATURE] = UniformStat(),
        [SCHOOL.FROST] = UniformStat(),
        [SCHOOL.SHADOW] = UniformStat(),
        [SCHOOL.ARCANE] = UniformStat()
    }
    return schoolTable;
end

local function SchoolStatTableMult()
    local SCHOOL = _addon.CONST.SCHOOL;
    -- Keys are school types found in _addon.CONST.SCHOOL
    ---@type table<SpellSchool, UniformStatMult>
    local schoolTable = {
        [SCHOOL.PHYSICAL] = UniformStatMult(),
        [SCHOOL.HOLY] = UniformStatMult(),
        [SCHOOL.FIRE] = UniformStatMult(),
        [SCHOOL.NATURE] = UniformStatMult(),
        [SCHOOL.FROST] = UniformStatMult(),
        [SCHOOL.SHADOW] = UniformStatMult(),
        [SCHOOL.ARCANE] = UniformStatMult()
    }
    return schoolTable;
end

local function CreatureTypeStatTable()
    local CREATURE_TYPE = _addon.CONST.CREATURE_TYPE;
    -- Keys are creature types found in _addon.CONST.CREATURE_TYPE
    ---@type table<CreatureType, UniformStat>
    local creatureTable = {
        [CREATURE_TYPE.BEAST]    = UniformStat(),
        [CREATURE_TYPE.DRAGONKIN] = UniformStat(),
        [CREATURE_TYPE.DEMON] = UniformStat(),
        [CREATURE_TYPE.ELEMENTAL] = UniformStat(),
        [CREATURE_TYPE.GIANT] = UniformStat(),
        [CREATURE_TYPE.UNDEAD] = UniformStat(),
        [CREATURE_TYPE.HUMANOID] = UniformStat(),
        [CREATURE_TYPE.CRITTER] = UniformStat(),
        [CREATURE_TYPE.MECHANICAL] = UniformStat(),
        [CREATURE_TYPE.NOT_SPECIFIED] = UniformStat(),
        [CREATURE_TYPE.TOTEM] = UniformStat()
    }
    return creatureTable;
end

local function SpellStatTable()
    ---@type table<integer, UniformStat>
    local spellTable = {};
    return spellTable;
end

local function SpellStatTableMult()
    ---@type table<integer, UniformStatMult>
    local spellTable = setmetatable({}, {
        __index = function(self, key)
            rawset(self, key, UniformStatMult());
            return self[key];
        end
    });
    return spellTable;
end

local function MechanicStatTable()
    -- Keys are mechanic types found in _addon.CONST.SPELL_MECHANIC
    ---@type table<SpellMechanic, UniformStat>
    local mt = {}
    for _, mechanicId in pairs(_addon.CONST.SPELL_MECHANIC) do
        mt[mechanicId] = UniformStat();
    end
    return mt;
end

---@class InternalStats
local stats = {
    manaMax = 0, -- Maximum mana
    manaCurrent = 0, -- Current mana if update is active
    baseMana = 0,
    manaRegBase = 0, -- Mana regen based on spirit /sec
    manaRegCasting = 0, -- Mana regen from spirit while casting /sec
    manaRegAura = 0, -- Mana regen from SPELL_AURA_MOD_POWER_REGEN sources /sec
    spellPower = {
        [_addon.CONST.SCHOOL.PHYSICAL] = 0,
        [_addon.CONST.SCHOOL.HOLY] = 0,
        [_addon.CONST.SCHOOL.FIRE] = 0,
        [_addon.CONST.SCHOOL.NATURE] = 0,
        [_addon.CONST.SCHOOL.FROST] = 0,
        [_addon.CONST.SCHOOL.SHADOW] = 0,
        [_addon.CONST.SCHOOL.ARCANE] = 0
    },
    spellHealing = 0,
    spellCrit = {
        [_addon.CONST.SCHOOL.PHYSICAL] = 0,
        [_addon.CONST.SCHOOL.HOLY] = 0,
        [_addon.CONST.SCHOOL.FIRE] = 0,
        [_addon.CONST.SCHOOL.NATURE] = 0,
        [_addon.CONST.SCHOOL.FROST] = 0,
        [_addon.CONST.SCHOOL.SHADOW] = 0,
        [_addon.CONST.SCHOOL.ARCANE] = 0
    },
    attackPower = 0,
    attackPowerRanged = 0,
    attackSpeed = {
        mainhand = 0,
        offhand = 0,
        ranged = 0
    },
    baseAttackSpeed = {
        mainhand = 0,
        offhand = 0,
        ranged = 0
    },
    attack = {
        mainhand = 0,
        offhand = 0,
        ranged = 0
    },
    attackCrit = {
        mainhand = 0,
        ranged = 0
    },
    attackDmg = {
        mainhand = {
            min = 0, -- Base damage!
            max = 0  -- Base damage!
        },
        offhand = {
            min = 0, -- Base damage!
            max = 0  -- Base damage!
        },
        ranged = {
            min = 0, -- Base damage!
            max = 0  -- Base damage!
        }
    },
    weaponBaseDamage = {
        mainhand = {
            min = 0,
            max = 0
        },
        offhand = {
            min = 0,
            max = 0
        },
        ranged = {
            min = 0,
            max = 0
        }
    },

    schoolModSpellPen = SchoolStatTable(),
    schoolModPctDamage = SchoolStatTable(),
    --schoolModFlatCritChance = SchoolStatTable(),
    schoolModPctCritMult = SchoolStatTable(),
    schoolCritBaseMult = SchoolStatTable(),
    targetSchoolModDamageTaken = SchoolStatTable(),
    targetSchoolModResistancePct = SchoolStatTable(),
    targetSchoolModCritTaken = SchoolStatTable(),
    targetSchoolModHit = SchoolStatTable(),
    targetHealingRecieved = UniformStat(),

    schoolModPctDamageMult = SchoolStatTableMult(),

    spellModPctEffect = SpellStatTable(),
    spellModPctDamageHealing = SpellStatTable(),
    spellModPctDoTHoT = SpellStatTable(),
    spellModFlatDuration = SpellStatTable(), -- In milliseconds
    spellModFlatTickperiod = SpellStatTable(), -- In ms
    spellModFlatValue = SpellStatTable(),
    spellModFlatSpellpower = SpellStatTable(),
    spellModEff1FlatSpellpower = SpellStatTable(),
    spellModMageNWR = SpellStatTable(),
    spellModGCDms = SpellStatTable(), -- In ms
    spellModChainMult = SpellStatTable(),
    spellModAddTriggerSpell = SpellStatTable(),
    spellModFlatHitChance = SpellStatTable(),
    spellModFlatCritChance = SpellStatTable(),
    spellModPctCritMult = SpellStatTable(),
    spellModFlatSpellScale = SpellStatTable(),
    spellModPctSpellScale = SpellStatTable(),
    spellModClearCastChance = SpellStatTable(),
    spellModCharges = SpellStatTable(),
    spellModCritManaRestore = SpellStatTable(),
    spellModManaRestore = SpellStatTable(),
    spellModAllowDotCrit = SpellStatTable(),
    spellModAllowDotHaste = SpellStatTable(),
    spellModExtraOnCrit = SpellStatTable(),
    spellModDotOnHit = SpellStatTable(),

    targetSpellModDmgTakenPersonal = SpellStatTableMult(),

    versusModPctDamage = CreatureTypeStatTable(),
    versusModPctCritDamage = CreatureTypeStatTable(),
    versusModFlatSpellpower = CreatureTypeStatTable(),
    versusModFlatAttackpower = CreatureTypeStatTable(),
    versusModFlatAttackpowerRanged = CreatureTypeStatTable(),

    targetMechanicModDmgTakenPct = MechanicStatTable(),

    mp5 = UniformStat();
    fsrRegenMult = UniformStat();
    modhealingDone = UniformStat(),
    hitBonus = UniformStat();
    hitBonusSpell = UniformStat();
    clearCastChanceDmg = UniformStat(),
    clearCastChance = UniformStat(),
    illumination = UniformStat(),
    earthfuryReturn = UniformStat(),
    shamanLightningOverload = SpellStatTable(),
    castManaRestoreAvg = UniformStat(),
    modCriticalHealing = UniformStat(),
};

---Update base mana for current level.
---@param level integer
local function UpdateBaseMana(level)
    local _, eclass = UnitClass("player");
    local basemana = _addon.GetBaseMana(eclass, level);
    if basemana ~= stats.baseMana then
        stats.baseMana = basemana;
        _addon:TriggerUpdate();
    end
end

--- Update spell power stats from API
local function UpdateSpellPower()
    _addon.util.PrintDebug("Updating spell power");

    for i = 1, 7, 1 do
        _addon.stats.spellPower[i] = GetSpellBonusDamage(i);
    end

    _addon:TriggerUpdate();
end

---Update attack power.
local function UpdateAttackPower()
    local base, posBuff, negBuff = UnitAttackPower("player");
    stats.attackPower = base + posBuff + negBuff;
    _addon:TriggerUpdate();
end

---Update ranged attack power.
local function UpdateRangedAttackPower()
    local base, posBuff, negBuff = UnitRangedAttackPower("player");
    stats.attackPowerRanged = base + posBuff + negBuff;
    _addon:TriggerUpdate();
end

--- Update dmg done mods
local function UpdateDmgDoneMods()
    local spellHealing = GetSpellBonusHealing();
    if spellHealing ~= stats.spellHealing then
        _addon.util.PrintDebug("Updating healing");
        stats.spellHealing = spellHealing;
    end

    _addon.util.PrintDebug("Updating dmg done mods");
    for i = 1, 7, 1 do
        stats.spellCrit[i] = GetSpellCritChance(i);
    end

    stats.attackCrit.mainhand = GetCritChance();
    stats.attackCrit.ranged = GetRangedCritChance();

    _addon:TriggerUpdate();
end

do
    local LEVEL_REGEN_MULT = {
        0.034965, 0.034191, 0.033465, 0.032526, 0.031661, 0.031076, 0.030523, 0.029994, 0.029307, 0.028661,
        0.027584, 0.026215, 0.025381, 0.024300, 0.023345, 0.022748, 0.021958, 0.021386, 0.020790, 0.020121,
        0.019733, 0.019155, 0.018819, 0.018316, 0.017936, 0.017576, 0.017201, 0.016919, 0.016581, 0.016233,
        0.015994, 0.015707, 0.015464, 0.015204, 0.014956, 0.014744, 0.014495, 0.014302, 0.014094, 0.013895,
        0.013724, 0.013522, 0.013363, 0.013175, 0.012996, 0.012853, 0.012687, 0.012539, 0.012384, 0.012233,
        0.012113, 0.011973, 0.011859, 0.011714, 0.011575, 0.011473, 0.011342, 0.011245, 0.011110, 0.010999,
        0.010700, 0.010522, 0.010290, 0.010119, 0.009968, 0.009808, 0.009651, 0.009553, 0.009445, 0.009327,
        0.008859, 0.008415, 0.007993, 0.007592, 0.007211, 0.006849, 0.006506, 0.006179, 0.005869, 0.005575
    }

    ---Update spirit+int based and MP5 regen values
    function _addon:UpdateManaRegen()
        local _, int = UnitStat("player", 4);
        local _, spirit = UnitStat("player", 5);
        local spiritIntRegen = (math.sqrt(int) * spirit * LEVEL_REGEN_MULT[UnitLevel("player")]) * 0.6;
        local changed = false;

        local newmanaRegCasting = spiritIntRegen * (stats.fsrRegenMult.val/100);
        local newmanaRegAura = math.max(0, GetManaRegen() - spiritIntRegen);

        if stats.manaRegBase ~= spiritIntRegen
        or stats.manaRegCasting ~= newmanaRegCasting
        or stats.manaRegAura ~= newmanaRegAura then
            stats.manaRegBase = spiritIntRegen;
            stats.manaRegCasting = newmanaRegCasting;
            stats.manaRegAura = newmanaRegAura;
            changed = true;
        end

        if changed then self:TriggerUpdate() end
    end
end

--- Update general stats from API
local function UpdateStats()
    _addon.util.PrintDebug("Updating stats");
    stats.manaMax = UnitPowerMax("player", 0);
    _addon:TriggerUpdate();
end

--- Update weapon attack speeds
local function UpdateAttackSpeeds()
    local m,o = UnitAttackSpeed("player");
    local r = UnitRangedDamage("player");

    stats.attackSpeed.mainhand = m and m or 0;
    stats.attackSpeed.offhand = o and o or 0;
    stats.attackSpeed.ranged = r and r or 0;

    _addon.util.PrintDebug(("Updated attack speeds: %s, %s, %s"):format(stats.attackSpeed.mainhand, stats.attackSpeed.offhand, stats.attackSpeed.ranged));

    _addon:TriggerUpdate();
end

--- Update weapon attack skill
local function UpdateWeaponAttack()
    local mh, mhMod, oh, ohMod = UnitAttackBothHands("player");
    local r, rMod = UnitRangedAttack("player");

    stats.attack.mainhand = mh + mhMod;
    stats.attack.offhand = oh + ohMod;
    stats.attack.ranged = r + rMod;

    _addon.util.PrintDebug(("Updated attack: M: %d + %d O: %d + %d R: %d + %d"):format(mh, mhMod, oh, ohMod, r, rMod));

    _addon:TriggerUpdate();
end

--- Update melee attack damage
local function UpdateAttackDmg()
    _addon.util.PrintDebug("Updated melee dmg");
    local low, high, offLow, offHigh, _, _, pctMod = UnitDamage("player");
    stats.attackDmg.mainhand.min = low / pctMod;
    stats.attackDmg.mainhand.max = high / pctMod;
    stats.attackDmg.offhand.min = offLow / pctMod;
    stats.attackDmg.offhand.max = offHigh / pctMod;
    _addon:TriggerUpdate();
end

--- Update ranged attack damage
local function UpdateRangedAttackDmg()
    _addon.util.PrintDebug("Updated ranged dmg");
    local _, lowDmg, hiDmg, _, _, pctMod = UnitRangedDamage("player");
    stats.attackDmg.ranged.min = lowDmg / pctMod;
    stats.attackDmg.ranged.max = hiDmg / pctMod;
    _addon:TriggerUpdate();
end

local oldApiHitBonus = 0;
local oldApiHitBonusSpell = 0;

--- Combat ratings updated (seems to be hit modifier in classic)
local function CombatRatingUpdate()
    _addon.util.PrintDebug("Combat rating update");
    local meleeHitBonus = GetCombatRatingBonus(CR_HIT_MELEE) -- + GetHitModifier(); -- TODO: Only updates if weapon is equipped, not if it's removed
    local spellHitBonus = GetCombatRatingBonus(CR_HIT_SPELL) -- + GetSpellHitModifier(); -- TODO: Broken? Returns stupid numbers for no reason
    local changed = false;

    if meleeHitBonus ~= oldApiHitBonus then
        stats.hitBonus.val = stats.hitBonus.val - oldApiHitBonus + meleeHitBonus;
        oldApiHitBonus = meleeHitBonus;
        changed = true;
    end

    if spellHitBonus ~= oldApiHitBonusSpell then
        stats.hitBonusSpell.val = stats.hitBonusSpell.val - oldApiHitBonusSpell + spellHitBonus;
        oldApiHitBonusSpell = spellHitBonus;
        changed = true;
    end

    if changed then
        _addon.util.PrintDebug("Updated hit mods from API. M: " .. meleeHitBonus .. " - S: " .. spellHitBonus);
        _addon:TriggerUpdate();
    end
end

_addon.stats = stats;

_addon.events.Register("UNIT_ATTACK_POWER", function (unit) if unit == "player" then UpdateAttackPower() end end);
_addon.events.Register("UNIT_RANGED_ATTACK_POWER", function (unit) if unit == "player" then UpdateRangedAttackPower() end end);
_addon.events.Register("UNIT_RANGEDDAMAGE", function (unit) if unit == "player" then UpdateRangedAttackDmg() end end);
_addon.events.Register("UNIT_DAMAGE", function (unit) if unit == "player" then UpdateAttackDmg() end end);
_addon.events.Register("UNIT_ATTACK", function (unit) if unit == "player" then UpdateWeaponAttack() end end);
_addon.events.Register("UNIT_ATTACK_SPEED", function (unit) if unit == "player" then UpdateAttackSpeeds() end end);
_addon.events.Register("COMBAT_RATING_UPDATE", function () CombatRatingUpdate() end);
_addon.events.Register("PLAYER_DAMAGE_DONE_MODS", function (unit) if unit == "player" then UpdateDmgDoneMods() end end);
_addon.events.Register("SPELL_POWER_CHANGED", function () UpdateSpellPower() end);
_addon.events.Register("PLAYER_LEVEL_UP", function (level) UpdateBaseMana(level) end);
_addon.events.Register("PLAYER_ENTERING_WORLD", function()
    UpdateStats();
    UpdateSpellPower();
    UpdateDmgDoneMods();
    UpdateAttackSpeeds();
    UpdateWeaponAttack();
    UpdateAttackDmg();
    UpdateRangedAttackDmg();
    CombatRatingUpdate();
    _addon:UpdateManaRegen();
    UpdateAttackPower();
    UpdateRangedAttackPower();
    UpdateBaseMana(UnitLevel("player"));
end);

_addon.events.Register("UNIT_STATS", function (unit)
    if unit == "player" then
        UpdateStats();
        _addon:UpdateManaRegen();
    end
end);

_addon.events.Register("UNIT_AURA", function (unit)
    if unit == "player" then
        _addon:UpdateManaRegen();
    end
end);

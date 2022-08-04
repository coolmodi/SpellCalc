---@class AddonEnv
local _addon = select(2, ...);

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

local function SchoolStatTable()
    local SCHOOL = _addon.CONST.SCHOOL;
    -- Keys are school types found in _addon.CONST.SCHOOL
    ---@type table<number, UniformStat>
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

local function CreatureTypeStatTable()
    local CREATURE_TYPE = _addon.CONST.CREATURE_TYPE;
    -- Keys are creature types found in _addon.CONST.CREATURE_TYPE
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
    ---@type table<number, UniformStat>
    local spellTable = {};
    return spellTable;
end

local function MechanicStatTable()
    -- Keys are mechanic types found in _addon.CONST.SPELL_MECHANIC
    ---@type table<number, UniformStat>
    local mt = {}
    for _, mechanicId in pairs(_addon.CONST.SPELL_MECHANIC) do
        mt[mechanicId] = UniformStat();
    end
    return mt;
end

---@class InternalStats
_addon.stats = {
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
    schoolModFlatCritChance = SchoolStatTable(),
    schoolModPctCritMult = SchoolStatTable(),
    schoolCritBaseMult = SchoolStatTable(),
    targetSchoolModDamageTaken = SchoolStatTable(),
    targetSchoolModResistancePct = SchoolStatTable(),
    targetSchoolModCritTaken = SchoolStatTable(),
    targetSchoolModHit = SchoolStatTable(),
    targetHealingRecieved = UniformStat(),

    spellModPctEffect = SpellStatTable(),
    spellModPctDamageHealing = SpellStatTable(),
    spellModPctDoTHoT = SpellStatTable(),
    spellModFlatDuration = SpellStatTable(), -- In seconds
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

    versusModPctDamage = CreatureTypeStatTable(),
    versusModPctCritDamage = CreatureTypeStatTable(),
    versusModFlatSpellpower = CreatureTypeStatTable(),

    targetMechanicModDmgTakenPct = MechanicStatTable(),

    mp5 = UniformStat();
    intToMP5Pct = UniformStat(),
    fsrRegenMult = UniformStat();
    modhealingDone = UniformStat(),
    hitBonus = UniformStat();
    hitBonusSpell = UniformStat();
    clearCastChanceDmg = UniformStat(),
    clearCastChance = UniformStat(),
    illumination = UniformStat(),
    ignite = UniformStat(),
    impShadowBolt = UniformStat(),
    earthfuryReturn = UniformStat(),
    shamanLightningOverload = SpellStatTable(),
    castManaRestoreAvg = UniformStat(),
    modCriticalHealing = UniformStat(),
};

do
    -- Hardcoded base mana for level 80.
    local bm = {
        DRUID   = 3496,
        HUNTER  = 3383,
        MAGE    = 3268,
        PALADIN = 4394,
        Priest  = 3863,
        SHAMAN  = 4396,
        WARLOCK = 3856
    }
    local _, eclass = UnitClass("player");
    if bm[eclass] then
        _addon.stats.baseMana = bm[eclass];
    end
end

--- Update spell power stats from API
function _addon:UpdateSpellPower()
    _addon.util.PrintDebug("Updating spell power");

    for i = 1, 7, 1 do
        _addon.stats.spellPower[i] = GetSpellBonusDamage(i);
    end

    self:TriggerUpdate();
end

---Update attack power.
---@param ranged boolean|nil
function _addon:UpdateAttackPower(ranged)
    if ranged then
        local base, posBuff, negBuff = UnitRangedAttackPower("player");
        self.stats.attackPowerRanged = base + posBuff + negBuff;
    else
        local base, posBuff, negBuff = UnitAttackPower("player");
        self.stats.attackPower = base + posBuff + negBuff;
    end
    self:TriggerUpdate();
end

--- Update dmg done mods
function _addon:UpdateDmgDoneMods()
    local spellHealing = GetSpellBonusHealing();
    if spellHealing ~= self.stats.spellHealing then
        self.util.PrintDebug("Updating healing");
        self.stats.spellHealing = spellHealing;
    end

    self.util.PrintDebug("Updating dmg done mods");
    for i = 1, 7, 1 do
        self.stats.spellCrit[i] = GetSpellCritChance(i);
    end

    -- TODO: does this include talents and buffs reliably?
    self.stats.attackCrit.mainhand = GetCritChance();
    self.stats.attackCrit.ranged = GetRangedCritChance();

    self:TriggerUpdate();
end

--- Update power values.
---@param powerType string|nil
function _addon:UpdatePower(powerType)
    if powerType == nil then
        _addon.stats.manaCurrent = UnitPower("player", 0);
        _addon:TriggerUpdate();
        return;
    end

    if powerType == "MANA" then
        _addon.stats.manaCurrent = UnitPower("player", 0);
        _addon:TriggerUpdate();
        return;
    end
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

    local oldIntPctMP5 = 0;

    ---Update spirit+int based and MP5 regen values
    function _addon:UpdateManaRegen()
        local stats = self.stats;
        local _, int = UnitStat("player", 4);
        local _, spirit = UnitStat("player", 5);
        local spiritIntRegen = (math.sqrt(int) * spirit * LEVEL_REGEN_MULT[UnitLevel("player")]);
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

        local regFromIntPct = stats.intToMP5Pct.val * 0.01 * int;
        if oldIntPctMP5 ~= regFromIntPct then
            stats.mp5.val = stats.mp5.val - oldIntPctMP5 + regFromIntPct;
            oldIntPctMP5 = regFromIntPct;
            changed = true;
        end

        if changed then self:TriggerUpdate() end
    end
end

--- Update general stats from API
function _addon:UpdateStats()
    _addon.util.PrintDebug("Updating stats");
    self.stats.manaMax = UnitPowerMax("player", 0);
    self:TriggerUpdate();
end

--- Update weapon attack speeds
function _addon:UpdateAttackSpeeds()
    local m,o = UnitAttackSpeed("player");
    local r = UnitRangedDamage("player");

    self.stats.attackSpeed.mainhand = m and m or 0;
    self.stats.attackSpeed.offhand = o and o or 0;
    self.stats.attackSpeed.ranged = r and r or 0;

    _addon.util.PrintDebug(("Updated attack speeds: %s, %s, %s"):format(self.stats.attackSpeed.mainhand, self.stats.attackSpeed.offhand, self.stats.attackSpeed.ranged));

    self:TriggerUpdate();
end

--- Update weapon attack skill
function _addon:UpdateWeaponAttack()
    local mh, mhMod, oh, ohMod = UnitAttackBothHands("player");
    local r, rMod = UnitRangedAttack("player");

    self.stats.attack.mainhand = mh + mhMod;
    self.stats.attack.offhand = oh + ohMod;
    self.stats.attack.ranged = r + rMod;

    _addon.util.PrintDebug(("Updated attack: M: %d + %d O: %d + %d R: %d + %d"):format(mh, mhMod, oh, ohMod, r, rMod));

    self:TriggerUpdate();
end

--- Update melee attack damage
function _addon:UpdateAttackDmg()
    _addon.util.PrintDebug("Updated melee dmg");
    local low, high, offLow, offHigh, _, _, pctMod = UnitDamage("player");
    self.stats.attackDmg.mainhand.min = low / pctMod;
    self.stats.attackDmg.mainhand.max = high / pctMod;
    self.stats.attackDmg.offhand.min = offLow / pctMod;
    self.stats.attackDmg.offhand.max = offHigh / pctMod;
    self:TriggerUpdate();
end

--- Update ranged attack damage
function _addon:UpdateRangedAttackDmg()
    _addon.util.PrintDebug("Updated ranged dmg");
    local _, lowDmg, hiDmg, _, _, pctMod = UnitRangedDamage("player");
    self.stats.attackDmg.ranged.min = lowDmg / pctMod;
    self.stats.attackDmg.ranged.max = hiDmg / pctMod;
    self:TriggerUpdate();
end

local oldApiHitBonus = 0;
local oldApiHitBonusSpell = 0;

--- Combat ratings updated (seems to be hit modifier in classic)
function _addon:CombatRatingUpdate()
    self.util.PrintDebug("Combat rating update");
    local meleeHitBonus = GetCombatRatingBonus(CR_HIT_MELEE) -- + GetHitModifier(); -- TODO: Only updates if weapon is equipped, not if it's removed
    local spellHitBonus = GetCombatRatingBonus(CR_HIT_SPELL) -- + GetSpellHitModifier(); -- TODO: Broken? Returns stupid numbers for no reason
    local changed = false;

    if meleeHitBonus ~= oldApiHitBonus then
        self.stats.hitBonus.val = self.stats.hitBonus.val - oldApiHitBonus + meleeHitBonus;
        oldApiHitBonus = meleeHitBonus;
        changed = true;
    end

    if spellHitBonus ~= oldApiHitBonusSpell then
        self.stats.hitBonusSpell.val = self.stats.hitBonusSpell.val - oldApiHitBonusSpell + spellHitBonus;
        oldApiHitBonusSpell = spellHitBonus;
        changed = true;
    end

    if changed then
        self.util.PrintDebug("Updated hit mods from API. M: " .. meleeHitBonus .. " - S: " .. spellHitBonus);
        self:TriggerUpdate();
    end
end

-- Update everything manually
function _addon:FullUpdate()
    self.util.PrintDebug("Full update");

    self:UpdateStats();
    self:UpdateSpellPower();
    self:UpdateDmgDoneMods();
    self:UpdateTalents();
    self:UpdatePlayerAuras();
    self:UpdateWeaponEnchants();
    self:UpdateItems();
    self.Target:Update();
    self:UpdateAttackSpeeds();
    self:UpdateWeaponAttack();
    self:UpdateAttackDmg();
    self:UpdateRangedAttackDmg();
    self:CombatRatingUpdate();
    self:UpdatePower();
    self:UpdateManaRegen();
    self:UpdateGlyphs();
    self:UpdateAttackPower();
    self:UpdateAttackPower(true);
end
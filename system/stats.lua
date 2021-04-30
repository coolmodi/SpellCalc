---@type AddonEnv
local _addon = select(2, ...);

local function UniformStat()
    ---@class UniformStat
    return {
        ---@type number
        val = 0,
        ---@type string[]
        buffs = {}
    }
end

local function SchoolStatTable()
    -- Keys are school types found in _addon.SCHOOL
    local schoolTable = {
        [_addon.SCHOOL.PHYSICAL] = UniformStat(),
        [_addon.SCHOOL.HOLY] = UniformStat(),
        [_addon.SCHOOL.FIRE] = UniformStat(),
        [_addon.SCHOOL.NATURE] = UniformStat(),
        [_addon.SCHOOL.FROST] = UniformStat(),
        [_addon.SCHOOL.SHADOW] = UniformStat(),
        [_addon.SCHOOL.ARCANE] = UniformStat()
    }
    return schoolTable;
end

---Create stat tables for weapon specific stats.
---@param subTableFunc function @The function that creates the per weapon type stat table
---@return table
local function WeaponStatTable(subTableFunc)
    -- Keys are weapon types found in _addon.WEAPON_SUBCLASS
    local weaponTable = {
        [_addon.WEAPON_SUBCLASS.AXE_1H] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.AXE_2H] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.BOW] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.GUN] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.MACE_1H] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.MACE_2H] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.POLEARM] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.SWORD_1H] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.SWORD_2H] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.STAFF] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.FIST] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.MISC] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.DAGGER] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.THROWN] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.CROSSBOW] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.WAND] = subTableFunc(),
        [_addon.WEAPON_SUBCLASS.FISHING_POLE] = subTableFunc()
    }
    return weaponTable;
end

local function CreatureTypeStatTable()
    -- Keys are creature types found in _addon.CREATURE_TYPE
    local creatureTable = {
        [_addon.CREATURE_TYPE.BEAST]    = UniformStat(),
        [_addon.CREATURE_TYPE.DRAGONKIN] = UniformStat(),
        [_addon.CREATURE_TYPE.DEMON] = UniformStat(),
        [_addon.CREATURE_TYPE.ELEMENTAL] = UniformStat(),
        [_addon.CREATURE_TYPE.GIANT] = UniformStat(),
        [_addon.CREATURE_TYPE.UNDEAD] = UniformStat(),
        [_addon.CREATURE_TYPE.HUMANOID] = UniformStat(),
        [_addon.CREATURE_TYPE.CRITTER] = UniformStat(),
        [_addon.CREATURE_TYPE.MECHANICAL] = UniformStat(),
        [_addon.CREATURE_TYPE.NOT_SPECIFIED] = UniformStat(),
        [_addon.CREATURE_TYPE.TOTEM] = UniformStat()
    }
    return creatureTable;
end

local function SpellStatTable()
    ---@type table<number, UniformStat>
    local spellTable = {};
    return spellTable;
end

---@class InternalStats
_addon.stats = {
    manaMax = 0, -- Maximum mana
    manaCurrent = 0, -- Current mana if update is active
    manaRegBase = 0, -- Mana regen based on spirit /sec
    manaRegCasting = 0, -- Mana regen from spirit while casting /sec
    manaRegAura = 0, -- Mana regen from SPELL_AURA_MOD_POWER_REGEN sources /sec
    spellPower = {
        [_addon.SCHOOL.PHYSICAL] = 0,
        [_addon.SCHOOL.HOLY] = 0,
        [_addon.SCHOOL.FIRE] = 0,
        [_addon.SCHOOL.NATURE] = 0,
        [_addon.SCHOOL.FROST] = 0,
        [_addon.SCHOOL.SHADOW] = 0,
        [_addon.SCHOOL.ARCANE] = 0
    },
    spellHealing = 0,
    spellCrit = {
        [_addon.SCHOOL.PHYSICAL] = 0,
        [_addon.SCHOOL.HOLY] = 0,
        [_addon.SCHOOL.FIRE] = 0,
        [_addon.SCHOOL.NATURE] = 0,
        [_addon.SCHOOL.FROST] = 0,
        [_addon.SCHOOL.SHADOW] = 0,
        [_addon.SCHOOL.ARCANE] = 0
    },
    attackSpeed = {
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

    spellModPctEffect = SpellStatTable(),
    spellModPctDamageHealing = SpellStatTable(),
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

    ---@type table<number, table<number, UniformStat>>
    weaponModSchoolPctDamage = WeaponStatTable(SchoolStatTable),

    versusModPctDamage = CreatureTypeStatTable(),
    versusModPctCritDamage = CreatureTypeStatTable(),
    versusModFlatSpellpower = CreatureTypeStatTable(),

    mp5 = UniformStat();
    fsrRegenMult = UniformStat();
    modhealingDone = UniformStat(),
    hitBonus = UniformStat();
    hitBonusSpell = UniformStat();
    clearCastChanceDmg = UniformStat(),
    illumination = UniformStat(),
    ignite = UniformStat(),
    impShadowBolt = UniformStat(),
    earthfuryReturn = UniformStat(),
    druidNaturesGrace = UniformStat(),
};

--- Update spell power stats from API
function _addon:UpdateSpellPower()
    _addon:PrintDebug("Updating spell power");

    for i = 1, 7, 1 do
        _addon.stats.spellPower[i] = GetSpellBonusDamage(i);
    end

    self:TriggerUpdate();
end

--- Update dmg done mods
function _addon:UpdateDmgDoneMods()
    local spellHealing = GetSpellBonusHealing();
    if spellHealing ~= self.stats.spellHealing then
        self:PrintDebug("Updating healing");
        self.stats.spellHealing = spellHealing;
    end

    self:PrintDebug("Updating dmg done mods");
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
        0.010700, 0.010522, 0.010290, 0.010119, 0.009968, 0.009808, 0.009651, 0.009553, 0.009445, 0.009327
    }

    ---Update spirit+int based and MP5 regen values
    -- TODO: Check back if API output still doesn't contain int% reg talents
    function _addon:UpdateManaRegen()
        local _, int = UnitStat("player", 4);
        local _, spirit = UnitStat("player", 5);
        local spiritIntRegen = (math.sqrt(int) * spirit * LEVEL_REGEN_MULT[UnitLevel("player")]);

        self.stats.manaRegBase = spiritIntRegen;
        self.stats.manaRegCasting = self.stats.manaRegBase * (self.stats.fsrRegenMult.val/100);
        self.stats.manaRegAura = math.max(0, GetManaRegen() - spiritIntRegen);

        self:TriggerUpdate();
    end
end

--- Update general stats from API
function _addon:UpdateStats()
    _addon:PrintDebug("Updating stats");
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

    _addon:PrintDebug(("Updated attack speeds: %s, %s, %s"):format(self.stats.attackSpeed.mainhand, self.stats.attackSpeed.offhand, self.stats.attackSpeed.ranged));

    self:TriggerUpdate();
end

--- Update weapon attack skill
function _addon:UpdateWeaponAttack()
    local mh, mhMod, oh, ohMod = UnitAttackBothHands("player");
    local r, rMod = UnitRangedAttack("player");

    self.stats.attack.mainhand = mh + mhMod;
    self.stats.attack.offhand = oh + ohMod;
    self.stats.attack.ranged = r + rMod;

    _addon:PrintDebug(("Updated attack: M: %d + %d O: %d + %d R: %d + %d"):format(mh, mhMod, oh, ohMod, r, rMod));

    self:TriggerUpdate();
end

--- Update melee attack damage
function _addon:UpdateAttackDmg()
    _addon:PrintDebug("Updated melee dmg");
    self.stats.attackDmg.mainhand.min, self.stats.attackDmg.mainhand.max, self.stats.attackDmg.offhand.min, self.stats.attackDmg.offhand.max = UnitDamage("player");
    self:TriggerUpdate();
end

--- Update ranged attack damage
function _addon:UpdateRangedAttackDmg()
    _addon:PrintDebug("Updated ranged dmg");
    local _, lowDmg, hiDmg = UnitRangedDamage("player");
    self.stats.attackDmg.ranged.min = lowDmg;
    self.stats.attackDmg.ranged.max = hiDmg;
    self:TriggerUpdate();
end

local oldApiHitBonus = 0;
local oldApiHitBonusSpell = 0;

--- Combat ratings updated (seems to be hit modifier in classic)
function _addon:CombatRatingUpdate()
    self:PrintDebug("Combat rating update");
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
        self:PrintDebug("Updated hit mods from API. M: " .. meleeHitBonus .. " - S: " .. spellHitBonus);
        self:TriggerUpdate();
    end
end

-- Update everything manually
function _addon:FullUpdate()
    self:PrintDebug("Full update");

    self:UpdateStats();
    self:UpdateSpellPower();
    self:UpdateDmgDoneMods();
    self:UpdatePlayerAuras();
    self:UpdateWeaponEnchants();
    self:UpdateTalents();
    self:UpdateItems();
    self.Target:Update();
    self:UpdateAttackSpeeds();
    self:UpdateWeaponAttack();
    self:UpdateAttackDmg();
    self:UpdateRangedAttackDmg();
    self:CombatRatingUpdate();
    self:UpdatePower();
    self:UpdateManaRegen();
end
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

local function WeaponStatTable()
    -- Keys are weapon types found in _addon.WEAPON_SUBCLASS
    local weaponTable = {
        [_addon.WEAPON_SUBCLASS.AXE_1H] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.AXE_2H] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.BOW] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.GUN] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.MACE_1H] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.MACE_2H] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.POLEARM] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.SWORD_1H] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.SWORD_2H] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.STAFF] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.FIST] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.MISC] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.DAGGER] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.THROWN] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.CROSSBOW] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.WAND] = UniformStat(),
        [_addon.WEAPON_SUBCLASS.FISHING_POLE] = UniformStat()
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
    manaRegBase = 0, -- Mana regen based on spirit
    manaRegCasting = 0, -- Mana regen from spirit while casting
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

    spellModPctHealing = SpellStatTable(),
    spellModPctEffect = SpellStatTable(),
    spellModPctDamage = SpellStatTable(),
    spellModFlatDuration = SpellStatTable(), -- In seconds
    spellModFlatValue = SpellStatTable(),
    spellModFlatSpellpower = SpellStatTable(),
    spellModMageNWR = SpellStatTable(),
    spellModGCDms = SpellStatTable(), -- In ms
    spellModChainMult = SpellStatTable(),
    spellModAddTriggerSpell = SpellStatTable(),
    spellModFlatHitChance = SpellStatTable(),
    spellModFlatCritChance = SpellStatTable(),
    spellModPctCritMult = SpellStatTable(),
    spellModFlatSpellScale = SpellStatTable(),
    spellModPctSpellScale = SpellStatTable(),

    weaponModFlatHitChance = WeaponStatTable(),

    versusModPctDamage = CreatureTypeStatTable(),
    versusModPctCritDamage = CreatureTypeStatTable(),
    versusModFlatSpellpower = CreatureTypeStatTable(),

    mp5 = UniformStat();
    fsrRegenMult = UniformStat();
    modhealingDone = UniformStat(),
    hitBonus = UniformStat();
    hitBonusSpell = UniformStat();
    clearCastChance = UniformStat(),
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

local queueFrame = CreateFrame("Frame");
local timePassed = 0;
local function UpdateFunction(self, passed)
    timePassed = timePassed + passed;
    if timePassed < 2 then
        return;
    end
    timePassed = 0;
    _addon:PrintDebug("Check spirit regen");
    -- TODO: this includes mp5 in TBC, currently bugged on beta though, wait for fix
    -- Can calculate regen manually with the known formula, mp5 would be total - that then, can ditch mp5 tracking internally
    local curRegen = GetManaRegen();
    if curRegen > 0.5 then
        _addon:PrintDebug("Spirit regen seems normal again, updating it");
        _addon.stats.manaRegBase = curRegen;
        _addon.stats.manaRegCasting = _addon.stats.manaRegBase * (_addon.stats.fsrRegenMult.val/100);
        queueFrame:SetScript("OnUpdate", nil);
        _addon:TriggerUpdate();
    end
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

--- Update general stats from API
function _addon:UpdateStats()
    _addon:PrintDebug("Updating stats");

    self.stats.manaMax = UnitPowerMax("player", 0);

    -- The function only a value if out of FSR, 
    -- otherwise always 0.00 something, even with FSR mana regen talents
    -- Only update if value makes sense, otherwise queue up an update
    local curRegen = GetManaRegen();
    if curRegen > 0.5 then
        self.stats.manaRegBase = curRegen;
        self.stats.manaRegCasting = self.stats.manaRegBase * (self.stats.fsrRegenMult.val/100);
    else
        self:PrintDebug("Have to queue spirit regen update");
        queueFrame:SetScript("OnUpdate", UpdateFunction);
    end

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
    local meleeFlat = GetHitModifier();
    local spellFlat = GetSpellHitModifier();
    local changed = false;

    if meleeFlat ~= oldApiHitBonus then
        self.stats.hitBonus.val = self.stats.hitBonus.val - oldApiHitBonus + meleeFlat;
        oldApiHitBonus = meleeFlat;
        changed = true;
    end

    if spellFlat ~= oldApiHitBonusSpell then
        self.stats.hitBonusSpell.val = self.stats.hitBonusSpell.val - oldApiHitBonusSpell + spellFlat;
        oldApiHitBonusSpell = spellFlat;
        changed = true;
    end

    if changed then
        self:PrintDebug("Updated hit mods from API. M: " .. meleeFlat .. " - S: " .. spellFlat);
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
end
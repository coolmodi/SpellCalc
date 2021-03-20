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
    mana = 0,
    curMana = 0,
    baseManaReg = 0,
    manaReg = 0,
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
        mh = 0,
        oh = 0,
        r = 0
    },
    attack = {
        mh = 0,
        oh = 0,
        r = 0
    },
    attackCrit = {
        mh = 0,
        r = 0
    },
    attackDmg = {
        mh = {
            min = 0,
            max = 0
        },
        oh = {
            min = 0,
            max = 0
        },
        r = {
            min = 0,
            max = 0
        }
    },

    spellPen = SchoolStatTable(),
    mp5 = UniformStat();
    fsrRegenMult = UniformStat();
    spellModPctHealing = SpellStatTable(),
    modhealingDone = UniformStat(),
    spellModPctEffect = SpellStatTable(),
    spellModPctDamage = SpellStatTable(),
    schoolModPctDamage = SchoolStatTable(),
    hitBonus = UniformStat();
    hitBonusSpell = UniformStat();
    hitMods = {
        school = SchoolStatTable(),
        weapon = WeaponStatTable(),
        spell = SpellStatTable()
    },
    critMods = {
        school = SchoolStatTable(),
        spell = SpellStatTable()
    },
    clearCastChance = UniformStat(),
    clearCastChanceDmg = UniformStat(),
    illumination = UniformStat(),
    critMult = {
        school = SchoolStatTable(),
        spell = SpellStatTable()
    },
    durationMods = SpellStatTable(),
    flatMods = SpellStatTable(),
    extraSp = SpellStatTable(),
    ignite = UniformStat(),
    impShadowBolt = UniformStat(),
    earthfuryReturn = UniformStat(),
    mageNWRProc = SpellStatTable(),
    druidNaturesGrace = UniformStat(),
    chainMultMods = SpellStatTable(),
    gcdMods = SpellStatTable(),
    spellTriggerSpellEffect = SpellStatTable(),
    targetTypeDmgMult = CreatureTypeStatTable(),
    targetTypeCritDmgMult = CreatureTypeStatTable(),
    targetTypeFlatSpell = CreatureTypeStatTable(),
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
    self.stats.attackCrit.mh = GetCritChance();
    self.stats.attackCrit.r = GetRangedCritChance();

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
    local curRegen = GetManaRegen();
    if curRegen > 0.5 then
        _addon:PrintDebug("Spirit regen seems normal again, updating it");
        _addon.stats.baseManaReg = curRegen;
        _addon.stats.manaReg = _addon.stats.baseManaReg * (_addon.stats.fsrRegenMult.val/100);
        queueFrame:SetScript("OnUpdate", nil);
        _addon:TriggerUpdate();
    end
end

--- Update power values.
---@param powerType string|nil
function _addon:UpdatePower(powerType)
    if powerType == nil then
        _addon.stats.curMana = UnitPower("player", 0);
        _addon:TriggerUpdate();
        return;
    end

    if powerType == "MANA" then
        _addon.stats.curMana = UnitPower("player", 0);
        _addon:TriggerUpdate();
        return;
    end
end

--- Update general stats from API
function _addon:UpdateStats()
    _addon:PrintDebug("Updating stats");

    self.stats.mana = UnitPowerMax("player", 0);

    -- The function only a value if out of FSR, 
    -- otherwise always 0.00 something, even with FSR mana regen talents
    -- Only update if value makes sense, otherwise queue up an update
    local curRegen = GetManaRegen();
    if curRegen > 0.5 then
        self.stats.baseManaReg = curRegen;
        self.stats.manaReg = self.stats.baseManaReg * (self.stats.fsrRegenMult.val/100);
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

    self.stats.attackSpeed.mh = m and m or 0;
    self.stats.attackSpeed.oh = o and o or 0;
    self.stats.attackSpeed.r = r and r or 0;

    _addon:PrintDebug(("Updated attack speeds: %s, %s, %s"):format(self.stats.attackSpeed.mh, self.stats.attackSpeed.oh, self.stats.attackSpeed.r));

    self:TriggerUpdate();
end

--- Update weapon attack skill
function _addon:UpdateWeaponAttack()
    local mh, mhMod, oh, ohMod = UnitAttackBothHands("player");
    local r, rMod = UnitRangedAttack("player");

    self.stats.attack.mh = mh + mhMod;
    self.stats.attack.oh = oh + ohMod;
    self.stats.attack.r = r + rMod;

    _addon:PrintDebug(("Updated attack: M: %d + %d O: %d + %d R: %d + %d"):format(mh, mhMod, oh, ohMod, r, rMod));

    self:TriggerUpdate();
end

--- Update melee attack damage
function _addon:UpdateAttackDmg()
    _addon:PrintDebug("Updated melee dmg");
    self.stats.attackDmg.mh.min, self.stats.attackDmg.mh.max, self.stats.attackDmg.oh.min, self.stats.attackDmg.oh.max = UnitDamage("player");
    self:TriggerUpdate();
end

--- Update ranged attack damage
function _addon:UpdateRangedAttackDmg()
    _addon:PrintDebug("Updated ranged dmg");
    local _, lowDmg, hiDmg = UnitRangedDamage("player");
    self.stats.attackDmg.r.min = lowDmg;
    self.stats.attackDmg.r.max = hiDmg;
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
    self:UpdateBuffs();
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
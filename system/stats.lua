---@type AddonEnv
local _addon = select(2, ...);

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
    spellPen = {
        [_addon.SCHOOL.PHYSICAL]    = {val=0, buffs={}},
        [_addon.SCHOOL.HOLY]        = {val=0, buffs={}},
        [_addon.SCHOOL.FIRE]        = {val=0, buffs={}},
        [_addon.SCHOOL.NATURE]      = {val=0, buffs={}},
        [_addon.SCHOOL.FROST]       = {val=0, buffs={}},
        [_addon.SCHOOL.SHADOW]      = {val=0, buffs={}},
        [_addon.SCHOOL.ARCANE]      = {val=0, buffs={}},
    },
    mp5 = {val=0, buffs={}};
    fsrRegenMult = {val=0, buffs={}};
    spellModPctHealing = {},
    modhealingDone = {val=0, buffs={}},
    spellModPctEffect = {},
    spellModPctDamage = {},
    schoolModPctDamage = {
        [_addon.SCHOOL.PHYSICAL]    = {val=0, buffs={}},
        [_addon.SCHOOL.HOLY]        = {val=0, buffs={}},
        [_addon.SCHOOL.FIRE]        = {val=0, buffs={}},
        [_addon.SCHOOL.NATURE]      = {val=0, buffs={}},
        [_addon.SCHOOL.FROST]       = {val=0, buffs={}},
        [_addon.SCHOOL.SHADOW]      = {val=0, buffs={}},
        [_addon.SCHOOL.ARCANE]      = {val=0, buffs={}},
    },
    hitBonus = {val=0, buffs={}};
    hitBonusSpell = {val=0, buffs={}};
    hitMods = {
        school = {
            [_addon.SCHOOL.PHYSICAL]    = {val=0, buffs={}},
            [_addon.SCHOOL.HOLY]        = {val=0, buffs={}},
            [_addon.SCHOOL.FIRE]        = {val=0, buffs={}},
            [_addon.SCHOOL.NATURE]      = {val=0, buffs={}},
            [_addon.SCHOOL.FROST]       = {val=0, buffs={}},
            [_addon.SCHOOL.SHADOW]      = {val=0, buffs={}},
            [_addon.SCHOOL.ARCANE]      = {val=0, buffs={}},
        },
        weapon = {
            [_addon.WEAPON_SUBCLASS.AXE_1H]         = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.AXE_2H]         = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.BOW]            = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.GUN]            = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.MACE_1H]        = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.MACE_2H]        = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.POLEARM]        = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.SWORD_1H]       = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.SWORD_2H]       = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.STAFF]          = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.FIST]           = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.MISC]           = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.DAGGER]         = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.THROWN]         = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.CROSSBOW]       = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.WAND]           = {val=0, buffs={}},
            [_addon.WEAPON_SUBCLASS.FISHING_POLE]   = {val=0, buffs={}},
        },
        spell = {}
    },
    critMods = {
        school = {
            [_addon.SCHOOL.PHYSICAL]    = {val=0, buffs={}},
            [_addon.SCHOOL.HOLY]        = {val=0, buffs={}},
            [_addon.SCHOOL.FIRE]        = {val=0, buffs={}},
            [_addon.SCHOOL.NATURE]      = {val=0, buffs={}},
            [_addon.SCHOOL.FROST]       = {val=0, buffs={}},
            [_addon.SCHOOL.SHADOW]      = {val=0, buffs={}},
            [_addon.SCHOOL.ARCANE]      = {val=0, buffs={}},
        },
        spell = {}
    },
    clearCastChance = {val=0, buffs={}},
    clearCastChanceDmg = {val=0, buffs={}},
    illumination = {val=0, buffs={}},
    critMult = {
        school = {
            [_addon.SCHOOL.PHYSICAL]    = {val=0, buffs={}},
            [_addon.SCHOOL.HOLY]        = {val=0, buffs={}},
            [_addon.SCHOOL.FIRE]        = {val=0, buffs={}},
            [_addon.SCHOOL.NATURE]      = {val=0, buffs={}},
            [_addon.SCHOOL.FROST]       = {val=0, buffs={}},
            [_addon.SCHOOL.SHADOW]      = {val=0, buffs={}},
            [_addon.SCHOOL.ARCANE]      = {val=0, buffs={}},
        },
        spell = {}
    },
    durationMods = {},
    flatMods = {},
    extraSp = {},
    ignite = {val=0, buffs={}},
    impShadowBolt = {val=0, buffs={}},
    earthfuryReturn = {val=0, buffs={}},
    mageNWRProc = {},
    druidNaturesGrace = {val=0, buffs={}},
    chainMultMods = {},
    gcdMods = {},
    spellTriggerSpellEffect = {},
    targetTypeDmgMult = {
        [_addon.CREATURE_TYPE.BEAST] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.DRAGONKIN] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.DEMON] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.ELEMENTAL] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.GIANT] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.UNDEAD] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.HUMANOID] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.CRITTER] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.MECHANICAL] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.NOT_SPECIFIED] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.TOTEM] = {val=0, buffs={}},
    },
    targetTypeCritDmgMult = {
        [_addon.CREATURE_TYPE.BEAST] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.DRAGONKIN] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.DEMON] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.ELEMENTAL] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.GIANT] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.UNDEAD] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.HUMANOID] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.CRITTER] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.MECHANICAL] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.NOT_SPECIFIED] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.TOTEM] = {val=0, buffs={}},
    },
    targetTypeFlatSpell = {
        [_addon.CREATURE_TYPE.BEAST] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.DRAGONKIN] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.DEMON] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.ELEMENTAL] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.GIANT] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.UNDEAD] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.HUMANOID] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.CRITTER] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.MECHANICAL] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.NOT_SPECIFIED] = {val=0, buffs={}},
        [_addon.CREATURE_TYPE.TOTEM] = {val=0, buffs={}},
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
    }
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
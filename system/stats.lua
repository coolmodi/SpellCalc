local _, _addon = ...;

_addon.stats = {
    mana = 0,
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
    dmgDoneMods = { -- multiplicatively!
        [_addon.SCHOOL.PHYSICAL]    = {val=1, buffs={}},
        [_addon.SCHOOL.HOLY]        = {val=1, buffs={}},
        [_addon.SCHOOL.FIRE]        = {val=1, buffs={}},
        [_addon.SCHOOL.NATURE]      = {val=1, buffs={}},
        [_addon.SCHOOL.FROST]       = {val=1, buffs={}},
        [_addon.SCHOOL.SHADOW]      = {val=1, buffs={}},
        [_addon.SCHOOL.ARCANE]      = {val=1, buffs={}},
    },
    healingDoneMod = {val=1, buffs={}}, -- multiplicatively!
    effectMods = { -- multiplicatively!
        school = {
            [_addon.SCHOOL.PHYSICAL]    = {val=1, buffs={}},
            [_addon.SCHOOL.HOLY]        = {val=1, buffs={}},
            [_addon.SCHOOL.FIRE]        = {val=1, buffs={}},
            [_addon.SCHOOL.NATURE]      = {val=1, buffs={}},
            [_addon.SCHOOL.FROST]       = {val=1, buffs={}},
            [_addon.SCHOOL.SHADOW]      = {val=1, buffs={}},
            [_addon.SCHOOL.ARCANE]      = {val=1, buffs={}},
        },
        spell = {}
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

    attackSpeed = {
        mh = 0,
        oh = 0,
        r = 0
    }
};

--- Update spell power stats from API
function _addon:UpdateSpellPower()
    _addon:PrintDebug("Updating spell power");

    for i = 1, 7, 1 do
        _addon.stats.spellPower[i] = GetSpellBonusDamage(i);
    end

    _addon.lastChange = time();
end

--- Update dmg done mods
function _addon:UpdateDmgDoneMods()
    local spellHealing = GetSpellBonusHealing();
    if spellHealing ~= self.stats.spellHealing then
        self:PrintDebug("Updating healing");
        self.stats.spellHealing = spellHealing;
        self.lastChange = time();
    end

    self:PrintDebug("Updating dmg done mods");
    for i = 1, 7, 1 do
        self.stats.spellCrit[i] = GetSpellCritChance(i);
    end
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
        _addon.lastChange = time();
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

    self.lastChange = time();
end

function _addon:UpdateAttackSpeeds()
    local m,o = UnitAttackSpeed("player");
    local r = UnitRangedDamage("player");

    self.stats.attackSpeed.mh = m and m or 0;
    self.stats.attackSpeed.oh = o and o or 0;
    self.stats.attackSpeed.r = r and r or 0;

    _addon:PrintDebug(("Updated attack speeds: %s, %s, %s"):format(self.stats.attackSpeed.mh, self.stats.attackSpeed.oh, self.stats.attackSpeed.r));
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
    self:UpdateTarget();
    self:UpdateAttackSpeeds();
end
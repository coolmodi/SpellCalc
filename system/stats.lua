local _, _addon = ...;

_addon.stats = {
    mana = 0,
    baseManaReg = 0,
    manaReg = 0,
    spellPower = {
        [_addon.SCHOOL_PHYSICAL] = 0,
        [_addon.SCHOOL_HOLY] = 0,
        [_addon.SCHOOL_FIRE] = 0,
        [_addon.SCHOOL_NATURE] = 0,
        [_addon.SCHOOL_FROST] = 0,
        [_addon.SCHOOL_SHADOW] = 0,
        [_addon.SCHOOL_ARCANE] = 0
    },
    spellHealing = 0,
    spellCrit = {
        [_addon.SCHOOL_PHYSICAL] = 0,
        [_addon.SCHOOL_HOLY] = 0,
        [_addon.SCHOOL_FIRE] = 0,
        [_addon.SCHOOL_NATURE] = 0,
        [_addon.SCHOOL_FROST] = 0,
        [_addon.SCHOOL_SHADOW] = 0,
        [_addon.SCHOOL_ARCANE] = 0
    },
    mp5 = {val=0, buffs={}};
    fsrRegenMult = {val=0, buffs={}};
    dmgDoneMods = {
        [_addon.SCHOOL_PHYSICAL]    = {val=0, buffs={}},
        [_addon.SCHOOL_HOLY]        = {val=0, buffs={}},
        [_addon.SCHOOL_FIRE]        = {val=0, buffs={}},
        [_addon.SCHOOL_NATURE]      = {val=0, buffs={}},
        [_addon.SCHOOL_FROST]       = {val=0, buffs={}},
        [_addon.SCHOOL_SHADOW]      = {val=0, buffs={}},
        [_addon.SCHOOL_ARCANE]      = {val=0, buffs={}},
    },
    healingDoneMod = {val=0, buffs={}},
    effectMods = {
        school = {
            [_addon.SCHOOL_PHYSICAL]    = {val=0, buffs={}},
            [_addon.SCHOOL_HOLY]        = {val=0, buffs={}},
            [_addon.SCHOOL_FIRE]        = {val=0, buffs={}},
            [_addon.SCHOOL_NATURE]      = {val=0, buffs={}},
            [_addon.SCHOOL_FROST]       = {val=0, buffs={}},
            [_addon.SCHOOL_SHADOW]      = {val=0, buffs={}},
            [_addon.SCHOOL_ARCANE]      = {val=0, buffs={}},
        },
        spell = {}
    },
    hitBonus = {val=0, buffs={}};
    hitBonusSpell = {val=0, buffs={}};
    hitMods = {
        school = {
            [_addon.SCHOOL_PHYSICAL]    = {val=0, buffs={}},
            [_addon.SCHOOL_HOLY]        = {val=0, buffs={}},
            [_addon.SCHOOL_FIRE]        = {val=0, buffs={}},
            [_addon.SCHOOL_NATURE]      = {val=0, buffs={}},
            [_addon.SCHOOL_FROST]       = {val=0, buffs={}},
            [_addon.SCHOOL_SHADOW]      = {val=0, buffs={}},
            [_addon.SCHOOL_ARCANE]      = {val=0, buffs={}},
        },
        spell = {}
    },
    critMods = {
        spell = {}
    },
};

--- Update spell power stats from API
function _addon:UpdateSpellPower()
    _addon:PrintDebug("Updating spell power");

    for i = 1, 7, 1 do
        _addon.stats.spellPower[i] = GetSpellBonusDamage(i);
    end

    _addon.lastChange = time();
end

--- Update healing power from API
-- Has no dedicated event I know of, so need to check if changes happened
function _addon:UpdateHealing()
    local spellHealing = GetSpellBonusHealing();
    if spellHealing ~= _addon.stats.spellHealing then
        _addon:PrintDebug("Updating healing");
        _addon.stats.spellHealing = spellHealing;
        _addon.lastChange = time();
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
    end
end

--- Update general stats from API
function _addon:UpdateStats()
    _addon:PrintDebug("Updating stats");

    _addon.stats.mana = UnitPowerMax("player", 0);

    -- The function only a value if out of FSR, 
    -- otherwise always 0.00 something, even with FSR mana regen talents
    -- Only update if value makes sense, otherwise queue up an update
    local curRegen = GetManaRegen();
    if curRegen > 0.5 then
        _addon.stats.baseManaReg = curRegen;
        _addon.stats.manaReg = _addon.stats.baseManaReg * (_addon.stats.fsrRegenMult.val/100);
    else
        _addon:PrintDebug("Have to queue spirit regen update");
        queueFrame:SetScript("OnUpdate", UpdateFunction);
    end

    for i = 1, 7, 1 do
        _addon.stats.spellCrit[i] = GetSpellCritChance(i);
    end

    _addon.lastChange = time();
end

-- Update everything manually
function _addon:FullUpdate()
    _addon:PrintDebug("Full update");

    self:UpdateStats();
    self:UpdateSpellPower();
    self:UpdateHealing();
    self:UpdateBuffs();
    self:UpdateTalents();
    self:UpdateItems();
end
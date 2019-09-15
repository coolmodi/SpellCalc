local _, _addon = ...;
local _, playerClass = UnitClass("player");
if playerClass ~= "MAGE" then
    return;
end

local FROST_BOLT = GetSpellInfo(837);

local FROST_BOLT_GENERIC = {
    school = _addon.SCHOOL_FROST,
    ttMinMax = "(%d+).-%s(%d+)",
    coef = 3 / 3.5 * 0.95
}

_addon.spellData = {
    [116] = _addon:SpellDataMerge(FROST_BOLT_GENERIC, {level = 4, coef = 1.5 / 3.5 * 0.95}),
    [205] = _addon:SpellDataMerge(FROST_BOLT_GENERIC, {level = 8, coef = 1.8 / 3.5 * 0.95}),
    [837] = _addon:SpellDataMerge(FROST_BOLT_GENERIC, {level = 14, coef = 2.2 / 3.5 * 0.95}),
    [7322] = _addon:SpellDataMerge(FROST_BOLT_GENERIC, {coef = 2.6 / 3.5 * 0.95}),
    [FROST_BOLT] = FROST_BOLT_GENERIC
};

_addon.talentData = {
    -- Elemental Precision
    {
        tree = 3,
        talent = 3,
        effect = _addon.EFFECT_TYPE_MOD_HIT_SPELL,
        affectSchool = _addon.SCHOOL_MASK_FROST + _addon.SCHOOL_MASK_FIRE,
        perPoint = 2
    },
};
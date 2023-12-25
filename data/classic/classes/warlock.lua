---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "WARLOCK" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

-- Master Demonologist dmg done
_addon.aurasPlayer[23761] = {
    {
        effect = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 2,
    }
};
_addon.aurasPlayer[23833] = {
    {
        effect = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 4,
    }
};
_addon.aurasPlayer[23834] = {
    {
        effect = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 6,
    }
};
_addon.aurasPlayer[23835] = {
    {
        effect = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 8,
    }
};
_addon.aurasPlayer[23836] = {
    {
        effect = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 10,
    }
};

-- Soul Link
_addon.aurasPlayer[25228] = {
    {
        effect = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
        affectMask = _addon.CONST.SCHOOL_MASK.ALL,
        value = 3,
    }
};

--------------------------------------------------------------------------
-- Target auras
--------------------------------------------------------------------------

-- Haunt
_addon.aurasTarget[403501] = {
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        value = 20,
        affectSpell = { 17418 },
        onlyPersonal = true
    }
};

-- Lake of Fire Debuff
_addon.aurasTarget[403650] = {
    {
        type = _addon.CONST.EFFECT_TYPE.TARGET_SPELLMOD_DMG_TAKEN_FROM_CASTER,
        value = 40,
        affectSpell = { 2097508, 8519872, 268435458 },
        onlyPersonal = true
    }
};

--------------------------------------------------------------------------
-- Scripts
--------------------------------------------------------------------------

-- Soul Siphon
do
    local CURSE_OF_AGONY = GetSpellInfo(1014);
    local CURSE_OF_ELEMENTS = GetSpellInfo(11722);
    local CURSE_OF_WEAKNESS = GetSpellInfo(11707);
    local CURSE_OF_TONGUES = GetSpellInfo(1714);
    local CURSE_OF_DOOM = GetSpellInfo(603);
    local CURSE_OF_EXHAUSTION = GetSpellInfo(18223);
    local CORRUPTION = GetSpellInfo(6223);
    local CURSE_OF_RECKLESSNESS = GetSpellInfo(11717);
    local SIPHON_LIFE = GetSpellInfo(18265);
    local HAUNT = GetSpellInfo(403501);
    local DRAIN_LIFE = GetSpellInfo(403689);

    local shadowEffects = {
        CURSE_OF_AGONY, CURSE_OF_ELEMENTS, CURSE_OF_WEAKNESS, CURSE_OF_TONGUES, CURSE_OF_DOOM, CURSE_OF_EXHAUSTION,
        CORRUPTION, DRAIN_LIFE, HAUNT, SIPHON_LIFE, CURSE_OF_RECKLESSNESS
    }

    _addon.scripting.RegisterScript("Soul_Siphon_Dmg_Per_Dot", function(val, cs, ce, spellId, si, scriptType, spellName)
        assert(ce, "Soul_Siphon_Dmg_Per_Dot called with ce nil!");
        local effectCount = 0;
        for _, auraName in ipairs(shadowEffects) do
            if _addon.Target.HasAuraName(auraName, true) then
                effectCount = effectCount + 1;
                -- Maximum of 3 times value increase.
                if effectCount == 3 then break end
            end
        end
        ce.modBonus = ce.modBonus * (1 + (val / 100) * effectCount);
    end);

    ---@type UnitAuraEffect[]
    local effects = {
        {
            type = _addon.CONST.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
            affectSpell = { 8 + 16384 },
            scriptKey = "Soul_Siphon_Dmg_Per_Dot",
            value = 6
        }
    }

    for _, auraName in ipairs(shadowEffects) do
        table.insert(effects, {
            type = _addon.CONST.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
            scriptKey = auraName,
            perPoint = 1
        });
    end

    _addon:DefineRuneSpell(403511, effects);
end

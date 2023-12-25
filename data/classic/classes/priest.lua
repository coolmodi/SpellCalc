---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "PRIEST" then
    return;
end

--------------------------------------------------------------------------
-- Player auras
--------------------------------------------------------------------------

--------------------------------------------------------------------------
-- Scripts
--------------------------------------------------------------------------

-- Twisted Faith Rune
do
    local SHADOW_WORD_PAIN = GetSpellInfo(589);

    _addon.scripting.RegisterScript("Twisted_Faith_SWP", function(val, cs, ce, spellId, si, scriptType, spellName)
        assert(ce, "Twisted_Faith_SWP called with ce nil!");
        if _addon.Target.HasAuraName(SHADOW_WORD_PAIN, true) then
            ce.modBonus = ce.modBonus * (1 + val / 100);
        end
    end);

    _addon:DefineRuneSpell(425198, {
        {
            type = _addon.CONST.EFFECT_TYPE.SCRIPT_SPELLMOD_DONE_PCT,
            affectSpell = { 8388608 + 8192 },
            scriptKey = "Twisted_Faith_SWP",
            value = 50
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCRIPT_TARGET_UPDATE_ON_AURA_PERSONAL,
            scriptKey = SHADOW_WORD_PAIN,
            value = 1
        }
    });
end

---@class AddonEnv
local _addon = select(2, ...);
local CONST = _addon.CONST;

-- Buffs the player can have
---@type table<integer, UnitAuraEffect[]>
_addon.aurasPlayer = {
    [26166] = { -- Obsidian Insight
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = CONST.SCHOOL_MASK.FIRE + CONST.SCHOOL_MASK.FROST +
                CONST.SCHOOL_MASK.NATURE + CONST.SCHOOL_MASK.SHADOW +
                CONST.SCHOOL_MASK.ARCANE,
            value = 100
        }
    },

    [30880] = { -- Echoes of Lordaeron H 1
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 1
        }
    },
    [30683] = { -- Echoes of Lordaeron H 2
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 2
        }
    },
    [30682] = { -- Echoes of Lordaeron H 3
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 3
        }
    },
    [29520] = { -- Echoes of Lordaeron H 4
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 5
        }
    },

    [11413] = { -- Echoes of Lordaeron A 1
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 1
        }
    },
    [11414] = { -- Echoes of Lordaeron A 2
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 2
        }
    },
    [11415] = { -- Echoes of Lordaeron A 3
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 3
        }
    },
    [1386] = { -- Echoes of Lordaeron A 4
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD +
                CONST.CREATURE_TYPE_MASK.DEMON,
            value = 5
        }
    },
    [33377] = { -- Blessing of Auchindoun
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [32071] = { -- Hellfire Superiority A
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [32049] = { -- Hellfire Superiority H
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [33795] = { -- Strength of the Halaani
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 5
        }
    },
    [20218] = { -- Sanctity Aura
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.HOLY,
            value = 10
        }
    },
    [30708] = { -- Totem of Wrath
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 3 }
    },
    [28488] = { -- Scourgebane Infusion
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_FLAT_SPELLPOWER,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 15
        }
    },
    [28486] = { -- Scourgebane Draught
        {
            type = CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
            affectMask = CONST.CREATURE_TYPE_MASK.UNDEAD,
            value = 30
        }
    },
    [6562] = { -- Heroic Presence
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE, value = 1 },
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 1 }
    },
    [28878] = { -- Inspiring Presence
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE, value = 1 },
        { type = CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL, value = 1 }
    },
    [49016] = { -- Hysteria
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.PHYSICAL,
            value = 20
        }
    },
    [57933] = { -- TotT
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 15
        }
    },
    [39953] = { -- Adal Song of Battle
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value =5
        },
        {
            type = CONST.EFFECT_TYPE.PCT_HEALING,
            value =5
        },
    },
    -----------------------
    -- Pct Damage Done
    -----------------------
    [31579] = { -- Arcane Empowerment 1
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 1,
            auraCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [31582] = { -- Arcane Empowerment 2
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 2,
            auraCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [31583] = { -- Arcane Empowerment 3
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 3,
            auraCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [75593] = { -- Ferocious Inspiration 1
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 1,
            auraCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [75446] = { -- Ferocious Inspiration 2
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 2,
            auraCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    [75447] = { -- Ferocious Inspiration 3
        {
            type = CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = CONST.SCHOOL_MASK.ALL,
            value = 3,
            auraCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL
        }
    },
    -----------------------
    -- Scripted
    -----------------------
    [57669] = { -- Replenishment
        {
            type = CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
            scriptKey = "Replenishment_Script",
            value = 0
        }
    }
}

-- Replenishment
---@type AuraEffectBase
local replenishmentEffect = { type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5 };
_addon.scripting.RegisterAuraScript("Replenishment_Script", function (apply, auraId, fromPlayer, scriptType, cacheValue)
    local name = "ReplenishmentScript";
    if apply then
        local manaPer5 = math.floor(_addon.stats.manaMax * 0.01);
        _addon:ApplyAuraEffect(name, replenishmentEffect, manaPer5, auraId, fromPlayer);
        return manaPer5;
    else
        assert(cacheValue, "Replenishment faded without cached value!");
        _addon:RemoveAuraEffect(name, replenishmentEffect, cacheValue, auraId, fromPlayer);
    end
end);

---@type UnitAuraEffect[]
local sanctifiedRetribution = {
    {
        type = CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
        affectMask = CONST.SCHOOL_MASK.ALL,
        scriptKey = "Sanctified_Retribution_Auras",
        value = 0
    }
}
---@type AuraEffectBase
local sanctifiedRetributionAura = {
    type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
    affectMask = _addon.CONST.SCHOOL_MASK.ALL,
    auraCategory = CONST.DEBUFF_CATEGORY.DAMAGE_DONE_ALL,
}
_addon.scripting.RegisterAuraScript("Sanctified_Retribution_Auras", function (apply, auraId, fromPlayer, scriptType)
    local name = "Sactified Retribution Script "..auraId;
    local val;
    if fromPlayer then
        val = _addon.scripting.GetValue("Sanctified_Retribution_Auras_Talent");
    else
        val = SpellCalc_settings.auraEffectToggleSactifiedRetribution and 3 or 0;
    end
    if val > 0 then
        if apply then
            _addon:ApplyAuraEffect(name, sanctifiedRetributionAura, val, auraId, fromPlayer);
        else
            _addon:RemoveAuraEffect(name, sanctifiedRetributionAura, val, auraId, fromPlayer);
        end
    end
end);
_addon.aurasPlayer[19746] = sanctifiedRetribution; -- Conc
_addon.aurasPlayer[32223] = sanctifiedRetribution; -- Crusader
_addon.aurasPlayer[465] = sanctifiedRetribution; -- Devotion 1 - 10
_addon.aurasPlayer[10290] = sanctifiedRetribution;
_addon.aurasPlayer[643] = sanctifiedRetribution;
_addon.aurasPlayer[10291] = sanctifiedRetribution;
_addon.aurasPlayer[1032] = sanctifiedRetribution;
_addon.aurasPlayer[10292] = sanctifiedRetribution;
_addon.aurasPlayer[10293] = sanctifiedRetribution;
_addon.aurasPlayer[27149] = sanctifiedRetribution;
_addon.aurasPlayer[48941] = sanctifiedRetribution;
_addon.aurasPlayer[48942] = sanctifiedRetribution;
_addon.aurasPlayer[7294] = sanctifiedRetribution; -- Retribution 1-7
_addon.aurasPlayer[10298] = sanctifiedRetribution;
_addon.aurasPlayer[10299] = sanctifiedRetribution;
_addon.aurasPlayer[10300] = sanctifiedRetribution;
_addon.aurasPlayer[10301] = sanctifiedRetribution;
_addon.aurasPlayer[27150] = sanctifiedRetribution;
_addon.aurasPlayer[54043] = sanctifiedRetribution;
_addon.aurasPlayer[19876] = sanctifiedRetribution; -- SR
_addon.aurasPlayer[19895] = sanctifiedRetribution;
_addon.aurasPlayer[19896] = sanctifiedRetribution;
_addon.aurasPlayer[27151] = sanctifiedRetribution;
_addon.aurasPlayer[48943] = sanctifiedRetribution;
_addon.aurasPlayer[19888] = sanctifiedRetribution; -- FrR
_addon.aurasPlayer[19897] = sanctifiedRetribution;
_addon.aurasPlayer[19898] = sanctifiedRetribution;
_addon.aurasPlayer[27152] = sanctifiedRetribution;
_addon.aurasPlayer[48945] = sanctifiedRetribution;
_addon.aurasPlayer[19891] = sanctifiedRetribution; -- FiR
_addon.aurasPlayer[19899] = sanctifiedRetribution;
_addon.aurasPlayer[19900] = sanctifiedRetribution;
_addon.aurasPlayer[27153] = sanctifiedRetribution;
_addon.aurasPlayer[48947] = sanctifiedRetribution;
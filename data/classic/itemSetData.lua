-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);

---@type ItemSetDataTable
_addon.itemSetData = {
    [121] = {
        name = "Cadaverous Garb",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 2,
                need = 5,
            },
        }
    },
    [143] = {
        name = "Devilsaur Armor",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 2,
                need = 2,
            },
        }
    },
    [163] = {
        name = "Chain of the Scarlet Crusade",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
                affectMask = 32,
                value = 15,
                need = 5,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER_RANGED,
                affectMask = 32,
                value = 0,
                need = 5,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 1,
                need = 6,
            },
        }
    },
    [443] = {
        name = "Bloodsoul Embrace",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
                value = 12,
                need = 3,
            },
        }
    },
    [462] = {
        name = "Zanzil's Concentration",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                value = 1,
                need = 2,
            },
        }
    },
    [489] = {
        name = "Black Dragon Mail",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 1,
                need = 2,
            },
        }
    },
    [490] = {
        name = "Green Dragon Mail",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
                value = 3,
                need = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.FSR_SPIRIT_REGEN,
                value = 15,
                need = 3,
            },
        }
    },
    [521] = {
        name = "Dreamwalker Raiment",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.ILLUMINATION,
                value = 30,
                need = 8,
            },
        }
    },
    [529] = {
        name = "Plagueheart Raiment",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
                affectSpell = {2, 0, 0, 0},
                value = 12,
                need = 4,
            },
        }
    },
    [533] = {
        name = "Battlegear of Undead Slaying",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
                affectMask = 32,
                value = 2,
                need = 3,
            },
        }
    },
    [534] = {
        name = "Undead Slayer's Armor",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
                affectMask = 32,
                value = 2,
                need = 3,
            },
        }
    },
    [535] = {
        name = "Garb of the Undead Slayer",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
                affectMask = 32,
                value = 2,
                need = 3,
            },
        }
    },
    [536] = {
        name = "Regalia of Undead Cleansing",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
                affectMask = 32,
                value = 2,
                need = 3,
            },
        }
    },
    [1570] = {
        name = "Twilight Invoker's Vestments",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 1,
                need = 3,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                value = 1,
                need = 3,
            },
        }
    },
    [1577] = {
        name = "Blackfathom Avenger's Mail",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 1,
                need = 3,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                value = 1,
                need = 3,
            },
        }
    },
    [1578] = {
        name = "Blackfathom Slayer's Leather",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 1,
                need = 3,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                value = 1,
                need = 3,
            },
        }
    },
    [1579] = {
        name = "Blackfathom Elementalist's Hide",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 1,
                need = 3,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                value = 1,
                need = 3,
            },
        }
    },
    [1586] = {
        name = "Insulated Sorceror's Leathers",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {5, 0, 0, 0},
                value = 2,
                need = 3,
            },
        }
    },
    [1587] = {
        name = "Hyperconductive Wizard's Attire",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 1,
                need = 2,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                value = 1,
                need = 2,
            },
        }
    },
    [1588] = {
        name = "Hyperconductive Mender's Meditation",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
                value = 7,
                need = 3,
            },
        }
    },
    [1589] = {
        name = "H.A.Z.A.R.D. Suit",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
                value = 1,
                need = 3,
            },
            {
                type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
                value = 1,
                need = 3,
            },
        }
    },
    [1592] = {
        name = "Shockforged Warplate",
        effects = {
            {
                type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
                affectSpell = {2097152, 65536, 0, 0},
                value = 2,
                need = 3,
            },
        }
    },
}

---@type SetItemDataTable
_addon.setItemData = {
    [14637] = 121,
    [14636] = 121,
    [14640] = 121,
    [14638] = 121,
    [14641] = 121,
    [15062] = 143,
    [15063] = 143,
    [10329] = 163,
    [10332] = 163,
    [10328] = 163,
    [10331] = 163,
    [10330] = 163,
    [10333] = 163,
    [19690] = 443,
    [19691] = 443,
    [19692] = 443,
    [19893] = 462,
    [19905] = 462,
    [19893] = 462,
    [19905] = 462,
    [16984] = 489,
    [15050] = 489,
    [15052] = 489,
    [15051] = 489,
    [15045] = 490,
    [15046] = 490,
    [20296] = 490,
    [22492] = 521,
    [22494] = 521,
    [22493] = 521,
    [22490] = 521,
    [22489] = 521,
    [22491] = 521,
    [22488] = 521,
    [22495] = 521,
    [23064] = 521,
    [22510] = 529,
    [22511] = 529,
    [22506] = 529,
    [22509] = 529,
    [22505] = 529,
    [22504] = 529,
    [22508] = 529,
    [22507] = 529,
    [23063] = 529,
    [23090] = 533,
    [23087] = 533,
    [23078] = 533,
    [23081] = 534,
    [23089] = 534,
    [23093] = 534,
    [23088] = 535,
    [23082] = 535,
    [23092] = 535,
    [23091] = 536,
    [23084] = 536,
    [23085] = 536,
    [209683] = 1570,
    [209671] = 1570,
    [209669] = 1570,
    [211506] = 1577,
    [211504] = 1577,
    [211505] = 1577,
    [211510] = 1578,
    [211511] = 1578,
    [211512] = 1578,
    [211507] = 1579,
    [211508] = 1579,
    [211509] = 1579,
    [213312] = 1586,
    [213331] = 1586,
    [213342] = 1586,
    [213311] = 1587,
    [213336] = 1587,
    [213329] = 1587,
    [213310] = 1588,
    [213328] = 1588,
    [213337] = 1588,
    [213316] = 1589,
    [213330] = 1589,
    [213335] = 1589,
    [216486] = 1592,
    [216485] = 1592,
    [216484] = 1592,
}
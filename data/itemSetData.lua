---@type AddonEnv
local _addon = select(2, ...);

local PRAYER_OF_HEALING = GetSpellInfo(10960);
local SHADOW_WORD_PAIN = GetSpellInfo(589);
local FIREBALL = GetSpellInfo(3140);
local FROST_BOLT = GetSpellInfo(837);
local ARCANE_MISSILES = GetSpellInfo(7268);
local DRAIN_LIFE = GetSpellInfo(689);
local CORRUPTION = GetSpellInfo(172);
local IMMOLATE = GetSpellInfo(348);
local THORNS = GetSpellInfo(782);
local STARFIRE = GetSpellInfo(2912);
local REJUVENATION = GetSpellInfo(1058);
local EARTH_SHOCK = GetSpellInfo(8042);
local FLAME_SHOCK = GetSpellInfo(8050);
local FROST_SHOCK = GetSpellInfo(8056);
local RENEW = GetSpellInfo(139);
local CHAIN_HEAL = GetSpellInfo(1064);
local CHAIN_LIGHTNING = GetSpellInfo(1064);

_addon.itemSetData = {
    [121] = {
        name = "Cadaverous Garb",
        effects = {
            [1] = {
                need = 5,
                effect = "Improves your chance to hit by $s1%.",
            },
        },
    },
    [143] = {
        name = "Devilsaur Armor",
        effects = {
            [1] = {
                need = 2,
                effect = "Improves your chance to hit by $s1%.",
            },
        },
    },
    [163] = {
        name = "Chain of the Scarlet Crusade",
        effects = {
            [1] = {
                need = 6,
                effect = "Improves your chance to hit by $s1%.",
            },
        },
    },
    [201] = {
        name = "Arcanist Regalia",
        effects = {
            [1] = {
                need = 5,
                effect = {
                    effect = _addon.EFFECT_TYPE.RESISTANCE_PEN,
                    affectSchool = _addon.SCHOOL_MASK.FIRE + _addon.SCHOOL_MASK.FROST + _addon.SCHOOL_MASK.NATURE + _addon.SCHOOL_MASK.SHADOW + _addon.SCHOOL_MASK.ARCANE,
                    value = 10,
                }
            },
        },
    },
    [202] = {
        name = "Vestments of Prophecy",
        effects = {
            [1] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {PRAYER_OF_HEALING},
                    value = 25,
                }
            },
        },
    },
    [203] = {
        name = "Felheart Raiment",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
                    affectSpell = {DRAIN_LIFE},
                    value = 15,
                }
            },
        },
    },
    [205] = {
        name = "Cenarion Raiment",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_FLAT_VALUE,
                    affectSpell = {THORNS},
                    value = 4,
                }
            },
        },
    },
    [206] = {
        name = "Giantstalker Armor",
        effects = {
            [1] = {
                need = 8,
                effect = "Increases the damage of Multi-shot and Volley by $s1%.",
            },
        },
    },
    [207] = {
        name = "The Earthfury",
        effects = {
            [1] = {
                need = 5,
                effect = {
                    effect = _addon.EFFECT_TYPE.EARTHFURY_RETURN,
                    value = 1,
                }
            },
        },
    },
    [210] = {
        name = "Netherwind Regalia",
        effects = {
            [1] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.MAGE_NWR_PROC,
                    affectSpell = {ARCANE_MISSILES, FROST_BOLT, FIREBALL},
                    value = 1
                }
            },
        },
    },
    [211] = {
        name = "Vestments of Transcendence",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.FSR_REGEN,
                    value = 15,
                }
            },
        },
    },
    [213] = {
        name = "Bloodfang Armor",
        effects = {
            [1] = {
                need = 3,
                effect = "Increases the chance to apply poisons to your target by $s1%.",
            },
            [2] = {
                need = 8,
                effect = "Gives the Rogue a chance to inflict $23580s1 damage on the target and heal the Rogue for $23580s2 health every $23580t2 sec. for $23580d. on a melee hit.",
            },
        },
    },
    [214] = {
        name = "Stormrage Raiment",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.FSR_REGEN,
                    value = 15,
                }
            },
            [2] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_DURATION,
                    affectSpell = {REJUVENATION},
                    value = 3,
                }
            },
        },
    },
    [216] = {
        name = "The Ten Storms",
        effects = {
            {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
                    affectSpell = {CHAIN_HEAL},
                    value = 30,
                }
            },
        },
    },
    [217] = {
        name = "Judgement Armor",
        effects = {
            [1] = {
                need = 8,
                effect = "Inflicts $23590s1 additional Holy damage on the target of a Paladin's Judgement.",
            },
        },
    },
    [218] = {
        name = "Battlegear of Wrath",
        effects = {
            [1] = {
                need = 5,
                effect = "$h% chance after using an offensive ability requiring rage that your next offensive ability requires $/10;21887s1 less rage to use.",
            },
        },
    },
    [301] = {
        name = "Champion's Earthshaker",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {FROST_SHOCK, EARTH_SHOCK, FLAME_SHOCK},
                    perPoint = 2
                }
            },
        },
    },
    [386] = {
        name = "Warlord's Earthshaker",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {FROST_SHOCK, EARTH_SHOCK, FLAME_SHOCK},
                    perPoint = 2
                }
            },
        },
    },
    [443] = {
        name = "Bloodsoul Embrace",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MP5,
                    value = 12,
                }
            },
        },
    },
    -- This should appear in GetSpellHitModifier()
    -- [462] = {
    --     name = "Zanzil's Concentration",
    --     effects = {
    --         [1] = {
    --             need = 2,
    --             effect = {
    --                 effect = _addon.EFFECT_TYPE.MOD_HIT_SPELL,
    --                 value = 1,
    --             }
    --         },
    --     },
    -- },
    [473] = {
        name = "The Highlander's Intent",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSchool = _addon.SCHOOL_MASK.ALL,
                    value = 1,
                }
            },
        },
    },
    [475] = {
        name = "Freethinker's Armor",
        effects = {
            [1] = {
                need = 2,
                effect = {
                    effect = _addon.EFFECT_TYPE.MP5,
                    value = 4,
                }
            },
        },
    },
    [476] = {
        name = "Augur's Regalia",
        effects = {
            [1] = {
                need = 2,
                effect = {
                    effect = _addon.EFFECT_TYPE.MP5,
                    value = 4,
                }
            },
        },
    },
    [479] = {
        name = "Haruspex's Garb",
        effects = {
            [1] = {
                need = 2,
                effect = {
                    effect = _addon.EFFECT_TYPE.MP5,
                    value = 4,
                }
            },
            [2] = {
                need = 5,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {STARFIRE},
                    value = 3,
                }
            },
        },
    },
    [481] = {
        name = "Demoniac's Threads",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
                    affectSpell = {CORRUPTION},
                    value = 2,
                }
            },
        },
    },
    [489] = {
        name = "Black Dragon Mail",
        effects = {
            [1] = {
                need = 2,
                effect = "Improves your chance to hit by $s1%.",
            },
        },
    },
    [490] = {
        name = "Green Dragon Mail",
        effects = {
            [1] = {
                need = 2,
                effect = {
                    effect = _addon.EFFECT_TYPE.MP5,
                    value = 3,
                }
            },
            [2] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.FSR_REGEN,
                    value = 15,
                }
            },
        },
    },
    [494] = {
        name = "Symbols of Unending Life",
        effects = {
            [1] = {
                need = 3,
                effect = "Your finishing moves now refund 30 energy on a Miss, Dodge, Block, or Parry.",
            },
        },
    },
    [496] = {
        name = "Conqueror's Battlegear",
        effects = {
            [1] = {
                need = 5,
                effect = "Increase the Slow effect and damage of Thunder Clap by $s1%.",
            },
        },
    },
    [497] = {
        name = "Deathdealer's Embrace",
        effects = {
            [1] = {
                need = 5,
                effect = "$s1% increased damage to your Eviscerate ability.",
            },
        },
    },
    [499] = {
        name = "Doomcaller's Attire",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
                    affectSpell = {IMMOLATE},
                    value = 5,
                }
            },
        },
    },
    [502] = {
        name = "Gift of the Gathering Storm",
        effects = {
            {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
                    affectSpell = {CHAIN_LIGHTNING},
                    value = 5,
                }
            },
        },
    },
    [504] = {
        name = "Trappings of Vaulted Secrets",
        effects = {
            [1] = {
                need = 3,
                effect = "$s1% increase to the total damage absorbed by Mana Shield.",
            },
        },
    },
    [506] = {
        name = "Battlegear of Eternal Justice",
        effects = {
            [1] = {
                need = 3,
                effect = "20% chance to regain 100 mana when you cast a Judgement.",
            },
        },
    },
    [507] = {
        name = "Garments of the Oracle",
        effects = {
            [1] = {
                need = 5,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_DURATION,
                    affectSpell = {RENEW},
                    value = 3,
                }
            },
        },
    },
    [508] = {
        name = "Finery of Infinite Wisdom",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
                    affectSpell = {SHADOW_WORD_PAIN},
                    value = 5,
                }
            },
        },
    },
    [521] = {
        name = "Dreamwalker Raiment",
        effects = {
            [1] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.ILLUMINATION,
                    value = 30
                }
            },
        },
    },
    [523] = {
        name = "Dreadnaught's Battlegear",
        effects = {
            [1] = {
                need = 2,
                effect = "Increases the damage done by your Revenge ability by $s1.",
            },
        },
    },
    [524] = {
        name = "Bonescythe Armor",
        effects = {
            [1] = {
                need = 4,
                effect = "Your Backstab, Sinister Strike, and Hemorrhage critical hits cause you to regain $28813s1 energy.",
            },
        },
    },
    [527] = {
        name = "The Earthshatterer",
        effects = {
            [1] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.CONDITION_TRIGGER,
                    value = _addon.BUFF_CONDITIONS.EARTHSHATTERER_8PCS
                }
            },
        },
    },
    [529] = {
        name = "Plagueheart Raiment",
        effects = {
            [1] = {
                need = 4,
                effect = "Increases damage caused by your Corruption by $s1%.",
            },
        },
    },
    [533] = {
        name = "Battlegear of Undead Slaying",
        effects = {
            [1] = {
                need = 3,
                effect = "Increases your damage against undead by $s1%.",
            },
        },
    },
    [534] = {
        name = "Undead Slayer's Armor",
        effects = {
            [1] = {
                need = 3,
                effect = "Increases your damage against undead by $s1%.",
            },
        },
    },
    [535] = {
        name = "Garb of the Undead Slayer",
        effects = {
            [1] = {
                need = 3,
                effect = "Increases your damage against undead by $s1%.",
            },
        },
    },
    [536] = {
        name = "Regalia of Undead Cleansing",
        effects = {
            [1] = {
                need = 3,
                effect = "Increases your damage against undead by $s1%.",
            },
        },
    },
    [538] = {
        name = "Champion's Stormcaller",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {FROST_SHOCK, EARTH_SHOCK, FLAME_SHOCK},
                    perPoint = 2
                }
            },
        },
    },
};

_addon.setItemData = {
    [10328] = 163,
    [10329] = 163,
    [10330] = 163,
    [10331] = 163,
    [10332] = 163,
    [10333] = 163,
    [14636] = 121,
    [14637] = 121,
    [14638] = 121,
    [14640] = 121,
    [14641] = 121,
    [15045] = 490,
    [15046] = 490,
    [15050] = 489,
    [15051] = 489,
    [15052] = 489,
    [15062] = 143,
    [15063] = 143,
    [16518] = 301,
    [16519] = 301,
    [16521] = 301,
    [16522] = 301,
    [16523] = 301,
    [16524] = 301,
    [16573] = 386,
    [16574] = 386,
    [16577] = 386,
    [16578] = 386,
    [16579] = 386,
    [16580] = 386,
    [16803] = 203,
    [16804] = 203,
    [16805] = 203,
    [16806] = 203,
    [16807] = 203,
    [16808] = 203,
    [16809] = 203,
    [16810] = 203,
    [16811] = 202,
    [16812] = 202,
    [16813] = 202,
    [16814] = 202,
    [16815] = 202,
    [16816] = 202,
    [16817] = 202,
    [16818] = 210,
    [16819] = 202,
    [16828] = 205,
    [16829] = 205,
    [16830] = 205,
    [16831] = 205,
    [16832] = 213,
    [16833] = 205,
    [16834] = 205,
    [16835] = 205,
    [16836] = 205,
    [16837] = 207,
    [16838] = 207,
    [16839] = 207,
    [16840] = 207,
    [16841] = 207,
    [16842] = 207,
    [16843] = 207,
    [16844] = 207,
    [16845] = 206,
    [16846] = 206,
    [16847] = 206,
    [16848] = 206,
    [16849] = 206,
    [16850] = 206,
    [16851] = 206,
    [16852] = 206,
    [16897] = 214,
    [16898] = 214,
    [16899] = 214,
    [16900] = 214,
    [16901] = 214,
    [16902] = 214,
    [16903] = 214,
    [16904] = 214,
    [16905] = 213,
    [16906] = 213,
    [16907] = 213,
    [16908] = 213,
    [16909] = 213,
    [16910] = 213,
    [16911] = 213,
    [16912] = 210,
    [16913] = 210,
    [16914] = 210,
    [16915] = 210,
    [16916] = 210,
    [16917] = 210,
    [16918] = 210,
    [16919] = 211,
    [16920] = 211,
    [16921] = 211,
    [16922] = 211,
    [16923] = 211,
    [16924] = 211,
    [16925] = 211,
    [16926] = 211,
    [16943] = 216,
    [16944] = 216,
    [16945] = 216,
    [16946] = 216,
    [16947] = 216,
    [16948] = 216,
    [16949] = 216,
    [16950] = 216,
    [16951] = 217,
    [16952] = 217,
    [16953] = 217,
    [16954] = 217,
    [16955] = 217,
    [16956] = 217,
    [16957] = 217,
    [16958] = 217,
    [16959] = 218,
    [16960] = 218,
    [16961] = 218,
    [16962] = 218,
    [16963] = 218,
    [16964] = 218,
    [16965] = 218,
    [16966] = 218,
    [16984] = 489,
    [19588] = 475,
    [19605] = 481,
    [19609] = 476,
    [19613] = 479,
    [19690] = 443,
    [19691] = 443,
    [19692] = 443,
    [19825] = 475,
    [19826] = 475,
    [19827] = 475,
    [19828] = 476,
    [19829] = 476,
    [19830] = 476,
    [19838] = 479,
    [19839] = 479,
    [19840] = 479,
    [19848] = 481,
    [19849] = 481,
    -- [19893] = 462,
    -- [19905] = 462,
    [19952] = 475,
    [19955] = 479,
    [19956] = 476,
    [19957] = 481,
    [20033] = 481,
    [20296] = 490,
    [21329] = 496,
    [21330] = 496,
    [21331] = 496,
    [21332] = 496,
    [21333] = 496,
    [21334] = 499,
    [21335] = 499,
    [21336] = 499,
    [21337] = 499,
    [21338] = 499,
    [21359] = 497,
    [21360] = 497,
    [21361] = 497,
    [21362] = 497,
    [21364] = 497,
    [21400] = 504,
    [21398] = 504,
    [21399] = 504,
    [21395] = 506,
    [21396] = 506,
    [21397] = 506,
    [21407] = 494,
    [21408] = 494,
    [21409] = 494,
    [21410] = 508,
    [21411] = 508,
    [21412] = 508,
    [21413] = 504,
    [21414] = 504,
    [21415] = 504,
    [22416] = 523,
    [22417] = 523,
    [22418] = 523,
    [22419] = 523,
    [22420] = 523,
    [22421] = 523,
    [22422] = 523,
    [22423] = 523,
    [22464] = 527,
    [22465] = 527,
    [22466] = 527,
    [22467] = 527,
    [22468] = 527,
    [22469] = 527,
    [22470] = 527,
    [22471] = 527,
    [22476] = 524,
    [22477] = 524,
    [22478] = 524,
    [22479] = 524,
    [22480] = 524,
    [22481] = 524,
    [22482] = 524,
    [22483] = 524,
    [22488] = 521,
    [22489] = 521,
    [22490] = 521,
    [22491] = 521,
    [22492] = 521,
    [22493] = 521,
    [22494] = 521,
    [22495] = 521,
    [22504] = 529,
    [22505] = 529,
    [22506] = 529,
    [22507] = 529,
    [22508] = 529,
    [22509] = 529,
    [22510] = 529,
    [22511] = 529,
    [22857] = 538,
    [22867] = 538,
    [22876] = 538,
    [22887] = 538,
    [23078] = 533,
    [23081] = 534,
    [23082] = 535,
    [23084] = 536,
    [23085] = 536,
    [23087] = 533,
    [23088] = 535,
    [23089] = 534,
    [23090] = 533,
    [23091] = 536,
    [23092] = 535,
    [23093] = 534,
    [23259] = 538,
    [23260] = 538,
    [16802] = 201,
    [16799] = 201,
    [16795] = 201,
    [16800] = 201,
    [16801] = 201,
    [16796] = 201,
    [16797] = 201,
    [16798] = 201,
    [21349] = 507,
    [21350] = 507,
    [21348] = 507,
    [21352] = 507,
    [21351] = 507,
};


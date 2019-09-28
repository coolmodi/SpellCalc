local _, _addon = ...;

local PRAYER_OF_HEALING = GetSpellInfo(10960);
local SHADOW_WORD_PAIN = GetSpellInfo(589);
local FIREBALL = GetSpellInfo(3140);
local FROST_BOLT = GetSpellInfo(837);
local ARCANE_MISSILES = GetSpellInfo(7268);

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
                --effect = "Decreases the magical resistances of your spell targets by 10",
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
                --effect = "Increases your chance of a critical hit with Prayer of Healing by $s1%.",
            },
        },
    },
    [203] = {
        name = "Felheart Raiment",
        effects = {
            [1] = {
                need = 3, -- TODO: needed?
                effect = "Health or Mana gained from Drain Life and Drain Mana increased by $s1%.",
            },
        },
    },
    [205] = {
        name = "Cenarion Raiment",
        effects = {
            [1] = {
                need = 3,
                effect = "Damage dealt by Thorns increased by $s1 and duration increased by $s2%.",
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
                effect = "After casting your Healing Wave or Lesser Healing Wave spell, gives you a 25% chance to gain Mana equal to 35% of the base cost of the spell.",
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
                --effect = "$s1% chance after casting Arcane Missiles, Fireball, or Frostbolt that your next spell with a casting time under 10 seconds cast instantly.",
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
                --effect = "Allows $s1% of your Mana regeneration to continue while casting.",
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
            [1] = {
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
                effect = "Allows $s1% of your Mana regeneration to continue while casting.",
            },
        },
    },
    [216] = {
        name = "The Ten Storms",
        effects = {
            [1] = {
                need = 8,
                effect = "When you cast a Healing Wave or Lesser Healing Wave, there is a 25% chance the target also receives a free Lightning Shield that causes $23552s1 Nature damage to attacker on hit.",
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
                effect = "Improves your chance to get a critical strike with all Shock spells by $s1%.",
            },
        },
    },
    [386] = {
        name = "Warlord's Earthshaker",
        effects = {
            [1] = {
                need = 3,
                effect = "Improves your chance to get a critical strike with all Shock spells by $s1%.",
            },
        },
    },
    [443] = {
        name = "Bloodsoul Embrace",
        effects = {
            [1] = {
                need = 3,
                effect = "Restores $s1 mana per 5 sec.",
            },
        },
    },
    [462] = {
        name = "Zanzil's Concentration",
        effects = {
            [1] = {
                need = 2,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_HIT_SPELL,
                    value = 1,
                }
                --effect = "Improves your chance to hit with spells by $s1%.",
            },
        },
    },
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
                effect = "Restores $s1 mana per 5 sec.",
            },
        },
    },
    [476] = {
        name = "Augur's Regalia",
        effects = {
            [1] = {
                need = 2,
                effect = "Restores $s1 mana per 5 sec.",
            },
        },
    },
    [479] = {
        name = "Haruspex's Garb",
        effects = {
            [1] = {
                need = 2,
                effect = "Restores $s1 mana per 5 sec.",
            },
            [2] = {
                need = 5,
                effect = "Increases the critical hit chance of your Starfire spell $s1%.",
            },
        },
    },
    [481] = {
        name = "Demoniac's Threads",
        effects = {
            [1] = {
                need = 3, -- TODO P4: needed?
                effect = "Increases the damage of Corruption by $s1%.",
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
                effect = "Restores $s1 mana per 5 sec.",
            },
            [2] = {
                need = 3,
                effect = "Allows $s1% of your Mana regeneration to continue while casting.",
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
                need = 3, -- TODO P5: needed?
                effect = "$s1% increased damage on your Immolate spell.",
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
                --effect = "Increases the damage of your Shadow Word: Pain spell by $s1%.",
            },
        },
    },
    [521] = {
        name = "Dreamwalker Raiment",
        effects = {
            [1] = {
                need = 8,
                effect = "On Healing Touch critical hits, you regain 30% of the mana cost of the spell.",
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
                effect = "Your Lightning Shield spell also grants you $28820s1 mana per 5 sec. while active.",
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
                effect = "Improves your chance to get a critical strike with all Shock spells by $s1%.",
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
    [19893] = 462,
    [19905] = 462,
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


    
    --[9492] = 211,
    --[4112] = 211,
    --[20641] = 211,
    --[9683] = 211,
};


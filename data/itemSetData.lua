-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);

_addon.itemSetData = {
    [201] = {
        name = "Arcanist Regalia",
        effects = {
            [1] = {
                need = 5,
                effect = {
                    effect = _addon.EFFECT_TYPE.RESISTANCE_PEN,
                    affectSchool = 124,
                    value = 10,
                }
            },
        }
    },
    [202] = {
        name = "Vestments of Prophecy",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_GCD,
                    affectSpell = {2048, 0, 0, 0},
                    value = -100,
                }
            },
            [2] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {512, 0, 0, 0},
                    value = 25,
                }
            },
        }
    },
    [205] = {
        name = "Cenarion Raiment",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_FLAT_VALUE,
                    affectSpell = {256, 0, 0, 0},
                    value = 4,
                }
            },
        }
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
        }
    },
    [210] = {
        name = "Netherwind Regalia",
        effects = {
            [1] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.MAGE_NWR_PROC,
                    affectSpell = {33},
                    value = 1,
                }
            },
        }
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
        }
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
                    affectSpell = {16, 0, 0, 0},
                    value = 3,
                }
            },
        }
    },
    [216] = {
        name = "The Ten Storms",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
                    affectSpell = {256, 0, 0, 0},
                    value = 30,
                }
            },
        }
    },
    [301] = {
        name = "Champion's Earthshaker",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {-1877999616, 0, 0, 0},
                    value = 2,
                }
            },
        }
    },
    [345] = {
        name = "Champion's Threads",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_GCD,
                    affectSpell = {4, 0, 0, 0},
                    value = -200,
                }
            },
        }
    },
    [346] = {
        name = "Lieutenant Commander's Threads",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_GCD,
                    affectSpell = {4, 0, 0, 0},
                    value = -200,
                }
            },
        }
    },
    [386] = {
        name = "Warlord's Earthshaker",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {-1877999616, 0, 0, 0},
                    value = 2,
                }
            },
        }
    },
    [391] = {
        name = "Warlord's Threads",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_GCD,
                    affectSpell = {4, 0, 0, 0},
                    value = -200,
                }
            },
        }
    },
    [392] = {
        name = "Field Marshal's Threads",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_GCD,
                    affectSpell = {4, 0, 0, 0},
                    value = -200,
                }
            },
        }
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
        }
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
        }
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
            [2] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_DURATION,
                    affectSpell = {-2147483648, 0, 0, 0},
                    value = 1,
                }
            },
        }
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
                    affectSpell = {4, 0, 0, 0},
                    value = 3,
                }
            },
        }
    },
    [481] = {
        name = "Demoniac's Threads",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                    affectSpell = {2, 0, 0, 0},
                    value = 2,
                }
            },
        }
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
        }
    },
    [499] = {
        name = "Doomcaller's Attire",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
                    affectSpell = {4, 0, 0, 0},
                    value = 5,
                }
            },
        }
    },
    [502] = {
        name = "Gift of the Gathering Storm",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST,
                    affectSpell = {2, 0, 0, 0},
                    value = 5,
                }
            },
        }
    },
    [504] = {
        name = "Trappings of Vaulted Secrets",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
                    affectSpell = {32768, 0, 0, 0},
                    value = 15,
                }
            },
        }
    },
    [507] = {
        name = "Garments of the Oracle",
        effects = {
            [1] = {
                need = 5,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_DURATION,
                    affectSpell = {64, 0, 0, 0},
                    value = 3,
                }
            },
        }
    },
    [508] = {
        name = "Finery of Infinite Wisdom",
        effects = {
            [1] = {
                need = 3,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_EFFECT,
                    affectSpell = {32768, 0, 0, 0},
                    value = 5,
                }
            },
        }
    },
    [521] = {
        name = "Dreamwalker Raiment",
        effects = {
            [1] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.ILLUMINATION,
                    value = 30,
                }
            },
        }
    },
    [527] = {
        name = "The Earthshatterer",
        effects = {
            [1] = {
                need = 8,
                effect = {
                    effect = _addon.EFFECT_TYPE.CONDITION_TRIGGER,
                    value = _addon.BUFF_CONDITIONS.EARTHSHATTERER_8PCS,
                }
            },
        }
    },
    [529] = {
        name = "Plagueheart Raiment",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_DMG_DONE,
                    affectSpell = {2, 0, 0, 0},
                    value = 12,
                }
            },
        }
    },
    [538] = {
        name = "Champion's Stormcaller",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.MOD_CRIT,
                    affectSpell = {-1877999616, 0, 0, 0},
                    value = 2,
                }
            },
        }
    },
    [541] = {
        name = "Champion's Dreadgear",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_GCD,
                    affectSpell = {4, 0, 0, 0},
                    value = -200,
                }
            },
        }
    },
    [547] = {
        name = "Lieutenant Commander's Dreadgear",
        effects = {
            [1] = {
                need = 4,
                effect = {
                    effect = _addon.EFFECT_TYPE.SPELLMOD_GCD,
                    affectSpell = {4, 0, 0, 0},
                    value = -200,
                }
            },
        }
    },
}

_addon.setItemData = {
    [16799] = 201,
    [16795] = 201,
    [16800] = 201,
    [16801] = 201,
    [16796] = 201,
    [16797] = 201,
    [16798] = 201,
    [16813] = 202,
    [16817] = 202,
    [16812] = 202,
    [16814] = 202,
    [16816] = 202,
    [16815] = 202,
    [16819] = 202,
    [16829] = 205,
    [16830] = 205,
    [16833] = 205,
    [16831] = 205,
    [16834] = 205,
    [16835] = 205,
    [16836] = 205,
    [16837] = 207,
    [16840] = 207,
    [16841] = 207,
    [16844] = 207,
    [16839] = 207,
    [16842] = 207,
    [16843] = 207,
    [16918] = 210,
    [16912] = 210,
    [16914] = 210,
    [16917] = 210,
    [16913] = 210,
    [16915] = 210,
    [16916] = 210,
    [16926] = 211,
    [16919] = 211,
    [16921] = 211,
    [16920] = 211,
    [16922] = 211,
    [16924] = 211,
    [16923] = 211,
    [16898] = 214,
    [16904] = 214,
    [16897] = 214,
    [16900] = 214,
    [16899] = 214,
    [16901] = 214,
    [16902] = 214,
    [16943] = 216,
    [16950] = 216,
    [16945] = 216,
    [16948] = 216,
    [16949] = 216,
    [16947] = 216,
    [16946] = 216,
    [16518] = 301,
    [16522] = 301,
    [16523] = 301,
    [16521] = 301,
    [16524] = 301,
    [17577] = 345,
    [17572] = 345,
    [17571] = 345,
    [17570] = 345,
    [17573] = 345,
    [17564] = 346,
    [17568] = 346,
    [17567] = 346,
    [17569] = 346,
    [17566] = 346,
    [16578] = 386,
    [16580] = 386,
    [16573] = 386,
    [16574] = 386,
    [16579] = 386,
    [17588] = 391,
    [17593] = 391,
    [17591] = 391,
    [17590] = 391,
    [17592] = 391,
    [17580] = 392,
    [17583] = 392,
    [17584] = 392,
    [17579] = 392,
    [17578] = 392,
    [19691] = 443,
    [19692] = 443,
    [19588] = 475,
    [19827] = 475,
    [19826] = 475,
    [19825] = 475,
    [19956] = 476,
    [19830] = 476,
    [19829] = 476,
    [19828] = 476,
    [19955] = 479,
    [19840] = 479,
    [19839] = 479,
    [19838] = 479,
    [19957] = 481,
    [19848] = 481,
    [19849] = 481,
    [20033] = 481,
    [15046] = 490,
    [20296] = 490,
    [21338] = 499,
    [21335] = 499,
    [21334] = 499,
    [21336] = 499,
    [21398] = 502,
    [21399] = 502,
    [21413] = 504,
    [21415] = 504,
    [21350] = 507,
    [21348] = 507,
    [21352] = 507,
    [21351] = 507,
    [21411] = 508,
    [21412] = 508,
    [22494] = 521,
    [22493] = 521,
    [22490] = 521,
    [22489] = 521,
    [22491] = 521,
    [22488] = 521,
    [22495] = 521,
    [23064] = 521,
    [22470] = 527,
    [22469] = 527,
    [22466] = 527,
    [22465] = 527,
    [22467] = 527,
    [22464] = 527,
    [22471] = 527,
    [23065] = 527,
    [22511] = 529,
    [22506] = 529,
    [22509] = 529,
    [22505] = 529,
    [22504] = 529,
    [22508] = 529,
    [22507] = 529,
    [23063] = 529,
    [22867] = 538,
    [22876] = 538,
    [22887] = 538,
    [23259] = 538,
    [23260] = 538,
    [22855] = 541,
    [23255] = 541,
    [23256] = 541,
    [22881] = 541,
    [22884] = 541,
    [23297] = 547,
    [23282] = 547,
    [23283] = 547,
    [23310] = 547,
    [23311] = 547,
}
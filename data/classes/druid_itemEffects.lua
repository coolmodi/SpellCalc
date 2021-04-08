-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "DRUID" then
    return;
end

_addon.itemEffects[16836] = { -- Cenarion Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16829] = { -- Cenarion Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[16833] = { -- Cenarion Vestments
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[16900] = { -- Stormrage Cover
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16902] = { -- Stormrage Pauldrons
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16903] = { -- Stormrage Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16901] = { -- Stormrage Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[16835] = { -- Cenarion Leggings
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[16828] = { -- Cenarion Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21354] = { -- Genesis Shoulderpads
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[21355] = { -- Genesis Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21356] = { -- Genesis Trousers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[21565] = { -- Rune of Perfection
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 20,
    },
}

_addon.itemEffects[21566] = { -- Rune of Perfection
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 124,
        value = 10,
    },
}

_addon.itemEffects[21408] = { -- Band of Unending Life
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22495] = { -- Dreamwalker Wristguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22398] = { -- Idol of Rejuvenation
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {16, 0, 0, 0},
        value = 50,
    },
}

_addon.itemEffects[22399] = { -- Idol of Health
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32, 0, 0, 0},
        value = 100,
    },
}

_addon.itemEffects[23197] = { -- Idol of the Moon
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {2, 0, 0, 0},
        value = 33,
    },
}

_addon.itemEffects[22489] = { -- Dreamwalker Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[22488] = { -- Dreamwalker Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[22491] = { -- Dreamwalker Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22492] = { -- Dreamwalker Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[22494] = { -- Dreamwalker Girdle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[25643] = { -- Harold's Rejuvenating Broach
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {16, 0, 0, 0},
        value = 86,
    },
}

_addon.itemEffects[27518] = { -- Ivory Idol of the Moongoddess
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_SPELLPOWER,
        affectSpell = {4, 0, 0, 0},
        value = 55,
    },
}

_addon.itemEffects[28136] = { -- Gladiator's Wyrmhide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[28137] = { -- Gladiator's Wyrmhide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[28138] = { -- Gladiator's Wyrmhide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10,
    },
}

_addon.itemEffects[28139] = { -- Gladiator's Wyrmhide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[28140] = { -- Gladiator's Wyrmhide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[27744] = { -- Idol of Ursoc
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {0, 256, 0, 0},
        value = 8,
    },
}

_addon.itemEffects[28719] = { -- Grand Marshal's Wyrmhide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[28720] = { -- Grand Marshal's Wyrmhide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[28721] = { -- Grand Marshal's Wyrmhide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[28722] = { -- Grand Marshal's Wyrmhide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}

_addon.itemEffects[28723] = { -- Grand Marshal's Wyrmhide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[29086] = { -- Crown of Malorne
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10,
    },
}

_addon.itemEffects[29088] = { -- Legguards of Malorne
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10,
    },
}

_addon.itemEffects[29089] = { -- Shoulderguards of Malorne
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[29090] = { -- Handguards of Malorne
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[28568] = { -- Idol of the Avian Heart
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {32, 0, 0, 0},
        value = 136,
    },
}

_addon.itemEffects[29094] = { -- Britches of Malorne
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[29095] = { -- Pauldrons of Malorne
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[28871] = { -- High Warlord's Wyrmhide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[28872] = { -- High Warlord's Wyrmhide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[28873] = { -- High Warlord's Wyrmhide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[28874] = { -- High Warlord's Wyrmhide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}

_addon.itemEffects[28875] = { -- High Warlord's Wyrmhide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[31037] = { -- Thunderheart Helmet
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[31041] = { -- Thunderheart Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[31045] = { -- Thunderheart Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[31047] = { -- Thunderheart Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[30217] = { -- Nordrassil Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 9,
    },
}

_addon.itemEffects[30219] = { -- Nordrassil Headguard
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[30220] = { -- Nordrassil Life-Kilt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[30221] = { -- Nordrassil Life-Mantle
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[31025] = { -- Idol of the Avenger
    {
        type = _addon.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
        affectSpell = {1, 0, 0, 0},
        value = 25,
    },
}

_addon.itemEffects[30234] = { -- Nordrassil Wrath-Kilt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[31032] = { -- Thunderheart Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[32056] = { -- Merciless Gladiator's Wyrmhide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[32057] = { -- Merciless Gladiator's Wyrmhide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[32058] = { -- Merciless Gladiator's Wyrmhide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 12,
    },
}

_addon.itemEffects[32059] = { -- Merciless Gladiator's Wyrmhide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[32060] = { -- Merciless Gladiator's Wyrmhide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[31987] = { -- Merciless Gladiator's Kodohide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[31988] = { -- Merciless Gladiator's Kodohide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[31989] = { -- Merciless Gladiator's Kodohide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 12,
    },
}

_addon.itemEffects[31990] = { -- Merciless Gladiator's Kodohide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[31991] = { -- Merciless Gladiator's Kodohide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[31375] = { -- Gladiator's Kodohide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[31376] = { -- Gladiator's Kodohide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[31377] = { -- Gladiator's Kodohide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10,
    },
}

_addon.itemEffects[31378] = { -- Gladiator's Kodohide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[31379] = { -- Gladiator's Kodohide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[31584] = { -- High Warlord's Kodohide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[31585] = { -- High Warlord's Kodohide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[31586] = { -- High Warlord's Kodohide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[31587] = { -- High Warlord's Kodohide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}

_addon.itemEffects[31588] = { -- High Warlord's Kodohide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[31589] = { -- Grand Marshal's Kodohide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[31590] = { -- Grand Marshal's Kodohide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[31591] = { -- Grand Marshal's Kodohide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[31592] = { -- Grand Marshal's Kodohide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}

_addon.itemEffects[31593] = { -- Grand Marshal's Kodohide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[33885] = { -- Vindicator's Kodohide Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 9,
    },
}

_addon.itemEffects[33886] = { -- Vindicator's Kodohide Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 9,
    },
}

_addon.itemEffects[33887] = { -- Vindicator's Kodohide Bracers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[34444] = { -- Thunderheart Wristguards
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 1,
        value = 91,
    },
}

_addon.itemEffects[34445] = { -- Thunderheart Bracers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[34446] = { -- Thunderheart Bands
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[34554] = { -- Thunderheart Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[33915] = { -- Vindicator's Wyrmhide Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 9,
    },
}

_addon.itemEffects[33916] = { -- Vindicator's Wyrmhide Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 9,
    },
}

_addon.itemEffects[33917] = { -- Vindicator's Wyrmhide Bracers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[34571] = { -- Thunderheart Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10,
    },
}

_addon.itemEffects[34572] = { -- Thunderheart Footwraps
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[33672] = { -- Vengeful Gladiator's Dragonhide Helm
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[33673] = { -- Vengeful Gladiator's Dragonhide Legguards
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[33675] = { -- Vengeful Gladiator's Dragonhide Tunic
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[33767] = { -- Vengeful Gladiator's Wyrmhide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[33768] = { -- Vengeful Gladiator's Wyrmhide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[33769] = { -- Vengeful Gladiator's Wyrmhide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 9,
    },
}

_addon.itemEffects[33770] = { -- Vengeful Gladiator's Wyrmhide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 3,
    },
}

_addon.itemEffects[33771] = { -- Vengeful Gladiator's Wyrmhide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[33690] = { -- Vengeful Gladiator's Kodohide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[33691] = { -- Vengeful Gladiator's Kodohide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[33692] = { -- Vengeful Gladiator's Kodohide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 14,
    },
}

_addon.itemEffects[33693] = { -- Vengeful Gladiator's Kodohide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[33694] = { -- Vengeful Gladiator's Kodohide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 9,
    },
}

_addon.itemEffects[34999] = { -- Brutal Gladiator's Dragonhide Helm
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[35000] = { -- Brutal Gladiator's Dragonhide Legguards
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[35365] = { -- Kodohide Robe
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[35002] = { -- Brutal Gladiator's Dragonhide Tunic
    {
        type = _addon.EFFECT_TYPE.SCHOOLMOD_SPELL_PENETRATION,
        affectMask = 1,
        value = 84,
    },
}

_addon.itemEffects[35371] = { -- Wyrmhide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[35372] = { -- Wyrmhide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[35373] = { -- Wyrmhide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[35374] = { -- Wyrmhide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}

_addon.itemEffects[35375] = { -- Wyrmhide Robe
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[35470] = { -- Kodohide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}

_addon.itemEffects[35471] = { -- Wyrmhide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[35111] = { -- Brutal Gladiator's Wyrmhide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[35112] = { -- Brutal Gladiator's Wyrmhide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[35022] = { -- Brutal Gladiator's Kodohide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 10,
    },
}

_addon.itemEffects[35023] = { -- Brutal Gladiator's Kodohide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[35024] = { -- Brutal Gladiator's Kodohide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 16,
    },
}

_addon.itemEffects[35113] = { -- Brutal Gladiator's Wyrmhide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[35114] = { -- Brutal Gladiator's Wyrmhide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 5,
    },
}

_addon.itemEffects[35115] = { -- Brutal Gladiator's Wyrmhide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[35025] = { -- Brutal Gladiator's Kodohide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 7,
    },
}

_addon.itemEffects[35026] = { -- Brutal Gladiator's Kodohide Tunic
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[35139] = { -- Guardian's Kodohide Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[35150] = { -- Guardian's Wyrmhide Boots
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[35154] = { -- Guardian's Kodohide Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[35165] = { -- Guardian's Wyrmhide Belt
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 11,
    },
}

_addon.itemEffects[35169] = { -- Guardian's Kodohide Bracers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[35180] = { -- Guardian's Wyrmhide Bracers
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[35361] = { -- Kodohide Gloves
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 4,
    },
}

_addon.itemEffects[35362] = { -- Kodohide Helm
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 6,
    },
}

_addon.itemEffects[35363] = { -- Kodohide Legguards
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 8,
    },
}

_addon.itemEffects[35364] = { -- Kodohide Spaulders
    {
        type = _addon.EFFECT_TYPE.MOD_MANA_PER_5,
        value = 2,
    },
}


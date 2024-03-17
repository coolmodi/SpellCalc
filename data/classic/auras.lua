-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);

---@type table<integer, UnitAuraEffect[]>
_addon.aurasPlayer = {
    [228] = { -- Polymorph: Chicken
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = -66,
        },
    },
    [833] = { -- Green Tea
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 30,
        },
    },
    [785] = { -- True Fulfillment
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 300,
        },
    },
    [430] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 42,
        },
    },
    [431] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 104,
        },
    },
    [432] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 174,
        },
    },
    [802] = { -- Mutate Bug
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 1800,
        },
    },
    [1539] = { -- Feed Pet Effect
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 25000,
        },
    },
    [1133] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 249,
        },
    },
    [1135] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 332,
        },
    },
    [2639] = { -- Food
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 70,
        },
    },
    [3650] = { -- Sling Mud
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -50,
        },
    },
    [4150] = { -- Eye Peck
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -47,
        },
    },
    [3232] = { -- Gouge Stun Test
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 100,
        },
    },
    [5514] = { -- Darken Vision
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -25,
        },
    },
    [4312] = { -- Strider Presence
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = Infinity,
        },
    },
    [5884] = { -- Banshee Curse
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -10,
        },
    },
    [5229] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 100,
        },
    },
    [5570] = { -- Insect Swarm
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -2,
        },
    },
    [5677] = { -- Mana Spring
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 10,
        },
    },
    [6530] = { -- Sling Dirt
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -40,
        },
    },
    [12042] = { -- Arcane Power
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {551686903, 69632, 268697696, 540672},
            value = 30,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {4194437, 131072, 262144, 0},
            value = 30,
        },
    },
    [6488] = { -- Sarilus's Elementals Passive
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 90,
        },
    },
    [5917] = { -- Fumble
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -25,
        },
    },
    [29659] = { -- Positive Charge
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
            hasStacks = true,
        },
    },
    [1137] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 489,
        },
    },
    [7272] = { -- Dust Cloud
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -30,
        },
    },
    [6590] = { -- Silithid Swarm Passive
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 100,
        },
    },
    [8384] = { -- Pure Water
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 5,
        },
    },
    [9612] = { -- Ink Spray
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -50,
        },
    },
    [12880] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 5,
        },
    },
    [10494] = { -- Mana Spring
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 25,
        },
    },
    [10250] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 800,
        },
    },
    [10060] = { -- Power Infusion
        {
            type = _addon.CONST.EFFECT_TYPE.PCT_HEALING,
            value = 20,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 126,
            value = 20,
        },
    },
    [10491] = { -- Mana Spring
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 15,
        },
    },
    [11983] = { -- Steam Jet
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -30,
        },
    },
    [10493] = { -- Mana Spring
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 20,
        },
    },
    [11413] = { -- Echoes of Lordaeron
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 1,
        },
    },
    [11414] = { -- Echoes of Lordaeron
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 2,
        },
    },
    [29520] = { -- Echoes of Lordaeron
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 5,
        },
    },
    [11415] = { -- Echoes of Lordaeron
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 3,
        },
    },
    [11406] = { -- Elixir of Demonslaying
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
            affectMask = 4,
            value = 265,
        },
    },
    [12480] = { -- Hex of Jammal'an
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 400,
        },
    },
    [12941] = { -- Fel Curse Effect
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = -50,
        },
    },
    [12328] = { -- Death Wish
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 20,
        },
    },
    [12732] = { -- Shard of Afrasa
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 5,
        },
    },
    [12541] = { -- Ghoul Rot
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -10,
        },
    },
    [14204] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 25,
        },
    },
    [16599] = { -- Blessing of Shahram
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 83.33333333333333,
        },
    },
    [15007] = { -- Resurrection Sickness
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -75,
        },
    },
    [14202] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 15,
        },
    },
    [14203] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 20,
        },
    },
    [14201] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 10,
        },
    },
    [14751] = { -- Inner Focus
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-917225840, 622624, 4194304, 0},
            value = 25,
        },
    },
    [16629] = { -- Attuned Dampener
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -25,
        },
    },
    [15822] = { -- Dreamless Sleep
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 500,
        },
    },
    [1386] = { -- Echoes of Lordaeron
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 36,
            value = 5,
        },
    },
    [15473] = { -- Shadowform
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 15,
        },
    },
    [16609] = { -- Warchief's Blessing
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 10,
        },
    },
    [17447] = { -- Circle of Flame
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 375,
        },
    },
    [15604] = { -- Second Wind
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 150,
        },
    },
    [16191] = { -- Mana Tide
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 283.3333333333333,
        },
    },
    [16886] = { -- Nature's Grace
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {1, 0, 0, 0},
            value = -500,
        },
    },
    [16592] = { -- Shadowform
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 20,
        },
    },
    [16551] = { -- Felstriker
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 100,
        },
    },
    [20218] = { -- Sanctity Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 2,
            value = 10,
        },
    },
    [17352] = { -- Argent Avenger
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
            affectMask = 32,
            value = 200,
        },
    },
    [16337] = { -- Chromatic Chaos
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 20,
        },
    },
    [16166] = { -- Elemental Mastery
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-1877999613, 266240, 0, 1073741824},
            value = 100,
        },
    },
    [18115] = { -- Viewing Room Student Transform - Effect
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = -75,
        },
    },
    [16867] = { -- Banshee Curse
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -10,
        },
    },
    [17355] = { -- Mana Tide
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 383.3333333333333,
        },
    },
    [17052] = { -- Decay
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = -20,
            hasStacks = true,
        },
    },
    [17360] = { -- Mana Tide
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 483.3333333333333,
        },
    },
    [17252] = { -- Mark of the Dragon Lord
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 22,
        },
    },
    [18140] = { -- Blessed Sunfruit Juice
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 735,
        },
    },
    [17105] = { -- Banshee Curse
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -10,
        },
    },
    [17246] = { -- Possessed
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 100,
        },
    },
    [17328] = { -- Aura of Penitence
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 15,
        },
    },
    [17650] = { -- Altered Cauldron Toxin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -20,
        },
    },
    [18789] = { -- Burning Wish
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 4,
            value = 15,
        },
    },
    [18288] = { -- Amplify Curse
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {33792, 0, 0, 0},
            value = 50,
        },
    },
    [18173] = { -- Burning Adrenaline
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 100,
        },
    },
    [17639] = { -- Wail of the Banshee
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -10,
        },
    },
    [19393] = { -- Soul Burn
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = -50,
        },
    },
    [19854] = { -- Blessing of Wisdom
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 30,
        },
    },
    [18791] = { -- Touch of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 15,
        },
    },
    [19634] = { -- Mana Rejuvenation
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 83.33333333333333,
        },
    },
    [23768] = { -- Sayge's Dark Fortune of Damage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
        },
    },
    [20216] = { -- Divine Favor
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {2121728, 0, 0, 0},
            value = 100,
        },
    },
    [18163] = { -- Strength of Arko'narin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 30,
        },
    },
    [18194] = { -- Mana Regeneration
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 8,
        },
    },
    [20054] = { -- Vengeance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 12,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 2,
            value = 12,
        },
    },
    [20053] = { -- Vengeance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 9,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 2,
            value = 9,
        },
    },
    [19852] = { -- Blessing of Wisdom
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 20,
        },
    },
    [19574] = { -- Bestial Wrath
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 50,
        },
    },
    [19853] = { -- Blessing of Wisdom
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 25,
        },
    },
    [20050] = { -- Vengeance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 3,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 2,
            value = 3,
        },
    },
    [20052] = { -- Vengeance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 6,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 2,
            value = 6,
        },
    },
    [19135] = { -- Avatar
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 50,
        },
    },
    [19850] = { -- Blessing of Wisdom
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 15,
        },
    },
    [19742] = { -- Blessing of Wisdom
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 10,
        },
    },
    [21229] = { -- Frostbolt, Improved
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {32, 0, 0, 0},
            value = 45,
        },
    },
    [21153] = { -- Bonereaver's Edge
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 700,
            hasStacks = true,
        },
    },
    [20557] = { -- Beast Slaying
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 5,
        },
    },
    [20055] = { -- Vengeance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 15,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 2,
            value = 15,
        },
    },
    [19779] = { -- Inspire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 25,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 150,
        },
    },
    [25701] = { -- Brain Food
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 75,
        },
    },
    [21228] = { -- Arcane Missiles +1
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_DURATION,
            affectSpell = {2048, 0, 0, 0},
            value = 1000,
        },
    },
    [23021] = { -- Dragon Orb
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = -50,
        },
    },
    [21086] = { -- Encouragement
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 8,
            hasStacks = true,
        },
    },
    [21172] = { -- Grip of Command
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 75,
        },
    },
    [23619] = { -- Burning Adrenaline
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
            hasStacks = true,
        },
    },
    [22833] = { -- Booze Spit
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -75,
        },
    },
    [21048] = { -- Curse of the Tribes
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -15,
        },
    },
    [21230] = { -- Fireball, Improved DoT
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {1, 0, 0, 0},
            value = 24,
        },
    },
    [21095] = { -- Separation Anxiety
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [21955] = { -- Razorlash Root
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 300,
        },
    },
    [21174] = { -- Aura of Battle
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 50,
        },
    },
    [23016] = { -- Lash of Submission
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = -10,
            hasStacks = true,
        },
    },
    [22688] = { -- Tree Form
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 25,
        },
    },
    [23676] = { -- Minigun
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -50,
        },
    },
    [24178] = { -- Will of Hakkar
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [22988] = { -- Illidan's Fury
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
            affectMask = 4,
            value = 1400,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 20,
        },
    },
    [23720] = { -- Blessing of the Black Book
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 100,
        },
    },
    [23620] = { -- Burning Adrenaline
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 100,
        },
    },
    [23698] = { -- Alterac Spring Water
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 735,
        },
    },
    [23492] = { -- Separation Anxiety
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 300,
        },
    },
    [24109] = { -- Enlarge
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 50,
        },
    },
    [23557] = { -- Improved Thorns Damage
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {256, 0, 0, 0},
            value = 4,
        },
    },
    [23257] = { -- Demonic Frenzy
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 300,
        },
    },
    [23108] = { -- Blessing of Nordrassil
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 625,
        },
    },
    [23355] = { -- Feed Pet Effect (Quest Test)
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 25000,
        },
    },
    [22667] = { -- Shadow Command
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 300,
        },
    },
    [22917] = { -- Shadowform
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 40,
        },
    },
    [22660] = { -- Dire Wolf Form
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 50,
        },
    },
    [23550] = { -- Increased Prayer of Healing Criticals
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {512, 0, 0, 0},
            value = 25,
        },
    },
    [22734] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 700,
        },
    },
    [23734] = { -- Nature Aligned
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 126,
            value = 20,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.PCT_HEALING,
            value = 20,
        },
    },
    [23505] = { -- Berserking
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 30,
        },
    },
    [23260] = { -- Entropic Sting
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -325,
        },
    },
    [24450] = { -- Prowl
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 20,
        },
    },
    [24453] = { -- Prowl
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 50,
        },
    },
    [24312] = { -- Level Up
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 10,
            hasStacks = true,
        },
    },
    [23674] = { -- Test Eng Haste
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -75,
        },
    },
    [24499] = { -- Energized Shield
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {1024, 0, 0, 0},
            value = 100,
        },
    },
    [22661] = { -- Enervate
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = -1000,
        },
    },
    [23574] = { -- Battle Standard
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
        },
    },
    [23576] = { -- Battle Standard
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
        },
    },
    [24610] = { -- Pagle's Broken Reel
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = 10,
        },
    },
    [24360] = { -- Greater Dreamless Sleep
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 875,
        },
    },
    [24884] = { -- Earthen Sigil
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 200,
        },
    },
    [24363] = { -- Mana Regeneration
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 12,
        },
    },
    [24378] = { -- Berserking
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 30,
        },
    },
    [24268] = { -- Mar'li's Brain Boost
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 60,
        },
    },
    [23849] = { -- Venoxis Transform
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 75,
        },
    },
    [27723] = { -- Dark Desire
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 2,
        },
    },
    [25176] = { -- Strength of Ossirian
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 300,
        },
    },
    [24974] = { -- Insect Swarm
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -2,
        },
    },
    [24692] = { -- Hakkar Power
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 20,
            hasStacks = true,
        },
    },
    [24086] = { -- Growth
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 25,
            hasStacks = true,
        },
    },
    [23513] = { -- Essence of the Red
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 2500,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 2500,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 250,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 250,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 1000,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 1000,
        },
    },
    [24991] = { -- Elemental Slayer
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 8,
            value = 40,
        },
    },
    [24544] = { -- Arcane Potency
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {2359296, 0, 0, 0},
            value = 5,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
            affectSpell = {2359296, 0, 0, 0},
            value = 50,
        },
    },
    [24402] = { -- Deafened
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = -10,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -10,
        },
    },
    [24352] = { -- Devilsaur Fury
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 2,
        },
    },
    [24318] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 50,
        },
    },
    [24833] = { -- Holy Mightstone
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_ATTACKPOWER,
            affectMask = 32,
            value = 300,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_FLAT_SPELLPOWER,
            affectMask = 32,
            value = 400,
        },
    },
    [24893] = { -- Black Sapphire
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_VALUE,
            affectSpell = {16384, 0, 0, 0},
            value = 222,
        },
    },
    [24853] = { -- Mana Spring
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 67.5,
        },
    },
    [24452] = { -- Prowl
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 35,
        },
    },
    [26198] = { -- Whisperings of C'Thun
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [25290] = { -- Blessing of Wisdom
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 33,
        },
    },
    [25918] = { -- Greater Blessing of Wisdom
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 33,
        },
    },
    [25697] = { -- Old Enriched Manna Biscuit
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 735,
        },
    },
    [25806] = { -- Creature of Nightmare
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [26195] = { -- Whisperings of C'Thun
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [26099] = { -- Battle Shout
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 100,
        },
    },
    [26072] = { -- Dust Cloud
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -85,
        },
    },
    [28681] = { -- Soul Revival
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
        },
    },
    [28682] = { -- Combustion
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {12582935, 69632, 262144, 0},
            value = 10,
            hasStacks = true,
        },
    },
    [25941] = { -- Well Fed
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 6,
        },
    },
    [26197] = { -- Whisperings of C'Thun
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [25696] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 735,
        },
    },
    [25703] = { -- Brain Food
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 135,
        },
    },
    [26166] = { -- Obsidian Insight
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 124,
            value = 100,
        },
    },
    [24543] = { -- Massive Destruction
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {997, 0, 131072, 0},
            value = 10,
        },
    },
    [25694] = { -- Well Fed
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 3,
        },
    },
    [24646] = { -- Avatar
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 500,
        },
    },
    [25889] = { -- Brain Food
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 300,
        },
    },
    [24975] = { -- Insect Swarm
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -2,
        },
    },
    [25656] = { -- Sand Trap
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -75,
        },
    },
    [25685] = { -- Energize
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 2500,
        },
    },
    [25790] = { -- Vengeance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 100,
        },
    },
    [26129] = { -- Enigma's Answer
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = 5,
            hasStacks = true,
        },
    },
    [27650] = { -- Vengeance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 100,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 126,
            value = 50,
        },
    },
    [24976] = { -- Insect Swarm
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -2,
        },
    },
    [24977] = { -- Insect Swarm
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -2,
        },
    },
    [27680] = { -- Berserk
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 500,
        },
    },
    [28410] = { -- Chains of Kel'Thuzad
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [26402] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 735,
        },
    },
    [26662] = { -- Berserk
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 500,
        },
    },
    [26475] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 551,
        },
    },
    [26481] = { -- Insight of the Qiraji
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 200,
            hasStacks = true,
        },
    },
    [26473] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 367,
        },
    },
    [25887] = { -- Brain Food
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 210,
        },
    },
    [25801] = { -- Frenzy Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 20,
        },
    },
    [26258] = { -- Whisperings of C'Thun
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [26259] = { -- Whisperings of C'Thun
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [25768] = { -- Mystical Disjunction
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = 50,
        },
    },
    [25773] = { -- Will of Weavil
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 500,
        },
    },
    [26261] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 735,
        },
    },
    [25894] = { -- Greater Blessing of Wisdom
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 30,
        },
    },
    [28498] = { -- Berserk
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 500,
        },
    },
    [28418] = { -- General's Warcry
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
        },
    },
    [28145] = { -- Power of the Guardian
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 11,
        },
    },
    [28419] = { -- General's Warcry
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 20,
        },
    },
    [29007] = { -- Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 489,
        },
    },
    [29660] = { -- Negative Charge
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
            hasStacks = true,
        },
    },
    [29039] = { -- Fizzy Energy Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 300,
        },
    },
    [28824] = { -- Totemic Power
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 28,
        },
    },
    [29131] = { -- Bloodrage
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 50,
        },
    },
    [28747] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 100,
        },
    },
    [28371] = { -- Frenzy
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 50,
        },
    },
    [29040] = { -- Fizzy Energy Drink
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 6,
        },
    },
    [30683] = { -- Echoes of Lordaeron
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 2,
        },
    },
    [28420] = { -- General's Warcry
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 30,
        },
    },
    [28798] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 150,
        },
    },
    [28468] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 150,
        },
    },
    [28470] = { -- Blood Tap
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 15,
            hasStacks = true,
        },
    },
    [28804] = { -- Epiphany
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 24,
        },
    },
    [29233] = { -- Beast of the Unseen Path
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 3,
        },
    },
    [28795] = { -- Holy Power
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 28,
        },
    },
    [28131] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 25,
        },
    },
    [29331] = { -- Copy of Dark Desire
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 2,
        },
    },
    [29332] = { -- Fire-toasted Bun
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = 2,
        },
    },
    [30880] = { -- Echoes of Lordaeron
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 1,
        },
    },
    [30682] = { -- Echoes of Lordaeron
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 3,
        },
    },
    [29534] = { -- Traces of Silithyst
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 5,
        },
    },
    [346285] = { -- Just Pretend
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 50,
        },
    },
    [355366] = { -- Warchief's Blessing
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 10,
        },
    },
    [365122] = { -- Berserk
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 500,
        },
    },
    [367873] = { -- Blinding Ash
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE,
            value = -50,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = -50,
        },
    },
    [367987] = { -- Burning Adrenaline
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
            hasStacks = true,
        },
    },
    [368371] = { -- Obsidian Fury
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 100,
            hasStacks = true,
        },
    },
    [368388] = { -- Berserk
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 900,
        },
    },
    [370548] = { -- Skeletal Artifact
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 10,
        },
    },
    [370767] = { -- Essence of C'Thun
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
            hasStacks = true,
        },
    },
    [370835] = { -- Positive Charge
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 1,
            hasStacks = true,
        },
    },
    [370836] = { -- Negative Charge
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 1,
            hasStacks = true,
        },
    },
    [371206] = { -- Servant of Chaos
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 200,
        },
    },
    [400573] = { -- Arcane Blast
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {4096, 32768, 268960064, 0},
            value = 15,
            hasStacks = true,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_OVER_TIME,
            affectSpell = {0, 0, 4096, 2},
            value = 15,
            hasStacks = true,
        },
    },
    [400589] = { -- Missile Barrage
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_TICKPERIOD,
            affectSpell = {2048, 0, 0, 0},
            value = -500,
        },
    },
    [401990] = { -- Shadowcrawl
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            value = 15,
        },
    },
    [402362] = { -- White
        {
            type = _addon.CONST.EFFECT_TYPE.PCT_HEALING,
            value = 10,
            hasStacks = true,
        },
    },
    [402368] = { -- Black
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 126,
            value = 10,
            hasStacks = true,
        },
    },
    [402906] = { -- Flagellation
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 25,
        },
    },
    [407791] = { -- Aku'mai's Rage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 25,
        },
    },
    [407805] = { -- Sacrifice Redeemed
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.PCT_HEALING,
            value = 10,
        },
    },
    [408755] = { -- Blood Offering
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -50,
        },
    },
    [409824] = { -- Lifebloom
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_GCD_MS,
            affectSpell = {16, 0, 0, 0},
            value = -500,
        },
    },
    [412322] = { -- Spell Power
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_CRIT_MULT,
            affectSpell = {551686903, 102472, 64, 0},
            value = 50,
        },
    },
    [412326] = { -- Enlightenment
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 126,
            value = 10,
        },
    },
    [412758] = { -- Incinerate
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 4,
            value = 25,
        },
    },
    [413685] = { -- Path of Arthas
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 125,
            value = 5,
            hasStacks = true,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.PCT_HEALING,
            value = -50,
            hasStacks = true,
        },
    },
    [415058] = { -- Guarded by the Light
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {24576, 65536, 0, 0},
            value = -50,
        },
    },
    [415423] = { -- Aspect of the Viper
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -10,
        },
    },
    [417045] = { -- Tiger's Fury
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 15,
        },
    },
    [417157] = { -- Starsurge
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {4, 0, 0, 0},
            value = 80,
        },
    },
    [420536] = { -- Stealth
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = -100,
        },
    },
    [422978] = { -- Coward!
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -20,
        },
    },
    [34074] = { -- Aspect of the Viper
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -50,
        },
    },
    [425098] = { -- Master of Subtlety
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
        },
    },
    [425234] = { -- Orbs of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 32,
            value = 15,
            hasStacks = true,
        },
    },
    [425336] = { -- Shamanistic Rage
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 25,
        },
    },
    [425415] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 10,
        },
    },
    [426303] = { -- Grimoire of Synergy
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 25,
        },
    },
    [426311] = { -- Shadow and Flame
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 36,
            value = 10,
        },
    },
    [426489] = { -- Manifesting Dreams
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 10,
            hasStacks = true,
        },
    },
    [427066] = { -- Enrage
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 10,
        },
    },
    [53672] = { -- Infusion of Light
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {-2147483648, 0, 0, 0},
            value = 10,
        },
    },
    [428489] = { -- Planar Shift
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = -30,
        },
    },
    [428738] = { -- Advanced Warding
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_EFFECT,
            affectSpell = {33032, 0, 0, 0},
            value = 100,
        },
    },
    [428878] = { -- Balefire Bolt
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_PCT_DAMAGE_HEALING,
            affectSpell = {0, 0, 0, 16384},
            value = 10,
            hasStacks = true,
        },
    },
    [429868] = { -- Void Madness
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 126,
            value = 10,
        },
    },
    [430352] = { -- Ashenvale Rallying Cry
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 5,
        },
    },
    [430947] = { -- Boon of Blackfathom
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = 3,
        },
    },
    [430948] = { -- Arcane Recovery
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 8,
        },
    },
    [430949] = { -- Arcane Accuracy
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = 1,
        },
    },
    [431111] = { -- Boon of Blackfathom
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = 3,
        },
    },
    [432041] = { -- Tidal Waves
        {
            type = _addon.CONST.EFFECT_TYPE.SPELLMOD_FLAT_CRIT_CHANCE,
            affectSpell = {128, 0, 0, 0},
            value = 25,
        },
    },
    [432069] = { -- Tangled Causality
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 20,
            value = -50,
        },
    },
    [433255] = { -- Shamanistic Rage
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 50,
        },
    },
    [434851] = { -- Minor Evocation
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 375,
        },
    },
    [434907] = { -- Amplified Circuitry
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 1,
            value = 25,
        },
    },
    [434941] = { -- Toxic Vigor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 25,
            hasStacks = true,
        },
    },
    [435167] = { -- Miniaturized Combustion Chamber
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 5,
        },
    },
    [435168] = { -- Guard of the Innovator
        {
            type = _addon.CONST.EFFECT_TYPE.MOD_MANA_PER_5,
            value = 12,
        },
    },
    [436365] = { -- Two-Handed Mastery
        {
            type = _addon.CONST.EFFECT_TYPE.GLOBAL_FLAT_HIT_CHANCE_SPELL,
            value = 10,
        },
    },
    [436387] = { -- Blessing of the Blood Loa
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_PCT_DAMAGE,
            affectMask = 127,
            value = 8,
        },
    },
    [436641] = { -- Blood Moon Copy
        {
            type = _addon.CONST.EFFECT_TYPE.VERSUSMOD_PCT_DAMAGE,
            value = 0,
        },
    },
}

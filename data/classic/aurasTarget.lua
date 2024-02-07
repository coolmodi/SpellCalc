-- GENERATED! DO NOT EDIT!

---@class AddonEnv
local _addon = select(2, ...);

---@type table<integer, UnitAuraEffect[]>
_addon.aurasTarget = {
    [465] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -55,
        },
    },
    [111] = { -- Time Step
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -20,
        },
    },
    [302] = { -- Savage Assault II
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 20,
        },
    },
    [602] = { -- Inner Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -720,
        },
    },
    [696] = { -- Demon Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -120,
        },
    },
    [823] = { -- Natural Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -50,
        },
    },
    [822] = { -- Magic Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -60,
        },
    },
    [687] = { -- Demon Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -40,
        },
    },
    [604] = { -- Dampen Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = -10,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -20,
        },
    },
    [1138] = { -- Crystal Protection
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -10,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -10,
        },
    },
    [588] = { -- Inner Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -315,
        },
    },
    [1008] = { -- Amplify Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = 15,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = 30,
        },
    },
    [673] = { -- Lesser Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -50,
        },
    },
    [834] = { -- Lesser Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -100,
        },
    },
    [871] = { -- Shield Wall
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -75,
        },
    },
    [27891] = { -- Disease Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 8,
            value = 80,
            hasStacks = true,
        },
    },
    [1490] = { -- Curse of the Elements
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 20,
            value = 45,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 20,
            value = 6,
        },
    },
    [27546] = { -- Faerie Dragon Form
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -50,
        },
    },
    [27555] = { -- Shred
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -75,
        },
    },
    [770] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 175,
        },
    },
    [849] = { -- Elemental Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -24,
        },
    },
    [7386] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 90,
            hasStacks = true,
        },
    },
    [778] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 285,
        },
    },
    [1086] = { -- Demon Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -300,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -6,
        },
    },
    [1663] = { -- Savage Assault III
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 35,
        },
    },
    [1664] = { -- Savage Assault IV
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 50,
        },
    },
    [1665] = { -- Savage Assault V
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 70,
        },
    },
    [994] = { -- Prayer of Protection II
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -26,
        },
    },
    [1126] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -25,
        },
    },
    [2381] = { -- Resistance (OLD)
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -6,
        },
    },
    [3356] = { -- Flame Lash
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = 10,
            hasStacks = true,
        },
    },
    [28769] = { -- Shadow Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -35,
        },
    },
    [2537] = { -- Crusader Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 6,
            hasStacks = true,
        },
    },
    [1515] = { -- Tame Beast
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -100,
        },
    },
    [3396] = { -- Corrosive Poison
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 60,
        },
    },
    [3220] = { -- Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -150,
        },
    },
    [4166] = { -- Vulnerable
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 30,
        },
    },
    [4149] = { -- Toughen Hide
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -118,
        },
    },
    [14539] = { -- Putrid Enzyme
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 8,
            value = 50,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 50,
        },
    },
    [14533] = { -- Disjunction
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 4,
            value = 50,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 16,
            value = 50,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 64,
            value = 50,
        },
    },
    [4154] = { -- Ferocity
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 60,
        },
    },
    [3247] = { -- Agonizing Pain
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 1,
        },
    },
    [3252] = { -- Shred
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 240,
        },
    },
    [3427] = { -- Infected Wound
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 3,
        },
    },
    [28770] = { -- Arcane Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 64,
            value = -35,
        },
    },
    [3574] = { -- Skin of Rock
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -320,
        },
    },
    [3260] = { -- Violent Shield Effect
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -720,
        },
    },
    [3264] = { -- Blood Howl
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 5,
        },
    },
    [3439] = { -- Wandering Plague
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 5,
        },
    },
    [3436] = { -- Wandering Plague
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 5,
        },
    },
    [4137] = { -- Bruise
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 132,
        },
    },
    [4139] = { -- Bruise
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 196,
        },
    },
    [4101] = { -- Enraging Bite
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 40,
        },
    },
    [4805] = { -- Distracting Spit
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 5,
        },
    },
    [5508] = { -- Cleave Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 100,
        },
    },
    [4109] = { -- Tough Shell
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -132,
        },
    },
    [4111] = { -- Tough Shell
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -196,
        },
    },
    [4084] = { -- Shadow Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -1,
        },
    },
    [4080] = { -- Frost Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -1,
        },
    },
    [4081] = { -- Nature Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -1,
        },
    },
    [5111] = { -- Living Flame Passive
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 16,
            value = 100,
        },
    },
    [4107] = { -- Tough Shell
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -84,
        },
    },
    [4244] = { -- Open Wound Effect
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 10,
        },
    },
    [5363] = { -- Thick Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -63,
        },
    },
    [5413] = { -- Noxious Catalyst
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = 3,
        },
    },
    [5367] = { -- Thick Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -147,
        },
    },
    [4948] = { -- Kinelory's Bear Form
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -400,
        },
    },
    [6117] = { -- Mage Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -5,
        },
    },
    [5480] = { -- Cleave Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 200,
        },
    },
    [5366] = { -- Thick Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -99,
        },
    },
    [4932] = { -- Ward of Myzrael
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = -40,
        },
    },
    [5404] = { -- Gazban Water Form
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -400,
        },
    },
    [4941] = { -- Stoneshield
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -1000,
        },
    },
    [4134] = { -- Bruise
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 84,
        },
    },
    [4135] = { -- Bruise
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 106,
        },
    },
    [5365] = { -- Thick Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -87,
        },
    },
    [4108] = { -- Tough Shell
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -106,
        },
    },
    [5232] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -65,
        },
    },
    [6685] = { -- Piercing Shot
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 580,
        },
    },
    [7020] = { -- Stoneform
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -20,
        },
    },
    [5234] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -150,
        },
    },
    [9749] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 395,
        },
    },
    [7120] = { -- Proudmoore's Defense
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -40,
        },
    },
    [7128] = { -- Inner Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -495,
        },
    },
    [91] = { -- Savage Assault
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 10,
        },
    },
    [6756] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -105,
        },
    },
    [7068] = { -- Veil of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -75,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [7301] = { -- Frost Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -200,
        },
    },
    [5810] = { -- Stone Skin
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = -15,
        },
    },
    [6016] = { -- Pierce Armor
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -50,
        },
    },
    [6950] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 24,
        },
    },
    [6873] = { -- Foul Chill
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 16,
            value = 50,
        },
    },
    [7300] = { -- Frost Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -110,
        },
    },
    [14517] = { -- Crusader Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 10,
            hasStacks = true,
        },
    },
    [1006] = { -- Inner Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -945,
        },
    },
    [3387] = { -- Rage of Thule
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 8,
        },
    },
    [7367] = { -- Infected Bite
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 5,
        },
    },
    [1032] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -505,
        },
    },
    [8450] = { -- Dampen Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = -20,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -40,
        },
    },
    [7302] = { -- Ice Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -290,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -6,
        },
    },
    [7320] = { -- Ice Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -380,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -9,
        },
    },
    [12279] = { -- Curse of Blood
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 1,
        },
    },
    [7139] = { -- Fel Stomp
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 10,
        },
    },
    [168] = { -- Frost Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -30,
        },
    },
    [7140] = { -- Expose Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 5,
        },
    },
    [3263] = { -- Touch of Ravenclaw
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 120,
        },
    },
    [6922] = { -- Curse of the Shadowhorn
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 3,
        },
    },
    [8455] = { -- Amplify Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = 30,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = 60,
        },
    },
    [706] = { -- Demon Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -210,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -3,
        },
    },
    [8282] = { -- Curse of Blood
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 1,
        },
    },
    [8245] = { -- Corrosive Acid
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 16,
        },
    },
    [9176] = { -- Holy Sunder
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 50,
        },
    },
    [7658] = { -- Curse of Recklessness
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 290,
        },
    },
    [643] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -275,
        },
    },
    [7659] = { -- Curse of Recklessness
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 465,
        },
    },
    [8223] = { -- Oops!
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 150,
        },
    },
    [8380] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 270,
            hasStacks = true,
        },
    },
    [8647] = { -- Expose Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 400,
        },
    },
    [8314] = { -- Rock Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -15,
        },
    },
    [8451] = { -- Dampen Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = -40,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -80,
        },
    },
    [704] = { -- Curse of Recklessness
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 140,
        },
    },
    [14518] = { -- Crusader Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 20,
            hasStacks = true,
        },
    },
    [7405] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 180,
            hasStacks = true,
        },
    },
    [9482] = { -- Amplify Flames
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 100,
        },
    },
    [9657] = { -- Shadow Shell
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -5000,
        },
    },
    [9574] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 30,
            hasStacks = true,
        },
    },
    [9806] = { -- Phantom Strike
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 100,
        },
    },
    [8191] = { -- Zeal
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -150,
        },
    },
    [8263] = { -- Elemental Protection Totem Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -52,
        },
    },
    [1719] = { -- Recklessness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 20,
        },
    },
    [10173] = { -- Dampen Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = -60,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -120,
        },
    },
    [8064] = { -- Sleepy
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 1,
            value = 100,
        },
    },
    [8649] = { -- Expose Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 725,
        },
    },
    [10951] = { -- Inner Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -1170,
        },
    },
    [10174] = { -- Dampen Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = -90,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -180,
        },
    },
    [8823] = { -- Crusader Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 10,
            hasStacks = true,
        },
    },
    [8824] = { -- Crusader Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 15,
            hasStacks = true,
        },
    },
    [9658] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 20,
            hasStacks = true,
        },
    },
    [8258] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -20,
        },
    },
    [9907] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 505,
        },
    },
    [8137] = { -- Silithid Pox
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 1,
            value = 10,
        },
    },
    [595] = { -- Prayer of Protection
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -18,
        },
    },
    [8650] = { -- Expose Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 1050,
        },
    },
    [10220] = { -- Ice Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -560,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -15,
        },
    },
    [10219] = { -- Ice Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -470,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -12,
        },
    },
    [8094] = { -- Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -120,
        },
    },
    [8095] = { -- Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -180,
        },
    },
    [8091] = { -- Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -60,
        },
    },
    [8907] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -195,
        },
    },
    [10292] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -620,
        },
    },
    [10293] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -735,
        },
    },
    [8909] = { -- Unholy Shield
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 127,
            value = -10000,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -10000,
        },
    },
    [10170] = { -- Amplify Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = 75,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = 150,
        },
    },
    [9884] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -240,
        },
    },
    [9035] = { -- Hex of Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -20,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [12544] = { -- Frost Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -12,
        },
    },
    [10967] = { -- Echoing Roar
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -50,
        },
    },
    [10169] = { -- Amplify Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = 50,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = 100,
        },
    },
    [11348] = { -- Greater Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -450,
        },
    },
    [10342] = { -- Guardian Effect
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -350,
        },
    },
    [11349] = { -- Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -250,
        },
    },
    [10952] = { -- Inner Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -1395,
        },
    },
    [9885] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -285,
        },
    },
    [12545] = { -- Spitelash
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 15,
        },
    },
    [10336] = { -- Crusader Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 22,
            hasStacks = true,
        },
    },
    [10452] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 20,
            hasStacks = true,
        },
    },
    [11596] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 360,
            hasStacks = true,
        },
    },
    [11198] = { -- Expose Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 1700,
        },
    },
    [11371] = { -- Gift of Arthas
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -10,
        },
    },
    [11597] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 450,
            hasStacks = true,
        },
    },
    [10291] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -390,
        },
    },
    [11733] = { -- Demon Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -390,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -9,
        },
    },
    [10290] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -160,
        },
    },
    [11020] = { -- Petrify
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 30,
        },
    },
    [12294] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [12248] = { -- Amplify Damage
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 50,
        },
    },
    [10337] = { -- Crusader Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 30,
            hasStacks = true,
        },
    },
    [12097] = { -- Pierce Armor
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -75,
        },
    },
    [11734] = { -- Demon Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -480,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -12,
        },
    },
    [11735] = { -- Demon Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -570,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -15,
        },
    },
    [11374] = { -- Gift of Arthas
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 8,
        },
    },
    [11197] = { -- Expose Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 1375,
        },
    },
    [11721] = { -- Curse of the Elements
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 20,
            value = 60,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 20,
            value = 8,
        },
    },
    [12175] = { -- Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -240,
        },
    },
    [11717] = { -- Curse of Recklessness
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 640,
        },
    },
    [11722] = { -- Curse of the Elements
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 20,
            value = 75,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 20,
            value = 10,
        },
    },
    [13222] = { -- Wound Poison
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -75,
            hasStacks = true,
        },
    },
    [13223] = { -- Wound Poison
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -105,
            hasStacks = true,
        },
    },
    [13224] = { -- Wound Poison
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -135,
            hasStacks = true,
        },
    },
    [13583] = { -- Curse of the Deadwood
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [13526] = { -- Corrosive Poison
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 50,
        },
    },
    [12328] = { -- Death Wish
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 127,
            value = -20,
        },
    },
    [13578] = { -- Jadefire
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 50,
        },
    },
    [12245] = { -- Infected Spine
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 3,
        },
    },
    [12733] = { -- Fearless
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -50,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -10,
        },
    },
    [12942] = { -- Fell Curse Effect
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 20,
        },
    },
    [13218] = { -- Wound Poison
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = -55,
            hasStacks = true,
        },
    },
    [26064] = { -- Shell Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -50,
        },
    },
    [11791] = { -- Puncture Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 100,
        },
    },
    [13424] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 50,
        },
    },
    [12738] = { -- Amplify Damage
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 100,
        },
    },
    [13787] = { -- Demon Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -210,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -3,
        },
    },
    [14147] = { -- Acid Slime
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 800,
        },
    },
    [13013] = { -- Dissolve Armor
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -30,
        },
    },
    [13744] = { -- Blazing Emblem
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = -25,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -50,
        },
    },
    [13752] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 100,
        },
    },
    [14893] = { -- Inspiration
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 8,
        },
    },
    [13737] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [13847] = { -- Recklessness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -35,
        },
    },
    [13880] = { -- Magma Splash
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 250,
            hasStacks = true,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 500,
            hasStacks = true,
        },
    },
    [15062] = { -- Shield Wall
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -75,
        },
    },
    [15128] = { -- Mark of Flames
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 1000,
        },
    },
    [15007] = { -- Resurrection Sickness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 127,
            value = -75,
        },
    },
    [15784] = { -- Frost Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -12,
        },
    },
    [15708] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [15235] = { -- Crystal Yield
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 200,
        },
    },
    [16128] = { -- Infected Bite
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 20,
        },
    },
    [16536] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 30,
            hasStacks = true,
        },
    },
    [15357] = { -- Inspiration
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 16,
        },
    },
    [15123] = { -- Resist Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -2,
        },
    },
    [16177] = { -- Ancestral Fortitude
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 8,
        },
    },
    [15473] = { -- Shadowform
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 1,
            value = -15,
        },
    },
    [15258] = { -- Shadow Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 3,
            hasStacks = true,
        },
    },
    [15233] = { -- Crystal Ward
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -200,
        },
    },
    [15042] = { -- Curse of Blood
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 1,
        },
    },
    [15595] = { -- Force of Will
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = -25,
        },
    },
    [14532] = { -- Creeper Venom
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 1,
            value = 30,
        },
    },
    [15280] = { -- Cleave Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 300,
        },
    },
    [16610] = { -- Razorhide
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 25,
        },
    },
    [15359] = { -- Inspiration
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 25,
        },
    },
    [16373] = { -- Chromatic Protection: Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -75,
        },
    },
    [16392] = { -- Chromatic Protection: Frost
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -75,
        },
    },
    [17348] = { -- Hemorrhage
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 7,
        },
    },
    [16168] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 180,
            hasStacks = true,
        },
    },
    [16511] = { -- Hemorrhage
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 3,
        },
    },
    [16470] = { -- Gift of Stone
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -1000,
        },
    },
    [17333] = { -- Spider's Kiss
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 100,
        },
    },
    [17798] = { -- Shadow Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 8,
        },
    },
    [16236] = { -- Ancestral Fortitude
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 16,
        },
    },
    [16237] = { -- Ancestral Fortitude
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 25,
        },
    },
    [16429] = { -- Piercing Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = 100,
        },
    },
    [17151] = { -- Shadow Barrier
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 32,
            value = -50,
        },
    },
    [16359] = { -- Corrosive Acid Breath
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 160,
            hasStacks = true,
        },
    },
    [16098] = { -- Curse of Blood
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 2,
        },
    },
    [16231] = { -- Curse of Recklessness
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 290,
        },
    },
    [16326] = { -- Juju Ember
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -15,
        },
    },
    [16145] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 24,
            hasStacks = true,
        },
    },
    [16928] = { -- Armor Shatter
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 200,
            hasStacks = true,
        },
    },
    [16530] = { -- Smolderweb Protection
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -30,
        },
    },
    [17347] = { -- Hemorrhage
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 5,
        },
    },
    [16878] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -384,
        },
    },
    [17232] = { -- Devotion Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -40,
        },
    },
    [17275] = { -- Heart of the Scale
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -20,
        },
    },
    [17175] = { -- Resist Arcane
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 64,
            value = -2,
        },
    },
    [16498] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 24,
        },
    },
    [17794] = { -- Shadow Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 4,
        },
    },
    [16325] = { -- Juju Chill
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -15,
        },
    },
    [17390] = { -- Faerie Fire (Feral)
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 285,
        },
    },
    [16871] = { -- Bleakwood Curse
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = 25,
            hasStacks = true,
        },
    },
    [16856] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [18116] = { -- Kirtonos Gargoyle Passive
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 500,
        },
    },
    [17392] = { -- Faerie Fire (Feral)
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 505,
        },
    },
    [16391] = { -- Chromatic Protection: Nature
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -75,
        },
    },
    [17281] = { -- Crusader Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 30,
            hasStacks = true,
        },
    },
    [16887] = { -- Armor IV
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -400,
        },
    },
    [16560] = { -- Flame Wrath
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -30,
        },
    },
    [17154] = { -- The Green Tower
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -50,
        },
    },
    [17315] = { -- Puncture Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 200,
            hasStacks = true,
        },
    },
    [17862] = { -- Curse of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 96,
            value = 60,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 96,
            value = 8,
        },
    },
    [17937] = { -- Curse of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 96,
            value = 75,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 96,
            value = 10,
        },
    },
    [18159] = { -- Curse of the Fallen Magram
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 15,
        },
    },
    [17629] = { -- Chromatic Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -25,
        },
    },
    [18100] = { -- Frost Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -12,
        },
    },
    [17391] = { -- Faerie Fire (Feral)
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 395,
        },
    },
    [18826] = { -- Savior's Sacrifice
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -300,
        },
    },
    [17230] = { -- Infected Wound
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 6,
        },
    },
    [17820] = { -- Veil of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -75,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [17963] = { -- Sundering Cleave
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 24,
            hasStacks = true,
        },
    },
    [18151] = { -- Noxious Catalyst
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = 6,
        },
    },
    [17364] = { -- Stormstrike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 8,
            value = 20,
        },
    },
    [16857] = { -- Faerie Fire (Feral)
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 175,
        },
    },
    [23992] = { -- Fire Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -30,
        },
    },
    [20656] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 120,
        },
    },
    [17540] = { -- Greater Stoneshield
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -2000,
        },
    },
    [20667] = { -- Corrosive Acid Breath
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 160,
            hasStacks = true,
        },
    },
    [19397] = { -- Incinerate
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 25,
            hasStacks = true,
        },
    },
    [17797] = { -- Shadow Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 12,
        },
    },
    [17697] = { -- Defiling Aura
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = 100,
        },
    },
    [18114] = { -- Resist All
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -10,
        },
    },
    [17445] = { -- Bone Smelt
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -50,
        },
    },
    [19713] = { -- Shazzrah's Curse
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = 100,
        },
    },
    [20592] = { -- Arcane Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 64,
            value = -10,
        },
    },
    [19714] = { -- Deaden Magic
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -50,
        },
    },
    [19366] = { -- Cauterizing Flames
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = 200,
        },
    },
    [17547] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [19285] = { -- Hex of Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -20,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [20590] = { -- Ragged John's Neverending Cup
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = -5,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = 20,
        },
    },
    [23767] = { -- Sayge's Dark Fortune of Armor
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 10,
        },
    },
    [18958] = { -- Flame Lash
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = 20,
            hasStacks = true,
        },
    },
    [18163] = { -- Strength of Arko'narin
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 30,
        },
    },
    [19282] = { -- Hex of Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -20,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [19463] = { -- Corrosive Acid Spit
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -10,
            hasStacks = true,
        },
    },
    [19631] = { -- Melt Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 1000,
            hasStacks = true,
        },
    },
    [20583] = { -- Nature Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -10,
        },
    },
    [19281] = { -- Hex of Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -20,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [17799] = { -- Shadow Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 16,
        },
    },
    [17800] = { -- Shadow Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 20,
        },
    },
    [19635] = { -- Incite Flames
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = 50,
            hasStacks = true,
        },
    },
    [19716] = { -- Gehennas' Curse
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -75,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -100,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [19135] = { -- Avatar
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 50,
        },
    },
    [20579] = { -- Shadow Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -10,
        },
    },
    [20655] = { -- Barkskin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -3000,
        },
    },
    [19283] = { -- Hex of Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -20,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [19284] = { -- Hex of Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -20,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [18946] = { -- The Lion Horn of Stormwind
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -250,
        },
    },
    [18828] = { -- Bone Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -150,
        },
    },
    [21183] = { -- Judgement of the Crusader
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 20,
        },
    },
    [21553] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [20913] = { -- Blessing of Sanctuary
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -19,
        },
    },
    [20914] = { -- Blessing of Sanctuary
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -24,
        },
    },
    [20542] = { -- Static Conduit
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 8,
            value = 100,
            hasStacks = true,
        },
    },
    [20188] = { -- Judgement of the Crusader
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 30,
        },
    },
    [20594] = { -- Stoneform
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 10,
        },
    },
    [20596] = { -- Frost Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -10,
        },
    },
    [25795] = { -- Ahn'Qiraj Reward Buff (Melee - 40)
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -15,
        },
    },
    [20798] = { -- Demon Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -40,
        },
    },
    [20302] = { -- Judgement of the Crusader
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 110,
        },
    },
    [20300] = { -- Judgement of the Crusader
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 50,
        },
    },
    [21850] = { -- Gift of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -285,
        },
    },
    [23120] = { -- Black March Blessing
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -100,
        },
    },
    [21163] = { -- Polished Armor
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 10,
        },
    },
    [20629] = { -- Corrosive Venom Spit
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -75,
            hasStacks = true,
        },
    },
    [23272] = { -- Soul Flame
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 127,
            value = 100,
        },
    },
    [19643] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [20551] = { -- Nature Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -10,
        },
    },
    [20481] = { -- Garr Armor Debuff
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 1150,
            hasStacks = true,
        },
    },
    [21961] = { -- Wound
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 100,
        },
    },
    [20911] = { -- Blessing of Sanctuary
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -10,
        },
    },
    [21551] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [21552] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [21047] = { -- Corrosive Acid Spit
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -10,
            hasStacks = true,
        },
    },
    [21670] = { -- Faerie Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 2000,
        },
    },
    [22433] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 1000,
            hasStacks = true,
        },
    },
    [20912] = { -- Blessing of Sanctuary
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -14,
        },
    },
    [22693] = { -- Harden Skin
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -10000,
        },
    },
    [22782] = { -- Mage Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -10,
        },
    },
    [20301] = { -- Judgement of the Crusader
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 80,
        },
    },
    [20303] = { -- Judgement of the Crusader
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 2,
            value = 140,
        },
    },
    [22959] = { -- Fire Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 4,
            value = 3,
            hasStacks = true,
        },
    },
    [22277] = { -- Elemental Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -75,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 4,
            value = 1100,
        },
    },
    [22278] = { -- Elemental Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -75,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 16,
            value = 1100,
        },
    },
    [22279] = { -- Elemental Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -75,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 1100,
        },
    },
    [22280] = { -- Elemental Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -75,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 8,
            value = 1100,
        },
    },
    [22281] = { -- Elemental Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -75,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 64,
            value = 1100,
        },
    },
    [21849] = { -- Gift of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -240,
        },
    },
    [23014] = { -- Possess
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 1,
            value = 200,
        },
    },
    [21866] = { -- Alterac Ram Collar DND
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -100,
        },
    },
    [21794] = { -- Frostwolf Muzzle DND
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -100,
        },
    },
    [22687] = { -- Veil of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -75,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [22688] = { -- Tree Form
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -3000,
        },
    },
    [22783] = { -- Mage Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -15,
        },
    },
    [21992] = { -- Thunderfury
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = 25,
        },
    },
    [22692] = { -- Petrify
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 30,
        },
    },
    [23314] = { -- Corrosive Acid
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 4500,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 5062,
        },
    },
    [23720] = { -- Blessing of the Black Book
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 100,
        },
    },
    [23230] = { -- Blood Fury
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [23646] = { -- Elemental Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -75,
        },
    },
    [23397] = { -- Berserk
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 30,
        },
    },
    [23769] = { -- Sayge's Dark Fortune of Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -25,
        },
    },
    [23169] = { -- Brood Affliction: Green
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [23174] = { -- Chromatic Mutation
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 127,
            value = -500,
        },
    },
    [22850] = { -- Sanctuary
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -300,
        },
    },
    [23224] = { -- Veil of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -75,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [23341] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 150,
            hasStacks = true,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 150,
            hasStacks = true,
        },
    },
    [23154] = { -- Brood Affliction: Black
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 4,
            value = 100,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 4,
            value = 100,
        },
    },
    [23505] = { -- Berserking
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 10,
        },
    },
    [23313] = { -- Corrosive Acid
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 4500,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 5062,
        },
    },
    [24445] = { -- Fire Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -120,
        },
    },
    [24446] = { -- Frost Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -30,
        },
    },
    [24449] = { -- Frost Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -120,
        },
    },
    [23780] = { -- Aegis of Preservation
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -500,
        },
    },
    [24500] = { -- Arcane Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 64,
            value = -90,
        },
    },
    [22713] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 20,
            hasStacks = true,
        },
    },
    [24501] = { -- Arcane Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 64,
            value = -120,
        },
    },
    [24507] = { -- Shadow Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -120,
        },
    },
    [24573] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [22859] = { -- Mortal Cleave
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [24447] = { -- Frost Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -60,
        },
    },
    [24448] = { -- Frost Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -90,
        },
    },
    [24339] = { -- Infected Bite
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 100,
            hasStacks = true,
        },
    },
    [23605] = { -- Spell Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = 15,
        },
    },
    [24444] = { -- Fire Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -90,
        },
    },
    [24378] = { -- Berserking
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 10,
        },
    },
    [24674] = { -- Veil of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -75,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [25174] = { -- Sundering Cleave
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 240,
        },
    },
    [24550] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -160,
        },
    },
    [24551] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -240,
        },
    },
    [24552] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -330,
        },
    },
    [24553] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -430,
        },
    },
    [24554] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -550,
        },
    },
    [24673] = { -- Curse of Blood
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 500,
        },
    },
    [24111] = { -- Corrosive Poison
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 5000,
        },
    },
    [24492] = { -- Nature Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -30,
        },
    },
    [24493] = { -- Arcane Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 64,
            value = -30,
        },
    },
    [24629] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -810,
        },
    },
    [24630] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -1000,
        },
    },
    [24506] = { -- Shadow Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -90,
        },
    },
    [25177] = { -- Fire Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 4,
            value = 100,
        },
    },
    [25178] = { -- Frost Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 16,
            value = 100,
        },
    },
    [25181] = { -- Arcane Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 64,
            value = 100,
        },
    },
    [24497] = { -- Arcane Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 64,
            value = -60,
        },
    },
    [24555] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -675,
        },
    },
    [24504] = { -- Nature Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -120,
        },
    },
    [24505] = { -- Shadow Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -60,
        },
    },
    [24439] = { -- Fire Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -60,
        },
    },
    [24488] = { -- Shadow Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -30,
        },
    },
    [24549] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -100,
        },
    },
    [24502] = { -- Nature Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -60,
        },
    },
    [24317] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 1000,
            hasStacks = true,
        },
    },
    [24575] = { -- Brittle Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -200,
            hasStacks = true,
        },
    },
    [24503] = { -- Nature Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -90,
        },
    },
    [25180] = { -- Nature Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 8,
            value = 100,
        },
    },
    [25183] = { -- Shadow Weakness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 100,
        },
    },
    [25796] = { -- Ahn'Qiraj Reward Buff (Melee - 60)
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -25,
        },
    },
    [25051] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 1000,
            hasStacks = true,
        },
    },
    [25646] = { -- Mortal Wound
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -10,
            hasStacks = true,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -10,
            hasStacks = true,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [24545] = { -- Natural Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -50,
        },
    },
    [24752] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -285,
        },
    },
    [26156] = { -- Carapace of C'Thun
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -99,
        },
    },
    [25994] = { -- Membrane of Viscidus
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -50,
        },
    },
    [25794] = { -- Ahn'Qiraj Reward Buff (Melee - 20)
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -5,
        },
    },
    [25799] = { -- Ahn'Qiraj Reward Buff (Caster - 60)
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -25,
        },
    },
    [25651] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 40,
            hasStacks = true,
        },
    },
    [25685] = { -- Energize
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -50,
        },
    },
    [25050] = { -- Mark of Flames
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 1000,
        },
    },
    [27580] = { -- Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [26419] = { -- Acid Spray
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 8,
            value = 100,
            hasStacks = true,
        },
    },
    [26977] = { -- Curse of the Elemental Lord
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = 100,
            hasStacks = true,
        },
    },
    [26464] = { -- Mercurial Shield
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 124,
            value = -10,
            hasStacks = true,
        },
    },
    [28410] = { -- Chains of Kel'Thuzad
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = 500,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_POSITIVE,
        },
    },
    [26652] = { -- Copy of Mortal Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [25668] = { -- Flame Buffet
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 4,
            value = 40,
            hasStacks = true,
        },
    },
    [27652] = { -- Elixir of Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 124,
            value = -15,
        },
    },
    [25797] = { -- Ahn'Qiraj Reward Buff (Caster - 20)
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -5,
        },
    },
    [25798] = { -- Ahn'Qiraj Reward Buff (Caster - 40)
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -15,
        },
    },
    [25899] = { -- Greater Blessing of Sanctuary
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = -1,
            value = -24,
        },
    },
    [28440] = { -- Veil of Shadow
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -75,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [27543] = { -- Bear Form
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 1,
            value = -50,
        },
    },
    [29134] = { -- Maypole
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -10,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -10,
        },
    },
    [27807] = { -- Bile Vomit
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = 25,
            hasStacks = true,
        },
    },
    [27857] = { -- Copy of Wandering Plague
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 5,
        },
    },
    [28768] = { -- Nature Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 8,
            value = -35,
        },
    },
    [28765] = { -- Fire Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -35,
        },
    },
    [28827] = { -- Totemic Power
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -700,
        },
    },
    [28766] = { -- Frost Resistance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -35,
        },
    },
    [28772] = { -- Elemental Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 126,
            value = 200,
        },
    },
    [30113] = { -- Putrid Bite
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = 120,
        },
    },
    [28776] = { -- Necrotic Poison
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -90,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [28778] = { -- Loatheb's Reflection
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -40,
        },
    },
    [29125] = { -- Hopeless
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 5000,
        },
    },
    [29127] = { -- Maypole Buff
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -10,
        },
    },
    [27991] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 48,
            hasStacks = true,
        },
    },
    [29175] = { -- Ribbon Dance
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -30,
        },
    },
    [28467] = { -- Mortal Wound
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -10,
            hasStacks = true,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [28790] = { -- Holy Power
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -700,
        },
    },
    [28846] = { -- Cheat Death
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALPOWER,
            value = 160,
        },
    },
    [29306] = { -- Infected Wound
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 100,
            hasStacks = true,
        },
    },
    [29061] = { -- Shield Wall
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -75,
        },
    },
    [30081] = { -- Retching Plague
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 250,
        },
    },
    [30080] = { -- Retching Plague
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 1,
            value = 250,
        },
    },
    [346285] = { -- Just Pretend
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = 50,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_POSITIVE,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -200,
        },
    },
    [364163] = { -- Mark of the Wild
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -240,
        },
    },
    [365663] = { -- Sunder Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 24,
            hasStacks = true,
        },
    },
    [368659] = { -- Chromatic Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -4,
            hasStacks = true,
        },
    },
    [370100] = { -- Illusionary Rot
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 1,
            hasStacks = true,
        },
    },
    [370544] = { -- Skeletal Artifact
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = -5,
        },
    },
    [370835] = { -- Positive Charge
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = 1,
            hasStacks = true,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_POSITIVE,
        },
    },
    [370836] = { -- Negative Charge
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = 1,
            hasStacks = true,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_POSITIVE,
        },
    },
    [371206] = { -- Servant of Chaos
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = 75,
        },
    },
    [402004] = { -- Pain Suppression
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -40,
        },
    },
    [402818] = { -- Degrade
        {
            type = _addon.CONST.EFFECT_TYPE.SCRIPT_AURASCRIPT,
            value = 123,
            scriptKey = "Degrade_Armor",
        },
    },
    [407025] = { -- Exposed
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 100,
        },
    },
    [407095] = { -- Crunch Armor
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -25,
            hasStacks = true,
        },
    },
    [407993] = { -- Mangle
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            value = 30,
            affectMechanic = 15,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.BLEED_DAMAGE,
        },
    },
    [407995] = { -- Mangle
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            value = 30,
            affectMechanic = 15,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.BLEED_DAMAGE,
        },
    },
    [408525] = { -- Shield Mastery
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -30,
            hasStacks = true,
        },
    },
    [408680] = { -- Way of Earth
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -10,
        },
    },
    [408755] = { -- Blood Offering
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 127,
            value = -50,
        },
    },
    [411631] = { -- Tame Beast
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = -100,
        },
    },
    [412072] = { -- Shadow Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 10,
            hasStacks = true,
        },
    },
    [412079] = { -- Shadow Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 15,
            hasStacks = true,
        },
    },
    [412080] = { -- Shadow Strike
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 20,
            hasStacks = true,
        },
    },
    [415233] = { -- Ghost Wolf
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -10,
        },
    },
    [422978] = { -- Coward!
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 127,
            value = -20,
        },
    },
    [422996] = { -- Ancient Corrosive Poison
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 150,
        },
    },
    [423300] = { -- M'grrgl's Protection
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 32,
            value = -5,
        },
    },
    [425205] = { -- Power Word: Barrier
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -25,
        },
    },
    [425235] = { -- Polished Iceblock
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -17000,
        },
    },
    [425294] = { -- Dispersion
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -90,
        },
    },
    [425336] = { -- Shamanistic Rage
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -20,
        },
    },
    [426086] = { -- Electrostatic Discharge Shielding
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 20,
            value = -135,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 20,
            value = -25,
        },
    },
    [426097] = { -- Auxiliary Anti-Tamper Mechanism
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 127,
            value = 25,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 25,
        },
    },
    [426101] = { -- Central Reaping Function 9000
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 127,
            value = 25,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 20,
        },
    },
    [426917] = { -- Nature Form
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 115,
            value = -75,
        },
    },
    [426923] = { -- Fire Form
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 107,
            value = -75,
        },
    },
    [426925] = { -- Water Form
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 103,
            value = -75,
        },
    },
    [426972] = { -- Vigilance
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -3,
        },
    },
    [427143] = { -- Curse of Vulnerability
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_SPELLPOWER,
            affectMask = 127,
            value = 2,
        },
    },
    [427726] = { -- Immolation Aura
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 126,
            value = -10,
        },
    },
    [428482] = { -- Shadow Seep
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 32,
            value = 25,
            hasStacks = true,
        },
    },
    [428489] = { -- Planar Shift
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -30,
        },
    },
    [428713] = { -- Barkskin
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 1,
            value = -20,
        },
    },
    [429541] = { -- Dark Protection
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -99,
        },
    },
    [430352] = { -- Ashenvale Rallying Cry
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = 5,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_POSITIVE,
        },
    },
    [430422] = { -- Anointed By Undeath
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 5,
        },
    },
    [430432] = { -- Battle Hardened
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -5,
        },
    },
    [430950] = { -- Arcane Protection - Fire
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 4,
            value = -20,
        },
    },
    [430951] = { -- Arcane Protection - Frost
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 16,
            value = -20,
        },
    },
    [433251] = { -- Static Arc
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_MECHANICMOD_DMG_TAKEN_PCT,
            value = 500,
            affectMechanic = 23,
        },
    },
    [434724] = { -- Radiation Sickness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 8,
            value = 50,
            hasStacks = true,
        },
    },
    [434837] = { -- Puncture Armor
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = 160,
        },
    },
    [434841] = { -- Mekkatorque's Arcano-Shredder
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 20,
            value = 45,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 20,
            value = 6,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 96,
            value = 45,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 96,
            value = 6,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 10,
            value = 45,
        },
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 10,
            value = 6,
        },
    },
    [434869] = { -- Shadow Ritual of Sacrifice
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = -100,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_NEGATIVE,
        },
    },
    [435359] = { -- Hardened to the Core
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 1,
            value = -1000,
        },
    },
    [435973] = { -- Mildly Irradiated
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 41,
            value = 100,
        },
    },
    [436100] = { -- Petrify
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_RESISTANCE_PCT,
            affectMask = 1,
            value = 30,
        },
    },
    [436387] = { -- Blessing of the Blood Loa
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_HEALING_RECIEVED,
            value = 8,
            auraCategory = _addon.CONST.DEBUFF_CATEGORY.HEALING_RECIEVED_POSITIVE,
        },
    },
    [436741] = { -- Overheat
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = 25,
        },
    },
    [436835] = { -- Nutty Shield
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -25,
        },
    },
    [436837] = { -- Widget Fortress
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 127,
            value = -50,
        },
    },
    [437132] = { -- Dreamstate
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 8,
            value = 20,
        },
    },
    [437377] = { -- Intense Concentration
        {
            type = _addon.CONST.EFFECT_TYPE.SCHOOLMOD_RESISTANCE_PENETRATION,
            affectMask = 126,
            value = -50,
        },
    },
    [438727] = { -- Radiation Sickness
        {
            type = _addon.CONST.EFFECT_TYPE.TARGET_SCHOOLMOD_DMG_TAKEN_PCT,
            affectMask = 8,
            value = 50,
            hasStacks = true,
        },
    },
}

---@type AddonEnv
local _addon = select(2, ...);
---@class LocaleTable
local L = _addon:AddLocalization("enUS", true);
if L == nil then return; end

L.NONE = "None";

L.TARGET = "Target";
L.SETTINGS_TAR_DEFLEVEL_LABEL = "Default level difference";
L.SETTINGS_TT_USECURRENT_LABEL = "Use current target";
L.SETTINGS_TT_USECURRENT_TT = "If possible use target's level instead.";

L.SETTINGS_HEAD_RESISTANCE = "Custom Resistance Values";
L.SETTINGS_RESISTANCE_DESC = "If not 0 treat all targets as if they have this resistance value on top of possible resistance due to level difference.";

L.FROST = "Frost";
L.FIRE = "Fire";
L.SHADOW = "Shadow";
L.NATURE = "Nature";
L.ARCANE = "Arcane";
L.ARMOR = "Armor";

L.TOOLTIP = "Tooltip";
L.SETTINGS_HEAD_TOOLTIP = "Values to show in tooltips.";
L.SETTINGS_TT_HITVAL_LABEL = "Hit value";
L.SETTINGS_TT_AVG_LABEL = "Averages";
L.SETTINGS_TT_PENAL_LABEL = "Level penalty";
L.SETTINGS_TT_PENAL_TT = "Show penalty for spells below level 20.";
L.SETTINGS_TT_POWER_LABEL = "Scaling";
L.SETTINGS_TT_POWER_TT = "Show spell/attack power scaling.";
L.SETTINGS_TT_HITCHANCE_DETAIL_LABEL = "Detailed hit chance";
L.SETTINGS_TT_HITCHANCE_DETAIL_TT = "Show base hit and bonus hit, also hit lost for binary spells.";
L.SETTINGS_TT_RESISTANCE_LABEL = "Resistance";
L.SETTINGS_TT_RESISTANCE_TT = "Show average resisted damage and resistance value.";
L.SETTINGS_TT_PERSEC_LABEL = "Per second (after mitigation)";
L.SETTINGS_TT_EFFCOST_TT = "Cost considering regeneration and procs.";
L.SETTINGS_TT_PERMANA_LABEL = "Per mana";
L.SETTINGS_TT_OOM_LABEL = "Done until oom";
L.SETTINGS_TT_BUFFS_LABEL = "Show buffs";
L.SETTINGS_TT_BUFFS_TT = "Show buffs/gear/talents affecting the spell calculation. This doesn't include things that the addon doesn't need to handle itself!";
L.SETTINGS_TT_COMBINED_LABEL = "Combined direct + over time";
L.SETTINGS_TT_COMBINED_TT = "Show combined values of direct and over time effect for spells that have both.";

L.SETTINGS_AB_TITLE = "Actionbar";
L.SETTINGS_AB_SHOW = "Show values on actionbar";
L.SETTINGS_AB_POS = "Position";
L.SETTINGS_AB_POS_TT = "Offset from the bottom of the button in percent.";
L.SETTINGS_AB_SIZE = "Font size";
L.SETTINGS_AB_FONT = "Font";
L.SETTINGS_AB_FONT_STYLE = "Font Style";
L.SETTINGS_AB_FONT_STYLE_OUTLINE = "Outline";
L.SETTINGS_AB_FONT_STYLE_MONOCHROME = "Monochrome";
L.SETTINGS_AB_FONT_STYLE_MONOCHROME_OUTLINE = "Monochrome + Outline";
L.SETTINGS_AB_COLORS = "Colors"
L.SETTINGS_AB_COLOR_HARM = "Damage Color";
L.SETTINGS_AB_COLOR_HELP = "Heal Color";
L.SETTINGS_AB_HEAD = "Shown values";
L.SETTINGS_AB_DIRECT_VALUE = "Direct";
L.SETTINGS_AB_DIRECT_VALUE_AVG = "Avg. normal hit";
L.SETTINGS_AB_DIRECT_VALUE_CRITAVG = "Avg. crit";
L.REAL_AVERAGE = "Real average";
L.SETTINGS_AB_DURATION_VALUE = "DoT/HoT";
L.SETTINGS_AB_DURATION_VALUE_TICK = "Per tick";
L.SETTINGS_AB_DURATION_VALUE_ALL = "All ticks";
L.SETTINGS_AB_SEAL_VALUE = "Seals";
L.SETTINGS_AB_SEAL_VALUE_HIT = "Avg. hit";
L.DAMAGE_OVER_DURATION = "Damage over duration";

L.SETTINGS_WL_USE_IMP_SB = "Use Improved Shadow Bolt talent";
L.SETTINGS_WL_USE_IMP_SB_TT = "Use talent in Shadow Bolt dps calculation, assumes nobody \"steals\" your debuff charges.";

L.SETTINGS_HEAL_HEAD = "Healing";
L.SETTINGS_HEAL_NO_CRIT = "Disregard crit heals";
L.SETTINGS_HEAL_NO_CRIT_TT = "Do not consider crits for hps and efficiency calculation.";

L.SETTINGS_MELEE_HEAD = "Melee";
L.SETTINGS_MELEE_FROM_FRONT = "Attacking from front";
L.SETTINGS_MELEE_FROM_FRONT_TT = "Use parry and block against PvE targets.";

L.SETTINGS_CALC_HEAD = "Calculation";
L.SETTINGS_CALC_TOOM_HEAD = "Possible Casts";
L.SETTINGS_CALC_REAL_OOM = "Real until OOM";
L.SETTINGS_CALC_REAL_OOM_TT = "Consider mana below spellcost as 0 mana instead of calculating with theoretical partial casts.";
L.SETTINGS_CALC_REMAINING = "Remaining Casts";
L.SETTINGS_CALC_REMAINING_DESC = "Calculate possible casts with current mana value instead of always assuming full mana.";
L.SETTINGS_CALC_EM_HEAD = "Effective Mana Pool";
L.SETTINGS_CALC_EM_DESC = "Consider mana gained from chosen effects for relevant calculations.";
L.SETTINGS_CALC_EM_INNER = "Use Innervate";
L.SETTINGS_CALC_EM_POTION = "Mana Potion";
L.SETTINGS_CALC_EM_POTION_MAJOR = "Major Mana Potion";
L.SETTINGS_CALC_EM_POTION_SUPERIOR = "Superior Mana Potion";
L.SETTINGS_CALC_EM_POTION_GREATER = "Greater Mana Potion";
L.SETTINGS_CALC_EM_POTION_SUPER = "Super Mana Potion";
L.SETTINGS_CALC_EM_RUNE = "Use Rune";

L.TIME_TO_OOM = "Time to OOM";
L.SETTINGS_AB_VAL_INFO = "If using "..L.TIME_TO_OOM.." or "..L.SETTINGS_CALC_TOOM_HEAD.." you may want to enable "..L.SETTINGS_CALC_REMAINING.." in "..L.SETTINGS_CALC_HEAD.." settings!";

L.TT_TITLE_COMB = "Combined:";
L.TT_TITLE_CHAINS = "With Chaining:";
L.SUSTAINED_X_STACKS = "Sustained %d Stacks:";

L.DAMAGE = "Damage";
L.HEAL = "Heal";
L.ABSORB = "Absorb";
L.CRITICAL = "Critical";
L.CHANCE = "chance";
L.TT_LOWLVLPENAL = "Low level penalty";
L.TT_POWER = "Bonus";
L.HIT_CHANCE = "Hit chance";
L.TT_BINARYMISS = "binary resist";
L.AVG_RESISTED = "Avg. resisted";
L.RES_TOOLTIP = "%.1f%% (Res: %d)"
L.RES_TOOLTIP_LEVEL = "%.1f%% (Res: %d (%d from level))";
L.EFFECTIVE_COST = "Effective cost";

L.DMG_OVER_TIME_SHORT = "DoT";
L.HEAL_OVER_TIME_SHORT = "HoT";
L.DMG_PER_MANA_SHORT = "DPM";
L.HEAL_PER_MANA_SHORT = "HPM";
L.DMG_PER_MANA_CAST_SHORT = "DPMC";
L.HEAL_PER_MANA_CAST_SHORT = "HPMC";
L.DMG_PER_SEC_SHORT = "DPS";
L.HEAL_PER_SEC_SHORT = "HPS";
L.DMG_PER_SEC_CAST_SHORT = "DPSC";
L.HEAL_PER_SEC_CAST_SHORT = "HPSC";
L.DMG_UNTIL_OOM_SHORT = "DOOM";
L.HEAL_UNTIL_OOM_SHORT = "HOOM";
L.SPAM_SUFFIX = " (spam)";

L.TT_DODGECHANCE = "Dodge";
L.TT_PARRYCHANCE = "Parry";
L.TT_BLOCKCHANCE = "Block";
L.TT_PROCCHANCE = "Proc chance";
L.TT_HITS_OVER_DURATION = "Procs over duration";
L.TT_IGNITE = "Ignite";
L.TT_MAINHAND = "Mainhand";
L.TT_OFFHAND = "Offhand";
L.TT_GLANCECHANCE = "Glancing";
L.TT_GLANCEDATA = "%.1f%% for %.1f%% damage";
L.TT_PERSEC_COMBINED_DAMAGE = "Combined DPS";
L.TT_TOTAL = "Total";

L.TT_BUFFS = "Considered buffs:";
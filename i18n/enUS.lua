---@type AddonEnv
local _addon = select(2, ...);
---@class LocaleTable
local L = _addon:AddLocalization("enUS", true);
if L == nil then return; end

L.NONE = "None";

L.SETTINGS_CALC_REAL_OOM = "Real until OOM";
L.SETTINGS_CALC_REAL_OOM_TT = "Show real done until oom value. That means until mana<spellcost instead of 0.";

L.SETTINGS_HEAD_TARGET = "Target";
L.SETTINGS_TAR_DEFLEVEL_LABEL = "Default level difference";
L.SETTINGS_TT_USECURRENT_LABEL = "Use current target";
L.SETTINGS_TT_USECURRENT_TT = "If possible use target's level instead.";

L.SETTINGS_HEAD_RESISTANCE = "Custom Resistance Values";
L.SETTINGS_RESISTANCE_DESC = "If not 0 treat all targets as if they have this resistance value on top of possible resistance due to level differences.";

L.SETTINGS_TT_FROST_LABEL = "Frost";
L.SETTINGS_TT_FIRE_LABEL = "Fire";
L.SETTINGS_TT_SHADOW_LABEL = "Shadow";
L.SETTINGS_TT_NATURE_LABEL = "Nature";
L.SETTINGS_TT_ARCANE_LABEL = "Arcane";

L.SETTINGS_TOOLTIP_TITLE = "Tooltip";
L.SETTINGS_HEAD_TOOLTIP = "Values to show in tooltips.";
L.SETTINGS_TT_HITVAL_LABEL = "Hit value";
L.SETTINGS_TT_CRIT_LABEL = "Critical";
L.SETTINGS_TT_AVG_LABEL = "Averages";
L.SETTINGS_TT_COEF_LABEL = "Coefficient";
L.SETTINGS_TT_PENAL_LABEL = "Level penalty";
L.SETTINGS_TT_PENAL_TT = "Show penalty for spells below level 20.";
L.SETTINGS_TT_POWER_LABEL = "Power";
L.SETTINGS_TT_POWER_TT = "Show spell/attack power used by spell.";
L.SETTINGS_TT_HITCHANCE_LABEL = "Hit chance";
L.SETTINGS_TT_HITCHANCE_DETAIL_LABEL = "Detailed hit chance";
L.SETTINGS_TT_HITCHANCE_DETAIL_TT = "Show base hit and bonus hit, also hit lost for binary spells.";
L.SETTINGS_TT_RESISTANCE_LABEL = "Resistance";
L.SETTINGS_TT_RESISTANCE_TT = "Show average resisted damage.";
L.SETTINGS_TT_PERSEC_LABEL = "Per second (after mitigation)";
L.SETTINGS_TT_EFFCOST_LABEL = "Effective cost";
L.SETTINGS_TT_EFFCOST_TT = "Cost considering regeneration and procs.";
L.SETTINGS_TT_PERMANA_LABEL = "Per mana";
L.SETTINGS_TT_OOM_LABEL = "Done until oom";
L.SETTINGS_TT_BUFFS_LABEL = "Show buffs";
L.SETTINGS_TT_BUFFS_TT = "Show buffs/gear/talents affecting the spell calculation. This doesn't include things that the addon doesn't need to explicitly handle!";
L.SETTINGS_TT_COMBINED_LABEL = "Show combined direct + over time";
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
L.SETTINGS_AB_DIRECT_VALUE_REALAVG = "Real average";
L.SETTINGS_AB_DURATION_VALUE = "DoT/HoT";
L.SETTINGS_AB_DURATION_VALUE_TICK = "Per tick";
L.SETTINGS_AB_DURATION_VALUE_ALL = "All ticks";
L.SETTINGS_AB_DURATION_VALUE_REALAVG = "Real average";
L.SETTINGS_AB_SEAL_VALUE = "Seals";
L.SETTINGS_AB_SEAL_VALUE_HIT = "Avg. hit";
L.SETTINGS_AB_SEAL_VALUE_OVERDUR = "Damage over duration";
L.SETTINGS_AB_SEAL_VALUE_PERSEC = "DPS";

L.SETTINGS_WL_USE_IMP_SB = "Use Improved Shadow Bolt talent";
L.SETTINGS_WL_USE_IMP_SB_TT = "Use talent in Shadow Bolt dps calculation, assumes nobody \"steals\" your debuff charges.";

L.SETTINGS_HEAL_HEAD = "Healing";
L.SETTINGS_HEAL_TARGET_HPS = "Target HPS";
L.SETTINGS_HEAL_TARGET_HPS_TT = "If not 0 tooltips for direct heals with at least that much HPS will show extra values as if there are breaks between casts to reach this HPS value.";
L.SETTINGS_HEAL_NO_CRIT = "Disregard crit heals";
L.SETTINGS_HEAL_NO_CRIT_TT = "Do not consider crits for hps and efficiency calculation.";

L.SETTINGS_MELEE_HEAD = "Melee";
L.SETTINGS_MELEE_FROM_FRONT = "Attacking from front";
L.SETTINGS_MELEE_FROM_FRONT_TT = "Use parry and block against PvE targets.";

L.SETTINGS_CALC_HEAD = "Calculation";
L.SETTINGS_CALC_EM_HEAD = "Effective Mana Pool";
L.SETTINGS_CALC_EM_DESC = "Consider mana gained from chosen effects for relevant calculations.";
L.SETTINGS_CALC_EM_INNER = "Use Innervate";
L.SETTINGS_CALC_EM_POTION = "Mana Potion";
L.SETTINGS_CALC_EM_POTION_MAJOR = "Major Mana Potion";
L.SETTINGS_CALC_EM_POTION_SUPERIOR = "Superior Mana Potion";
L.SETTINGS_CALC_EM_POTION_GREATER = "Greater Mana Potion";
L.SETTINGS_CALC_EM_RUNE = "Use Rune";

L.TT_TITLE_COMB = "Combined:";
L.TT_TITLE_CHAINS = "With Chaining:";

L.DAMAGE = "Damage";
L.HEAL = "Heal";
L.ABSORB = "Absorb";
L.TT_CRITICAL = "Critical";
L.TT_CHANCE = "chance";
L.TT_LOWLVLPENAL = "Low level penalty";
L.TT_COEF = "Coefficient";
L.TT_POWER = "Bonus";
L.TT_HITCHANCE = "Hit chance";
L.TT_BINARYMISS = "binary resist";
L.TT_RESIST = "Average resisted";
L.TT_EFFCOST = "Effective cost";

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
L.TT_DMG_OVER_DURATION = "Damage over duration";
L.TT_IGNITE = "Ignite";
L.TT_MAINHAND = "Mainhand";
L.TT_OFFHAND = "Offhand";
L.TT_GLANCECHANCE = "Glancing";
L.TT_GLANCEDATA = "%.1f%% for %.1f%% damage";
L.TT_PERSEC_COMBINED_DAMAGE = "Combined DPS";
L.TT_TOTAL = "Total";

L.TT_THPS = "For target HPS";
L.TT_THPS_TIMES = "%.1fs between casts, %.1fs outside of FSR";

L.TT_BUFFS = "Considered buffs:";
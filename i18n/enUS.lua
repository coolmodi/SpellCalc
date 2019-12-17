local _addonName, _addon = ...;
local L = _addon:AddLocalization("enUS", true);
if L == nil then return; end

L["SETTINGS_HEAD_CALC"] = "Calculation";
L["SETTINGS_CALC_REAL_OOM"] = "Real until OOM";
L["SETTINGS_CALC_REAL_OOM_TT"] = "Show real done until oom value. That means until mana<spellcost instead of 0.";

L["SETTINGS_HEAD_TARGET"] = "Target";
L["SETTINGS_TAR_DEFLEVEL_LABEL"] = "Default level difference";
L["SETTINGS_TT_USECURRENT_LABEL"] = "Use current target";
L["SETTINGS_TT_USECURRENT_TT"] = "If possible use target's level instead.";

L["SETTINGS_HEAD_RESISTANCE"] = "Custom Resistance Values";

L["SETTINGS_TT_FROST_LABEL"] = "Frost";
L["SETTINGS_TT_FIRE_LABEL"] = "Fire";
L["SETTINGS_TT_SHADOW_LABEL"] = "Shadow";
L["SETTINGS_TT_NATURE_LABEL"] = "Nature";
L["SETTINGS_TT_ARCANE_LABEL"] = "Arcane";

L["SETTINGS_TOOLTIP_TITLE"] = "Tooltip";
L["SETTINGS_HEAD_TOOLTIP"] = "Values to show in tooltip";
L["SETTINGS_TT_HITVAL_LABEL"] = "Hit value";
L["SETTINGS_TT_CRIT_LABEL"] = "Critical";
L["SETTINGS_TT_AVG_LABEL"] = "Averages";
L["SETTINGS_TT_COEF_LABEL"] = "Coefficient";
L["SETTINGS_TT_PENAL_LABEL"] = "Level penalty";
L["SETTINGS_TT_PENAL_TT"] = "Show penalty for spells below level 20.";
L["SETTINGS_TT_POWER_LABEL"] = "Power";
L["SETTINGS_TT_POWER_TT"] = "Show spell/attack power used by spell.";
L["SETTINGS_TT_HITCHANCE_LABEL"] = "Hit chance";
L["SETTINGS_TT_HITCHANCE_DETAIL_LABEL"] = "Detailed hit chance";
L["SETTINGS_TT_HITCHANCE_DETAIL_TT"] = "Show base hit and bonus hit, also hit lost for binary spells.";
L["SETTINGS_TT_RESISTANCE_LABEL"] = "Resistance";
L["SETTINGS_TT_RESISTANCE_TT"] = "Show average resisted damage.";
L["SETTINGS_TT_PERSEC_LABEL"] = "Per second (after hit chance and resist)";
L["SETTINGS_TT_EFFCOST_LABEL"] = "Effective cost";
L["SETTINGS_TT_EFFCOST_TT"] = "Cost considering regeneration and procs.";
L["SETTINGS_TT_PERMANA_LABEL"] = "Per mana";
L["SETTINGS_TT_OOM_LABEL"] = "Done until oom";
L["SETTINGS_TT_BUFFS_LABEL"] = "Show buffs";
L["SETTINGS_TT_BUFFS_TT"] = "Show buffs/gear/talents affecting the spell calculation. This doesn't include things that the addon doesn't need to explicitly handle!";

L["SETTINGS_AB_TITLE"] = "Actionbar";
L["SETTINGS_AB_HEAD"] = "Actionbar button value";
L["SETTINGS_AB_SHOW"] = "Show values on actionbar";
L["SETTINGS_AB_DIRECT_VALUE"] = "Direct";
L["SETTINGS_AB_DIRECT_VALUE_AVG"] = "Avg. normal hit";
L["SETTINGS_AB_DIRECT_VALUE_CRITAVG"] = "Avg. crit";
L["SETTINGS_AB_DIRECT_VALUE_REALAVG"] = "Real average";
L["SETTINGS_AB_DURATION_VALUE"] = "DoT/HoT";
L["SETTINGS_AB_DURATION_VALUE_TICK"] = "Per tick";
L["SETTINGS_AB_DURATION_VALUE_ALL"] = "All ticks";
L["SETTINGS_AB_DURATION_VALUE_REALAVG"] = "Real average";
L["SETTINGS_AB_SEAL_VALUE"] = "Seals";
L["SETTINGS_AB_SEAL_VALUE_HIT"] = "Avg. hit";
L["SETTINGS_AB_SEAL_VALUE_OVERDUR"] = "Damage over duration";
L["SETTINGS_AB_SEAL_VALUE_PERSEC"] = "DPS";

L["SETTINGS_WL_USE_IMP_SB"] = "Use Improved Shadow Bolt talent";
L["SETTINGS_WL_USE_IMP_SB_TT"] = "Use talent in Shadow Bolt dps calculation, assumes nobody \"steals\" your debuff charges.";

L["SETTINGS_HEAL_HEAD"] = "Healing";
L["SETTINGS_HEAL_TARGET_HPS"] = "Target HPS";
L["SETTINGS_HEAL_TARGET_HPS_TT"] = "If not 0 tooltips for direct heals with at least that much HPS will show extra values as if there are breaks between casts to reach this HPS value.";
L["SETTINGS_HEAL_NO_CRIT"] = "Disregard crit heals";
L["SETTINGS_HEAL_NO_CRIT_TT"] = "Do not consider crits for hps and efficiency calculation.";

L["SETTINGS_MELEE_HEAD"] = "Melee";
L["SETTINGS_MELEE_FROM_FRONT"] = "Attacking from front";
L["SETTINGS_MELEE_FROM_FRONT_TT"] = "Use parry against PvE targets.";

L["TT_TITLE_DAMAGE"] = "Damage:";
L["TT_TITLE_DOT"] = "DoT:";
L["TT_TITLE_HEAL"] = "Heal:";
L["TT_TITLE_HOT"] = "HoT:";
L["TT_TITLE_COMB"] = "Combined:";

L["TT_DAMAGE"] = "Damage";
L["TT_HEAL"] = "Heal";
L["TT_CRITICAL"] = "Critical";
L["TT_CHANCE"] = "chance";
L["TT_LOWLVLPENAL"] = "Low level penalty";
L["TT_COEF"] = "Coefficient";
L["TT_POWER"] = "Bonus";
L["TT_HITCHANCE"] = "Hit chance";
L["TT_BINARYMISS"] = "binary resist";
L["TT_RESIST"] = "Average resisted";
L["TT_PERSEC_HEAL"] = "HPS";
L["TT_PERSEC_DAMAGE"] = "DPS";
L["TT_PERSECDUR_HEAL"] = "HoT HPS";
L["TT_PERSECDUR_DAMAGE"] = "DoT DPS";
L["TT_PERSECC_DAMAGE"] = "DPSC";
L["TT_PERSECC_HEAL"] = "HPSC";
L["TT_EFFCOST"] = "Effective cost";
L["TT_PER_MANA_HEAL"] = "HPM";
L["TT_PER_MANA_DAMAGE"] = "DPM";
L["TT_UNTILOOM_HEAL"] = "Heal until oom";
L["TT_UNTILOOM_DAMAGE"] = "Damage until oom";
L["TT_DODGECHANCE"] = "Dodge";
L["TT_PARRYCHANCE"] = "Parry";
L["TT_BLOCKCHANCE"] = "Block";
L["TT_PROCCHANCE"] = "Proc chance";
L["TT_HITS_OVER_DURATION"] = "Procs over duration";
L["TT_DMG_OVER_DURATION"] = "Damage over duration";
L["TT_IGNITE"] = "Ignite";

L["TT_COMB_AVG_HIT"] = "Avg. hit";
L["TT_COMB_AVG_CRIT"] = "Avg. crit";
L["TT_COMB_AVG_HIT_SPAM"] = "Avg. hit spam";
L["TT_COMB_AVG_CRIT_SPAM"] = "Avg. crit spam";
L["TT_COMB_PERSEC_DAMAGE"] = "DPS spam";
L["TT_COMB_PERSEC_HEAL"] = "HPS spam";
L["TT_COMB_PER_MANA_HEAL"] = "HPM spam";
L["TT_COMB_PER_MANA_DAMAGE"] = "DPM spam";
L["TT_COMB_UNTILOOM_DAMAGE"] = "Damage until oom spam";
L["TT_COMB_UNTILOOM_HEAL"] = "Heal until oom spam";

L["TT_THPS"] = "For target HPS";
L["TT_THPS_TIMES"] = "%.1fs between casts, %.1fs outside of FSR";

L["TT_BUFFS"] = "Considered buffs:";
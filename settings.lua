---@type string
local _addonName = select(1, ...);
---@type AddonEnv
local _addon = select(2, ...);

local L = _addon:GetLocalization();
local classLoc, class = UnitClass("player");
local AceConfigRegistry = LibStub("AceConfigRegistry-3.0");
local AceConfigDialog = LibStub("AceConfigDialog-3.0");

local MAX_RESIST = 300;

---@class SettingsTable
local DEFAULTSETTINGS = {
	["firstStart"] = true,
	["debug"] = false,

	["useRealToOom"] = false,

	["ttHit"] = true,
	["ttCrit"] = true,
	["ttAverages"] = true,
	["ttCoef"] = true,
	["ttPower"] = true,
	["ttHitChance"] = true,
	["ttHitDetail"] = true,
	["ttResist"] = true,
	["ttPerSecond"] = true,
	["ttEffCost"] = true,
	["ttPerMana"] = true,
	["ttToOom"] = true,
	["ttCombined"] = true,
	["ttShowBuffs"] = false,

	["useCurrentTarget"] = true,
	["defaultTargetLvlOffset"] = 0,

	["resOverrideFire"] = 0,
	["resOverrideFrost"] = 0,
	["resOverrideShadow"] = 0,
	["resOverrideNature"] = 0,
	["resOverrideArcane"] = 0,

	["abShow"] = true,
	["abDirectValue"] = "hitAvg",
	["abDurationValue"] = "allTicks",
	["abSealValue"] = "hitAvg",
	["abPosition"] = 25,
	["abSize"] = 12,
	["abFont"] = "Friz Quadrata TT",
	["abFontFlags"] = "OUTLINE",
	["abColorHarm"] = {1, 1, 0.3},
	["abColorHelp"] = {0.3, 1, 0.3},

	["healTargetHps"] = 0,
	["healDisregardCrit"] = false,

	["meleeFromFront"] = false,

	calcEffManaInnervate = false,
	calcEffManaPotionTypeNew = "NONE",
	calcEffManaRune = false,

	["version"] = 1
};

local function defaultGet(info)
	return SpellCalc_settings[info[#info]];
end

local function defaultSet(info, val)
	SpellCalc_settings[info[#info]] = val;
	_addon:UpdateTarget();
	_addon:TriggerUpdate();
end

local SETTINGS_TABLE = {
	type = "group",
	get = defaultGet,
	set = defaultSet,
	args = {
		targetGroup = {
			order = 2,
			type = "group",
			name = L.TARGET,
			args = {
				defaultTargetLvlOffset = {
					order = 1,
					type = "range",
					name = L.SETTINGS_TAR_DEFLEVEL_LABEL,
					min = -3,
					max = 13,
					step = 1
				},
				useCurrentTarget = {
					order = 2,
					type = "toggle",
					name = L.SETTINGS_TT_USECURRENT_LABEL,
					desc = L.SETTINGS_TT_USECURRENT_TT
				},

				resHead = {
					order = 10,
					type = "header",
					name = L.SETTINGS_HEAD_RESISTANCE
				},
				resDesc = {
					order = 11,
					type = "description",
					name = L.SETTINGS_RESISTANCE_DESC
				},
				resOverrideFrost = {
					order = 12,
					type = "range",
					name = L.FROST,
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideFire = {
					order = 13,
					type = "range",
					name = L.FIRE,
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideShadow = {
					order = 14,
					type = "range",
					name = L.SHADOW,
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideNature = {
					order = 15,
					type = "range",
					name = L.NATURE,
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideArcane = {
					order = 16,
					type = "range",
					name = L.ARCANE,
					min = 0,
					max = MAX_RESIST,
					step = 1
				}
			}
		},

		tooltipGroup = {
			order = 4,
			type = "group",
			name = L.TOOLTIP,
			args = {
				ttDesc = {
					order = 0,
					type = "description",
					name = L.SETTINGS_HEAD_TOOLTIP
				},

				ttHit = {
					order = 1,
					type = "toggle",
					name = L.SETTINGS_TT_HITVAL_LABEL
				},
				ttCrit = {
					order = 2,
					type = "toggle",
					name = L.CRITICAL
				},
				ttAverages = {
					order = 3,
					type = "toggle",
					name = L.SETTINGS_TT_AVG_LABEL
				},

				ttPower = {
					order = 10,
					type = "toggle",
					name = L.SETTINGS_TT_POWER_LABEL,
					desc = L.SETTINGS_TT_POWER_TT
				},
				ttCoef = {
					order = 11,
					type = "toggle",
					name = L.COEFFICIENT
				},

				ttHitChance = {
					order = 20,
					type = "toggle",
					name = L.HIT_CHANCE
				},
				ttHitDetail = {
					order = 21,
					type = "toggle",
					name = L.SETTINGS_TT_HITCHANCE_DETAIL_LABEL,
					desc = L.SETTINGS_TT_HITCHANCE_DETAIL_TT
				},
				ttResist = {
					order = 22,
					type = "toggle",
					name = L.SETTINGS_TT_RESISTANCE_LABEL,
					desc = L.SETTINGS_TT_RESISTANCE_TT
				},

				ttPerSecond = {
					order = 30,
					type = "toggle",
					name = L.SETTINGS_TT_PERSEC_LABEL
				},

				ttEffCost = {
					order = 40,
					type = "toggle",
					name = L.EFFECTIVE_COST,
					desc = L.SETTINGS_TT_EFFCOST_TT
				},
				ttPerMana = {
					order = 41,
					type = "toggle",
					name = L.SETTINGS_TT_PERMANA_LABEL
				},
				ttToOom = {
					order = 42,
					type = "toggle",
					name = L.SETTINGS_TT_OOM_LABEL
				},

				ttCombined = {
					order = 50,
					type = "toggle",
					width = "double",
					name = L.SETTINGS_TT_COMBINED_LABEL,
					desc = L.SETTINGS_TT_COMBINED_TT
				},
			}
		},

		actionbarGroup = {
			order = 6,
			type = "group",
			name = L.SETTINGS_AB_TITLE,
			args = {
				abShow = {
					order = 1,
					type = "toggle",
					name = L.SETTINGS_AB_SHOW,
					width = 1.25,
					set = function(i, val)
						SpellCalc_settings.abShow = val;
						if not val then
							_addon.ActionBarValues:Clear();
						end
					end
				},
				abPosition = {
					order = 2,
					type = "range",
					name = L.SETTINGS_AB_POS,
					desc = L.SETTINGS_AB_POS_TT,
					min = 0,
					max = 100,
					step = 1,
					set = function(i, val)
						SpellCalc_settings.abPosition = val;
						_addon.ActionBarValues:UpdateStyle();
					end
				},
				fontSettings = {
					order = 3,
					type = "group",
					guiInline = true,
					name = L.SETTINGS_AB_FONT,
					args = {
						abFont = {
							order = 1,
							type = "select", 
							dialogControl = "LSM30_Font",
							name = L.SETTINGS_AB_FONT,
							values = AceGUIWidgetLSMlists.font,
							set = function(i, val)
								SpellCalc_settings.abFont = val;
								_addon.ActionBarValues:UpdateStyle();
							end
						},
						abSize = {
							order = 2,
							type = "range",
							name = L.SETTINGS_AB_SIZE,
							min = 8,
							max = 20,
							step = 1,
							set = function(i, val)
								SpellCalc_settings.abSize = val;
								_addon.ActionBarValues:UpdateStyle();
							end
						},
						abFontFlags = {
							order = 3,
							type = "select",
							name = L.SETTINGS_AB_FONT_STYLE,
							values = {
								NONE = L.NONE,
								OUTLINE = L.SETTINGS_AB_FONT_STYLE_OUTLINE,
								MONOCHROME = L.SETTINGS_AB_FONT_STYLE_MONOCHROME,
								["MONOCHROME,OUTLINE"] = L.SETTINGS_AB_FONT_STYLE_MONOCHROME_OUTLINE,
							},
							set = function(i, val)
								SpellCalc_settings.abFontFlags = val;
								_addon.ActionBarValues:UpdateStyle();
							end
						},
					},
				},
				colorSettings = {
					order = 4,
					type = "group",
					guiInline = true,
					name = L.SETTINGS_AB_COLORS,
					args = {
						abColorHarm = {
							order = 1,
							type = "color",
							name = L.SETTINGS_AB_COLOR_HARM,
							hasAlpha = false,
							get = function()
								return unpack(SpellCalc_settings.abColorHarm);
							end,
							set = function(info, r, g, b, a)
								SpellCalc_settings.abColorHarm[1] = r;
								SpellCalc_settings.abColorHarm[2] = g;
								SpellCalc_settings.abColorHarm[3] = b;
								_addon.ActionBarValues:UpdateStyle();
							end
						},
						abColorHelp = {
							order = 2,
							type = "color",
							name = L.SETTINGS_AB_COLOR_HELP,
							hasAlpha = false,
							get = function()
								return unpack(SpellCalc_settings.abColorHelp);
							end,
							set = function(info, r, g, b, a)
								SpellCalc_settings.abColorHelp[1] = r;
								SpellCalc_settings.abColorHelp[2] = g;
								SpellCalc_settings.abColorHelp[3] = b;
								_addon.ActionBarValues:UpdateStyle();
							end
						}
					}
				},
				valueSettings = {
					order = 4,
					type = "group",
					guiInline = true,
					name = L.SETTINGS_AB_HEAD,
					args = {
						abDirectValue = {
							order = 1,
							type = "select",
							name = L.SETTINGS_AB_DIRECT_VALUE,
							values = {
								avg = L.SETTINGS_AB_DIRECT_VALUE_AVG,
								avgCrit = L.SETTINGS_AB_DIRECT_VALUE_CRITAVG,
								avgAfterMitigation = L.REAL_AVERAGE,
								perSec = L.DMG_PER_SEC_SHORT.."/"..L.HEAL_PER_SEC_SHORT
							}
						},
						abDurationValue = {
							order = 2,
							type = "select",
							name = L.SETTINGS_AB_DURATION_VALUE,
							values = {
								avgCombined = L.SETTINGS_AB_DURATION_VALUE_TICK,
								allTicks = L.SETTINGS_AB_DURATION_VALUE_ALL,
								avgAfterMitigation = L.REAL_AVERAGE,
								perSec = L.DMG_PER_SEC_CAST_SHORT.."/"..L.HEAL_PER_SEC_CAST_SHORT,
								perSecDurOrCD = L.DMG_PER_SEC_SHORT.."/"..L.HEAL_PER_SEC_SHORT
							}
						},
						abSealValue = {
							order = 3,
							type = "select",
							name = L.SETTINGS_AB_SEAL_VALUE,
							values = {
								avg = L.SETTINGS_AB_SEAL_VALUE_HIT,
								avgCrit = L.SETTINGS_AB_DIRECT_VALUE_CRITAVG,
								avgAfterMitigation = L.DAMAGE_OVER_DURATION,
								perSec = L.DMG_PER_SEC_SHORT
							}
						},
					}
				},
			}
		},

		calcGroup = {
			order = 8,
			type = "group",
			name = L.SETTINGS_CALC_HEAD,
			args = {
				useRealToOom = {
					order = 1,
					type = "toggle",
					name = L.SETTINGS_CALC_REAL_OOM,
					desc = L.SETTINGS_CALC_REAL_OOM_TT
				},
				effManaGroup = {
					order = 2,
					type = "group",
					guiInline = true,
					name = L.SETTINGS_CALC_EM_HEAD,
					args = {
						desc = {
							order = 1,
							type = "description",
							name = L.SETTINGS_CALC_EM_DESC
						},
						calcEffManaInnervate = {
							order = 2,
							type = "toggle",
							name = L.SETTINGS_CALC_EM_INNER
						},
						calcEffManaRune = {
							order = 3,
							type = "toggle",
							name = L.SETTINGS_CALC_EM_RUNE
						},
						calcEffManaPotionTypeNew = {
							order = 4,
							type = "select",
							name = L.SETTINGS_CALC_EM_POTION,
							values = {
								NONE = L.NONE,
								MAJOR = L.SETTINGS_CALC_EM_POTION_MAJOR,
								SUPERIOR = L.SETTINGS_CALC_EM_POTION_SUPERIOR,
								GREATER = L.SETTINGS_CALC_EM_POTION_GREATER
							}
						}
					}
				}
			}
		},

		debugGroup = {
			order = -1,
			type = "group",
			name = "Debug",
			args = {
				ttShowBuffs = {
					order = 1,
					type = "toggle",
					name = L.SETTINGS_TT_BUFFS_LABEL,
					desc = L.SETTINGS_TT_BUFFS_TT
				},
				debug = {
					order = 2,
					type = "toggle",
					name = "Debug"
				},
			}
		},
	}
}

local ARGS_HEAL = {
	healTargetHps = {
		order = 1,
		type = "range",
		name = L.SETTINGS_HEAL_TARGET_HPS,
		desc = L.SETTINGS_HEAL_TARGET_HPS_TT,
		min = 0,
		max = 10000,
		softMax = 1500,
		step = 25
	},
	healDisregardCrit = {
		order = 2,
		type = "toggle",
		name = L.SETTINGS_HEAL_NO_CRIT,
		desc = L.SETTINGS_HEAL_NO_CRIT_TT
	}
}

local ARGS_MELEE = {
	meleeFromFront = {
		order = 1,
		type = "toggle",
		name = L.SETTINGS_MELEE_FROM_FRONT,
		desc = L.SETTINGS_MELEE_FROM_FRONT_TT
	}
}

--- Update SV data if needed.
local function CheckUpdates()
	local sv = SpellCalc_settings;
	local oldSettingsVer = type(sv.version) == "number" and sv.version or 0;

	if oldSettingsVer < 1 then
		-- Remove deprecated entries
		sv.calcEffManaPotionType = nil;
		sv.calcEffManaPotion = nil;
		sv.abOutline = nil;
		sv.abScale = nil;

		-- Update action bar value keys
		local oldToNew = {
			perSecond = "perSec",
			avgTriggerHits = "avgAfterMitigation",
			perTick = "avgCombined",
			critAvg = "avgCrit",
			hitAvg = "avg"
		};
		if oldToNew[sv.abDirectValue] then sv.abDirectValue = oldToNew[sv.abDirectValue] end
		if oldToNew[sv.abDurationValue] then sv.abDurationValue = oldToNew[sv.abDurationValue] end
		if oldToNew[sv.abSealValue] then sv.abSealValue = oldToNew[sv.abSealValue] end

		sv.version = 1;
	end
end

--- Setup SV tables, check settings and setup settings menu
function _addon:SetupSettings()
    if SpellCalc_settings == nil then
		SpellCalc_settings = DEFAULTSETTINGS;
	end

	for k, v in pairs(DEFAULTSETTINGS) do
		if SpellCalc_settings[k] == nil then
			_addon:PrintDebug("Creating missing setting " .. k);
			SpellCalc_settings[k] = v;
		end
	end

	CheckUpdates();

	if self.ClassSettings ~= nil then
		SETTINGS_TABLE.args.classGroup = {
			order = 10,
			type = "group",
			name = classLoc,
			args = self:ClassSettings()
		}
	end

	if _addon.MELEE_CLASSES[class] then
		SETTINGS_TABLE.args.meleeGroup = {
			order = 12,
			type = "group",
			name = L.SETTINGS_MELEE_HEAD,
			args = ARGS_MELEE
		}
	end

	if _addon.HEALING_CLASSES[class] then
		SETTINGS_TABLE.args.healGroup = {
			order = 14,
			type = "group",
			name = L.SETTINGS_HEAL_HEAD,
			args = ARGS_HEAL
		}
	end

	AceConfigRegistry:RegisterOptionsTable(_addonName, SETTINGS_TABLE);
	AceConfigDialog:AddToBlizOptions(_addonName, _addonName);
end
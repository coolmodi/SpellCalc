---@type string
local _addonName = select(1, ...);
---@class AddonEnv
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

	["ttHit"] = true,
	["ttCrit"] = true,
	["ttAverages"] = true,
	["ttPower"] = true,
	["ttHitChance"] = true,
	["ttHitDetail"] = true,
	["ttResist"] = true,
	["ttPerSecond"] = true,
	["ttEffCost"] = true,
	["ttPerMana"] = true,
	["ttToOom"] = true,
	["ttCombined"] = false,
	["ttShowBuffs"] = false,

	["useCurrentTarget"] = true,
	["defaultTargetLvlOffset"] = 0,

	["resOverrideFire"] = 0,
	["resOverrideFrost"] = 0,
	["resOverrideShadow"] = 0,
	["resOverrideNature"] = 0,
	["resOverrideArcane"] = 0,
	resOverrideArmor = 0,

	["abShow"] = true,
	["abDirectValue"] = "avg",
	["abDurationValue"] = "allTicks",
	--["abSealValue"] = "avg",
	abDmgShieldValue = "avgCombined",
    abManaRestoreValue = "allTicks",
	["abPosition"] = 25,
	["abSize"] = 12,
	["abFont"] = "Friz Quadrata TT",
	["abFontFlags"] = "OUTLINE",
	["abColorHarm"] = {1, 1, 0.3},
	["abColorHelp"] = {0.3, 1, 0.3},
    abColorMana = {0.1, 0.7, 1},

	["meleeFromFront"] = false,

	["useRealToOom"] = false,
	useCurrentPowerLevel = false,
	calcEffManaInnervate = false,
	calcEffManaPotionTypeNew = "NONE",
	calcEffManaRune = false,

    auraEffectToggleSactifiedRetribution = false,

	["version"] = 2
};

---@param info string[]
---@return string|number|integer
local function defaultGet(info)
	return SpellCalc_settings[info[#info]];
end

---@param info string[]
---@param val string|number|integer
local function defaultSet(info, val)
    ---@diagnostic disable-next-line: no-unknown
	SpellCalc_settings[info[#info]] = val;
	_addon.Target:Update();
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
			name = L["Target"],
			args = {
				defaultTargetLvlOffset = {
					order = 1,
					type = "range",
					name = L["Default level difference"],
                    desc = L["Level difference to use if no target available."],
					min = -3,
					max = 13,
					step = 1
				},
				useCurrentTarget = {
					order = 2,
					type = "toggle",
					name = L["Use current target"],
					desc = L["If possible use target's level instead."]
				},

				resHead = {
					order = 10,
					type = "header",
					name = L["Custom Resistance Values"]
				},
				resDesc = {
					order = 11,
					type = "description",
					name = L["If not 0 treat all targets as if they have this resistance value on top of possible resistance due to level difference."]
				},
				resOverrideFrost = {
					order = 12,
					type = "range",
					name = L["Frost"],
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideFire = {
					order = 13,
					type = "range",
					name = L["Fire"],
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideShadow = {
					order = 14,
					type = "range",
					name = L["Shadow"],
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideNature = {
					order = 15,
					type = "range",
					name = L["Nature"],
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideArcane = {
					order = 16,
					type = "range",
					name = L["Arcane"],
					min = 0,
					max = MAX_RESIST,
					step = 1
				},
				resOverrideArmor = {
					order = 17,
					type = "range",
					name = L["Armor"],
					min = 0,
					max = 17265,
					step = 1
				}
			}
		},

		tooltipGroup = {
			order = 4,
			type = "group",
			name = L["Tooltip"],
			args = {
				ttDesc = {
					order = 0,
					type = "description",
					name = L["Values to show in tooltips."]
				},

				ttHit = {
					order = 1,
					type = "toggle",
					name = L["Hit value"]
				},
				ttCrit = {
					order = 2,
					type = "toggle",
					name = L["Critical"]
				},
				ttAverages = {
					order = 3,
					type = "toggle",
					name = L["Averages"]
				},

				ttPower = {
					order = 10,
					type = "toggle",
					name = L["Scaling"],
					desc = L["Show spell/attack power scaling."]
				},

				ttHitChance = {
					order = 20,
					type = "toggle",
					name = L["Hit chance"]
				},
				ttHitDetail = {
					order = 21,
					type = "toggle",
					name = L["Detailed hit chance"],
					desc = L["Show base hit and bonus hit, also hit lost for binary spells."]
				},
				ttResist = {
					order = 22,
					type = "toggle",
					name = L["Resistance"],
					desc = L["Show average resisted damage and resistance value."]
				},

				ttPerSecond = {
					order = 30,
					type = "toggle",
					name = L["Per second (after mitigation)"]
				},

				ttEffCost = {
					order = 40,
					type = "toggle",
					name = L["Effective cost"],
					desc = L["Cost considering regeneration and procs."]
				},
				ttPerMana = {
					order = 41,
					type = "toggle",
					name = L["Per mana"]
				},
				ttToOom = {
					order = 42,
					type = "toggle",
					name = L["Done until oom"]
				},

				ttCombined = {
					order = 50,
					type = "toggle",
					width = "double",
					name = L["Combined direct + over time"],
					desc = L["Show combined values of direct and over time effect for spells that have both."]
				},
			}
		},

		actionbarGroup = {
			order = 6,
			type = "group",
			name = L["Actionbar"],
			args = {
				abShow = {
					order = 1,
					type = "toggle",
					name = L["Show values on actionbar"],
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
					name = L["Position"],
					desc = L["Offset from the bottom of the button in percent."],
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
					name = L["Font"],
					args = {
						abFont = {
							order = 1,
							type = "select", 
							dialogControl = "LSM30_Font",
							name = L["Font"],
							values = AceGUIWidgetLSMlists.font,
							set = function(i, val)
								SpellCalc_settings.abFont = val;
								_addon.ActionBarValues:UpdateStyle();
							end
						},
						abSize = {
							order = 2,
							type = "range",
							name = L["Font size"],
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
							name = L["Font Style"],
							values = {
								NONE = L["None"],
								OUTLINE = L["Outline"],
								MONOCHROME = L["Monochrome"],
								["MONOCHROME,OUTLINE"] = L["Monochrome + Outline"],
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
					name = L["Colors"],
					args = {
						abColorHarm = {
							order = 1,
							type = "color",
							name = L["Damage Color"],
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
							name = L["Heal Color"],
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
						},
						abColorMana = {
							order = 3,
							type = "color",
							name = L["Mana Color"],
							hasAlpha = false,
							get = function()
								return unpack(SpellCalc_settings.abColorMana);
							end,
							set = function(info, r, g, b, a)
								SpellCalc_settings.abColorMana[1] = r;
								SpellCalc_settings.abColorMana[2] = g;
								SpellCalc_settings.abColorMana[3] = b;
								_addon.ActionBarValues:UpdateStyle();
							end
						}
					}
				},
				valueSettings = {
					order = 4,
					type = "group",
					guiInline = true,
					name = L["Shown values"],
					args = {
						abDirectValue = {
							order = 1,
							type = "select",
							name = L["Direct"],
							values = {
								avg = L["Avg. normal hit"],
								avgCrit = L["Avg. crit"],
								avgAfterMitigation = L["Real average"],
								perSec = L["DPS"].."/"..L["HPS"],
								casts = L["Possible Casts"],
								castsTime = L["Time to OOM"]
							}
						},
						abDurationValue = {
							order = 2,
							type = "select",
							name = L["DoT/HoT"],
							values = {
								avgCombined = L["Per tick"],
								allTicks = L["All ticks"],
								avgAfterMitigation = L["Real average"],
								perSec = L["DPSC"].."/"..L["HPSC"],
								perSecDurOrCD = L["DPS"].."/"..L["HPS"],
								casts = L["Possible Casts"],
								castsTime = L["Time to OOM"]
							}
						},
						--[[ abSealValue = {
							order = 3,
							type = "select",
							name = L["Seals"],
							values = {
								avg = L["Avg. hit"],
								avgCrit = L.SETTINGS_AB_DIRECT_VALUE_CRITAVG
							}
						}, ]]
						abDmgShieldValue = {
							order = 4,
							type = "select",
							name = L["Damage Shields"],
							values = {
								avgCombined = L["Per tick"],
								allTicks = L["All ticks"],
								casts = L["Possible Casts"]
							}
						},
						abManaRestoreValue = {
							order = 5,
							type = "select",
							name = L["Mana Restore"],
							values = {
								avgCombined = L["Per tick"],
								allTicks = L["All ticks"],
							}
						},
						desc = {
							order = 6,
							type = "description",
							name = L["If using Time to OOM or Possible Casts you may want to enable Remaining Casts in Calculation settings!"]
						},
					}
				},
			}
		},

		calcGroup = {
			order = 8,
			type = "group",
			name = L["Calculation"],
			args = {
				toOomGroup = {
					order = 1,
					type = "group",
					guiInline = true,
					name = L["Possible Casts"],
					args = {
						useRealToOom = {
							order = 1,
							type = "toggle",
							name = L["Real until OOM"],
							desc = L["Consider mana below spellcost as 0 mana instead of calculating with theoretical partial casts."]
						},
						useCurrentPowerLevel = {
							order = 2,
							type = "toggle",
							name = L["Remaining Casts"],
							desc = L["Calculate possible casts with current mana value instead of always assuming full mana."],
							set = function(info, value)
								SpellCalc_settings.useCurrentPowerLevel = value;
								_addon:TriggerUpdate();
							end
						},
					}
				},
				effManaGroup = {
					order = 3,
					type = "group",
					guiInline = true,
					name = L["Effective Mana Pool"],
					args = {
						desc = {
							order = 1,
							type = "description",
							name = L["Consider mana gained from chosen effects for relevant calculations."]
						},
						calcEffManaInnervate = {
							order = 2,
							type = "toggle",
							name = L["Innervate"],
                            desc = L["Innervate from a lvl 80 druid."]
						},
						calcEffManaRune = {
							order = 3,
							type = "toggle",
							name = L["Use Rune"]
						},
						calcEffManaPotionTypeNew = {
							order = 4,
							type = "select",
							name = L["Mana Potion"],
							values = {
								NONE = L["None"],
								SUPER = L["Super Mana Potion"],
								MAJOR = L["Major Mana Potion"],
								SUPERIOR = L["Superior Mana Potion"],
								GREATER = L["Greater Mana Potion"],
                                RUNIC = L["Runic Mana Potion"],
                                RUNIC_ENGI = L["Runic (Engineer + 25%)"],
							}
						}
					}
				}
			}
		},

        auraToggleGroup = {
			order = 9,
			type = "group",
			name = L["Aura Toggles"],

			args = {
                desc = {
                    order = 1,
                    type = "description",
                    name = L["Some auras can have additional effects, e.g. from talents, that have no indication on the aura about whether they are there or not. You can toggle them on/off here."]
                },
                auraEffectToggleSactifiedRetribution = {
					order = 2,
					type = "toggle",
					name = L["Sanctified Retribution"],
                    desc = L["+3% damage when affected by a paladin's aura."],
                    set = function(i, val)
                        _addon:UpdateAurasForUnit("player", true);
                        _addon:UpdateAurasForUnit("target", true);
						SpellCalc_settings.auraEffectToggleSactifiedRetribution = val;
                        _addon:UpdateAurasForUnit("player");
                        _addon:UpdateAurasForUnit("target");
					end
				},
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
					name = L["Show buffs"],
					desc = L["Show buffs/gear/talents affecting the spell calculation. This doesn't include things that the addon doesn't need to handle itself!"]
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

local ARGS_MELEE = {
	meleeFromFront = {
		order = 1,
		type = "toggle",
		name = L["Attacking from front"],
		desc = L["Use parry and block against PvE targets."]
	}
}

--- Update SV data if needed.
local function CheckUpdates()
	local sv = SpellCalc_settings;
	local oldSettingsVer = type(sv.version) == "number" and sv.version or 0;

	if oldSettingsVer < 1 then
		-- Remove deprecated entries
        ---@diagnostic disable-next-line: no-unknown
		sv.calcEffManaPotionType = nil;
        ---@diagnostic disable-next-line: no-unknown
		sv.calcEffManaPotion = nil;
        ---@diagnostic disable-next-line: no-unknown
		sv.abOutline = nil;
        ---@diagnostic disable-next-line: no-unknown
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

	if oldSettingsVer < 2 then
		if sv.abDirectValue == "hitAvg" then sv.abDirectValue = "avg" end
		if sv.abSealValue == "hitAvg" then sv.abSealValue = "avg" end
		sv.version = 2;
	end
end

--- Setup SV tables, check settings and setup settings menu
_addon.events.OnAddonLoaded(function ()
    if SpellCalc_settings == nil then
		SpellCalc_settings = DEFAULTSETTINGS;
	end

    ---@diagnostic disable-next-line: no-unknown
	for k, v in pairs(DEFAULTSETTINGS) do
		if SpellCalc_settings[k] == nil then
			_addon.util.PrintDebug("Creating missing setting " .. k);
            ---@diagnostic disable-next-line: no-unknown
			SpellCalc_settings[k] = v;
		end
	end

	CheckUpdates();

	if _addon.ClassSettings ~= nil then
		SETTINGS_TABLE.args.classGroup = {
			order = 10,
			type = "group",
			name = classLoc,
			args = _addon.ClassSettings()
		}
	end

	if _addon.CONST.MELEE_CLASSES[class] then
		SETTINGS_TABLE.args.meleeGroup = {
			order = 12,
			type = "group",
			name = L["Melee"],
			args = ARGS_MELEE
		}
	end

	AceConfigRegistry:RegisterOptionsTable(_addonName, SETTINGS_TABLE);
	AceConfigDialog:AddToBlizOptions(_addonName, _addonName);
end);

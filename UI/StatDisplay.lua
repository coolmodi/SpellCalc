---@class AddonEnv
local _addon = select(2, ...);

local VALUE_COLOR = "|cFFAAFFAA";
local UNIT_COLOR = "|cFFFFFFCC";
local KEY_COLOR = "|cFFFFAAAA";

local stats = _addon.stats;
---@type table|nil
local lastRow;
---@type {title:string, tab:table, key:string|number, unit:string, f:FontString}[]
local singleStats = {};
---@type {title:string, tab:table, unit:string, f:FontString, b:FontString}[]
local uniformStats = {};
---@type {row:WoWFrame, listFrames:WoWFrame[], spells:table<integer, UniformStat>, unit:string}[]
local spellLists = {};

-------------------------------------------------------
-- Setup UI

local frame = CreateFrame("Frame", "SpellCalcStatScreen", UIParent, "BackdropTemplate");
frame:SetPoint("CENTER", 0, 0);
frame:SetWidth(400);
frame:SetHeight(500);
frame:SetClampedToScreen(true);
frame:SetMovable(true);
frame:EnableMouse(true);
frame:RegisterForDrag("LeftButton");
frame:SetScript("OnDragStart", frame.StartMoving);
frame:SetScript("OnDragStop", frame.StopMovingOrSizing);
frame:Hide();
frame:SetBackdrop({bgFile = "Interface/Tooltips/UI-Tooltip-Background", tile = true, tileSize = 16, edgeSize = 16});
frame:SetBackdropColor(0,0,0,1);

local scrollFrame = CreateFrame("ScrollFrame", "SpellCalcStatScreenScroll", frame, "UIPanelScrollFrameTemplate");
local scrollChild = CreateFrame("Frame", nil, scrollFrame);
scrollFrame:SetPoint("TOPLEFT", 0, 0);
scrollFrame:SetPoint("BOTTOMRIGHT", 0, 0);
scrollFrame:SetClipsChildren(true);
scrollFrame.ScrollBar:ClearAllPoints();
scrollFrame.ScrollBar:SetPoint("TOPRIGHT", scrollFrame, "TOPRIGHT", 0, -17);
scrollFrame.ScrollBar:SetPoint("BOTTOMRIGHT", scrollFrame, "BOTTOMRIGHT", 0, 17);
scrollChild:SetSize(scrollFrame:GetWidth()-24, 1);
scrollFrame:SetScrollChild(scrollChild);


-------------------------------------------------------
-- UI functions

--- Creates a row and appends it to the scroll list
local function CreateStatRow()
    local f = CreateFrame("Frame", nil, scrollChild);
    if not lastRow then
        f:SetPoint("TOPLEFT", 5, -5);
        f:SetPoint("TOPRIGHT", 5, -5);
    else
        f:SetPoint("TOPLEFT", lastRow, "BOTTOMLEFT", 0, 0);
        f:SetPoint("TOPRIGHT", lastRow, "BOTTOMRIGHT", 0, 0);
    end
    lastRow = f;
    f:SetHeight(1);
    return f;
end

--- Add single stat value pair to the list
---@param label string The label for the stat
---@param inTable table<any, any> The table its value is found in
---@param key any The key of the value
---@param unit string|nil The unit of the value, if any
local function AddSingleStat(label, inTable, key, unit)
    if type(inTable) ~= "table" then error("inTable not a table!") end
    local row = CreateStatRow();
    local text = row:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
    text:SetPoint("TOPLEFT", 0, 0);
    text:SetText("-");
    row:SetHeight(text:GetHeight());
    table.insert(singleStats, {
        title = label,
        tab = inTable,
        key = key,
        unit = unit,
        f = text
    });
end

--- Add strings to a frame for stat data display
---@param parent WoWFrame The parent frame to add strings to
local function CreateUniformStatStrings(parent)
    local text = parent:CreateFontString(nil, "OVERLAY", "GameFontHighlight");
    text:SetPoint("TOPLEFT", 0, 0);
    text:SetText("-");
    local affectedBy = parent:CreateFontString(nil, "OVERLAY", "GameFontWhiteTiny");
    affectedBy:SetPoint("TOPLEFT", text, "BOTTOMLEFT", 4, 0);
    affectedBy:SetText("-");
    affectedBy:SetWidth(375);
    affectedBy:SetJustifyH("LEFT");
    affectedBy:SetWordWrap(true);
    parent:SetHeight(text:GetHeight() + affectedBy:GetHeight() + 2);
    return text, affectedBy;
end

--- Add a "uniform" stat to the list
---@param title string The label for the stat
---@param statTable UniformStat The table of the stat
---@param unit string|nil The unit of the value, if any
local function AddUniformStatTable(statTable, title, unit)
    local row = CreateStatRow();
    local text, affectedBy = CreateUniformStatStrings(row);
    table.insert(uniformStats, {
        title = title,
        tab = statTable,
        unit = unit,
        f = text,
        b = affectedBy
    });
end

--- Add a school stat list with single primitive values to the list
---@param schoolTable table<SpellSchool, string|number> The table containing the per school values
---@param title string The label for the stat
---@param unit string|nil The unit of the value, if any
local function AddSchoolTableSingle(schoolTable, title, unit)
    if title then
        local row = CreateStatRow();
        local text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2");
        text:SetPoint("LEFT", 0, 0);
        text:SetText(title);
        row:SetHeight(text:GetHeight() + 10);
    end
    for schoolNum, _ in pairs(schoolTable) do
        AddSingleStat(SCHOOL_STRINGS[schoolNum], schoolTable, schoolNum, unit);
    end
end

--- Add a school stat list with "uniform stat entries" to the list
---@param schoolTable table<SpellSchool, UniformStat> The table containing the per school values
---@param title string The label for the stat
---@param unit string The unit of the value, if any
local function AddSchoolTableUniform(schoolTable, title, unit)
    if title then
        local row = CreateStatRow();
        local text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2");
        text:SetPoint("LEFT", 0, 0);
        text:SetText(title);
        row:SetHeight(text:GetHeight() + 10);
    end
    for schoolNum, _ in pairs(schoolTable) do
        AddUniformStatTable(schoolTable[schoolNum], SCHOOL_STRINGS[schoolNum], unit);
    end
end

--- Add a list of spell specific stats to the list
---@param spellTable table<integer, UniformStat> The table containing the spell tables
---@param title string|nil The label for the stat
---@param unit string|nil The unit of the value, if any
local function AddSpellTable(spellTable, title, unit)
    if title then
        local row = CreateStatRow();
        local text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2");
        text:SetPoint("LEFT", 0, 0);
        text:SetText(title);
        row:SetHeight(text:GetHeight() + 10);
    end
    table.insert(spellLists, {
        row = CreateStatRow(),
        listFrames = {},
        spells = spellTable,
        unit = unit
    });
end

--- Add a title
---@param title string The label for the stat
local function AddTitle(title)
    if title then
        local row = CreateStatRow();
        local text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2");
        text:SetPoint("LEFT", 0, 0);
        text:SetText(title);
        row:SetHeight(text:GetHeight() + 10);
    end
end

--- Add a weapon types uniform table
-- @param weaponTable The table containing the per weapon tables
-- @param title The label for the stat
-- @param unit The unit of the value, if any
--[[ local function AddWeaponTableUniform(weaponTable, title, unit)
    if title then
        local row = CreateStatRow();
        local text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2");
        text:SetPoint("LEFT", 0, 0);
        text:SetText(title);
        row:SetHeight(text:GetHeight() + 10);
    end
    for weaponType, _ in pairs(weaponTable) do
        local label = "-";
        for k, typeVal in pairs(_addon.CONST.WEAPON_TYPES_MASK) do
            if typeVal == weaponType then
                label = k;
                break;
            end
        end
        AddUniformStatTable(weaponTable[weaponType], label, unit);
    end
end ]]

--- Add a school stat list with "uniform stat entries" to the list
---@param versusTable table<CreatureType, UniformStat> The creature type stat table
---@param title string|nil The title for these stats
---@param unit string|nil The unit for the values
local function AddVersusTypeTableUniform(versusTable, title, unit)
    if title then
        local row = CreateStatRow();
        local text = row:CreateFontString(nil, "OVERLAY", "GameFontNormalMed2");
        text:SetPoint("LEFT", 0, 0);
        text:SetText(title);
        row:SetHeight(text:GetHeight() + 10);
    end
    for typeNum, _ in pairs(versusTable) do
        local label;
        for k, v in pairs(_addon.CONST.CREATURE_TYPE) do
            if v == typeNum then
                label = k;
            end
        end
        AddUniformStatTable(versusTable[typeNum], label, unit);
    end
end

-------------------------------------------------------
-- Update UI

local timePassed = 0;
local function UpdateDisplay(self, passed)
    timePassed = timePassed + passed;
    if timePassed < 1 then
        return;
    end
    timePassed = 0;

    for k, data in ipairs(singleStats) do
        local ostr = KEY_COLOR .. data.title .. ": " .. VALUE_COLOR;
        if type(data.tab[data.key]) == "number" then
            ostr = ostr .. math.floor(data.tab[data.key]*100 + 0.5)/100;
        else
            ostr = ostr .. tostring(data.tab[data.key]);
        end
        if data.unit then
            ostr = ostr .. UNIT_COLOR .. data.unit;
        end
        data.f:SetText(ostr);
    end

    for k, data in ipairs(uniformStats) do
        local ostr = KEY_COLOR .. data.title .. ": " .. VALUE_COLOR .. math.floor(data.tab.val*100 + 0.5)/100;
        if data.unit then
            ostr = ostr .. UNIT_COLOR .. data.unit;
        end
        data.f:SetText(ostr);
        data.b:SetText("Src: " .. table.concat(data.tab.buffs, ", "));
    end

    for k, spellList in ipairs(spellLists) do
        local pos = 1;
        for spellIdOrName, uniformStat in pairs(spellList.spells) do
            if spellList.listFrames[pos] == nil then
                local f = CreateFrame("Frame", nil, spellList.row);
                local text, affectedBy = CreateUniformStatStrings(f);
                f.text = text; f.affectedBy = affectedBy;
                spellList.listFrames[pos] = f;
                if pos == 1 then
                    f:SetPoint("TOPLEFT", 0, 0);
                    f:SetPoint("TOPRIGHT", 0, 0);
                else
                    f:SetPoint("TOPLEFT", spellList.listFrames[pos-1], "BOTTOMLEFT", 0, 0);
                    f:SetPoint("TOPRIGHT", spellList.listFrames[pos-1], "BOTTOMRIGHT", 0, 0);
                end
            else
                spellList.listFrames[pos]:Show()
            end
            local label;
            if type(spellIdOrName) == "number" then
                local name = GetSpellInfo(spellIdOrName);
                local subTextOrRank = GetSpellSubtext(spellIdOrName);
                label = name;
                if subTextOrRank then
                    label = label.." |cFFaaaaaa"..subTextOrRank.."|r";
                end
            else
                label = spellIdOrName;
            end
            local ostr = KEY_COLOR .. label .. ": " .. VALUE_COLOR .. math.floor(uniformStat.val*100 + 0.5)/100;
            if spellList.unit then
                ostr = ostr .. UNIT_COLOR .. spellList.unit;
            end
            spellList.listFrames[pos].text--[[@as FontString]]:SetText(ostr);
            spellList.listFrames[pos].affectedBy--[[@as FontString]]:SetText("Src: " .. table.concat(uniformStat.buffs, ", "));
            pos = pos+1;
        end

        for i = pos, #spellList.listFrames do
            spellList.listFrames[i]:Hide();
        end

        if pos > 1 then
            spellList.row:SetHeight((pos-1) * spellList.listFrames[1]:GetHeight());
        end
    end
end

frame:SetScript("OnShow", function(self)
    self:SetScript("OnUpdate", UpdateDisplay);
end);

frame:SetScript("OnHide", function(self)
    self:SetScript("OnUpdate", nil);
end);

-------------------------------------------------------
-- Add stats to UI

AddSingleStat("Mana", stats, "mana");
AddSingleStat("Spirit/Int base regen", stats, "manaRegBase", " mana/s");
AddSingleStat("While casting", stats, "manaRegCasting", " mana/s");
AddUniformStatTable(stats.fsrRegenMult, "FSR regen mult", "%");
AddSingleStat("Mp5 from API", stats, "manaRegAura", " mana/s");
AddUniformStatTable(stats.mp5, "Mp5 internal", " mana/5s");
AddUniformStatTable(stats.intToMP5Pct, "Int % mp5", "%");

AddSchoolTableSingle(stats.spellPower, "Spell power");
AddSingleStat("Healing bonus", stats, "spellHealing");

AddSchoolTableSingle(stats.spellCrit, "Spell crit", "%");
AddSchoolTableUniform(stats.schoolModFlatCritChance, "Crit mods", "%");
AddSpellTable(stats.spellModFlatCritChance, nil, "%");
AddSchoolTableUniform(stats.schoolModPctCritMult, "Crit mult mods", "%");
AddSpellTable(stats.spellModPctCritMult, nil, "%");
AddSchoolTableUniform(stats.schoolCritBaseMult, "Base crit mods", "%");

AddSchoolTableUniform(stats.schoolModSpellPen, "Spell pen", "");

AddUniformStatTable(stats.hitBonusSpell, "Spell +hit", "%");
AddUniformStatTable(stats.hitBonus, "Melle/Ranged +hit", "%");
AddSpellTable(stats.spellModFlatHitChance, nil, "%");

AddUniformStatTable(stats.modhealingDone, "Healing done mod (all)", "%");
AddUniformStatTable(stats.modCriticalHealing, "Crit. Healing done mod (all)", "%");

AddSpellTable(stats.spellModPctEffect, "Spell Pct Effect", "%");
AddSpellTable(stats.spellModPctDamageHealing, "Spell Pct Damage/Healing", "%");
AddSpellTable(stats.spellModPctDoTHoT, "Spell Pct DoT/HoT", "%");
--AddSchoolTableUniform(stats.schoolModPctDamage, "School Pct Damage", "%");

AddSpellTable(stats.spellModFlatDuration, "Duration mods:", "ms");
AddSpellTable(stats.spellModFlatTickperiod, "Period mods:", "ms");
AddSpellTable(stats.spellModFlatValue, "Flat mods", "");
AddSpellTable(stats.spellModFlatSpellpower, "Extra SP", "");
AddSpellTable(stats.spellModMageNWR, "Mage NWR proc", "");
AddSpellTable(stats.spellModChainMult, "Chain multiplier mods", "%");
AddSpellTable(stats.spellModGCDms, "GCD modifiers", "ms");
AddSpellTable(stats.spellModAllowDotCrit, "DoT can crit", "");
AddSpellTable(stats.spellModAllowDotHaste, "DoT use haste", "");

AddTitle("Weapon attack speed");
AddSingleStat("Mainhand", stats.attackSpeed, "mainhand");
AddSingleStat("Offhand", stats.attackSpeed, "offhand");
AddSingleStat("Ranged", stats.attackSpeed, "ranged");
AddTitle("Weapon attack");
AddSingleStat("Mainhand", stats.attack, "mainhand");
AddSingleStat("Offhand", stats.attack, "offhand");
AddSingleStat("Ranged", stats.attack, "ranged");
AddTitle("Weapon crit");
AddSingleStat("Melee", stats.attackCrit, "mainhand", "%");
AddSingleStat("Ranged", stats.attackCrit, "ranged", "%");
AddTitle("Weapon dmg");
AddSingleStat("Mainhand min", stats.attackDmg.mainhand, "min");
AddSingleStat("Mainhand max", stats.attackDmg.mainhand, "max");
AddSingleStat("Offhand min", stats.attackDmg.offhand, "min");
AddSingleStat("Offhand max", stats.attackDmg.offhand, "max");
AddSingleStat("Ranged min", stats.attackDmg.ranged, "min");
AddSingleStat("Ranged max", stats.attackDmg.ranged, "max");

AddTitle("Clearcast");
AddSpellTable(stats.spellModClearCastChance, nil, "%");
AddUniformStatTable(stats.clearCastChanceDmg, "Clearcast chance dmg", "%");
AddUniformStatTable(stats.clearCastChance, "Clearcast chance", "%");

AddTitle("Misc");
AddUniformStatTable(stats.illumination, "Illumination", "%");
AddUniformStatTable(stats.ignite, "Ignite", "");
AddUniformStatTable(stats.impShadowBolt, "Imp Shadow Bolt", "%");
AddUniformStatTable(stats.earthfuryReturn, "Earthfury return", "");

AddTitle("Target");
AddSingleStat("Level", _addon.Target, "level", "");
AddSingleStat("LevelDiff", _addon.Target, "levelDiff", "");
AddSingleStat("Player", _addon.Target, "isPlayer", "");
AddSingleStat("Class", _addon.Target, "class", "");
AddSingleStat("Type", _addon.Target, "creatureType", "");
for key, schoolNum in pairs(_addon.CONST.SCHOOL) do
    AddSingleStat(key, _addon.Target.resistanceBase, schoolNum, "");
end
AddSchoolTableUniform(stats.targetSchoolModResistancePct, "School Pct Mod Resistance", "%");
AddSchoolTableUniform(stats.targetSchoolModDamageTaken, "School Pct Damage Taken", "%");


AddVersusTypeTableUniform(stats.versusModFlatSpellpower, "Creature Type Flat SP", "");
AddVersusTypeTableUniform(stats.versusModFlatAttackpower, "Creature Type Flat AP melee", "");
AddVersusTypeTableUniform(stats.versusModFlatAttackpowerRanged, "Creature Type Flat AP ranged", "");
AddVersusTypeTableUniform(stats.versusModPctDamage, "Creature Type Mult", "%");
AddVersusTypeTableUniform(stats.versusModPctCritDamage, "Creature Type Crit Mult", "%");
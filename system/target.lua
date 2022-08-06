---@class AddonEnv
local _addon = select(2, ...);
local npcResistances = _addon.npcResistances;
local SCHOOL = _addon.CONST.SCHOOL;

local CREATURE_TYPE_LOC_TO_ID = {
    ["Beast"] = 1,
    ["Wildtier"] = 1,
    ["Bestia"] = 1,
    ["Bête"] = 1,
    ["Fera"] = 1,
    ["Животное"] = 1,
    ["야수"] = 1,
    ["野兽"] = 1,
    ["野獸"] = 1,

    ["Dragonkin"] = 2,
    ["Drachkin"] = 2,
    ["Dragon"] = 2,
    ["Dragón"] = 2,
    ["Draconien"] = 2,
    ["Dragoide"] = 2,
    ["Dracônico"] = 2,
    ["Дракон"] = 2,
    ["용족"] = 2,
    ["龙类"] = 2,
    ["龍類"] = 2,

    ["Demon"] = 3,
    ["Dämon"] = 3,
    ["Demonio"] = 3,
    ["Démon"] = 3,
    ["Demone"] = 3,
    ["Demônio"] = 3,
    ["Демон"] = 3,
    ["악마"] = 3,
    ["恶魔"] = 3,
    ["惡魔"] = 3,

    ["Elemental"] = 4,
    ["Elementar"] = 4,
    ["Élémentaire"] = 4,
    ["Elementale"] = 4,
    ["Элементаль"] = 4,
    ["정령"] = 4,
    ["元素生物"] = 4,

    ["Giant"] = 5,
    ["Riese"] = 5,
    ["Gigante"] = 5,
    ["Géant"] = 5,
    ["Великан"] = 5,
    ["거인"] = 5,
    ["巨人"] = 5,

    ["Undead"] = 6,
    ["Untoter"] = 6,
    ["No-muerto"] = 6,
    ["Mort-vivant"] = 6,
    ["Non Morto"] = 6,
    ["Renegado"] = 6,
    ["Нежить"] = 6,
    ["언데드"] = 6,
    ["亡灵"] = 6,
    ["不死族"] = 6,

    ["Humanoid"] = 7,
    ["Humanoide"] = 7,
    ["Humanoïde"] = 7,
    ["Umanoide"] = 7,
    ["Гуманоид"] = 7,
    ["인간형"] = 7,
    ["人型生物"] = 7,

    ["Critter"] = 8,
    ["Kleintier"] = 8,
    ["Alma"] = 8,
    ["Bestiole"] = 8,
    ["Animale"] = 8,
    ["Bicho"] = 8,
    ["Существо"] = 8,
    ["동물"] = 8,
    ["小动物"] = 8,
    ["小動物"] = 8,

    ["Mechanical"] = 9,
    ["Mechanisch"] = 9,
    ["Mecánico"] = 9,
    ["Machine"] = 9,
    ["Meccanico"] = 9,
    ["Mecânico"] = 9,
    ["Механизм"] = 9,
    ["기계"] = 9,
    ["机械"] = 9,
    ["機械"] = 9,

    ["Not specified"] = 10,
    ["Nicht spezifiziert"] = 10,
    ["No especificado"] = 10,
    ["Sin especificar"] = 10,
    ["Non spécifié"] = 10,
    ["Non Specificato"] = 10,
    ["Não especificado"] = 10,
    ["Не указано"] = 10,
    ["기타"] = 10,
    ["未指定"] = 10,
    ["不明"] = 10,

    ["Totem"] = 11,
    ["Tótem"] = 11,
    ["Totém"] = 11,
    ["Тотем"] = 11,
    ["토템"] = 11,
    ["图腾"] = 11,
    ["圖騰"] = 11,
}

---@class Target
---@field class string|nil
---@field creatureType number|nil
---@field resistanceBase table<number, number>
local Target = {
    level = 0,
    levelDiff = 0,
    isPlayer = false,
    npcId = -1,
    comboPoints = 0,
    resistanceBase = {
        [SCHOOL.PHYSICAL] = 0,
        [SCHOOL.HOLY] = 0,
        [SCHOOL.FIRE] = 0,
        [SCHOOL.NATURE] = 0,
        [SCHOOL.FROST] = 0,
        [SCHOOL.SHADOW] = 0,
        [SCHOOL.ARCANE] = 0
    }
};

--- Update resistance values for current target.
-- Use override values or known values for some NPCs.
local function UpdateResistances()
    for _, schoolNum in pairs(SCHOOL) do
        Target.resistanceBase[schoolNum] = 0;
    end

    if SpellCalc_settings.resOverrideFire > 0 then
        Target.resistanceBase[SCHOOL.FIRE] = SpellCalc_settings.resOverrideFire;
    end
    if SpellCalc_settings.resOverrideFrost > 0 then
        Target.resistanceBase[SCHOOL.FROST] = SpellCalc_settings.resOverrideFrost;
    end
    if SpellCalc_settings.resOverrideNature > 0 then
        Target.resistanceBase[SCHOOL.NATURE] = SpellCalc_settings.resOverrideNature;
    end
    if SpellCalc_settings.resOverrideShadow > 0 then
        Target.resistanceBase[SCHOOL.SHADOW] = SpellCalc_settings.resOverrideShadow;
    end
    if SpellCalc_settings.resOverrideArcane > 0 then
        Target.resistanceBase[SCHOOL.ARCANE] = SpellCalc_settings.resOverrideArcane;
    end
    if SpellCalc_settings.resOverrideArmor > 0 then
        Target.resistanceBase[SCHOOL.PHYSICAL] = SpellCalc_settings.resOverrideArmor;
    end

    if Target.isPlayer then
        return;
    end

    if npcResistances[Target.npcId] then
        for _, schoolNum in pairs(SCHOOL) do
            if Target.resistanceBase[schoolNum] == 0 and npcResistances[Target.npcId][schoolNum] then
                Target.resistanceBase[schoolNum] = npcResistances[Target.npcId][schoolNum];
            end
        end
    end

    if Target.resistanceBase[SCHOOL.PHYSICAL] == 0 then
        Target.resistanceBase[SCHOOL.PHYSICAL] = _addon.levelDefaultArmor[Target.level];
        if Target.class == "PALADIN" then
            -- This is just a rough value. Always seems to be between 0.80-0.83 of "warrior" armor,
            -- with higher levels closer to 0.8, so this should be close enough.
            Target.resistanceBase[SCHOOL.PHYSICAL] = Target.resistanceBase[SCHOOL.PHYSICAL] * 0.81;
        elseif Target.class == "MAGE" then
            Target.resistanceBase[SCHOOL.PHYSICAL] = Target.resistanceBase[SCHOOL.PHYSICAL] * 0.5;
        end
    end
end

---Return resistance for school after reductions on target.
---@param school number
---@return number
function Target:GetEffectiveResistance(school)
    local r = self.resistanceBase[school];
    if _addon.stats.targetSchoolModResistancePct[school].val ~= 0 then
        r = r * (1 + _addon.stats.targetSchoolModResistancePct[school].val/100);
    end
    return r;
end

--- Update currently selected target.
function Target:Update()
    local tName = UnitName("target");
    local pLevel = UnitLevel("player");
    local _, class = UnitClass("target");

    self.class = class;

    if tName == nil or not SpellCalc_settings.useCurrentTarget then
        self.level = pLevel + SpellCalc_settings.defaultTargetLvlOffset;
        self.levelDiff = SpellCalc_settings.defaultTargetLvlOffset;
        self.isPlayer = false;
    else
        local tLevel = UnitLevel("target");
        if tLevel == -1 then
            tLevel = pLevel + 3;
        end

        self.level = tLevel;
        self.levelDiff = tLevel - pLevel;
        self.isPlayer = UnitIsPlayer("target");
    end

    if tName then
        if not self.isPlayer then
            local unitType, _, _, _, _, npcID = strsplit("-", UnitGUID("target"));
            local idnum = tonumber(npcID);
            if idnum then
                self.npcId = idnum;
            else
                self.npcId = -1;
            end

            self.creatureType = CREATURE_TYPE_LOC_TO_ID[UnitCreatureType("target")];
        else
            self.npcId = -1;
            self.creatureType = 7;
        end
    else
        self.npcId = -1;
        self.creatureType = nil;
    end

    Target.comboPoints = GetComboPoints("player", "target");

    UpdateResistances();
    _addon:UpdateAurasForUnit("target");

    _addon.util.PrintDebug(("New target: %d (%d), Player: %s, ID: %d"):format(self.level, self.levelDiff, tostring(self.isPlayer), self.npcId));
    _addon.util.PrintDebug(("P: %d, H: %d, Fi: %d, N: %d, Fr: %d, S: %d, A: %d"):format(self.resistanceBase[SCHOOL.PHYSICAL], self.resistanceBase[SCHOOL.HOLY], self.resistanceBase[SCHOOL.FIRE],
        self.resistanceBase[SCHOOL.NATURE], self.resistanceBase[SCHOOL.FROST], self.resistanceBase[SCHOOL.SHADOW], self.resistanceBase[SCHOOL.ARCANE]));

    _addon:TriggerUpdate();
end

_addon.Target = Target;

_addon.events.Register("PLAYER_ENTERING_WORLD", function() Target:Update() end);
_addon.events.Register("PLAYER_TARGET_CHANGED", function () Target:Update() end);

-- Druid + Rogue
local _, class = UnitClass("player");
if class == "ROGUE" or class == "DRUID" then
    _addon.events.Register("UNIT_POWER_UPDATE", function (unit, powerType)
        if unit == "player" and powerType == "COMBO_POINTS" then
            Target.comboPoints = GetComboPoints("player", "target");
            _addon:TriggerUpdate();
        end
    end);
end

---@type AddonEnv
local _addon = select(2, ...);
local npcResistances = _addon.npcResistances;
local SCHOOL = _addon.SCHOOL;

local CREATURE_TYPE_TO_ENG = {
    ["Wildtier"] = "Beast",
    ["Bestia"] = "Beast",
    ["Bête"] = "Beast",
    ["Fera"] = "Beast",
    ["Животное"] = "Beast",
    ["야수"] = "Beast",
    ["野兽"] = "Beast",
    ["野獸"] = "Beast",

    ["Kleintier"] = "Critter",
    ["Alma"] = "Critter",
    ["Bestiole"] = "Critter",
    ["Animale"] = "Critter",
    ["Bicho"] = "Critter",
    ["Существо"] = "Critter",
    ["동물"] = "Critter",
    ["小动物"] = "Critter",
    ["小動物"] = "Critter",

    ["Dämon"] = "Demon",
    ["Demonio"] = "Demon",
    ["Démon"] = "Demon",
    ["Demone"] = "Demon",
    ["Demônio"] = "Demon",
    ["Демон"] = "Demon",
    ["악마"] = "Demon",
    ["恶魔"] = "Demon",
    ["惡魔"] = "Demon",

    ["Drachkin"] = "Dragonkin",
    ["Dragon"] = "Dragonkin",
    ["Dragón"] = "Dragonkin",
    ["Draconien"] = "Dragonkin",
    ["Dragoide"] = "Dragonkin",
    ["Dracônico"] = "Dragonkin",
    ["Дракон"] = "Dragonkin",
    ["용족"] = "Dragonkin",
    ["龙类"] = "Dragonkin",
    ["龍類"] = "Dragonkin",

    ["Elementar"] = "Elemental",
    ["Élémentaire"] = "Elemental",
    ["Elementale"] = "Elemental",
    ["Элементаль"] = "Elemental",
    ["정령"] = "Elemental",
    ["元素生物"] = "Elemental",

    ["Riese"] = "Giant",
    ["Gigante"] = "Giant",
    ["Géant"] = "Giant",
    ["Великан"] = "Giant",
    ["거인"] = "Giant",
    ["巨人"] = "Giant",

    ["Humanoide"] = "Humanoid", 
    ["Humanoïde"] = "Humanoid", 
    ["Umanoide"] = "Humanoid", 
    ["Гуманоид"] = "Humanoid", 
    ["인간형"] = "Humanoid", 
    ["人型生物"] = "Humanoid", 

    ["Mechanisch"] = "Mechanical",
    ["Mecánico"] = "Mechanical",
    ["Machine"] = "Mechanical",
    ["Meccanico"] = "Mechanical",
    ["Mecânico"] = "Mechanical",
    ["Механизм"] = "Mechanical",
    ["기계"] = "Mechanical",
    ["机械"] = "Mechanical",
    ["機械"] = "Mechanical",

    ["Untoter"] = "Undead",
    ["No-muerto"] = "Undead",
    ["Mort-vivant"] = "Undead",
    ["Non Morto"] = "Undead",
    ["Renegado"] = "Undead",
    ["Нежить"] = "Undead",
    ["언데드"] = "Undead",
    ["亡灵"] = "Undead",
    ["不死族"] = "Undead",
}

local Target = {
    level = 0,
    levelDiff = 0,
    isPlayer = false,
    npcId = -1,
    ---@type string|nil
    class = nil,
    creatureType = nil,
    resistance = {
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
-- TODO: everything armor
function Target:UpdateResistances()
    for _, schoolNum in pairs(SCHOOL) do
        self.resistance[schoolNum] = 0;
    end

    if SpellCalc_settings.resOverrideFire > 0 then
        self.resistance[SCHOOL.FIRE] = SpellCalc_settings.resOverrideFire;
    end
    if SpellCalc_settings.resOverrideFrost > 0 then
        self.resistance[SCHOOL.FROST] = SpellCalc_settings.resOverrideFrost;
    end
    if SpellCalc_settings.resOverrideNature > 0 then
        self.resistance[SCHOOL.NATURE] = SpellCalc_settings.resOverrideNature;
    end
    if SpellCalc_settings.resOverrideShadow > 0 then
        self.resistance[SCHOOL.SHADOW] = SpellCalc_settings.resOverrideShadow;
    end
    if SpellCalc_settings.resOverrideArcane > 0 then
        self.resistance[SCHOOL.ARCANE] = SpellCalc_settings.resOverrideArcane;
    end
    if SpellCalc_settings.resOverrideArmor > 0 then
        self.resistance[SCHOOL.PHYSICAL] = SpellCalc_settings.resOverrideArmor;
    end

    if self.isPlayer then
        return;
    end

    if npcResistances[self.npcId] then
        for _, schoolNum in pairs(SCHOOL) do
            if self.resistance[schoolNum] == 0 and npcResistances[self.npcId][schoolNum] then
                self.resistance[schoolNum] = npcResistances[self.npcId][schoolNum];
            end
        end
    end

    if self.resistance[SCHOOL.PHYSICAL] == 0 then
        -- Armor seems to have different progression over various level ranges.
        -- These are all somewhat correct. Nearly the same as some samples taken with beast lore.
        -- Not all mobs follow these aremor values. Can't be bothered to collect data manually for every level with my lvl 24 hunter...
        if self.level == 1 then
            self.resistance[SCHOOL.PHYSICAL] = 20;
        elseif self.level < 11 then
            self.resistance[SCHOOL.PHYSICAL] = 5 * (self.level * self.level) + self.level;
        elseif self.level < 36 then
            self.resistance[SCHOOL.PHYSICAL] = 510 + 35 * (self.level - 10);
        elseif self.level < 46 then
            local step = self.level - 36;
            self.resistance[SCHOOL.PHYSICAL] = 1494 + step * (107 + step * 3.5);
        -- TBC: different formula for >59, everything below should stay the same
        else
            -- 3731.3 at 63
            self.resistance[SCHOOL.PHYSICAL] = 2798 + (self.level - 46) * 54.9;
        end

        if self.class == "PALADIN" then
            -- This is just a rough value. Always seems to be between 0.80-0.83 of "warrior" armor,
            -- with higher levels closer to 0.8, so this should be close enough.
            self.resistance[SCHOOL.PHYSICAL] = self.resistance[SCHOOL.PHYSICAL] * 0.81;
        elseif self.class == "MAGE" then
            -- TODO: More swipe/hamstring/wing clip testing, there's no beast mage in the whole game, can't check with beast lore :(
            self.resistance[SCHOOL.PHYSICAL] = self.resistance[SCHOOL.PHYSICAL] * 0.5;
        end
    end
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

    if not self.isPlayer and tName then
        local unitType, _, _, _, _, npcID = strsplit("-", UnitGUID("target"));
        local idnum = tonumber(npcID);
        if idnum then
            self.npcId = idnum;
        else
            self.npcId = -1;
        end

        self.creatureType = UnitCreatureType("target");
        if CREATURE_TYPE_TO_ENG[self.creatureType] then
            self.creatureType = CREATURE_TYPE_TO_ENG[self.creatureType];
        end
    else
        self.npcId = -1;
        self.creatureType = nil;
    end

    self:UpdateResistances()

    _addon:PrintDebug(("New target: %d (%d), Player: %s, ID: %d"):format(self.level, self.levelDiff, tostring(self.isPlayer), self.npcId));
    _addon:PrintDebug(("P: %d, H: %d, Fi: %d, N: %d, Fr: %d, S: %d, A: %d"):format(self.resistance[SCHOOL.PHYSICAL], self.resistance[SCHOOL.HOLY], self.resistance[SCHOOL.FIRE],
        self.resistance[SCHOOL.NATURE], self.resistance[SCHOOL.FROST], self.resistance[SCHOOL.SHADOW], self.resistance[SCHOOL.ARCANE]));

    _addon:TriggerUpdate();
end

_addon.Target = Target;
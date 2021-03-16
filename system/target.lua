---@type AddonEnv
local _addon = select(2, ...);
local npcResistances = _addon.npcResistances;
local SCHOOL = _addon.SCHOOL;

local Target = {
    level = 0,
    levelDiff = 0,
    isPlayer = false,
    npcId = -1,
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
end

--- Update currently selected target.
function Target:Update()
    local tName = UnitName("target");
    local pLevel = UnitLevel("player");

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
    else
        self.npcId = -1;
    end

    self:UpdateResistances()

    _addon:PrintDebug(("New target: %d (%d), Player: %s, ID: %d"):format(self.level, self.levelDiff, tostring(self.isPlayer), self.npcId));
    _addon:PrintDebug(("P: %d, H: %d, Fi: %d, N: %d, Fr: %d, S: %d, A: %d"):format(self.resistance[SCHOOL.PHYSICAL], self.resistance[SCHOOL.HOLY], self.resistance[SCHOOL.FIRE],
        self.resistance[SCHOOL.NATURE], self.resistance[SCHOOL.FROST], self.resistance[SCHOOL.SHADOW], self.resistance[SCHOOL.ARCANE]));

    _addon:TriggerUpdate();
end

_addon.Target = Target;
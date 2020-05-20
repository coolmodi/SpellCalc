---@type AddonEnv
local _addon = select(2, ...);

_addon.target = {
    level = 0,
    levelDiff = 0,
    isPlayer = false,
    resistance = {
        [_addon.SCHOOL.PHYSICAL] = 0,
        [_addon.SCHOOL.HOLY] = 0,
        [_addon.SCHOOL.FIRE] = 0,
        [_addon.SCHOOL.NATURE] = 0,
        [_addon.SCHOOL.FROST] = 0,
        [_addon.SCHOOL.SHADOW] = 0,
        [_addon.SCHOOL.ARCANE] = 0
    }
};

--- Update selected target
function _addon:UpdateTarget()
    local tName = UnitName("target");
    local pLevel = UnitLevel("player");

    if tName == nil or not SpellCalc_settings.useCurrentTarget then
        self.target.level = pLevel + SpellCalc_settings.defaultTargetLvlOffset;
        self.target.levelDiff = SpellCalc_settings.defaultTargetLvlOffset;
        self.target.isPlayer = false;
    else
        local tLevel = UnitLevel("target");
        if tLevel == -1 then
            tLevel = pLevel + 3;
        end

        self.target.level = tLevel;
        self.target.levelDiff = tLevel - pLevel;
        self.target.isPlayer = UnitIsPlayer("target");
    end

    self.target.resistance[self.SCHOOL.FIRE] = SpellCalc_settings.resOverrideFire;
    self.target.resistance[self.SCHOOL.FROST] = SpellCalc_settings.resOverrideFrost;
    self.target.resistance[self.SCHOOL.NATURE] = SpellCalc_settings.resOverrideNature;
    self.target.resistance[self.SCHOOL.SHADOW] = SpellCalc_settings.resOverrideShadow;
    self.target.resistance[self.SCHOOL.ARCANE] = SpellCalc_settings.resOverrideArcane;

    self:PrintDebug(("New target: %d, %d, %s"):format(self.target.level, self.target.levelDiff, tostring(self.target.isPlayer)));
    self:TriggerUpdate();
end
local _, _addon = ...;

_addon.target = {
    level = 0,
    levelDiff = 0,
    isPlayer = false,
    resistance = { -- TODO: allow custom resistance values
        [_addon.SCHOOL.PHYSICAL] = 0,
        [_addon.SCHOOL.HOLY] = 0,
        [_addon.SCHOOL.FIRE] = 0,
        [_addon.SCHOOL.NATURE] = 0,
        [_addon.SCHOOL.FROST] = 0,
        [_addon.SCHOOL.SHADOW] = 0,
        [_addon.SCHOOL.ARCANE] = 0
    }
};

function _addon:UpdateTarget()
    local tName = UnitName("target");
    local pLevel = UnitLevel("player");

    if tName == nil or not SpellCalc_settings.useCurrentTarget then
        _addon.target.level = pLevel + SpellCalc_settings.defaultTargetLvlOffset;
        _addon.target.levelDiff = SpellCalc_settings.defaultTargetLvlOffset;
        _addon.target.isPlayer = false;
    else
        local tLevel = UnitLevel("target");
        if tLevel == -1 then
            tLevel = pLevel + 3;
        end

        _addon.target.level = tLevel;
        _addon.target.levelDiff = tLevel - pLevel;
        _addon.target.isPlayer = UnitIsPlayer("target");
    end

    _addon:PrintDebug(("New target: %d, %d, %s"):format(_addon.target.level, _addon.target.levelDiff, tostring(_addon.target.isPlayer)));
    _addon.lastChange = time();
end
---@class AddonEnv
local _addon = select(2, ...);
local _, raceEn = UnitRace("player");

if raceEn == "BloodElf" then
    -- Arcane Torrent
    _addon.spellInfo[28730] = {
        spellLevel = 1,
        maxLevel = 100,
        school = 2,
        defType = 0,
        noCrit = true,
        effects = {
            [1] = {
                effectType = 137,
                valueBase = 6,
                valueRange = 0,
                coef = 0,
                coefAP = 0,
            },
        }
    }
    return;
end


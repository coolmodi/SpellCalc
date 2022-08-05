---@class AddonEnv
local _addon = select(2, ...);

local stats = _addon.stats;
local _, class = UnitClass("player");
local AEF = _addon.CONST.ADDON_EFFECT_FLAGS;

local HEALING_TOUCH = GetSpellInfo(5186);
local HEALING_WAVE = GetSpellInfo(332);
local LESSER_HEALING_WAVE = GetSpellInfo(8004);
local FLAME_SHOCK = GetSpellInfo(8053);
local HOLY_SHOCK = GetSpellInfo(33072);

local CostHandler = {};

--- Set vars for mana cost.
---@param calcedSpell CalcedSpell
---@param spellInfo SpellInfo
---@param effCastTime number
---@param spellName string
---@param spellId integer
function CostHandler.Mana(calcedSpell, spellInfo, effCastTime, spellName, spellId)
    local mps = stats.mp5.val / 5 + stats.manaRegAura;
    calcedSpell.effectiveCost = calcedSpell.baseCost - math.min(5, effCastTime) * (stats.manaRegCasting + mps);
    if effCastTime > 5 then
        local ofsrRegen;
        -- Can't leave FSR while channeling, no base regen even after 5s!
        if bit.band(calcedSpell.effects[1].effectFlags, AEF.CHANNEL) > 0 then
            ofsrRegen = stats.manaRegCasting + mps;
        else
            ofsrRegen = stats.manaRegBase + mps;
        end
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - (effCastTime - 5) * ofsrRegen;
    end

    if stats.spellModClearCastChance[spellId] and stats.spellModClearCastChance[spellId].val > 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - calcedSpell.baseCost * (stats.spellModClearCastChance[spellId].val / 100);
        calcedSpell:AddToBuffList(stats.spellModClearCastChance[spellId].buffs);
    elseif stats.clearCastChanceDmg.val > 0 and bit.band(calcedSpell.effects[1].effectFlags, AEF.HEAL + AEF.ABSORB) == 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - calcedSpell.baseCost * (stats.clearCastChanceDmg.val / 100);
        calcedSpell:AddToBuffList(stats.clearCastChanceDmg.buffs);
    elseif stats.clearCastChance.val > 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - calcedSpell.baseCost * (stats.clearCastChance.val / 100);
        calcedSpell:AddToBuffList(stats.clearCastChance.buffs);
    end

    if stats.spellModManaRestore[spellId] and stats.spellModManaRestore[spellId].val > 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - stats.spellModManaRestore[spellId].val;
        calcedSpell:AddToBuffList(stats.spellModManaRestore[spellId].buffs);
    end

    if stats.castManaRestoreAvg.val > 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - stats.castManaRestoreAvg.val;
        calcedSpell:AddToBuffList(stats.castManaRestoreAvg.buffs);
    end

    if stats.spellModCritManaRestore[spellId] and stats.spellModCritManaRestore[spellId].val > 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - (calcedSpell.critChance / 100) * stats.spellModCritManaRestore[spellId].val;
        calcedSpell:AddToBuffList(stats.spellModCritManaRestore[spellId].buffs);
    end

    local baseCost = 0;

    if spellInfo.baseCost then
        baseCost = spellInfo.baseCost;
    elseif spellInfo.baseCostPct then
        baseCost = stats.baseMana * spellInfo.baseCostPct/100;
    end

    if stats.illumination.val > 0 then
        if (class == "PALADIN" and (bit.band(calcedSpell.effects[1].effectFlags, AEF.HEAL) > 0 or spellName == HOLY_SHOCK))
        or (class == "MAGE" and (spellInfo.school == _addon.CONST.SCHOOL.FIRE or spellInfo.school == _addon.CONST.SCHOOL.FROST))
        or (class == "DRUID" and spellName == HEALING_TOUCH)
        or (class == "SHAMAN" and bit.band(calcedSpell.effects[1].effectFlags, AEF.HEAL) == 0 and (spellInfo.school == _addon.CONST.SCHOOL.NATURE or spellInfo.school == _addon.CONST.SCHOOL.FROST or spellName == FLAME_SHOCK)) then
            calcedSpell.effectiveCost = calcedSpell.effectiveCost - baseCost * (stats.illumination.val/100) * (calcedSpell.critChance/100);
            calcedSpell:AddToBuffList(stats.illumination.buffs);
        end
    end

    if stats.earthfuryReturn.val > 0 and (spellName == HEALING_WAVE or spellName == LESSER_HEALING_WAVE) then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - baseCost * 0.0875;
        calcedSpell:AddToBuffList(stats.earthfuryReturn.buffs);
    end

    if calcedSpell.effectiveCost <= 0 then
        calcedSpell.castingData.castsToOom = -1;
        calcedSpell.castingData.timeToOom = -1;
        return;
    end

    calcedSpell.castingData.castsToOom = _addon:GetEffectiveManaPool() / calcedSpell.effectiveCost;
    if SpellCalc_settings.useRealToOom then
        calcedSpell.castingData.castsToOom = math.floor(calcedSpell.castingData.castsToOom);
    end
    calcedSpell.castingData.timeToOom = calcedSpell.castingData.castsToOom * effCastTime;
end

_addon.CostHandler = CostHandler;
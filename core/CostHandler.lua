---@type AddonEnv
local _addon = select(2, ...);

local stats = _addon.stats;
local _, class = UnitClass("player");
local SEF = _addon.SPELL_EFFECT_FLAGS;

local HEALING_TOUCH = GetSpellInfo(5186);
local HEALING_WAVE = GetSpellInfo(332);
local LESSER_HEALING_WAVE = GetSpellInfo(8004);

---@class CostHandler
local CostHandler = {};
CostHandler.__index = CostHandler;

--- Get an object used to calculate spell cost stuff
---@return CostHandler
function CostHandler:New()
    local ch = {};
    setmetatable(ch, CostHandler);
    return ch;
end

--- Set vars for mana cost.
---@param calcedSpell CalcedSpell
---@param spellBaseCost number
---@param effCastTime number
---@param school number
---@param spellName string
---@param spellId number
function CostHandler:Mana(calcedSpell, spellBaseCost, effCastTime, school, spellName, spellId)
    local mps = stats.mp5.val / 5 + stats.manaRegAura;
    calcedSpell.effectiveCost = calcedSpell.baseCost - math.min(5, effCastTime) * (stats.manaRegCasting + mps);
    if effCastTime > 5 then
        local ofsrRegen;
        -- Can't leave FSR while channeling, no base regen even after 5s!
        if bit.band(calcedSpell[1].effectFlags, SEF.CHANNEL) > 0 then
            ofsrRegen = stats.manaRegCasting + mps;
        else
            ofsrRegen = stats.manaRegBase + mps;
        end
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - (effCastTime - 5) * ofsrRegen;
    end

    if stats.spellModClearCastChance[spellId] and stats.spellModClearCastChance[spellId].val > 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - calcedSpell.baseCost * (stats.spellModClearCastChance[spellId].val / 100);
        calcedSpell:AddToBuffList(stats.spellModClearCastChance[spellId].buffs);
    elseif stats.clearCastChanceDmg.val > 0 and bit.band(calcedSpell[1].effectFlags, SEF.HEAL + SEF.ABSORB) == 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - calcedSpell.baseCost * (stats.clearCastChanceDmg.val / 100);
        calcedSpell:AddToBuffList(stats.clearCastChanceDmg.buffs);
    end

    if stats.spellModManaRestore[spellId] and stats.spellModManaRestore[spellId].val > 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - stats.spellModManaRestore[spellId].val;
        calcedSpell:AddToBuffList(stats.spellModManaRestore[spellId].buffs);
    end

    if stats.spellModCritManaRestore[spellId] and stats.spellModCritManaRestore[spellId].val > 0 then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - (calcedSpell.critChance / 100) * stats.spellModCritManaRestore[spellId].val;
        calcedSpell:AddToBuffList(stats.spellModCritManaRestore[spellId].buffs);
    end

    if stats.illumination.val > 0 then
        if (class == "PALADIN" and bit.band(calcedSpell[1].effectFlags, SEF.HEAL) > 0)
        or (class == "MAGE" and (school == _addon.SCHOOL.FIRE or school == _addon.SCHOOL.FROST))
        or (class == "DRUID" and spellName == HEALING_TOUCH) then
            calcedSpell.effectiveCost = calcedSpell.effectiveCost - spellBaseCost * (stats.illumination.val/100) * (calcedSpell.critChance/100);
            calcedSpell:AddToBuffList(stats.illumination.buffs);
        end
    end

    if stats.earthfuryReturn.val > 0 and (spellName == HEALING_WAVE or spellName == LESSER_HEALING_WAVE) then
        calcedSpell.effectiveCost = calcedSpell.effectiveCost - spellBaseCost * 0.0875;
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
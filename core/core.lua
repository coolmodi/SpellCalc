local _, _addon = ...;

local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;
local SPELL_TYPE = _addon.SPELL_TYPE;

_addon.calcedSpells = {};
_addon.lastChange = time();

local _, class = UnitClass("player");
local stats = _addon.stats;

--- Return true if spell needs mitigation calculation
-- @param spellType The base spell type
-- @param primaryType The primary effect type, required
local function SpellCanMitigate(spellType, primaryType)
    if primaryType == SPELL_EFFECT_TYPE.DIRECT_DMG or primaryType == SPELL_EFFECT_TYPE.DOT or primaryType == SPELL_EFFECT_TYPE.DMG_SHIELD then
        return true;
    end
    return false;
end

--- Make a new table to store calculated spell data
-- @param spellType The base spell type
-- @param primaryType The primary effect type, required
-- @param secondaryType The secondary effect type, optional
local function MakeSpellTable(spellType, primaryType, secondaryType)
    _addon:PrintDebug(("Making calc table for %s %s"):format(primaryType, tostring(secondaryType)));

    local st = {
        spellType = spellType,
        critChance = 0,
        critMult = 1.5,
        buffs = {}, -- Buffs used in the calculation process, not buffs that affect spell indirectly
        updated = 0 -- Last update time
    };

    if spellType == SPELL_TYPE.SPELL then
        st.levelPenalty = 1; -- Mult for spell below lvl 20
        st.effectiveCost = 0;
        st.castsToOom = 0;
        st.timeToOom = 0;
    end

    if SpellCanMitigate(spellType, primaryType) then
        st.baseHitChance = 0; -- The base hit chance dpending on level difference
        st.hitChance = 0; -- Hit chance after modifiers (mult)
        st.hitChanceBonus = 0; -- Bonus hitchance from buffs (and gear)
        st.avgResistMod = 0; -- The average dmg resisted modifier (mult)
        st.binaryHitLoss = 0; -- Hit chance lost due to binary spells and resistance
    end

    local curType = primaryType;
    for i = 1, 2, 1 do
        if i == 2 then
            if secondaryType == nil then
                break;
            else
                curType = secondaryType;
            end
        end

        st[i] = {};
        local et = st[i];

        et.effectType = curType; -- The type of the effect
        et.spellPower = 0; -- Spell power this effect uses
        et.spCoef = 0; -- The spell power coefficient this effect uses
        et.effectiveSpCoef = 0; -- The effective coef after penalty, if it has one
        et.effectivePower = 0; -- The power used
        
        if spellType == SPELL_TYPE.SPELL then
            _addon:AddSpellCalculationMembers(et, curType);
        end
    end

    if spellType == SPELL_TYPE.SPELL then
        -- Spells like holy fire or regrowth
        _addon:ConditionalAddSpellMembers(st, primaryType, secondaryType);
    end

    return st;
end

--- Generate effect modifier
-- @param school The spell school (API enumeration)
-- @param isHeal
-- @param spellName
-- @param buffTable
local function GenerateEffectModifier(school, spellData, effectData, spellName, buffTable)
    _addon:PrintDebug(("Getting modifiers for %s, School: %d Heal: %s"):format(spellName, school, tostring(effectData.isHeal)));
    local effectMod = 1 + stats.effectMods.school[school].val/100;
    for _, buffName in pairs(stats.effectMods.school[school].buffs) do
        table.insert(buffTable, buffName);
    end

    if stats.effectMods.spell[spellName] ~= nil then
        effectMod = effectMod + stats.effectMods.spell[spellName].val/100;
        for _, buffName in pairs(stats.effectMods.spell[spellName].buffs) do
            table.insert(buffTable, buffName);
        end
    end

    if not effectData.isHeal then
        effectMod = effectMod * (1 + stats.dmgDoneMods[school].val/100);
        for _, buffName in pairs(stats.dmgDoneMods[school].buffs) do
            table.insert(buffTable, buffName);
        end
    elseif not spellData.isAbsorbShield then
        effectMod = effectMod * (1 + stats.healingDoneMod.val/100);
        for _, buffName in pairs(stats.healingDoneMod.buffs) do
            table.insert(buffTable, buffName);
        end
    end

    return effectMod;
end

local effectData, effectTypes = {}, {};

--- Calculate spell values with current stats
-- @param spellId The ID of the spell
function _addon:CalcSpell(spellId)
    _addon:PrintDebug("Calculating spell " .. spellId);

    local name, _, _, castTime = GetSpellInfo(spellId);
    local spellData = _addon.spellData[spellId];
    if spellData == nil then
        spellData = _addon.spellData[name];
    end
    local desc = GetSpellDescription(spellId);
    local costs = GetSpellPowerCost(spellId);
    local spellCost = 0;
    local spellType = SPELL_TYPE.SPELL; -- PLACEHOLDER


    if spellData.isChannel then
        castTime = spellData.duration;
    else
        -- Cast time is at least GCD
        if castTime < 1500 then
            castTime = 1500;
        end
        castTime = castTime / 1000;
    end

    if #costs > 0 then
        spellCost = costs[1].cost;
    else
        _addon:PrintError("Spell " .. spellId .. " has no cost");
        return;
    end

    --------------------------
    -- Set effect data and types

    effectData[2] = nil;
    if spellData.primary == nil then
        effectData[1] = spellData;
    else
        effectData[1] = spellData.primary;
        if spellData.secondary ~= nil then
            effectData[2] = spellData.secondary;
        end
    end

    _addon:PrintDebug("Has " .. #effectData .. " effects");

    if spellType == SPELL_TYPE.SPELL then
        for i = 1, 2, 1 do
            if effectData[i] == nil then
                effectTypes[i] = nil;
            elseif effectData[i].isHeal then
                if effectData[i].isDuration then
                    effectTypes[i] = SPELL_EFFECT_TYPE.HOT;
                else
                    effectTypes[i] = SPELL_EFFECT_TYPE.DIRECT_HEAL;
                end
            elseif effectData[i].isDmgShield then
                effectTypes[i] = SPELL_EFFECT_TYPE.DMG_SHIELD;
            else
                if effectData[i].isDuration then
                    effectTypes[i] = SPELL_EFFECT_TYPE.DOT;
                else
                    effectTypes[i] = SPELL_EFFECT_TYPE.DIRECT_DMG;
                end
            end
        end
    else
        -- NYI
    end

    _addon:PrintDebug(effectTypes);

    --------------------------
    -- Calculation table

    if _addon.calcedSpells[spellId] == nil then
        _addon.calcedSpells[spellId] = MakeSpellTable(spellType, effectTypes[1], effectTypes[2]);
    end
    local calcData = _addon.calcedSpells[spellId];

    --------------------------
    -- Low level spell scaling penalty

    if spellType == SPELL_TYPE.SPELL and spellData.level ~= nil then
        calcData.levelPenalty =  1 - ((20 - spellData.level) * 0.0375);
    end

    --------------------------
    -- Spell wide modifiers

    wipe(calcData.buffs);

    -- Crit

    if spellType == SPELL_TYPE.SPELL then
        calcData.critChance = _addon:GetSpellSchoolCritChance(spellData, calcData.buffs);
    else
        -- NYI
    end

    if calcData.critChance > 0 and stats.critMods.spell[name] ~= nil then
        calcData.critChance = calcData.critChance + stats.critMods.spell[name].val;
        for _, buffName in pairs(stats.critMods.spell[name].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    if stats.critMult.school[spellData.school].val > 0 then
        calcData.critMult = calcData.critMult + (calcData.critMult - 1) * (1 + stats.critMult.school[spellData.school].val/100);
        for _, buffName in pairs(stats.critMult.school[spellData.school].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    if stats.critMult.spell[name] ~= nil then
        calcData.critMult = calcData.critMult + (calcData.critMult - 1) * (1 + stats.critMult.spell[name].val/100);
        for _, buffName in pairs(stats.critMult.spell[name].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    if stats.ignite.val > 0 then
        calcData.critMult = calcData.critMult * (1 + stats.ignite.val/100);
        for _, buffName in pairs(stats.ignite.buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    -- Mitigation

    if spellData.school ~= _addon.SCHOOL.PHYSICAL then
        calcData.avgResistMod = _addon:GetSpellAvgResist(spellData.school);
    end

    if calcData.hitChance ~= nil then
        if spellType == SPELL_TYPE.SPELL then
            calcData.baseHitChance = _addon:GetSpellHitChance();
            calcData.hitChanceBonus = _addon:GetSpellHitBonus(spellData.school, calcData.buffs);

            if stats.hitMods.spell[name] ~= nil then
                calcData.hitChanceBonus = calcData.hitChanceBonus + stats.hitMods.spell[name].val;
                for _, buffName in pairs(stats.hitMods.spell[name].buffs) do
                    table.insert(calcData.buffs, buffName);
                end
            end
            
            calcData.hitChance = calcData.baseHitChance + calcData.hitChanceBonus;

            if spellData.isBinary or effectTypes[1] == SPELL_EFFECT_TYPE.DOT  then
                calcData.binaryHitLoss = calcData.hitChance - (calcData.hitChance * (1 - calcData.avgResistMod));
                calcData.hitChance = calcData.hitChance - calcData.binaryHitLoss;
            end

            if calcData.hitChance > 99 then
                calcData.hitChance = 99;
            elseif calcData.hitChance < 1 then
                calcData.hitChance = 1;
            end

            calcData.hitChance = calcData.hitChance/100;
        else
            -- NYI
        end
    end

    --------------------------
    -- Ressource stuff

    if spellCost == 0 then
        calcData.effectiveCost = -1;
        if spellType == SPELL_TYPE.SPELL then
            calcData.castsToOom = -1;
            calcData.timeToOom = -1;
        end
    else
        if spellType == SPELL_TYPE.SPELL then
            calcData.effectiveCost = spellCost - castTime * (stats.manaReg + stats.mp5.val/5);
            
            if stats.clearCastChance.val > 0 then
                                                                        -- TODO: does this only happen on successful hits?
                calcData.effectiveCost = calcData.effectiveCost - spellCost * (stats.clearCastChance.val/100) * calcData.hitChance;
                for _, buffName in pairs(stats.clearCastChance.buffs) do
                    table.insert(calcData.buffs, buffName);
                end
            end

            if stats.illumination.val > 0 then
                if class == "PALADIN" or 
                (class == "MAGE" and (spellData.school == self.SCHOOL.FIRE or spellData.school == self.SCHOOL.FROST)) then
                    calcData.effectiveCost = calcData.effectiveCost - spellCost * (stats.illumination.val/100) * (calcData.critChance/100);
                    for _, buffName in pairs(stats.illumination.buffs) do
                        table.insert(calcData.buffs, buffName);
                    end
                end
            end

            calcData.castsToOom = stats.mana / calcData.effectiveCost;
            calcData.timeToOom = calcData.castsToOom * castTime;
        else
            -- NYI
        end
    end
    
    

    --------------------------
    -- Per effect calculations

    for i = 1, #effectData, 1 do
        _addon:PrintDebug("Calculating effect " .. i);
        local et = calcData[i];

        --------------------------
        -- Effect bonus power scaling

        if spellType == SPELL_TYPE.SPELL then
            if effectData[i].isHeal == true then
                et.spellPower = stats.spellHealing;
            else
                et.spellPower = stats.spellPower[spellData.school];
            end
        else
            -- NYI
        end

        -- Effective power
        et.spCoef = effectData[i].coef;
        et.effectiveSpCoef = et.spCoef * calcData.levelPenalty;
        et.effectivePower = et.spellPower * et.effectiveSpCoef;

        --------------------------
        -- Effect specific modifier

        local effectMod = GenerateEffectModifier(spellData.school, spellData, effectData[i], name, calcData.buffs);
        _addon:PrintDebug("Mod: " .. effectMod);

        --------------------------
        -- Effect values

        if et.effectType == SPELL_EFFECT_TYPE.DIRECT_DMG or et.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
            _addon:CalculateSpellDirectEffect(calcData, et, desc, effectData[i], effectMod, castTime);
        elseif et.effectType == SPELL_EFFECT_TYPE.DMG_SHIELD then
            _addon:CalculateSpellDmgShieldEffect(calcData, et, desc, effectData[i], effectMod, castTime)
        else -- HoT or DoT (also channeled)
            _addon:CalculateSpellDurationEffect(calcData, et, desc, effectData[i], effectMod, castTime, spellData.isChannel)
        end
    end

    -- Combined data for spells like Holy Fire or Immolate
    if calcData.perCastData ~= nil then
        _addon:CalculateSpellCombinedEffect(calcData, effectData[2], castTime);
    end

    calcData.updated = time() - 1;

    _addon:PrintDebug(calcData);
end
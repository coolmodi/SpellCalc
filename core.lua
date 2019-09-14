local _, _addon = ...;

_addon.calcedSpells = {};
_addon.lastChange = time();

local stats = _addon.stats;

--- Make a new table to store calculated spell data
-- Possible types: DIRECT_DMG, DIRECT_HEAL, DOT, HOT, DMG_SHIELD
-- @param primaryType The primary effect type, required
-- @param secondaryType The secondary effect type, optional
local function MakeSpellTable(primaryType, secondaryType)
    _addon:PrintDebug(("Making calc table for %s %s"):format(primaryType, tostring(secondaryType)));

    local st = {
        critChance = 0,
        critMult = 1.5,
        levelPenalty = 1, -- Mult for spell below lvl 20
        castsToOom = 1,
        timeToOom = 1,
        buffs = {}, -- Buffs used in the calculation process, not buffs that affect spell indirectly
        updated = 0 -- Last update time
    };

    if primaryType == "DIRECT_DMG" or primaryType == "DOT" or primaryType == "DMG_SHIELD" then
        st.hitChanceBonus = 0; -- Bonus hitchance from buffs (and gear)
        st.hitChance = 1; -- Hit chance AFTER bonus hit
        st.avgResistMod = 0; -- The average dmg resisted modifier
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
        et.doneToOom = 0; -- Dmg/healing done until oom, assumes spam (theoretical only) for non direct spells!
        
        if curType == "DIRECT_DMG" or curType == "DIRECT_HEAL" then
            et.hitMin = 0; -- Minimum hit
            et.hitMax = 0; -- Maximum hit
            et.hitAvg = 0; -- Average normal hit (as in it did hit)
            et.critMin = 0; -- Same just with crit
            et.critMax = 0;
            et.critAvg = 0;
            et.avgCombined = 0; -- Both hit and crit
            et.avgAfterMitigation = 0; -- Average after miss etc. taken into account

        elseif curType == "DOT" or curType == "HOT" then
            et.perTick = 0; -- Done per tick
            et.duration = 0;
            et.ticks = 0;
            et.hitAvg = 0; -- Average normal hit, all ticks (assuming hit)
            et.avgAfterMitigation = 0; -- Average after miss was taken into account
            et.perSecondDuration = 0; -- Per second done over full duration (assuming hit)

        elseif curType == "DMG_SHIELD" then
            et.perCharge = 0; -- Done per charge
            et.charges = 0;
            et.hitAvg = 0; -- Average normal hit, all charges, if charges exist (assuming hit)
            et.avgAfterMitigation = 0; -- Average after miss taken into account, only if charges

        else
            error("non-existing effect type " .. curType .. " for spell");
        end

        -- TODO: unmitigated dps and mitigation factors
        et.perSecond = 0; -- Done per second PER AVERAGE CAST
        et.perMana = 0; -- Mana per unit done PER AVERAGE CAST
    end

    -- Spells like holy fire or regrowth
    if (primaryType == "DIRECT_DMG" or primaryType == "DIRECT_HEAL") and (secondaryType == "DOT" or secondaryType == "HOT") then
        st.perCastData = {
            hitAvg = 0, -- The total done per hit full duration
            critAvg = 0, -- The total done if primary crits full duration
            perSecond = 0, -- Per second for done per cast time when full duration is used 
            perMana = 0, -- Unit per mana when full duration used

            hitAvgSpam = 0, -- Avg if spammed
            critAvgSpam = 0,
            perSecondSpam = 0, -- Per second done when spammed
            perManaSpam = 0, -- Per mana when spammed
            doneToOomSpam = 0, -- Done until oom if spammed
        };
    end

    return st;
end

--- Get the average dmg resisted by target due to resistance after penetration
-- @param school The spell school (API enumeration)
local function GetAvgSpellResist(school)
    local tData = _addon.target;
    local pLevel = UnitLevel("player");
    local baseRes = tData.resistance[school];
    local effectiveRes = baseRes + math.max((tData.level - pLevel)*5, 0) - math.min(baseRes, stats.spellPen[school].val);
    return 0.75 * (effectiveRes / math.max(pLevel * 5, 100));
end

--- Get level based spell hit chance against the current target
-- @return The hit chance in percent
local function GetSpellHitChance()
    local tData = _addon.target;

    if tData.levelDiff < -2 then
        return 99;
    elseif tData.levelDiff < 3 then
        return 96 - tData.levelDiff;
    end

    if not tData.isPlayer then
        if tData.levelDiff < 11 then
            return 83 - (tData.levelDiff - 3) * 11;
        end
        return 3;
    end

    if tData.levelDiff < 13 then
        return 87 - (tData.levelDiff - 3) * 7;
    end
    return 20;
end

--- Apply hit modifiers coming from gear and talents
-- @param calcData The spell calculation table
-- @param school The spell school (API enumeration)
-- @param spellName
local function ApplyHitModifiers(calcData, school, spellName)
    if stats.hitMods.school[school].val ~= 0 then
        calcData.hitChanceBonus = calcData.hitChanceBonus + stats.hitMods.school[school].val;
        for _, buffName in pairs(stats.hitMods.school[school].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    if stats.hitMods.spell[spellName] ~= nil then
        calcData.hitChanceBonus = calcData.hitChanceBonus + stats.hitMods.spell[spellName].val;
        for _, buffName in pairs(stats.hitMods.spell[spellName].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    calcData.hitChanceBonus = calcData.hitChanceBonus + stats.hitBonusSpell.val;
    for _, buffName in pairs(stats.hitBonusSpell.buffs) do
        table.insert(calcData.buffs, buffName);
    end

    calcData.hitChance = calcData.hitChance + calcData.hitChanceBonus;
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

    for i = 1, 2, 1 do
        if effectData[i] == nil then
            effectTypes[i] = nil;
        elseif effectData[i].isHeal then
            if effectData[i].isDuration then
                effectTypes[i] = "HOT";
            else
                effectTypes[i] = "DIRECT_HEAL";
            end
        elseif effectData[i].isDmgShield then
            effectTypes[i] = "DMG_SHIELD";
        else
            if effectData[i].isDuration then
                effectTypes[i] = "DOT";
            else
                effectTypes[i] = "DIRECT_DMG";
            end
        end
    end

    _addon:PrintDebug(effectTypes);

    --------------------------
    -- Calculation table

    if _addon.calcedSpells[spellId] == nil then
        _addon.calcedSpells[spellId] = MakeSpellTable(effectTypes[1], effectTypes[2]);
    end
    local calcData = _addon.calcedSpells[spellId];

    --------------------------
    -- School dependent data

    if spellData.school == _addon.SCHOOL_PHYSICAL then
        calcData.critMult = 2;

    else
        if spellData.level ~= nil then
            calcData.levelPenalty =  1 - ((20 - spellData.level) * 0.0375);
        end

        if spellData.isAbsorbShield or spellData.isDmgShield then
            calcData.critChance = 0;
        else
            calcData.critChance = stats.spellCrit[spellData.school];
        end
    end

    --------------------------
    -- Spell wide modifiers

    wipe(calcData.buffs);

    -- Crit

    if calcData.critChance > 0 and stats.critMods.spell[name] ~= nil then
        calcData.critChance = calcData.critChance + stats.critMods.spell[name].val;
        for _, buffName in pairs(stats.critMods.spell[name].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    -- Hit

    if calcData.hitChance ~= nil then
        calcData.hitChanceBonus = 0;
        calcData.hitChance = GetSpellHitChance();
        ApplyHitModifiers(calcData, spellData.school, name);

        calcData.avgResistMod = GetAvgSpellResist(spellData.school);

        if spellData.isBinary or effectTypes[1] == "DOT"  then
            calcData.hitChance = calcData.hitChance * (1 - calcData.avgResistMod);
        end

        if calcData.hitChance > 99 then
            calcData.hitChance = 99;
        elseif calcData.hitChance < 1 then
            calcData.hitChance = 1;
        end

        calcData.hitChance = calcData.hitChance/100;
        calcData.hitChanceBonus = calcData.hitChanceBonus/100;
    end

    -- NOTE: crit reduce in attack table (with very high miss/resist)

    --------------------------
    -- Ressource stuff

    local manapool = stats.mana;
    local spendRate = spellCost * (1 / castTime);
    local regRate = stats.manaReg + stats.mp5.val/5;

    -- TODO: use "effective" mana cost based on regen and cast time
    calcData.timeToOom = manapool / (spendRate - regRate);
    calcData.castsToOom = (manapool + calcData.timeToOom * regRate) / spellCost;

    --------------------------
    -- Per effect calculations

    for i = 1, #effectData, 1 do
        _addon:PrintDebug("Calculating effect " .. i);
        local et = calcData[i];

        --------------------------
        -- Effect spell power

        if effectData[i].isHeal == true then
            et.spellPower = stats.spellHealing;
        else
            et.spellPower = stats.spellPower[spellData.school];
        end

        -- Effective power
        et.spCoef = effectData[i].coef;
        et.effectiveSpCoef = et.spCoef * calcData.levelPenalty;
        et.effectivePower = et.spellPower * et.effectiveSpCoef;

        --------------------------
        -- Effect specific modifiers

        -- Magnitude

        local effectMod = GenerateEffectModifier(spellData.school, spellData, effectData[i], name, calcData.buffs);
        _addon:PrintDebug("Mod: " .. effectMod);

        --------------------------
        -- Effect value and critical

        if et.effectType == "DIRECT_DMG" or et.effectType == "DIRECT_HEAL" then
            local minTt, maxTt = string.match(desc, effectData[i].ttMinMax);

            et.hitMin = math.floor(minTt * effectMod + et.effectivePower);
            et.hitAvg = et.hitMin;

            if maxTt then
                et.hitMax = math.ceil(maxTt * effectMod + et.effectivePower);
                et.hitAvg = (et.hitMin + et.hitMax) / 2;
            end

            et.critMin = math.floor(et.hitMin * calcData.critMult);
            et.critAvg = et.critMin;

            if maxTt then
                et.critMax = math.ceil(et.hitMax * calcData.critMult);
                et.critAvg = (et.critMin + et.critMax) / 2;
            end

            et.avgCombined = et.critAvg * (calcData.critChance/100) + et.hitAvg * (1-calcData.critChance/100);
            
            if calcData.hitChance ~= nil then
                et.avgAfterMitigation = et.avgCombined * calcData.hitChance * (1 - calcData.avgResistMod);
            else
                et.avgAfterMitigation = et.avgCombined;
            end

        elseif et.effectType == "DMG_SHIELD" then
            local dmgTt = string.match(desc, effectData[i].ttMinMax);
            et.perCharge = math.floor(dmgTt * effectMod + et.effectivePower + 0.5);
            et.charges = effectData[i].charges;
            et.hitAvg = et.perCharge * et.charges;
            et.avgAfterMitigation = et.hitAvg * calcData.hitChance * (1 - calcData.avgResistMod);
        
        else -- HoT or DoT (also channeled)
            if spellData.isChannel then
                et.duration = spellData.duration;
            else
                et.duration = effectData[i].duration;
                if et.duration == nil then
                    et.duration = string.match(desc, effectData[i].ttDuration);
                end
            end
            _addon:PrintDebug("Have duration: " .. et.duration);
            et.ticks = et.duration / effectData[i].tickPeriod;
            local dmgTt = string.match(desc, effectData[i].ttMinMax);
            et.hitAvg = math.floor(dmgTt * effectMod + (et.ticks * et.effectivePower) + 0.5);
            et.perTick = et.hitAvg / et.ticks;

            if calcData.hitChance ~= nil then
                if spellData.isChannel then
                    et.avgAfterMitigation = et.hitAvg * (1 - (1 - calcData.hitChance) * (1.5 / castTime));
                else
                    et.avgAfterMitigation = et.hitAvg * calcData.hitChance;
                end
            else
                et.avgAfterMitigation = et.hitAvg;
            end
        end

        --------------------------
        -- Per second values

        et.perSecond = et.avgAfterMitigation / castTime;

        if et.effectType == "HOT" or et.effectType == "DOT" then
            et.perSecondDuration = et.hitAvg / et.duration;
        end

        --------------------------
        -- Mana values

        --if et.effectType == "DIRECT_DMG" or et.effectType == "DIRECT_HEAL" then
            et.doneToOom = calcData.castsToOom * et.avgAfterMitigation;
        --end

        et.perMana = et.avgAfterMitigation / spellCost; -- TODO: use "effective" mana cost based on regen and cast time
    end

    --------------------------
    -- Combined data for spells like Holy Fire or Immolate

    if calcData.perCastData ~= nil then
        calcData.perCastData.hitAvg = calcData[1].hitAvg + calcData[2].hitAvg;
        calcData.perCastData.critAvg = calcData[1].critAvg + calcData[2].hitAvg;

        calcData.perCastData.perSecond = calcData[1].perSecond + calcData[2].avgAfterMitigation / castTime;
        calcData.perCastData.perMana = calcData[1].perMana + calcData[2].perMana;
        
        local ticksPerCast = math.floor(castTime / effectData[2].tickPeriod);
        local tickDonePerCast = ticksPerCast * calcData[2].perTick;
        calcData.perCastData.hitAvgSpam = tickDonePerCast + calcData[1].hitAvg;
        calcData.perCastData.critAvgSpam = tickDonePerCast + calcData[1].critAvg;
        calcData.perCastData.perSecondSpam = calcData[1].perSecond + tickDonePerCast / castTime;
        calcData.perCastData.perManaSpam = calcData[1].perMana + (calcData[2].perMana * (ticksPerCast / calcData[2].ticks));

        local hitCastsToOom = calcData.castsToOom;
        if calcData.hitChance ~= nil then
            hitCastsToOom = hitCastsToOom * calcData.hitChance;
        end
        local ticksPerCastToOom = hitCastsToOom * ticksPerCast;
        calcData.perCastData.doneToOomSpam = calcData[1].doneToOom + ticksPerCastToOom * calcData[2].perTick;
    end

    calcData.updated = time() - 1;

    _addon:PrintDebug(calcData);
end
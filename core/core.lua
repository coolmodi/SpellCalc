local _, _addon = ...;

local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;
local SPELL_TYPE = _addon.SPELL_TYPE;

_addon.calcedSpells = {};
_addon.lastChange = time();

local _, class = UnitClass("player");
local stats = _addon.stats;

local HEALING_TOUCH = GetSpellInfo(5186);
local HEALING_WAVE = GetSpellInfo(332);
local LESSER_HEALING_WAVE = GetSpellInfo(8004);

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
        critMult = 0,
        buffs = {}, -- Buffs used in the calculation process, not buffs that affect spell indirectly
        updated = 0 -- Last update time
    };

    if spellType == SPELL_TYPE.SPELL then
        st.baseCost = 0;
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
-- @param spellBaseInfo The spell base info table
-- @param isHeal
-- @param spellName
-- @param buffTable
local function GenerateEffectModifier(spellBaseInfo, isHeal, spellName, buffTable)
    local effectMod = stats.effectMods.school[spellBaseInfo.school].val;
    for _, buffName in pairs(stats.effectMods.school[spellBaseInfo.school].buffs) do
        table.insert(buffTable, buffName);
    end

    if stats.effectMods.spell[spellName] ~= nil then
        effectMod = effectMod * stats.effectMods.spell[spellName].val;
        for _, buffName in pairs(stats.effectMods.spell[spellName].buffs) do
            table.insert(buffTable, buffName);
        end
    end

    if not isHeal then
        effectMod = effectMod * stats.dmgDoneMods[spellBaseInfo.school].val;
        for _, buffName in pairs(stats.dmgDoneMods[spellBaseInfo.school].buffs) do
            table.insert(buffTable, buffName);
        end
    elseif not spellBaseInfo.isAbsorbShield then
        effectMod = effectMod * stats.healingDoneMod.val;
        for _, buffName in pairs(stats.healingDoneMod.buffs) do
            table.insert(buffTable, buffName);
        end
    end

    _addon:PrintDebug("Effectmod: "..effectMod);
    return effectMod;
end

local effectTypes = {};

--- Calculate spell values with current stats
-- @param spellId The ID of the spell
function _addon:CalcSpell(spellId)
    _addon:PrintDebug("Calculating spell " .. spellId);

    local name, _, _, castTime = GetSpellInfo(spellId);
    local GCD = 1.5;
    local effCastTime = 0;
    local spellBaseInfo = _addon.spellBaseInfo[name];
    local spellRankInfo = _addon.spellRankInfo[spellId];
    local costs = GetSpellPowerCost(spellId);
    local spellCost = 0;
    local spellType = SPELL_TYPE.SPELL; -- PLACEHOLDER

    if spellBaseInfo.isChannel then
        castTime = spellRankInfo.duration;
        effCastTime = castTime;
    else
        castTime = castTime / 1000;
        effCastTime = math.max(GCD, castTime);
    end

    if costs and #costs > 0 then
        -- TODO: This will need a change for spells with multiple costs, e.g. combo spells!
        spellCost = costs[1].cost;
    end

    --------------------------
    -- Set effect data and types

    if spellType == SPELL_TYPE.SPELL then
        for i = 1, 2, 1 do
            if spellRankInfo.effects[i] == nil then
                effectTypes[i] = nil;
            elseif spellRankInfo.effects[i].isHeal then
                if spellRankInfo.effects[i].isDuration then
                    effectTypes[i] = SPELL_EFFECT_TYPE.HOT;
                else
                    effectTypes[i] = SPELL_EFFECT_TYPE.DIRECT_HEAL;
                end
            elseif spellRankInfo.effects[i].isDmgShield then
                effectTypes[i] = SPELL_EFFECT_TYPE.DMG_SHIELD;
            else
                if spellRankInfo.effects[i].isDuration then
                    effectTypes[i] = SPELL_EFFECT_TYPE.DOT;
                else
                    effectTypes[i] = SPELL_EFFECT_TYPE.DIRECT_DMG;
                end
            end
        end
    else
        -- NYI
    end

    _addon:PrintDebug("Has " .. #spellRankInfo.effects .. " effects (" .. effectTypes[1] .. ", " .. tostring(effectTypes[2]) .. ")");

    --------------------------
    -- Calculation table

    if _addon.calcedSpells[spellId] == nil then
        _addon.calcedSpells[spellId] = MakeSpellTable(spellType, effectTypes[1], effectTypes[2]);
    end
    local calcData = _addon.calcedSpells[spellId];

    --------------------------
    -- Spell wide modifiers

    wipe(calcData.buffs);

    -- Crit

    if spellType == SPELL_TYPE.SPELL then
        calcData.critMult = 1.5;
        calcData.critChance = _addon:GetSpellSchoolCritChance(spellBaseInfo, calcData.buffs);
    else
        -- NYI
    end

    if calcData.critChance > 0 and stats.critMods.spell[name] ~= nil then
        calcData.critChance = calcData.critChance + stats.critMods.spell[name].val;
        for _, buffName in pairs(stats.critMods.spell[name].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    local cmbonus = calcData.critMult - 1;

    if stats.critMult.school[spellBaseInfo.school].val > 0 then
        calcData.critMult = calcData.critMult + cmbonus * stats.critMult.school[spellBaseInfo.school].val/100;
        for _, buffName in pairs(stats.critMult.school[spellBaseInfo.school].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    if stats.critMult.spell[name] ~= nil then
        calcData.critMult = calcData.critMult + cmbonus * stats.critMult.spell[name].val/100;
        for _, buffName in pairs(stats.critMult.spell[name].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    if stats.ignite.val > 0 and spellBaseInfo.school == self.SCHOOL.FIRE then
        calcData.critMult = calcData.critMult * (1 + stats.ignite.val/100);
        for _, buffName in pairs(stats.ignite.buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    -- Mitigation

    if spellBaseInfo.school ~= _addon.SCHOOL.PHYSICAL then
        calcData.avgResistMod = _addon:GetSpellAvgResist(spellBaseInfo.school);
    end

    if calcData.hitChance ~= nil then
        if spellType == SPELL_TYPE.SPELL then
            calcData.baseHitChance = _addon:GetSpellHitChance();
            calcData.hitChanceBonus = _addon:GetSpellHitBonus(spellBaseInfo.school, calcData.buffs);

            if stats.hitMods.spell[name] ~= nil then
                calcData.hitChanceBonus = calcData.hitChanceBonus + stats.hitMods.spell[name].val;
                for _, buffName in pairs(stats.hitMods.spell[name].buffs) do
                    table.insert(calcData.buffs, buffName);
                end
            end
            
            calcData.hitChance = calcData.baseHitChance + calcData.hitChanceBonus;

            if spellBaseInfo.isBinary then
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
    -- Cast time mods

    if stats.mageNWRProc[name] ~= nil and stats.mageNWRProc[name].val ~= 0 and castTime > 0 then
        -- E.g. with a 10% chance every 10th cast will proc, causing the next to be 1.5s (GCD).
        -- NWR has a 10sec ICD, therefore 1 instant + floor(8.5/castTime) casts can't proc it after a proc.
        -- So in reality you have 10 normal casts, 1 GCD and floor(8.5/castTime) additional normal casts.
        -- The effective cast time is then (10*castTime + 1.5 + floor(8.5/castTime)*castTime)/(10 + floor(8.5/castTime) + 1)
        -- TODO P3: is this right or did I just make up total bullshit? Check back in P3 to verify ICD
        local castsInICD = math.floor(8.5/effCastTime);
        effCastTime = (1.5 + (10 + castsInICD) * effCastTime) / (11 + castsInICD);
        effCastTime = math.max(effCastTime, GCD);
        for _, buffName in pairs(stats.mageNWRProc[name].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    if stats.druidNaturesGrace.val > 0 and effCastTime > GCD then
        effCastTime = effCastTime - (calcData.critChance/100) * 0.5;
        effCastTime = math.max(effCastTime, GCD);
        for _, buffName in pairs(self.stats.druidNaturesGrace.buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    --------------------------
    -- Ressource stuff

    calcData.baseCost = spellCost;
    
    if spellCost == 0 then
        calcData.effectiveCost = -99999;
        if spellType == SPELL_TYPE.SPELL then
            calcData.castsToOom = -1;
            calcData.timeToOom = -1;
        end
    else
        if spellType == SPELL_TYPE.SPELL then
            calcData.effectiveCost = spellCost - effCastTime * (stats.manaReg + stats.mp5.val/5);

            if stats.clearCastChance.val > 0 or (stats.clearCastChanceDmg.val > 0 and not spellRankInfo.effects[1].isHeal) then
                local ccc = (stats.clearCastChance.val > 0 ) and stats.clearCastChance or stats.clearCastChanceDmg;
                -- TODO: Don't think this needs a successful hit, but not sure still, people never really know :D
                calcData.effectiveCost = calcData.effectiveCost - spellCost * (ccc.val/100);
                for _, buffName in pairs(ccc.buffs) do
                    table.insert(calcData.buffs, buffName);
                end
            end

            if stats.illumination.val > 0 then
                if (class == "PALADIN" and spellRankInfo.effects[1].isHeal)
                or (class == "MAGE" and (spellBaseInfo.school == self.SCHOOL.FIRE or spellBaseInfo.school == self.SCHOOL.FROST))
                or (class == "DRUID" and name == HEALING_TOUCH) then
                    calcData.effectiveCost = calcData.effectiveCost - spellCost * (stats.illumination.val/100) * (calcData.critChance/100);
                    for _, buffName in pairs(stats.illumination.buffs) do
                        table.insert(calcData.buffs, buffName);
                    end
                end
            end

            if stats.earthfuryReturn.val > 0 and (name == HEALING_WAVE or name == LESSER_HEALING_WAVE) then
                calcData.effectiveCost = calcData.effectiveCost - spellCost * 0.0875;
                for _, buffName in pairs(stats.earthfuryReturn.buffs) do
                    table.insert(calcData.buffs, buffName);
                end
            end

            -- TODO: remove this?
            calcData.effMana = stats.mana;
            if _addon.test_innervate then
                -- Need to remove 20 sec of manaReg because we added it with the effective cost
                calcData.effMana = calcData.effMana + (stats.baseManaReg * 80) - (20 * stats.manaReg);
            end
            if _addon.test_manapot then
                calcData.effMana = calcData.effMana + _addon.test_manapot;
            end

            calcData.castsToOom = calcData.effMana / calcData.effectiveCost;
            if SpellCalc_settings.useRealToOom then
                calcData.castsToOom = math.floor(calcData.castsToOom);
            end
            calcData.timeToOom = calcData.castsToOom * effCastTime;
        else
            -- NYI
        end
    end
    
    --------------------------
    -- Flat mods

    local flatMod = 0;
    if stats.flatMods[name] ~= nil then
        flatMod = stats.flatMod[name].val;
        for _, buffName in pairs(stats.flatMod[name].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    local extraSp = 0;
    if stats.extraSp[name] ~= nil then
        extraSp = stats.extraSp[name].val;
        for _, buffName in pairs(stats.extraSp[name].buffs) do
            table.insert(calcData.buffs, buffName);
        end
    end

    --------------------------
    -- Per effect calculations

    for i = 1, #spellRankInfo.effects, 1 do
        _addon:PrintDebug("Calculating effect " .. i);
        local et = calcData[i];

        --------------------------
        -- Effect bonus power scaling

        if spellType == SPELL_TYPE.SPELL then
            if spellRankInfo.effects[i].isHeal == true and not spellBaseInfo.forceSchoolScaling then
                et.spellPower = stats.spellHealing;
            else
                et.spellPower = stats.spellPower[spellBaseInfo.school];
            end
            et.spellPower = extraSp + et.spellPower;
        else
            -- NYI
        end

        -- Effective power
        et.effectiveSpCoef = spellRankInfo.effects[i].coef;
        et.effectivePower = et.spellPower * et.effectiveSpCoef + flatMod;

        --------------------------
        -- Effect specific modifier
        local effectMod = GenerateEffectModifier(spellBaseInfo, spellRankInfo.effects[i].isHeal, name, calcData.buffs);

        --------------------------
        -- Effect values

        if et.effectType == SPELL_EFFECT_TYPE.DIRECT_DMG or et.effectType == SPELL_EFFECT_TYPE.DIRECT_HEAL then
            _addon:CalculateSpellDirectEffect(calcData, et, spellRankInfo, spellRankInfo.effects[i], effectMod, effCastTime, name);
        elseif et.effectType == SPELL_EFFECT_TYPE.DMG_SHIELD then
            _addon:CalculateSpellDmgShieldEffect(calcData, et, spellRankInfo, spellRankInfo.effects[i], effectMod, effCastTime)
        else -- HoT or DoT (also channeled)
            _addon:CalculateSpellDurationEffect(calcData, et, spellRankInfo, spellRankInfo.effects[i], effectMod, effCastTime, spellBaseInfo, name)
        end
    end

    -- Combined data for spells like Holy Fire or Immolate
    if calcData.perCastData ~= nil then
        _addon:CalculateSpellCombinedEffect(calcData, spellRankInfo.effects[2], effCastTime);
    end

    calcData.updated = time() - 1;

    -- _addon:PrintDebug(calcData);
end
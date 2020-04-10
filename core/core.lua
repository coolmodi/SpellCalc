local _, _addon = ...;

local SPELL_EFFECT_TYPE = _addon.SPELL_EFFECT_TYPE;
local SPELL_TYPE = _addon.SPELL_TYPE;

local calcedSpells = {};
local currentState = 1;

local typeFuncs = {
    baseMembers = {},
    effMembers = {},
    setCrit = {},
    mitigate = {},
    spellcost = {},
    spellcostZero = {},
    effCalc = {}
}
_addon.typeFuncs = typeFuncs;

local stats = _addon.stats;

--- Add buff names to buff list
-- @param self The spell calc table
-- @param buffs The table of buff names to add
local function AddToBuffList(self, buffs)
    for _, buffName in ipairs(buffs) do
        table.insert(self.buffs, buffName);
    end
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
        AddToBuffList = AddToBuffList,
        updated = 0 -- Last update time
    };

    st.baseCost = 0;
    st.effectiveCost = 0;

    typeFuncs.baseMembers[spellType](st, primaryType, secondaryType);

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
        et.flatMod = 0; -- Flat increase, e.g. Cenarion Raiment Thorn damage

        typeFuncs.effMembers[spellType](et, curType);
    end

    return st;
end

--- Generate effect modifiers (baseMod, bonusMod)
-- @param spellBaseInfo The spell base info table
-- @param isHeal
-- @param spellName
-- @param calcData the calculation table
local function GenerateEffectModifiers(spellBaseInfo, isHeal, spellName, calcData)
    local bonusMod = 1;
    local baseMod = stats.effectMods.school[spellBaseInfo.school].val;
    calcData:AddToBuffList(stats.effectMods.school[spellBaseInfo.school].buffs);

    if stats.effectMods.spell[spellName] ~= nil then
        baseMod = baseMod * stats.effectMods.spell[spellName].val;
        calcData:AddToBuffList(stats.effectMods.spell[spellName].buffs);
    end

    if not isHeal then
        bonusMod = bonusMod * stats.dmgDoneMods.school[spellBaseInfo.school].val;
        calcData:AddToBuffList(stats.dmgDoneMods.school[spellBaseInfo.school].buffs);

        if stats.dmgDoneMods.spell[spellName] ~= nil then
            bonusMod = bonusMod * stats.dmgDoneMods.spell[spellName].val;
            calcData:AddToBuffList(stats.dmgDoneMods.spell[spellName].buffs);
        end
    elseif not spellBaseInfo.isAbsorbShield then
        baseMod = baseMod * stats.healingDoneMod.val;
        calcData:AddToBuffList(stats.healingDoneMod.buffs);
    end

    baseMod = baseMod * bonusMod;

    _addon:PrintDebug("Basemod: "..baseMod..", Bonusmod: "..bonusMod);
    return baseMod, bonusMod;
end

local effectTypes = {};

--- Calculate spell values with current stats
-- @param spellId The ID of the spell
local function CalcSpell(spellId)
    _addon:PrintDebug("Calculating spell " .. spellId);

    local name, _, _, castTime = GetSpellInfo(spellId);
    local effCastTime = 0;
    local spellBaseInfo = _addon.spellBaseInfo[name];
    local spellRankInfo = _addon.spellRankInfo[spellId];
    local GCD = spellBaseInfo.GCD or 1.5;
    local costs = GetSpellPowerCost(spellId);
    local spellCost = 0;
    local spellType = SPELL_TYPE.SPELL;

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

    if spellBaseInfo.isSeal then
        spellType = SPELL_TYPE.SEAL;
    elseif spellBaseInfo.isAutoAttack then
        spellType = SPELL_TYPE.AUTO_ATTACK;
    end

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
    elseif spellType == SPELL_TYPE.SEAL then
        if spellBaseInfo.isSeal == "SOR" then
            effectTypes[1] = SPELL_EFFECT_TYPE.SEAL_OF_RIGHTEOUSNES;
        elseif spellBaseInfo.isSeal == "SOC" then
            effectTypes[1] = SPELL_EFFECT_TYPE.SEAL_OF_COMMAND;
        end
    elseif spellType == SPELL_TYPE.AUTO_ATTACK then
        effectTypes[1] = SPELL_EFFECT_TYPE.AUTO_ATTACK;
    end

    _addon:PrintDebug("Has " .. #spellRankInfo.effects .. " effects (" .. effectTypes[1] .. ", " .. tostring(effectTypes[2]) .. ")");

    --------------------------
    -- Calculation table

    if calcedSpells[spellId] == nil then
        calcedSpells[spellId] = MakeSpellTable(spellType, effectTypes[1], effectTypes[2]);
    end
    local calcData = calcedSpells[spellId];

    --------------------------
    -- Spell wide modifiers

    wipe(calcData.buffs);

    -- Crit

    typeFuncs.setCrit[spellType](calcData, spellBaseInfo);

    if calcData.critChance > 0 and stats.critMods.spell[name] ~= nil then
        calcData.critChance = calcData.critChance + stats.critMods.spell[name].val;
        AddToBuffList(calcData, stats.critMods.spell[name].buffs);
    end

    local cmbonus = calcData.critMult - 1;

    if stats.critMult.school[spellBaseInfo.school].val > 0 then
        calcData.critMult = calcData.critMult + cmbonus * stats.critMult.school[spellBaseInfo.school].val/100;
        AddToBuffList(calcData, stats.critMult.school[spellBaseInfo.school].buffs);
    end

    if stats.critMult.spell[name] ~= nil then
        calcData.critMult = calcData.critMult + cmbonus * stats.critMult.spell[name].val/100;
        AddToBuffList(calcData, stats.critMult.spell[name].buffs);
    end

    -- Mitigation

    typeFuncs.mitigate[spellType](calcData, spellBaseInfo, name);

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
        AddToBuffList(calcData, stats.mageNWRProc[name].buffs);
    end

    if stats.druidNaturesGrace.val > 0 and effCastTime > GCD then
        effCastTime = effCastTime - (calcData.critChance/100) * 0.5;
        effCastTime = math.max(effCastTime, GCD);
        AddToBuffList(calcData, stats.druidNaturesGrace.buffs);
    end

    --------------------------
    -- Ressource stuff

    calcData.baseCost = spellCost;

    if spellCost == 0 then
        calcData.effectiveCost = -99999; -- TODO make this 0
        typeFuncs.spellcostZero[spellType](calcData);
    else
        calcData.effectiveCost = spellCost;
        typeFuncs.spellcost[spellType](calcData, spellCost, effCastTime, spellBaseInfo, spellRankInfo, name);
    end

    --------------------------
    -- Flat mods

    local flatMod = 0;
    if stats.flatMods[name] ~= nil then
        flatMod = stats.flatMods[name].val;
        AddToBuffList(calcData, stats.flatMods[name].buffs);
    end

    local extraSp = 0;
    if stats.extraSp[name] ~= nil then
        extraSp = stats.extraSp[name].val;
        AddToBuffList(calcData, stats.extraSp[name].buffs);
    end

    --------------------------
    -- Per effect calculations

    for i = 1, #spellRankInfo.effects, 1 do
        _addon:PrintDebug("Calculating effect " .. i);
        local et = calcData[i];

        --------------------------
        -- Effect specific modifier
        local effectMod, bonusMod = GenerateEffectModifiers(spellBaseInfo, spellRankInfo.effects[i].isHeal, name, calcData);

        --------------------------
        -- Effect bonus power scaling

        if spellRankInfo.effects[i].isHeal == true and not spellBaseInfo.forceSchoolScaling then
            et.spellPower = stats.spellHealing;
        else
            et.spellPower = stats.spellPower[spellBaseInfo.school];
        end
        et.spellPower = extraSp + et.spellPower;

        -- Effective power
        et.effectiveSpCoef = spellRankInfo.effects[i].coef and (spellRankInfo.effects[i].coef * bonusMod) or 0;
        et.effectivePower = et.spellPower * et.effectiveSpCoef;
        et.flatMod = flatMod;

        --------------------------
        -- Effect values

        typeFuncs.effCalc[spellType](calcData, et, spellRankInfo, spellRankInfo.effects[i], effectMod, effCastTime, spellBaseInfo, name);
    end

    -- Combined data for spells like Holy Fire or Immolate
    if calcData.perCastData ~= nil then
        _addon:CalculateSpellCombinedEffect(calcData, spellRankInfo.effects[2], effCastTime);
    end

    calcData.updated = currentState;
end

do
    local updateStaggerFrame = CreateFrame("Frame");
    local timerDiff = 0;
    local waitForUpdate = false;

    -- Only update every 1/3 sec instead of possibly after every single change
    local function UpdateUpdate(self, diff)
        timerDiff = timerDiff + diff;
        if timerDiff > 0.333 then
            currentState = currentState + 1;
            _addon:PrintDebug("Increment state! " .. currentState);
            updateStaggerFrame:SetScript("OnUpdate", nil);
            timerDiff = 0;
            waitForUpdate = false;
        end
    end

    --- Trigger full update
    function _addon:TriggerUpdate()
        if waitForUpdate then
            return;
        end
        self:PrintDebug("Update triggered!");
        updateStaggerFrame:SetScript("OnUpdate", UpdateUpdate);
    end
end

--- Return the handled spell ID or fals if spell is not known by the addon
-- @param SpellID The spell's ID
function _addon:GetHandledSpellID(spellID)
    if spellID == self.JUDGEMENT_ID and self.judgementSpell then
        spellID = self.judgementSpell;
    end

    if self.spellBaseInfo[GetSpellInfo(spellID)] == nil then
        return false;
    end

    return spellID;
end

--- Get calculated spell if it is handled by the addon, updates or creates spell data if needed
-- @param SpellID The spell's ID
function _addon:GetCalcedSpell(spellID)
    spellID = self:GetHandledSpellID(spellID)

    if not spellID then
        return;
    end

    if calcedSpells[spellID] == nil or calcedSpells[spellID].updated < currentState then
        CalcSpell(spellID);
    end

    return calcedSpells[spellID];
end

--- Get the current incrementing internal update state
function _addon:GetCurrentState()
    return currentState;
end
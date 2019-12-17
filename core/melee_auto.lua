local _, _addon = ...;

local TYPE = _addon.SPELL_TYPE.AUTO_ATTACK;

local stats = _addon.stats;

--- Add vars for mitigation to calc table if needed
-- @param ct the calculation table
function AddBaseMembers(ct)
    ct.dodge = 0;
    ct.block = 0;
    ct.parry = 0;
    ct.baseHitChance = 0; -- The base hit chance dpending on level difference
    ct.hitChance = 0; -- Hit chance after modifiers
    ct.hitChanceBonus = 0; -- Bonus hitchance from buffs (and gear)
    ct.effMissChance = 0; -- The effective chance to not hit
    ct.critChance = 0;
    ct.glanceChance = 0;
    ct.glanceDmg = 0;
    ct.toCritCap = 0;

    ct.dodgeOh = 0;
    ct.blockOh = 0;
    ct.parryOh = 0;
    ct.baseHitChanceOh = 0;
    ct.hitChanceOh = 0;
    ct.hitChanceBonusOh = 0;
    ct.effMissChanceOh = 0;
    ct.critChanceOh = 0;
    ct.glanceChanceOh = 0;
    ct.glanceDmgOh = 0;
    ct.toCritCapOh = 0;
end

--- Adds table members for spell calculation to the calculation table
-- @param et The subtable for the effect
function AddEffectMembers(et)
    et.hitMin = 0;
    et.hitMax = 0;
    et.hitAvg = 0;
    et.critMin = 0;
    et.critMax = 0;
    et.critAvg = 0;
    et.perSecond = 0;

    et.hitMinOh = 0;
    et.hitMaxOh = 0;
    et.hitAvgOh = 0;
    et.critMinOh = 0;
    et.critMaxOh = 0;
    et.critAvgOh = 0;
    et.perSecondOh = 0;

    et.perSecondCombined = 0;
end

--- Set crit chance and mult
-- @param ct the calculation table
local function SetCrit(ct)
    ct.critMult = 2;
    -- we set more than just crit here now...
    local miss, dodge, parry, glancing, block, crit, hitBonus, glancingDamage, toCritCap = _addon:GetMeleeTable(ct, true);
    ct.critChance = crit;
    ct.baseHitChance = 100 - miss;
    ct.dodge = dodge;
    ct.block = block;
    ct.parry = parry;
    ct.hitChanceBonus = hitBonus;
    ct.hitChance = math.min(100, ct.baseHitChance + hitBonus);
    ct.glanceChance = glancing;
    ct.glanceDmg = glancingDamage;
    ct.toCritCap = toCritCap;

    if _addon:IsDualWieldEquipped() then
        miss, dodge, parry, glancing, block, crit, hitBonus, glancingDamage, toCritCap = _addon:GetMeleeTable(ct, true, true);
        ct.critChanceOh = crit;
        ct.baseHitChanceOh = 100 - miss;
        ct.dodgeOh = dodge;
        ct.blockOh = block;
        ct.parryOh = parry;
        ct.hitChanceBonusOh = hitBonus;
        ct.hitChanceOh = math.min(100, ct.baseHitChanceOh + hitBonus);
        ct.glanceChanceOh = glancing;
        ct.glanceDmgOh = glancingDamage;
        ct.toCritCapOh = toCritCap;
    end
end

--- Calculate mitigation variables
-- @param calcData the calculation table
local function Mitigate(calcData)
    -- effective hit is anything that does dmg
    calcData.effMissChance = (100 - calcData.hitChance + calcData.dodge + calcData.parry) / 100;
    if _addon:IsDualWieldEquipped() then
        calcData.effMissChanceOh = (100 - calcData.hitChanceOh + calcData.dodgeOh + calcData.parryOh) / 100;
    end
end

--- Calculate SoC
-- @param calcData The calculation table
-- @param et The subtable of the effect
-- @param spellRankInfo The spell rank info table
-- @param effectData The effect data from spell data
-- @param effectMod The talent/buff/gear modifier for the effect
function CalculateAutoAttack(calcData, et, spellRankInfo, effectData, effectMod)
    et.hitMin = stats.attackDmg.mh.min * effectMod;
    et.hitMax = stats.attackDmg.mh.max * effectMod;
    et.hitAvg = (et.hitMin + et.hitMax) / 2;

    et.critMin = et.hitMin * calcData.critMult;
    et.critMax = et.hitMax * calcData.critMult;
    et.critAvg = (et.critMin + et.critMax) / 2;

    local glancePart = calcData.glanceChance/100;
    local critPart = calcData.critChance/100;
    local hitPart = 1 - critPart - glancePart - calcData.effMissChance;

    local glancePartialAvg = et.hitAvg * calcData.glanceDmg * glancePart;
    local critPartialAvg = et.critAvg * critPart;
    local normalPartialAvg = et.hitAvg * hitPart;
    local avgResultDmg = normalPartialAvg + critPartialAvg + glancePartialAvg;

    et.perSecond = avgResultDmg / stats.attackSpeed.mh;
    et.perSecondCombined = et.perSecond;

    if _addon:IsDualWieldEquipped() then
        et.hitMinOh = stats.attackDmg.oh.min * effectMod;
        et.hitMaxOh = stats.attackDmg.oh.max * effectMod;
        et.hitAvgOh = (et.hitMinOh + et.hitMaxOh) / 2;

        et.critMinOh = et.hitMinOh * calcData.critMult;
        et.critMaxOh = et.hitMaxOh * calcData.critMult;
        et.critAvgOh = (et.critMinOh + et.critMaxOh) / 2;

        glancePart = calcData.glanceChanceOh/100;
        critPart = calcData.critChanceOh/100;
        hitPart = 1 - critPart - glancePart - calcData.effMissChanceOh;

        glancePartialAvg = et.hitAvgOh * calcData.glanceDmgOh * glancePart;
        critPartialAvg = et.critAvgOh * critPart;
        normalPartialAvg = et.hitAvgOh * hitPart;
        avgResultDmg = normalPartialAvg + critPartialAvg + glancePartialAvg;

        et.perSecondOh = avgResultDmg / stats.attackSpeed.oh;
        et.perSecondCombined = et.perSecondCombined + et.perSecondOh;
    end
end

local function EmptyFunc() end

_addon.typeFuncs.setCrit[TYPE] = SetCrit;
_addon.typeFuncs.mitigate[TYPE] = Mitigate;
_addon.typeFuncs.baseMembers[TYPE] = AddBaseMembers;
_addon.typeFuncs.effMembers[TYPE] = AddEffectMembers;
_addon.typeFuncs.spellcostZero[TYPE] = EmptyFunc;
_addon.typeFuncs.spellcost[TYPE] = EmptyFunc;
_addon.typeFuncs.effCalc[TYPE] = CalculateAutoAttack;
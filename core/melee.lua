local _, _addon = ...;

local _, race = UnitRace("player");
local _, class = UnitClass("player");
local stats = _addon.stats;

--- Get crit chance against a target
-- @param isPvP Is the target a player
-- @param baseAtk Base attack value for level
-- @param atk Actual attack value for weapon
-- @param ldef Level based def value for target
-- @param levelDiff Level difference with target
-- @param isOffhand Is offhand attack
local function GetWeaponCritChance(isPvP, baseAtk, atk, ldef, levelDiff, isOffhand)
    local basecrit = stats.attackCrit.mh;

    if isOffhand then
        -- adjust attack skill based crit for offhand
        -- MINOR PROBLEM: this will create bullshit results if mainhand skill is low enough to fall below minimum crit
        basecrit = basecrit - (stats.attack.oh - stats.attack.mh) * 0.04;

        -- adjust offhand crit for weapon specific talents (warrior axe spec and rogue dagger and fisting spec)
        if _addon:GetWeaponType("mh") ~= _addon:GetWeaponType("oh") then
            local WM = _addon.WEAPON_TYPES_MASK;

            if class == "WARRIOR" then
                local _, _, _, _, curRank = GetTalentInfo(1, 12); -- axe spec
                if curRank > 0 then
                    if bit.band(_addon:GetWeaponType("mh"), WM.AXE_2H + WM.AXE_1H) > 0 then
                        basecrit = basecrit - curRank;
                    elseif bit.band(_addon:GetWeaponType("oh"), WM.AXE_2H + WM.AXE_1H) > 0 then
                        basecrit = basecrit + curRank;
                    end
                end
            elseif class == "ROGUE" then
                local _, _, _, _, curRank = GetTalentInfo(2, 11); -- dagger spec
                if curRank > 0 then
                    if bit.band(_addon:GetWeaponType("mh"), WM.DAGGER) > 0 then
                        basecrit = basecrit - curRank;
                    elseif bit.band(_addon:GetWeaponType("oh"), WM.DAGGER) > 0 then
                        basecrit = basecrit + curRank;
                    end
                end

                _, _, _, _, curRank = GetTalentInfo(2, 16); -- fisting spec
                if curRank > 0 then
                    if bit.band(_addon:GetWeaponType("mh"), WM.FIST) > 0 then
                        basecrit = basecrit - curRank;
                    elseif bit.band(_addon:GetWeaponType("oh"), WM.FIST) > 0 then
                        basecrit = basecrit + curRank;
                    end
                end
            end
        end
    end

    if isPvP then
        -- basecrit (the spellbook crit) includes changes as if the target is a player on your level (lvl*5 def),
        -- which means we only have to adjust for level differences.
        return math.max(0, basecrit + (baseAtk - ldef) * 0.04);
    end

    -- against NPCs weapon skill above the level based max is ignored for crit
    local effectiveAttack = math.min(atk, baseAtk);
    local adDiff = effectiveAttack - ldef;

    -- spellbook crit (basecrit) already includes a 0.04% change for every point you are above or below YOUR level based maximum!
    -- need to adjust crit so that bonuses from weapon skill are removed and penalties are applied correctly based on target level/def
    local crit = basecrit + (baseAtk - atk) * 0.04;
    -- apply real changes
    if adDiff < 0 then
        crit = crit + adDiff * 0.2;
    elseif adDiff > 0 then
        crit = crit + adDiff * 0.04;
    end

    -- TODO: get auracrit so we know we have some, or just take it as granted?
    if levelDiff > 2 then
        crit = crit - 1.8;
    end

    if crit < 0 then
        crit = 0;
    end

    _addon:PrintDebug(crit);
    return crit;
end

--- Get parry chance against target
-- @param isPvP Is the target a player
-- @param levelDiff Level difference with target
local function GetParryChance(isPvP, levelDiff)
    if isPvP or not SpellCalc_settings.meleeFromFront then
        return 0;
    end

    -- TODO: this is probably not correct at all
    if levelDiff < 2 then
        return math.max(0, 5 + levelDiff);
    else
        return 14;
    end
end

--- Get dodge chance against target
-- @param isPvP Is the target a player
-- @param skillDiff Differenmce between attack skill and defense skill
local function GetDodgeChance(isPvP, skillDiff)
    if isPvP then
        return 0; -- dodge + skillDiff * 0.04;
    end

    return math.max(0, 5 + skillDiff * 0.1);
end

--- Get miss chance against target
-- @param isPvP Is the target a player
-- @param isWhitehit Is it a white hit
-- @param skillDiff Differenmce between attack skill and defense skill
-- @param targetLevel Level of the target
local function GetMissChance(isPvP, isWhitehit, skillDiff, targetLevel)
    local miss;

    if isPvP then
        return math.max(0, 5 + skillDiff * 0.04);
    else
        if skillDiff > 10 then
            miss = math.max(0, 5 + skillDiff * 0.2);
        else
            miss = math.max(0, 5 + skillDiff * 0.1);
        end
 
        if targetLevel < 10 then
            miss = miss * targetLevel / 10;
        end
    end

    if isWhitehit and _addon:IsDualWieldEquipped() then
        miss = 0.8 * miss + 20;
    end

    return miss;
end

--- Get glancing chance and average damage reduction
-- @param ldef Level based def value for target
-- @param baseAtk Base attack value for level
-- @param atk Actual attack value for weapon
local function GetGlancingChanceAndDamage(ldef, baseAtk, atk)
    local glancing = 10 + (ldef - math.min(baseAtk, atk)) * 2;
    local minReduction = math.max(0, math.min(0.91, 1.3 - 0.05 * (ldef - atk)));
    local maxRedcution = math.max(0.2, math.min(0.99, 1.2 - 0.03 * (ldef - atk)));
    local glancingDamage = (minReduction + maxRedcution) / 2;
    return glancing, glancingDamage;
end

local function GetBlockChancePH(isPvP, skillDiff)
    if isPvP or not SpellCalc_settings.meleeFromFront then
        return 0;
    end
    return math.min(5, 5 + skillDiff * 0.1);
end

--- Get melee attack table against current target
-- @param calcData The spell calc table
-- @param isWhitehit Treat as white hit, i.e. there are glancing blows
-- @param isOffhand Use offhand weapon skill
-- @return miss chance in percent, excluding hitBonus!
-- @return dodge chance in percent
-- @return parry chance in percent
-- @return glancing chance if isWhitehit is true
-- @return block chance in percent
-- @return crit adjusted to target level
-- @return hitBonus after level based penalty
-- @return glancingDamage if isWhitehit is true
-- @return crit percent to crit cap if whitehit, negative if over crit cap
function _addon:GetMeleeTable(calcData, isWhitehit, isOffhand)
    local tData = _addon.target;
    local ldef = tData.level * 5;
    local miss, dodge, parry, block, crit, glancing, glancingDamage;
    local hitBonus = 0;
    local baseAtk = 5 * UnitLevel("player");

    -- Get chances

    if tData.isPlayer then
        local atk = baseAtk;
        if race == "Orc" then
            if self:IsWeaponTypeEquipped(self.WEAPON_TYPES_MASK.AXE_1H + self.WEAPON_TYPES_MASK.AXE_2H, isOffhand and "oh" or "mh") then
                atk = atk + 5;
            end
        elseif race == "Human" then
            local WTM = self.WEAPON_TYPES_MASK;
            if self:IsWeaponTypeEquipped(WTM.SWORD_1H + WTM.SWORD_2H + WTM.MACE_1H + WTM.MACE_2H, isOffhand and "oh" or "mh") then
                atk = atk + 5;
            end
        end

        local skillDiff = ldef - atk;

        miss = GetMissChance(true, isWhitehit, skillDiff);
        dodge = GetDodgeChance(true, skillDiff);
        block = GetBlockChancePH(true, skillDiff);
        parry = GetParryChance(true, tData.levelDiff);
        crit = GetWeaponCritChance(true, baseAtk, atk, ldef, tData.levelDiff, isOffhand);

        if isWhitehit then
            glancing, glancingDamage = 0, 1;
        end
    else
        local atk = isOffhand and stats.attack.oh or stats.attack.mh;
        if class == "DRUID" then
            local formId = GetShapeshiftForm();
            if formId == 1 or formId == 3 then
                atk = baseAtk;
            end
        end
        local skillDiff = ldef - atk;

        miss = GetMissChance(false, isWhitehit, skillDiff, tData.level);
        dodge = GetDodgeChance(false, skillDiff);
        block = GetBlockChancePH(false, skillDiff);
        parry = GetParryChance(false, tData.levelDiff);
        crit = GetWeaponCritChance(false, baseAtk, atk, ldef, tData.levelDiff, isOffhand);

        if isWhitehit then
            glancing, glancingDamage = GetGlancingChanceAndDamage(ldef, baseAtk, atk);
        end
    end

    -- Get hit boni

    if stats.hitBonus.val > 0 then
        hitBonus = hitBonus + stats.hitBonus.val;
        calcData:AddToBuffList(stats.hitBonus.buffs);
    end

    local weaponType = self:GetWeaponType(isOffhand and "oh" or "mh");
    if stats.hitMods.weapon[weaponType].val > 0 then
        hitBonus = hitBonus + stats.hitMods.weapon[weaponType].val;
        calcData:AddToBuffList(stats.hitMods.weapon[weaponType].buffs);
    end

    if tData.levelDiff > 2 then
        hitBonus = math.max(0, hitBonus - 1);
    end

    -- Return table

    local dbstring = "Melee table: M: %.1f, D: %.1f, P: %.1f, G: %s, B: %.1f, C: %.1f, HB: %.1f, GD: %s";
    self:PrintDebug((dbstring):format(miss, dodge, parry, tostring(glancing), block, crit, hitBonus, tostring(glancingDamage)));

    local total = 100;

    local realMiss = math.max(0, miss - hitBonus);
    if total < realMiss then
        return 100, 0, 0, 0, 0, 0, hitBonus, glancingDamage;
    end
    total = total - realMiss;

    if total < dodge then
        return miss, total, 0, 0, 0, 0, hitBonus, glancingDamage;
    end
    total = total - dodge;

    if total < parry then
        return miss, dodge, total, 0, 0, 0, hitBonus, glancingDamage;
    end
    total = total - parry;

    if glancing then
        if total < glancing then
            return miss, dodge, parry, total, 0, 0, hitBonus, glancingDamage;
        end
        total = total - glancing;
    end

    if total < block then
        return miss, dodge, parry, glancing, total, 0, hitBonus, glancingDamage;
    end
    total = total - block;

    -- For specials it's 2 rolls, seems like
    -- 1. miss, dodge and parry
    -- 2. crit
    -- same as spells just with all "miss" chances
    if isWhitehit then
        if total < crit then
            return miss, dodge, parry, glancing, block, total, hitBonus, glancingDamage, total - crit;
        end
        return miss, dodge, parry, glancing, block, crit, hitBonus, glancingDamage, total - crit;
    end

    return miss, dodge, parry, glancing, block, crit, hitBonus, glancingDamage;
end
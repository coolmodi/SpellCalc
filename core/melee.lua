local _, _addon = ...;

local _, race = UnitRace("player");
local stats = _addon.stats;

--- Get melee attack table against current target
-- @param buffTable The calculation table's buff table
-- @param isWhitehit Treat as white hit, i.e. there are glancing blows
-- @param isOffhand Use offhand weapon skill
-- @return miss chance in percent
-- @return dodge chance in percent
-- @return parry chance in percent
-- @return glancing chance if isWhitehit is true
-- @return block chance in percent
-- @return crit adjusted to target level
-- @return hitBonus after level based penalty
-- @return glancingDamage if isWhitehit is true
function _addon:GetMeleeTable(buffTable, isWhitehit, isOffhand)
    local tData = _addon.target;
    local ldef = tData.level * 5;
    local miss, dodge, parry, block, crit, glancing, glancingDamage;
    local hitBonus = 0;
    local baseAtk = 5 * UnitLevel("player");
    local basecrit = stats.attackCrit.mh;

    -- vs. Player
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

        miss = math.max(0, 5 + skillDiff * 0.04);
        dodge = 0 -- dodge + skillDiff * 0.04;
        block = 0 -- block + 5 + skillDiff * 0.04;
        parry = 0;

        -- basecrit (the spellbook crit) includes changes as if the target is a player on your level (lvl*5 def),
        -- which means we only have to adjust for level differences.
        crit = basecrit + (baseAtk - ldef) * 0.04;

    -- vs. NPC
    else
        local atk = isOffhand and stats.attack.oh or stats.attack.mh;
        local skillDiff = ldef - atk;

        if skillDiff > 10 then
            miss = math.max(0, 5 + skillDiff * 0.2);
        else
            miss = math.max(0, 5 + skillDiff * 0.1);
        end

        if tData.level < 10 then
            miss = miss * tData.level / 10;
        end

        dodge = math.max(0, 5 + skillDiff * 0.1);

        if SpellCalc_settings.meleeFromFront then
            block = math.max(0, math.min(5, 5 + skillDiff * 0.1));
            -- TODO: this is probably not correct at all
            if tData.levelDiff < 2 then
                parry = math.max(0, 5 + tData.levelDiff);
            else
                parry = 14;
            end
        else
            block = 0;
            parry = 0;
        end

        -- against NPCs weapon skill above the level based max is ignored for crit
        local effectiveAttack = math.min(atk, baseAtk);
        local adDiff = effectiveAttack - ldef;
        -- spellbook crit (basecrit) already includes a 0.04% change for every point you are above or below YOUR level based maximum!
        -- need to adjust crit so that bonuses from weapon skill are removed and penalties are applied correctly based on target level/def
        crit = basecrit + (baseAtk - atk) * 0.04;
        -- apply real changes
        if adDiff < 0 then
            crit = crit + adDiff * 0.2;
        elseif adDiff > 0 then
            crit = crit + adDiff * 0.04;
        end

        -- TODO: get auracrit so we know we have some, or just take it as granted?
        if tData.levelDiff > 2 then
            crit = crit - 1.8;
        end

        if isWhitehit then
            glancing = 10 + (ldef - math.min(baseAtk, atk)) * 2;
            local minReduction = math.min(0.91, 1.3 - 0.05 * (ldef - atk));
            local maxRedcution = math.max(0.2, math.min(0.99, 1.2 - 0.03 * (ldef - atk)));
            glancingDamage = (minReduction + maxRedcution) / 2;
        end
    end

    if crit < 0 then
        crit = 0;
    end

    if stats.hitBonus.val > 0 then
        hitBonus = hitBonus + stats.hitBonus.val;
        for _, buffName in pairs(stats.hitBonus.buffs) do
            table.insert(buffTable, buffName);
        end
    end

    local weaponType = self:GetWeaponType(isOffhand and "oh" or "mh");
    if stats.hitMods.weapon[weaponType].val > 0 then
        hitBonus = hitBonus + stats.hitMods.weapon[weaponType].val;
        for _, buffName in pairs(stats.hitMods.weapon[weaponType].buffs) do
            table.insert(buffTable, buffName);
        end
    end

    -- TODO: implement talent/buff hit bonus collection (also weapon specific)

    if tData.levelDiff > 2 then
        hitBonus = math.max(0, hitBonus - 1);
    end

    if isWhitehit and _addon:IsDualWieldEquipped() then
        miss = 0.8 * miss + 20;
    end

    local dbstring = "Melee table: M: %.1f, D: %.1f, P: %.1f, G: %s, B: %.1f, C: %.1f, HB: %.1f, GD: %s";
    self:PrintDebug((dbstring):format(miss, dodge, parry, tostring(glancing), block, crit, hitBonus, tostring(glancingDamage)));

    local total = 100;
    if total < miss - hitBonus then
        return total, 0, 0, 0, 0, 0, hitBonus, glancingDamage;
    end

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

    if total < crit then
        return miss, dodge, parry, glancing, block, total, hitBonus, glancingDamage;
    end

    return miss, dodge, parry, glancing, block, crit, hitBonus, glancingDamage;
end
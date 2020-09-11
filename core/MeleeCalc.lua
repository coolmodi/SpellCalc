---@type AddonEnv
local _addon = select(2, ...);

local _, race = UnitRace("player");
local _, class = UnitClass("player");
local stats = _addon.stats;

---@class MeleeCalc
local MeleeCalc = {};
MeleeCalc.__index = MeleeCalc;

--- Get an object used to calculate melee stuff
---@return MeleeCalc
function MeleeCalc:New()
    local mc = {};
    setmetatable(mc, MeleeCalc);
    return mc;
end

--- Initialize for new spell
---@param calcedSpell CalcedSpell
---@param isOffhand boolean @Use offhand weapon skill
---@param isWhitehit boolean @Is for auto attack
---@param isRanged boolean
---@param cantDodgeParryBlock boolean
---@param dontUseWeapon boolean
function MeleeCalc:Init(calcedSpell, isOffhand, isWhitehit, isRanged, cantDodgeParryBlock, dontUseWeapon)
    _addon:PrintDebug("Init MeleeCalc - OH:"..tostring(isOffhand).." WH: "..tostring(isWhitehit).." R: "..tostring(isRanged).." noweapon: "..tostring(dontUseWeapon));
    local tData = _addon.target;
    local ldef = tData.level * 5; -- Level based def value
    local latk = 5 * UnitLevel("player"); -- Level based attack value
    local ratk = latk; -- Real attack value

    if tData.isPlayer then
        if not dontUseWeapon then
            if not isRanged then
                if race == "Orc" then
                    if _addon:IsWeaponTypeEquipped(_addon.WEAPON_TYPES_MASK.AXE_1H + _addon.WEAPON_TYPES_MASK.AXE_2H, isOffhand and "oh" or "mh") then
                        ratk = ratk + 5;
                    end
                elseif race == "Human" then
                    local WTM = _addon.WEAPON_TYPES_MASK;
                    if _addon:IsWeaponTypeEquipped(WTM.SWORD_1H + WTM.SWORD_2H + WTM.MACE_1H + WTM.MACE_2H, isOffhand and "oh" or "mh") then
                        ratk = ratk + 5;
                    end
                end
            else
                if race == "Troll" then
                    if _addon:IsWeaponTypeEquipped(_addon.WEAPON_TYPES_MASK.BOW, "r") then
                        ratk = ratk + 5;
                    end
                elseif race == "Dwarf" then
                    if _addon:IsWeaponTypeEquipped(_addon.WEAPON_TYPES_MASK.GUN, "r") then
                        ratk = ratk + 5;
                    end
                end
            end
        end

        self.isPvP = true;
    else
        if not dontUseWeapon then
            if isRanged then
                ratk = stats.attack.r;
            else
                ratk = isOffhand and stats.attack.oh or stats.attack.mh;
            end

            -- TODO: druid melee spells don't use weapons I think, remove when implementing druid melee
            if class == "DRUID" then
                local form = _addon:GetShapeshiftName();
                if form and (form == "bear" or form == "cat") then
                    ratk = latk;
                end
            end
        end

        self.isPvP = false;
    end

    _addon:PrintDebug("Using ldef: "..ldef.." latk: "..latk.." ratk: "..latk);

    self.ldef = ldef;
    self.latk = latk;
    self.ratk = ratk;
    self.levelDiff = tData.levelDiff;
    self.targetLevel = tData.level;
    self.calcedSpell = calcedSpell;
    self.isOffhand = isOffhand;
    self.isWhitehit = isWhitehit;
    self.cantDodgeParryBlock = cantDodgeParryBlock;
    self.isRanged = isRanged;
end

--- Get crit chance
function MeleeCalc:GetCrit()
    local basecrit = self.isRanged and stats.attackCrit.r or stats.attackCrit.mh;

    if self.isOffhand then
        -- adjust attack skill based crit for offhand
        -- MINOR PROBLEM: this will create bullshit results if mainhand skill is low enough to fall below minimum crit
        basecrit = basecrit - (stats.attack.oh - stats.attack.mh) * 0.04;

        -- adjust offhand crit for weapon specific talents (warrior axe spec and rogue dagger and fisting spec)
        -- TODO: this is bullshit lol
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

    if self.isPvP then
        -- basecrit (the spellbook crit) includes changes as if the target is a player on your level (lvl*5 def),
        -- which means we only have to adjust for level differences.
        return math.max(0, basecrit + (self.latk - self.ldef) * 0.04);
    end

    -- against NPCs weapon skill above the level based max is ignored for crit
    local effectiveAttack = math.min(self.ratk, self.latk);
    local adDiff = effectiveAttack - self.ldef;

    -- spellbook crit (basecrit) already includes a 0.04% change for every point you are above or below YOUR level based maximum!
    -- need to adjust crit so that bonuses from weapon skill are removed and penalties are applied correctly based on target level/def
    local crit = basecrit + (self.latk - self.ratk) * 0.04;
    -- apply real changes
    if adDiff < 0 then
        crit = crit + adDiff * 0.2;
    elseif adDiff > 0 then
        crit = crit + adDiff * 0.04;
    end

    -- TODO: get auracrit so we know we have some, or just take it as granted?
    if self.levelDiff > 2 then
        crit = crit - 1.8;
    end

    if crit < 0 then
        crit = 0;
    elseif crit > 100 then
        crit = 100;
    end

    if self.isRanged then
        _addon:PrintDebug("Ranged crit: " .. crit);
    else
        _addon:PrintDebug("Melee crit: " .. crit);
    end

    return crit;
end

--- Get parry chance against target
---@param calc MeleeCalc
local function GetParryChance(calc)
    if calc.isPvP 
    or not SpellCalc_settings.meleeFromFront 
    or calc.cantDodgeParryBlock
    or calc.isRanged then
        return 0;
    end

    -- TODO: this is probably not correct at all
    if calc.levelDiff < 2 then
        return math.max(0, 5 + calc.levelDiff);
    else
        return 14;
    end
end

--- Get dodge chance against target
---@param calc MeleeCalc
---@param skillDiff number @Differenmce between attack skill and defense skill
local function GetDodgeChance(calc, skillDiff)
    if calc.cantDodgeParryBlock or calc.isRanged then
        return 0;
    end

    if calc.isPvP then
        return 0; -- dodge + skillDiff * 0.04;
    end

    return math.max(0, 5 + skillDiff * 0.1);
end

--- Get miss chance against target
---@param calc MeleeCalc
local function GetMissChance(calc)
    local miss;
    local skillDiff = calc.ldef - calc.ratk;

    if calc.isPvP then
        miss = math.max(0, 5 + skillDiff * 0.04);
    else
        if skillDiff > 10 then
            miss = math.max(0, 5 + skillDiff * 0.2);
        else
            miss = math.max(0, 5 + skillDiff * 0.1);
        end
 
        if calc.targetLevel < 10 then
            miss = miss * calc.targetLevel / 10;
        end
    end

    if calc.isWhitehit and not calc.isRanged and _addon:IsDualWieldEquipped() then
        miss = 0.8 * miss + 20;
    end

    if miss > 100 then
        return 100;
    end

    return miss;
end

--- Get glancing chance and average damage reduction
---@param ldef number @Level based def value for target
---@param baseAtk number @Base attack value for level
---@param atk number @Actual attack value for weapon
local function GetGlancingChanceAndDamage(ldef, baseAtk, atk)
    local glancing = 10 + (ldef - math.min(baseAtk, atk)) * 2;
    local minReduction = math.max(0, math.min(0.91, 1.3 - 0.05 * (ldef - atk)));
    local maxRedcution = math.max(0.2, math.min(0.99, 1.2 - 0.03 * (ldef - atk)));
    local glancingDamage = (minReduction + maxRedcution) / 2;
    return glancing, glancingDamage;
end

local function GetBlockChancePH(calc, skillDiff)
    if calc.isPvP or not SpellCalc_settings.meleeFromFront or calc.cantDodgeParryBlock then
        return 0;
    end
    return math.min(5, 5 + skillDiff * 0.1);
end

--- Get melee attack table against current target
---@return number @hit chance in percent, excluding hitBonus!
---@return number @dodge chance in percent
---@return number @parry chance in percent
---@return number @glancing chance if isWhitehit is true
---@return number @block chance in percent
---@return number @hitBonus after level based penalty
---@return number @glancingDamage if isWhitehit is true
function MeleeCalc:GetMDPGB()
    local skillDiff = self.ldef - self.ratk;

    local hit = 100 - GetMissChance(self);
    local hitBonus = 0;

    if stats.hitBonus.val > 0 then
        hitBonus = hitBonus + stats.hitBonus.val;
        self.calcedSpell:AddToBuffList(stats.hitBonus.buffs);
    end

    local weaponType = _addon:GetWeaponType(self.isOffhand and "oh" or "mh");
    if stats.hitMods.weapon[weaponType].val > 0 then
        hitBonus = hitBonus + stats.hitMods.weapon[weaponType].val;
        self.calcedSpell:AddToBuffList(stats.hitMods.weapon[weaponType].buffs);
    end

    if self.levelDiff > 2 then
        hitBonus = math.max(0, hitBonus - 1);
    end

    local total = 100;

    local realMiss = math.max(0, 100 - hit + hitBonus);
    total = total - realMiss;

    local dodge = GetDodgeChance(self, skillDiff);

    if total < dodge then
        return hit, total, 0, 0, 0, hitBonus, 0;
    end
    total = total - dodge;

    local parry = GetParryChance(self);

    if total < parry then
        return hit, dodge, total, 0, 0, hitBonus, 0;
    end
    total = total - parry;

    local glancing, glancingDmg;
    if self.isWhitehit and not self.isPvP and not self.isRanged then
        glancing, glancingDmg = GetGlancingChanceAndDamage(self.ldef, self.latk, self.ratk);
    end

    if glancing then
        if total < glancing then
            return hit, dodge, parry, total, 0, hitBonus, glancingDmg;
        end
        total = total - glancing;
    end

    local block = GetBlockChancePH(self, skillDiff);

    if total < block then
        return hit, dodge, parry, glancing, total, hitBonus, glancingDmg;
    end

    return hit, dodge, parry, glancing, block, hitBonus, glancingDmg;
end

--- Get damage reduction from armor for current target
function MeleeCalc:GetArmorDR()
    local armor = _addon.target.resistance[1];
    local pLevel = UnitLevel("player");
    return armor / (armor + 400 + pLevel * 85);
end

_addon.MeleeCalc = MeleeCalc;
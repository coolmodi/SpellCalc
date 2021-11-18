---@type string
local _addonName = select(1, ...);
---@type AddonEnv
local _addon = select(2, ...);

SLASH_SPELLCALC1 = "/sc";
SLASH_SPELLCALC2 = "/spellcalc";

SlashCmdList["SPELLCALC"] = function(arg)
    if arg == "debug" then
        SpellCalc_settings.debug = not SpellCalc_settings.debug;
        _addon:PrintWarn("Debug "..(SpellCalc_settings.debug and "active" or "disabled"));
        return;
    end

    if arg == "ub" then
        _addon:UpdatePlayerAuras(true);
        _addon:UpdatePlayerAuras();
        return;
    end

    if string.find(arg, "^tt") then
        local talentOverride = {};

        for tripel in string.gmatch(arg, "%d %d+ %d") do
            local tree, talent, rank = string.match(tripel, "(%d) (%d+) (%d)");

            if tree == nil or talent == nil or rank == nil then
                _addon:PrintWarn("tree, talent or rank nil for tripel: "..tripel);
                return;
            end

            local treen = tonumber(tree);
            local talentn = tonumber(talent);
            local rankn = tonumber(rank);

            local name, _, _, _, _, maxRank = GetTalentInfo(treen, talentn);

            if rankn > maxRank then
                _addon:PrintWarn("Rank " .. rankn .." invalid! Max rank = " .. maxRank);
                return;
            end

            table.insert(talentOverride, {
                tree = treen,
                talent = talentn,
                rank = rankn
            });

            print("Add talentoverride: "..name.. " "..rankn.."/"..maxRank);
        end

        if #talentOverride == 0 then
            _addon:PrintWarn("No talents specified!");
            return;
        end

        _addon:UpdateTalents(talentOverride);

        return;
    end

    if string.find(arg, "ps") then
        local spellId = string.match(arg, "(%d+)");
        if spellId == nil then
            _addon:PrintWarn("spellId is nil!");
            return;
        end

        local calcedSpell = _addon:GetCurrentSpellData(tonumber(spellId));
        if calcedSpell == nil then
            _addon:PrintWarn("No current data for spell with ID "..spellId);
            return;
        end

        print("=== Data for spell "..spellId.." ===============");
        _addon:PrintTable(calcedSpell);
        print("=========================================");

        return;
    end

    if string.find(arg, "cs") then
        local spellId = string.match(arg, "(%d+)");
        if spellId == nil then
            _addon:PrintWarn("spellId is nil!");
            return;
        end

        local calcedSpell = _addon:GetCalcedSpell(tonumber(spellId));
        if calcedSpell == nil then
            _addon:PrintWarn("No data for spell with ID "..spellId);
            return;
        end

        print("=== Data for spell "..spellId.." ===============");
        _addon:PrintTable(calcedSpell);
        print("=========================================");

        return;
    end

    if arg == "i" or arg == "info" then
		if SpellCalcStatScreen:IsShown() then
            SpellCalcStatScreen:Hide();
        else
            SpellCalcStatScreen:Show();
        end
		return;
    end

    if string.find(arg, "dii") then
        local iid, slotid = strmatch(arg, "(%d+) (%d+)");
        if iid and slotid then
            _addon:PrintWarn("Debug equip item "..iid.." into slot "..slotid.."!");
            _addon:DebugEquipItem(tonumber(iid), tonumber(slotid));
        end
        return;
    end

    if string.find(arg, "dis") then
        local slotid, itemLink = strmatch(arg, "(%d+) (.+)");
        print(slotid, itemLink);
        if itemLink and slotid then
            local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4, Suffix, Unique, LinkLvl, reforging, Name = string.find(itemLink, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*):?(%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?");
            _addon:PrintWarn("Debug equip item "..Id.." into slot "..slotid.."!");
            _addon:DebugEquipItem(tonumber(Id), tonumber(slotid));
        end
        return;
    end

    if string.find(arg, "dab") then
        local spellId = strmatch(arg, "(%d+)");
        if spellId then
            _addon:DebugApplyBuff(tonumber(spellId));
        end
        return;
    end

    if string.find(arg, "dsbf") then
        local flag = strmatch(arg, "(%d+)");
        local remove = string.find(arg, "-");
        if flag then
            if remove then
                _addon:RemoveAuraEffect("Debug Flag "..flag, {
                    type = _addon.EFFECT_TYPE.BOOLEAN_BITFLAG_SET,
                    value = tonumber(flag),
                }, tonumber(flag));
            else
                _addon:ApplyAuraEffect("Debug Flag "..flag, {
                    type = _addon.EFFECT_TYPE.BOOLEAN_BITFLAG_SET,
                    value = tonumber(flag),
                }, tonumber(flag));
            end
        end
        return;
    end

    InterfaceOptionsFrame_OpenToCategory(_addonName);
    InterfaceOptionsFrame_OpenToCategory(_addonName);
end
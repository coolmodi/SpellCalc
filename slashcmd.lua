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
        _addon:UpdateBuffs(true);
        _addon:UpdateBuffs();
        return;
    end

    local s = string.find(arg, "tt");
    if s ~= nil then
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

    s = string.find(arg, "ps");
    if s ~= nil then
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

    s = string.find(arg, "cs");
    if s ~= nil then
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

    InterfaceOptionsFrame_OpenToCategory(_addonName);
    InterfaceOptionsFrame_OpenToCategory(_addonName);
end
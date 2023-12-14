import { readFileSync } from "fs";
import { cfg } from "../config";
import { readDBCSVtoMap } from "../CSVReader";
import { getClassMaskFromName } from "../helper";
import { AuraHandlers, USELESS_AURAS } from "../ItemAuraHandlers";
import { SpellData, SpellEffect } from "../SpellData";
import { createEffectLua } from "../itemFunctions";
import { ClassSpellSets } from "../ClassSpellSets";
import { getTalentDummies } from "./talentDummies";

interface DBCTalent
{
    ID: number,
    Description_lang: string,
    TierID: number,
    Flags: number,
    ColumnIndex: number,
    TabID: number,
    ClassID: number,
    SpecID: number,
    SpellID: number,
    OverridesSpellID: number,
    RequiredSpellID: number,
    CategoryMask_0: number,
    CategoryMask_1: number,
    SpellRank_0: number,
    SpellRank_1: number,
    SpellRank_2: number,
    SpellRank_3: number,
    SpellRank_4: number,
}

interface DBCTalentTab
{
    ID: number,
    Name_lang: string,
    BackgroundFile: string,
    OrderIndex: number,
    RaceMask: number,
    ClassMask: ClassMask,
    PetTalentMask: number,
    SpellIconID: number
}

interface TalentDef
{
    name: string,
    tree: number,
    tier: number,
    column: number,
    effects: AddonTalentData[]
}

interface TalentTreeDef
{
    name: string,
    talents: TalentDef[]
}

const AURA_TYPES_TO_IGNORE: { [index: number]: true | undefined } = {};
Object.assign(AURA_TYPES_TO_IGNORE, USELESS_AURAS);

export class TalentsCreator
{
    private readonly talents: Map<number, DBCTalent>;
    private readonly talentTabs: Map<number, DBCTalentTab>;
    private readonly spellData: SpellData;
    private readonly auraHandlers: AuraHandlers;
    private readonly dummyTalents: { [talentName: string]: AddonTalentData[] };

    constructor(spellData: SpellData, auraHandlers: AuraHandlers, classSpellSets: ClassSpellSets)
    {
        this.talents = readDBCSVtoMap<DBCTalent>(cfg.dataDir + "dbc/Talent.csv", "ID");
        this.talentTabs = readDBCSVtoMap<DBCTalentTab>(cfg.dataDir + "dbc/TalentTab.csv", "ID");
        this.spellData = spellData;
        this.auraHandlers = auraHandlers;
        this.dummyTalents = getTalentDummies(spellData, classSpellSets);
    }

    /**
     * Filter and convert SpellEffects to AddonEffectData.
     * @param effects 
     * @returns 
     */
    private filterEffects(effects: SpellEffect[])
    {
        const validEffects: AddonEffectData[] = [];
        for (const eff of effects)
        {
            if (this.spellData.getSpellPowerCosts(eff.SpellID).length !== 0
                || AURA_TYPES_TO_IGNORE[eff.EffectAura]) continue;

            if (!this.auraHandlers.handlers[eff.EffectAura]) throw "Aura type isn't ignore but also not handled!";
            const aed = this.auraHandlers.handlers[eff.EffectAura](eff);
            if (aed) validEffects.push(aed);
        }
        return validEffects;
    }

    /**
     * Build effect list for talent.
     * @param talent 
     * @returns 
     */
    private getTalentEffects(talent: DBCTalent)
    {
        const talentEffects: AddonTalentData[] = [];
        const spellEffects: AddonEffectData[][] = [];

        for (let i = 0; i < 5; i++)
        {
            const spellId = talent[("SpellRank_" + i) as keyof DBCTalent];
            if (typeof spellId === "number" && spellId !== 0)
            {
                spellEffects[i] = this.filterEffects(this.spellData.getSpellEffects(spellId));
                if (spellEffects[i].length === 0) break;
            }
        }

        for (let effIndex = 0; effIndex < spellEffects[0].length; effIndex++)
        {
            talentEffects[effIndex] = spellEffects[0][effIndex];
            talentEffects[effIndex].value = undefined;

            const values: number[] = [];

            for (let rankEffects of spellEffects)
            {
                const v = rankEffects[effIndex].value;
                if (v) values.push(v);
            }

            const maxValue = values[values.length - 1];
            const ranks = spellEffects.length;

            if (maxValue % ranks === 0)
            {
                talentEffects[effIndex].perPoint = maxValue / ranks;
            }
            else
            {
                talentEffects[effIndex].values = values;
            }
        }

        return talentEffects;
    }

    /**
     * Build talent list for player class.
     * @param pclass 
     * @returns 
     */
    private getTalentList(pclass: PlayerClass)
    {
        const classMask = getClassMaskFromName(pclass);
        const list: [TalentTreeDef, TalentTreeDef, TalentTreeDef] = [
            { name: "", talents: [] },
            { name: "", talents: [] },
            { name: "", talents: [] },
        ];

        const talentsToDo: string[] = JSON.parse(readFileSync(cfg.dataDir + "class_talents/" + pclass + ".json", "utf-8"));

        for (const talent of this.talents.values())
        {
            const tab = this.talentTabs.get(talent.TabID);
            const talentName = this.spellData.getSpellName(talent.SpellRank_0).Name_lang;

            if (!tab) throw new Error("Talent tab ID is invalid?!");
            if (tab.ClassMask != classMask) continue;
            if (talentsToDo.indexOf(talentName) === -1) continue;

            if (!list[tab.OrderIndex].name) list[tab.OrderIndex].name = tab.Name_lang;

            let talentEffects: AddonTalentData[];
            if (this.dummyTalents[talentName])
                talentEffects = this.dummyTalents[talentName];
            else
                talentEffects = this.getTalentEffects(talent);

            if (talentEffects.length === 0) continue;

            list[tab.OrderIndex].talents.push({
                name: talentName,
                tree: tab.OrderIndex + 1,
                tier: talent.TierID + 1,
                column: talent.ColumnIndex + 1,
                effects: talentEffects
            });
        }

        for (const tree of list)
        {
            tree.talents.sort((a, b) => (a.tier * 100 + a.column) - (b.tier * 100 + b.column));
        }

        return list;
    }

    buildTalentLua(pclass: PlayerClass)
    {
        console.log("Bulding talents for " + pclass);

        const list = this.getTalentList(pclass);

        let lua = `-- GENERATED, DO NOT EDIT DIRECTLY!

---@class AddonEnv
local _addon = select(2, ...);
local _, playerClass = UnitClass("player");
if playerClass ~= "${pclass.toUpperCase()}" then
    return;
end

---@type TalentDataRawEntry[]
_addon.talentDataRaw = {`;

        for (const tree of list)
        {
            lua += `
    -----------------------------
    -- ${tree.name}
    -----------------------------`;

            for (const talent of tree.talents)
            {
                lua += `
    { -- ${talent.name}
        tree = ${talent.tree},
        tier = ${talent.tier},
        column = ${talent.column},
        effects = {\n`;
                for (const eff of talent.effects)
                {
                    const valKey = eff.values ? "values" : "perPoint";
                    const value = eff.values ? `{${eff.values.join(", ")}}` : eff.perPoint;
                    lua += createEffectLua("            ", eff, { [valKey]: value });
                }
                lua += `        }
    },`;
            }
        }

        lua += "\n}\n";

        return lua;
    }
}
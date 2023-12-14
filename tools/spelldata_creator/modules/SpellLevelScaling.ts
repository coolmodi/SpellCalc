import { readDBCSV } from "../CSVReader";
import { SpellData } from "../SpellData";
import { cfg } from "../config";

interface SpellXDescriptionVariables
{
    ID: number,
    SpellID: number,
    SpellDescriptionVariablesID: number
}

interface SpellDescriptionVariables
{
    ID: number,
    Variables: string,
}

export class SpellLevelScaling
{
    private readonly spellData: SpellData;
    /** Map<set id, Map<name, formula>> */
    private readonly descriptionVariables = new Map<number, Map<string, string>>();
    /** SpellId -> variable set Id */
    private readonly spellMappings = new Map<number, { variablesId: number, variablesKey: string }>();

    constructor(spellData: SpellData)
    {
        this.spellData = spellData;

        const spellDescVars = readDBCSV<SpellDescriptionVariables>(cfg.dataDir + "dbc/SpellDescriptionVariables.csv", "ID");
        for (const id in spellDescVars)
        {
            const descvars = spellDescVars[id].Variables.match(/(\$.*?})/g);
            if (!descvars) throw new Error("Empty variables?");
            const variables = new Map<string, string>();
            for (const descvar of descvars)
            {
                const parsed = this.parseVariable(descvar);
                variables.set(parsed.name, parsed.formula);
            }
            this.descriptionVariables.set(parseInt(id), variables);
        }

        const spellXDescVars = readDBCSV<SpellXDescriptionVariables>(cfg.dataDir + "dbc/SpellXDescriptionVariables.csv", "SpellID");
        for (const spellId in spellXDescVars)
        {
            const variablesId = spellXDescVars[spellId].SpellDescriptionVariablesID;
            const variables = this.descriptionVariables.get(variablesId);
            if (variables)
            {
                const keyForSpell = this.spellResolveVariableName(variablesId, parseInt(spellId));
                if (!keyForSpell)
                {
                    console.log("SpellLevelScaling: Spell " + spellId + " doesn't seem to exist.");
                    continue;
                }
                this.spellMappings.set(spellXDescVars[spellId].SpellID, { variablesId: variablesId, variablesKey: keyForSpell });
            }
        }

        if (cfg.expansion == "CLASSIC")
        {
            // Force add Earth Shield
            this.spellMappings.set(408514, { variablesId: 824, variablesKey: "healpower" });
        }
    }

    private parseVariable(varstr: string)
    {
        const matches = varstr.match(/\$(.+)=\${(.*)}/);
        if (!matches || matches.length !== 3) throw new Error("Couldn't match variable formula!");
        const varName = matches[1];
        const varFormula = matches[2];
        return { name: varName, formula: varFormula };
    }

    private spellResolveVariableName(variablesId: number, spellId: number)
    {
        const variables = this.descriptionVariables.get(variablesId);
        if (!variables) throw new Error("No variables for this Id!");

        const effects = this.spellData.getSpellEffects(spellId, true);

        if (!effects) return;

        if (variables.size === 1) return variables.keys().next().value;

        if (effects[0].Effect == EFFECT_TYPE.SPELL_EFFECT_HEAL || effects[0].EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_HEAL)
        {
            if (!variables.has("healpower")) throw new Error("Healing spell but no variable healpower exists!");
            return "healpower";
        }

        if (cfg.expansion == "CLASSIC")
        {
            // Prayer of Mending
            if (spellId == 401859) return "healpower";
        }

        if (variables.has("damagepower")) return "damagepower";
        if (variables.has("power")) return "power";
        if (variables.has("base")) return "base";

        throw new Error("Not healing spell but no variable damagepower, power or base exists!");
    }

    private convertFormulaToAddonLua(raw: string)
    {
        const formula = raw.replace(/\$PL/g, "playerLevel");
        if (formula.indexOf("[") !== -1) return `function(playerLevel) error("Spell variable formula not implemented!") end`;
        return `function(playerLevel) return ${formula} end`;
    }

    /**
     * Get key for variable function if spell uses special scaling.
     * @param spellId 
     * @returns 
     */
    getVariableKeyForSpell(spellId: number)
    {
        const mapping = this.spellMappings.get(spellId);
        if (!mapping) return;
        return mapping.variablesId + mapping.variablesKey;
    }

    /**
     * Get generated Lua code for addon.
     * @returns 
     */
    getVariablesLua()
    {
        console.log("Generate level scaling data");

        let lua = `-- GENERATED

---@class AddonEnv
local _addon = select(2, ...);

---@type table<string, fun(playerLevel:number):number>
_addon.spellScalingVariables = {\n`;

        for (const [variableId, variables] of this.descriptionVariables)
        {
            for (const [varName, formula] of variables)
            {
                lua += `    ["${variableId}${varName}"] = ${this.convertFormulaToAddonLua(formula)},\n`;
            }
        }

        lua += "}\n";
        return lua;
    }
}
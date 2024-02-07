import { readDBCSV } from "../../CSVReader";
import { SpellData } from "../../SpellData";
import { cfg } from "../../config";
import { ScalingFormulaParsed } from "./parser";

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
    private readonly descriptionVariables = new Map<number, Map<string, ScalingFormulaParsed>>();
    /** SpellId -> variable set Id */
    private readonly spellMappings = new Map<number, { variablesId: number, variablesKey: string }>();

    constructor(spellData: SpellData)
    {
        this.spellData = spellData;

        const spellDescVars = readDBCSV<SpellDescriptionVariables>(cfg.dataDir + "dbc/SpellDescriptionVariables.csv", "ID");
        for (const id in spellDescVars)
        {
            const varSplit = spellDescVars[id].Variables.trim().split("\n");
            const variables = new Map<string, ScalingFormulaParsed>();

            for (const varEntry of varSplit)
            {
                const parsed = ScalingFormulaParsed.fromString(varEntry);
                variables.set(parsed.label, parsed);
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
        if (variables.has("mult")) return "mult";

        throw new Error("Not healing spell but no variable damagepower, power or base exists!");
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
                lua += `    ["${variableId}${varName}"] = ${formula.asLuaFunctionString()},\n`;
            }
        }

        lua += "}\n";
        return lua;
    }

    getVarSetsLua(ids: number[])
    {
        let lua = `---@type table<number, table<string, fun(playerLevel:number):number>>
_addon.spellScalingVariables = {\n`;

        for (const setId of ids)
        {
            const vars = this.descriptionVariables.get(setId);
            if (!vars) throw new Error("Invalid variable set id " + setId);

            lua += `    [${setId}] = {\n`;

            for (const [label, sform] of vars)
            {
                lua += `        ${label} = ${sform.asLuaFunctionString()},\n`;
            }

            lua += `    },\n`;
        }

        lua += "}\n";
    }
}

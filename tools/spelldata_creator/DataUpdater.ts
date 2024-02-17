import { writeFileSync } from "fs";
import https from "https"
import path from "path";

const dataTables = [
    "Item",
    "ItemEffect",
    "ItemSearchName",
    "ItemSet",
    "ItemSetSpell",
    "ItemSparse",
    "Spell",
    "SpellAuraOptions",
    "SpellCategories",
    "SpellClassOptions",
    "SpellCooldowns",
    "SpellDescriptionVariables",
    "SpellDuration",
    "SpellEffect",
    "SpellEquippedItems",
    "SpellLevels",
    "SpellMisc",
    "SpellName",
    "SpellPower",
    "SpellXDescriptionVariables",
    "Talent",
    "TalentTab",
];

type Expansion = "classic" | "wotlk";

function getDataDir(exp: Expansion)
{
    return "data/" + exp + "/dbc/";
}

function downloadFile(url: string): Promise<string>
{
    return new Promise((resolve, reject) =>
    {
        const request = https.get(url, response =>
        {
            if (response.statusCode !== 200)
            {
                reject(new Error(`Req failed '${url}' (${response.statusCode})`));
                return;
            }

            let data = "";

            response.setEncoding("utf-8");

            response.on("data", (chunk) =>
            {
                data += chunk;
            });

            response.on("end", () =>
            {
                try
                {
                    resolve(data);
                }
                catch (error)
                {
                    reject(error);
                }
            });
        });

        request.on("error", err =>
        {
            reject(err);
        });
    });
}

async function updateDataFiles(expansion: Expansion, branch: string)
{
    /* if (!build.match(/\d\.\d+.*\d\d\d\d\d/))
        throw new Error("Build is probably invalid!"); */

    const dataDir = getDataDir(expansion);

    for (const tableName of dataTables)
    {
        const url = `https://wago.tools/db2/${tableName}/csv?branch=${branch}`;
        let data: string;

        console.log("Starting download for: " + tableName);

        try
        {
            data = await downloadFile(url);
        }
        catch (error)
        {
            console.error(error);
            return;
        }

        const dest = path.join(dataDir, tableName + ".csv");
        writeFileSync(dest, data);
        console.log("Wrote file: " + dest);
    }
}

const expArg: string | undefined = process.argv[2];

if (!expArg || expArg != "classic" && expArg != "wotlk")
    throw new Error("Expansion argument missing or invalid!");

updateDataFiles(expArg, (expArg == "classic") ? "wow_classic_era" : "wow_classic");

import * as fs from "fs";

const enum QuoteState { NO_QUOTES = 1, IN_QUOTES, WAS_IN_QUOTES }

function parseLine(line: string)
{
    const delim = ",";
    const fields: string[] = [];

    let fstart = 0;
    let qstate = QuoteState.NO_QUOTES;
    let i = 0;
    let current: string | undefined = line[i];

    while (true)
    {
        if (!current || current == delim)
        {
            if (qstate != QuoteState.IN_QUOTES)
            {
                if (qstate == QuoteState.WAS_IN_QUOTES)
                    fields.push(line.substring(fstart + 1, i - 1).replace(/""/g, "\""));
                else
                    fields.push(line.substring(fstart, i));

                qstate = QuoteState.NO_QUOTES;
                fstart = i + 1;
            }
        }
        else if (current == "\"")
        {
            if (qstate == QuoteState.NO_QUOTES)
                qstate = QuoteState.IN_QUOTES;
            else if (line[i + 1] == "\"")
                i++;
            else
                qstate = QuoteState.WAS_IN_QUOTES
        }

        if (!current) break;
        current = line[++i];
    }

    return fields;
}

function parseField(fieldStr: string)
{
    if (fieldStr.match(/\d\.\d/))
    {
        const f = parseFloat(fieldStr);
        if (!isNaN(f)) return f;
    }

    if (fieldStr.match(/^-?\d+$/))
    {
        const i = parseInt(fieldStr);
        if (!isNaN(i)) return i;
    }

    return fieldStr;
}

/**
 * Read WoW DBC CSV file.
 * @param path 
 * @param indexKey 
 * @param filter 
 * @returns 
 */
export function readDBCSV<T>(path: string, indexKey: string, filter?: { key: keyof T, is: any }[]): { [index: string]: T }
{
    let raw = fs.readFileSync(path, "utf8");
    raw = raw.replace(/"(.|\r|\n)*?"/g, (subs) => subs.replace(/\r|\n/g, ""));

    const lines = raw.replace("\r", "").split("\n");
    const headers = lines[0].split(",");
    const data: { [index: string]: T } = {};

    for (let i = 1; i < lines.length; i++)
    {
        const line = lines[i];
        if (line == "") continue;

        const fields = parseLine(line);
        if (headers.length != fields.length) throw new Error(path + " > Line column count doesn't match header count! Line: " + i);

        const thisData: { [index: string]: number | string } = {};
        for (let j = 0; j < headers.length; j++)
        {
            thisData[headers[j]] = parseField(fields[j]);
        }

        if (filter)
        {
            let doContinue = false;
            for (const fentry of filter)
            {
                if (typeof fentry.is !== "undefined" && thisData[fentry.key as string] != fentry.is)
                {
                    doContinue = true;
                    break;
                }
            }
            if (doContinue) continue;
        }

        if (!thisData[indexKey]) throw new Error("CSV index not found!");
        if (data[thisData[indexKey]]) throw new Error("Duplicate index encountered!");

        data[thisData[indexKey]] = thisData as T;
    }

    return data;
}

/**
 * Read WoW DBC CSV file.
 * @param path 
 * @param index The index column.
 */
export function readDBCSVtoMap<V extends object>(path: string, index: string): Map<number, V>
{
    let raw = fs.readFileSync(path, "utf8");
    raw = raw.replace(/"(.|\r|\n)*?"/g, (subs) => subs.replace(/\r|\n/g, ""));

    const lines = raw.replace("\r", "").split("\n");
    const headers = lines[0].split(",");
    const data: Map<number, V> = new Map<number, V>();

    for (let i = 1; i < lines.length; i++)
    {
        if (lines[i].length < 2) continue;

        const fields = parseLine(lines[i]);
        const thisData: { [index: string]: number | string } = {};

        for (let j = 0; j < headers.length; j++)
        {
            thisData[headers[j]] = parseField(fields[j]);
        }

        const key = thisData[index];

        if (typeof key !== "number") throw new Error("Key is not a number!");
        if (!thisData[index]) throw new Error("CSV index not found!");
        if (data.has(key)) throw new Error("Duplicate index encountered!");

        data.set(key, thisData as V);
    }

    return data;
}
import * as fs from "fs";

const enum QuoteState { NO_QUOTES = 1, IN_QUOTES, WAS_IN_QUOTES }

function parseNextEntry(csvString: string, startPos: number): [string[], number]
{
    const delim = ",";
    const fields: string[] = [];

    let fstart = startPos;
    let qstate = QuoteState.NO_QUOTES;
    let i = startPos;
    let current: string | undefined = csvString[i];

    while (true)
    {
        if (!current || current == delim || current == "\n")
        {
            if (qstate != QuoteState.IN_QUOTES)
            {
                if (qstate == QuoteState.WAS_IN_QUOTES)
                    fields.push(csvString.substring(fstart + 1, i - 1).replace(/""/g, "\""));
                else
                    fields.push(csvString.substring(fstart, i));

                if (current == "\n")
                    break;

                qstate = QuoteState.NO_QUOTES;
                fstart = i + 1;
            }
        }
        else if (current == "\"")
        {
            if (qstate == QuoteState.NO_QUOTES)
                qstate = QuoteState.IN_QUOTES;
            else if (csvString[i + 1] == "\"")
                i++;
            else
                qstate = QuoteState.WAS_IN_QUOTES
        }

        if (!current) break;
        current = csvString[++i];
    }

    return [fields, i];
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
export function readDBCSVString<T>(csvString: string, indexKey: string, filter?: { key: keyof T, is: any }[]): { [index: string]: T }
{
    const [headers, headersEnd] = parseNextEntry(csvString, 0);
    const fieldCount = headers.length;
    const data: { [index: string]: T } = {};

    let nextStartPos = headersEnd + 1;
    while (nextStartPos < csvString.length)
    {
        const [fields, entryEndPos] = parseNextEntry(csvString, nextStartPos);
        if (fields.length != fieldCount)
            throw new Error(`Invalid field count for fields at pos ${nextStartPos}!`);

        const thisData: { [index: string]: number | string } = {};
        for (let i = 0; i < headers.length; i++)
        {
            thisData[headers[i]] = parseField(fields[i]);
        }

        let discardThis = false;

        if (filter)
        {
            for (const fentry of filter)
            {
                if (typeof fentry.is !== "undefined" && thisData[fentry.key as string] != fentry.is)
                {
                    discardThis = true;
                    break;
                }
            }
        }

        if (!discardThis)
        {
            if (!thisData[indexKey]) throw new Error("CSV index not found!");
            if (data[thisData[indexKey]]) throw new Error("Duplicate index encountered!");
            data[thisData[indexKey]] = thisData as T;
        }

        nextStartPos = entryEndPos + 1;
    }

    return data;
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
    let csvString = fs.readFileSync(path, "utf8").trim().replace(/\r/g, "");
    return readDBCSVString(csvString, indexKey, filter);
}

/**
 * Read WoW DBC CSV file.
 * @param path 
 * @param index The index column.
 */
export function readDBCSVtoMap<V extends object>(path: string, index: string): Map<number, V>
{
    let csvString = fs.readFileSync(path, "utf8").trim().replace(/\r/g, "");

    const [headers, headersEnd] = parseNextEntry(csvString, 0);
    const fieldCount = headers.length;

    const data: Map<number, V> = new Map<number, V>();

    let nextStartPos = headersEnd + 1;
    while (nextStartPos < csvString.length)
    {
        const [fields, entryEndPos] = parseNextEntry(csvString, nextStartPos);
        if (fields.length != fieldCount)
            throw new Error(`Invalid field count for fields at pos ${nextStartPos}!`);

        const thisData: { [index: string]: number | string } = {};
        for (let i = 0; i < headers.length; i++)
        {
            thisData[headers[i]] = parseField(fields[i]);
        }

        const key = thisData[index];

        if (typeof key !== "number") throw new Error("Key is not a number!");
        if (!thisData[index]) throw new Error("CSV index not found!");
        if (data.has(key)) throw new Error("Duplicate index encountered!");

        data.set(key, thisData as V);

        nextStartPos = entryEndPos + 1;
    }

    return data;
}

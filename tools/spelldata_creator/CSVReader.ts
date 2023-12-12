import * as fs from "fs";

/**
 * Read WoW DBC CSV file.
 * @param path 
 * @param index The index column.
 */
export function readDBCSV<T>(path: string, index: string, filter?: {key: keyof T, is: any}[]): {[index: string]: T} {
    let raw = fs.readFileSync(path, "utf8");
    raw = raw.replace(/"(.|\r|\n)*?"/g, (subs) => {
        return subs.replace(/\r|\n/g, "");
    });
    let lines = raw.replace("\r","").split("\n");
    let headers = lines[0].split(",");
    let data: {[index: string]: {[index: string]: number | string}} = {};
    for (let i = 1; i < lines.length; i++) {
        if (lines[i].length < 2) continue;
        const lineData = lines[i].split(/(?:(?<!"[^"]+),(?=(?![^"]+")|(?:.*,)))|(?:(?<=",),)|(?:,$)/);
        if (headers.length != lineData.length) throw new Error(path + " > Line column count doesn't match header count! Line: " + i);
        const thisData: {[index: string]: number | string} = {};
        for (let j = 0; j < headers.length; j++) {
            if (lineData[j].match(/\d\.\d/)) {
                thisData[headers[j]] = parseFloat(lineData[j]);
            } else if (headers[j] == "Name_lang" || headers[j] == "NameSubtext_lang" || headers[j] == "Description_lang" || headers[j] == "AuraDescription_lang") {
                thisData[headers[j]] = lineData[j].replace(/"/g, "");
            } else {
                thisData[headers[j]] = parseInt(lineData[j]);
            }
        }

        if (filter)
        {
            let doContinue = false;
            for (const fentry of filter)
            {
                if (typeof fentry.is !== "undefined")
                {
                    // @ts-ignore
                    const t1 = thisData[fentry.key as string];
                    // @ts-ignore
                    const t2 = fentry.is;
                    if (thisData[fentry.key as string] != fentry.is)
                    {
                        doContinue = true;
                        break;
                    }
                }
            }
            if (doContinue) continue;
        }

        if (!thisData[index]) 
            throw new Error("CSV index not found!");

        if (data[thisData[index]])
            throw "Duplicate index encountered!";
        
        data[thisData[index]] = thisData;
    }
    // @ts-ignore
    return data;
}

/**
 * Read WoW DBC CSV file.
 * @param path 
 * @param index The index column.
 */
export function readDBCSVtoMap<V extends object>(path: string, index: string): Map<number, V> {
    let raw = fs.readFileSync(path, "utf8");
    raw = raw.replace(/"(.|\r|\n)*?"/g, (subs) => {
        return subs.replace(/\s/g, "");
    });

    const lines = raw.replace("\r","").split("\n");
    const headers = lines[0].split(",");
    const data: Map<number, V> = new Map<number, V>();

    for (let i = 1; i < lines.length; i++) {
        if (lines[i].length < 2) continue;

        const lineData = lines[i].split(",");
        const thisData: {[index: string]: number | string} = {};

        for (let j = 0; j < headers.length; j++) {
            if (lineData[j].match(/\d\.\d/)) {
                thisData[headers[j]] = parseFloat(lineData[j]);
            } else if (headers[j].indexOf("_lang") > -1) {
                thisData[headers[j]] = lineData[j];
            } else {
                thisData[headers[j]] = parseInt(lineData[j]);
            }
        }

        if (!thisData[index]) throw "CSV index not found!";
        if (data.has(<number>thisData[index])) throw "Duplicate index encountered!";
        
        // No clue how to do this remotely right, but who cares
        // @ts-ignore
        data.set(<K>thisData[index], thisData);
    }

    return data;
}
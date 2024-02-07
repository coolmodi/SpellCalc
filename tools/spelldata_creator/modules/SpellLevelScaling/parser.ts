import { readDBCSVString } from "../../CSVReader";

type FormulaObjectType = "constant" | "logicalOp" | "mathOp" | "variable" | "function";

abstract class FormulaObject
{
    constructor(readonly type: FormulaObjectType) { }
    readonly abstract val: string | number;
    toString() { return this.val }
}

type LogicalOpId = "if" | "then" | "else" | "return" | "endreturn" | "begin" | "end" | ">" | "<" | "<=" | ">=" | "==";
class LogicalOperator extends FormulaObject
{
    constructor(readonly val: LogicalOpId) { super("logicalOp") }
}

const enum MathOpId
{
    Plus = "+", Minus = "-", Mult = "*"
}
class MathOperator extends FormulaObject
{
    constructor(readonly val: MathOpId) { super("mathOp") }
}
const mathOperators: { [key: string]: MathOperator | undefined } = {
    [MathOpId.Plus]: new MathOperator(MathOpId.Plus),
    [MathOpId.Minus]: new MathOperator(MathOpId.Minus),
    [MathOpId.Mult]: new MathOperator(MathOpId.Mult),
}

class Constant extends FormulaObject
{
    constructor(readonly val: number) { super("constant") }
}

class Variable extends FormulaObject
{
    constructor(readonly val: string) { super("variable") }
}

type FunctionType = "HaveTalent" | "ValueOfVariable";
class FunctionCall extends FormulaObject
{
    constructor(readonly val: string | number, readonly functionType: FunctionType) { super("function") }
    toString() { return `${this.functionType}(${typeof this.val == "string" ? `"${this.val}"` : this.val})` }
}

interface Formula
{
    label: string;
    formula: FormulaObject[];
}

function readLogicalOperator(str: string, pos: number): [LogicalOperator | undefined, number]
{
    const char = str[pos];
    const char2 = (pos + 1 < str.length) ? str[pos + 1] : "";

    switch (char)
    {
        case "}":
            return [new LogicalOperator("endreturn"), pos + 1];
        case "]":
            {
                if (char2 == "[") return [new LogicalOperator("else"), pos + 2];
                return [new LogicalOperator("end"), pos + 1];
            }
        case "[":
            return [new LogicalOperator("then"), pos + 1];
        case "$":
            {
                switch (char2)
                {
                    case "?":
                        return [new LogicalOperator("if"), pos + 2];
                    case "{":
                        return [new LogicalOperator("return"), pos + 2];
                }
                break;
            }
        case "<":
            {
                if (char2 == "=") return [new LogicalOperator("<="), pos + 2];
                return [new LogicalOperator("<"), pos + 1];
            }
        case ">":
            {
                if (char2 == "=") return [new LogicalOperator(">="), pos + 2];
                return [new LogicalOperator(">"), pos + 1];
            }
    }

    return [undefined, pos];
}

function readConst(str: string, pos: number): [Constant, number]
{
    let end = pos;
    let code = str.charCodeAt(end);
    // number or .
    while (code >= 48 && code <= 57 || str[end] == ".")
    {
        end++;
        code = str.charCodeAt(end);
    }
    const sub = str.substring(pos, end);
    const val = parseFloat(sub);

    if (isNaN(val))
        throw new Error(`Failed to parse constant value at pos ${pos}!`);

    return [new Constant(val), end];
}

function readVar(str: string, pos: number): [Variable, number]
{
    let end = pos;
    let code = str.charCodeAt(end);
    // alphanumeric
    while (code >= 48 && code <= 57 || code >= 65 && code <= 90 || code >= 97 && code <= 122)
    {
        end++;
        code = str.charCodeAt(end);
    }
    const sub = str.substring(pos, end);
    return [new Variable(sub), end];
}

function readSpellLearnedCondition(str: string, startPos: number): [FunctionCall, number]
{
    if (str[startPos] != "s")
        throw new Error(`Invalid start of spell condition, expected "s" but found "${str[startPos]}"!`);

    const [c, endConst] = readConst(str, startPos + 1);
    return [new FunctionCall(c.val, "HaveTalent"), endConst]
}

function readVarRedirect(str: string, startPos: number): [FunctionCall, number]
{
    if (str[startPos] == "$") startPos++;

    if (str[startPos] != "<")
        throw new Error(`Invalid start of var redirect, expected "<" but found "${str[startPos]}"!`);

    const [v, endPos] = readVar(str, startPos + 1);

    if (str[endPos] != ">")
        throw new Error(`Invalid end of var redirect, expected ">" but found "${str[endPos]}"!`);

    return [new FunctionCall(v.val, "ValueOfVariable"), endPos + 1]
}

function parseFormuaString(str: string): Formula
{
    str = str.trim();

    if (str[0] != "$") throw new Error("Character at start is not $ at pos 0!");
    const eqPos = str.indexOf("=");
    if (eqPos === -1) throw new Error(`Label does not end with a equals sign!`);

    const label = str.substring(1, eqPos);
    const posAfterLabel = eqPos + 1;

    const formula: FormulaObject[] = [];

    let i = posAfterLabel;

    while (i < str.length)
    {
        if (str[i] == "s")
        {
            const [slfunc, endPos] = readSpellLearnedCondition(str, i);
            formula.push(slfunc);
            i = endPos;
            continue;
        }

        if (str[i] == "$" && str[i + 1] == "<")
        {
            const [useVarFunc, endPos] = readVarRedirect(str, i);
            formula.push(useVarFunc);
            i = endPos;
            continue;
        }

        let [op, end] = readLogicalOperator(str, i);

        if (op)
        {
            formula.push(op);
            i = end;
            continue;
        }

        const code = str.charCodeAt(i);

        if (code >= 48 && code <= 57)
        {
            const [cval, endPos] = readConst(str, i);
            formula.push(cval);
            i = endPos;
            continue;
        }

        const char = str[i];

        if (char == "$")
        {
            const [vval, endPos] = readVar(str, i + 1);
            formula.push(vval);
            i = endPos;
            continue;
        }

        const mop = mathOperators[char];
        if (mop)
        {
            formula.push(mop);
            i++;
            continue;
        }

        throw new Error(`No valid token at pos ${i}, char ${char}!`);
    }

    return { label, formula }
}

export class ScalingFormulaParsed
{
    readonly label: string;

    private readonly formObjects: FormulaObject[];

    private constructor(form: Formula)
    {
        this.formObjects = form.formula;
        this.label = form.label;
    }

    static fromString(str: string)
    {
        const rawf = parseFormuaString(str);
        return new ScalingFormulaParsed(rawf);
    }

    asString()
    {
        return this.label + " = " + this.formObjects.join(" ");
    }

    asLuaFunctionString(paramReplace?: { [orig: string]: string })
    {
        const params: string[] = [];
        let body = "";

        let inElse = false;
        let inReturn = false;

        for (const obj of this.formObjects)
        {
            if (obj.type == "variable")
            {
                let param = obj.val as string;
                if (paramReplace && paramReplace[param]) param = paramReplace[param];
                if (!params.includes(param)) params.push(param);
                body += param + " ";
                continue;
            }

            if (obj.type != "logicalOp")
            {
                body += obj + " ";
                continue;
            }

            const opId = (<LogicalOperator>obj).val;

            switch (opId)
            {
                case "<":
                case "<=":
                case "==":
                case ">":
                case ">=":
                    body += obj + " ";
                    break;
                case "return":
                    body += obj + " ";
                    inReturn = true;
                    break;
                case "endreturn":
                    body += "";
                    inReturn = false;
                    break;
                case "end":
                    if (!inElse)
                        body += "or ";
                    else if (!inReturn)
                        body += "end ";
                    break;
                case "begin":
                case "else":
                    inElse = true;
                    if (!inReturn)
                        body += "else ";
                    else
                        body += "or ";
                    break;
                case "if":
                    if (!inReturn) body += "if ";
                    break;
                case "then":
                    if (!inReturn)
                        body += "then ";
                    else
                        body += "and ";
                    break;
                default:
                    throw new Error("Unimplemented operator :" + opId);
            }
        }

        const head = `function(${params.join(", ")}) `;
        return head + body + "end";
    }
}

// test lol
if (require.main === module)
{
    // Build 1.15.1.53247 values
    const data = <{ [varid: number]: { ID: number, Variables: string } }>readDBCSVString(`ID,Variables
807,\$power=\${6.568597+0.672028*\$PL+0.031721*\$PL*\$PL}
808,"\$base=\${5.741530-0.255683*\$PL+0.032656*\$PL*\$PL}
\$percombo=\${8.740728-0.415787*\$PL+0.051973*\$PL*\$PL}"
809,"\$power=\${13.828124+0.018012*\$PL+0.044141*\$PL*\$PL}
\$healpower=\${38.258376+0.904195*\$PL+0.161311*\$PL*\$PL}"
810,"\$damagepower=\${9.456667+0.635108*\$PL+0.039063*\$PL*\$PL}
\$healpower=\${38.258376+0.904195*\$PL+0.161311*\$PL*\$PL}"
815,"\$damagepower=\${9.046514+0.676562*\$PL+0.019349*\$PL*\$PL}
\$healpower=\${38.258376+0.904195*\$PL+0.161311*\$PL*\$PL}"
823,"\$damagepower=\${9.183105+0.616405*\$PL+0.028608*\$PL*\$PL}
\$healpower=\${38.949830+0.606705*\$PL+0.167780*\$PL*\$PL}"
824,"\$damagepower=\${7.583798+0.471881*\$PL+0.036599*\$PL*\$PL}
\$healpower=\${29.888200+0.690312*\$PL+0.136267*\$PL*\$PL}"
826,"\$damagepower=\${2.976264+0.641066*\$PL+0.022519*\$PL*\$PL}
"
840,\$buff=\${\$?\$PL>=60[89]\$?\$PL>=56[74]\$?\$PL>52[60]\$?\$PL>42[45]\$?\$PL>32[26]\$?\$PL>=22[17]\$?\$PL>12[11][6]}
842,\$threat=\$?s63326[\${\$m3*-1+\$63326m1}][\${\$m3}]
859,"\$mult1=\$?s17815[\${1.05}][\${1.0}]
\$mult2=\$?s17833[\${1.10}][\${\$<mult1>}]
\$mult3=\$?s17834[\${1.15}][\${\$<mult2>}]
\$mult4=\$?s17835[\${1.20}][\${\$<mult3>}]
\$mult=\$?s17836[\${1.25}][\${\$<mult4>}]"
860,"\$mult1=\$?s29192[\${1.06}][\${1.0}]
\$mult=\$?s29193[\${1.12}][\${\$<mult1>}]
"
861,"\$mult1=\$?s29192[\${1.15}][\${1.0}]
\$mult=\$?s29193[\${1.30}][\${\$<mult1>}]"
`, "ID");

    for (const vid in data)
    {
        const varentry = data[vid];
        const varsplit = varentry.Variables.trim().split("\n");
        for (const varstr of varsplit)
        {
            const p = ScalingFormulaParsed.fromString(varstr);
            //console.log(p.asString())
            console.log(`local ${p.label}_${vid} = ` + p.asLuaFunctionString({ PL: "playerLevel" }))
        }
    }
}

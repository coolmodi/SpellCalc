import { readDBCSV } from "./CSVReader";
import { SpellData } from "./SpellData";
import { AuraHandlers, USELESS_AURAS } from "./ItemAuraHandlers";
import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { createEffectLua } from "./itemFunctions";

interface GlyphProperties
{
    ID: number,
    SpellID: number,
    Field_3_4_0_43659_001: number,
    Field_3_4_0_43659_002: number,
    SpellIconFileDataID: number,
    Field_3_4_0_43659_004: number
}

const AURA_TYPES_TO_IGNORE: { [index: number]: true | undefined } = {
    [AURA_TYPE.SPELL_AURA_DUMMY]: true,
    [AURA_TYPE.SPELL_AURA_OVERRIDE_CLASS_SCRIPTS]: true,
    [256]: true,
    [316]: true,


}
Object.assign(AURA_TYPES_TO_IGNORE, USELESS_AURAS);

function generateClassGlyphList(spellData: SpellData, classSet: number)
{
    const list: { spellId: number, name: string }[] = [];
    const glyphs = readDBCSV<GlyphProperties>("data/wotlk/dbc/glyphproperties.csv", "ID");
    for (let id in glyphs)
    {
        const gid = glyphs[id].SpellID;
        if (!gid) continue;
        const sn = spellData.getSpellName(gid).Name_lang;
        if (sn.indexOf("Glyph") === -1) continue;
        const copts = spellData.getSpellClassOption(gid, true);
        if (!copts) continue;
        if (copts.SpellClassSet != classSet) continue;
        list.push({ spellId: gid, name: sn });
    }
    return list;
}


function processSpell(spellId: number, spellData: SpellData, auraHandlers: AuraHandlers): AddonEffectData[]
{
    const spellEffects = spellData.getSpellEffects(spellId);
    const aedarr: AddonEffectData[] = [];

    for (let spellEffect of spellEffects)
    {
        if (spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA) continue;
        if (AURA_TYPES_TO_IGNORE[spellEffect.EffectAura]) continue;
        if (!auraHandlers.handlers[spellEffect.EffectAura]) throw "Aura type isn't ignore but also not handled!";
        const aed = auraHandlers.handlers[spellEffect.EffectAura](spellEffect);
        if (aed) aedarr.push(aed);
    }

    return aedarr;
}

export function getHandledClassGlyphs(spellData: SpellData, classSet: number, classSpellLists: ClassSpellLists, classSpellSets: ClassSpellSets)
{
    const iah = new AuraHandlers(spellData, classSpellLists, classSpellSets);
    const classGlyphs = generateClassGlyphList(spellData, classSet);
    const glyphs = new Map<number, { name: string, effects: AddonEffectData[] }>();

    for (const cg of classGlyphs)
    {
        const aed = processSpell(cg.spellId, spellData, iah);
        if (aed.length > 0) glyphs.set(cg.spellId, { name: cg.name, effects: aed });
    }

    let str = "_addon.classGlyphs = {\n";

    for (const [gid, gdata] of glyphs)
    {
        str += `    [${gid}] = { -- ${gdata.name}\n`;
        for (const eff of gdata.effects)
        {
            str += createEffectLua("        ", eff);
        }
        str += `    },\n`;
    }
    str += "};\n\n";

    return str;
}
import { SpellData, SpellEffect } from "./SpellData";
import * as fs from "fs";
import { isJudgeDummy, isSeal } from "./paladinCrap";

const DO_EFFECTS = [
    EFFECT_TYPE.SPELL_EFFECT_HEAL,
    EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA,
    EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE,
    EFFECT_TYPE.SPELL_EFFECT_HEALTH_LEECH,
    EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA,
    EFFECT_TYPE.SPELL_EFFECT_SUMMON_TOTEM_SLOT_CLASSIC,
    EFFECT_TYPE.SPELL_EFFECT_WEAPON_PERCENT_DAMAGE,
    EFFECT_TYPE.SPELL_EFFECT_ATTACK,
    EFFECT_TYPE.SPELL_EFFECT_WEAPON_DAMAGE,
    EFFECT_TYPE.SPELL_EFFECT_APPLY_AREA_AURA_PARTY,
    EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL,
    EFFECT_TYPE.SPELL_EFFECT_DUMMY,
    EFFECT_TYPE.SPELL_EFFECT_ENERGIZE_PCT,
    EFFECT_TYPE.SPELL_EFFECT_HEALTH_FUNNEL,
    EFFECT_TYPE.SPELL_EFFECT_NORMALIZED_WEAPON_DMG,
];

const DO_AURAS = [
    AURA_TYPE.SPELL_AURA_PERIODIC_HEAL,
    AURA_TYPE.SPELL_AURA_SCHOOL_ABSORB,
    AURA_TYPE.SPELL_AURA_PERIODIC_DAMAGE,
    AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL,
    AURA_TYPE.SPELL_AURA_PERIODIC_LEECH,
    AURA_TYPE.SPELL_AURA_MANA_SHIELD,
    AURA_TYPE.SPELL_AURA_DAMAGE_SHIELD,
    AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL,
    AURA_TYPE.SPELL_AURA_DUMMY,
    AURA_TYPE.SPELL_AURA_PROC_TRIGGER_DAMAGE,
    AURA_TYPE.SPELL_AURA_OBS_MOD_MANA,
    AURA_TYPE.SPELL_AURA_PERIODIC_ENERGIZE
];

/* const DMG_SHIELD_DATA: { [index: string]: boolean } = {
    "Shadowguard": true,
    "Lightning Shield": true,
    "Touch of Weakness": true,
    "Molten Armor": true
} */

const TRIGGER_SPELL_IGNORE: { [spellName: string]: boolean } = {
    "Feedback": true,
    "Frost Armor": true,
    "Ice Armor": true,
    "Drain Soul": true,
    "Nature's Grasp": true,
    "Seal of Justice": true,
    "Seal of Light": true, // no scaling, no need to handle
    //"Seal of Wisdom": true,
    "Barkskin": true,
}

const PTSA_IGNORES = [
    552, 1515, 2893, 1949, 11683, 11684
];

export class ClassSpellLists
{
    private readonly spellData: SpellData;
    private readonly validClassSpells: { [className: string]: Map<number, SpellEffect[]> } = {};
    private readonly judgementRemap: Map<number, number> = new Map<number, number>();

    constructor(spellData: SpellData, classesToDo: string[], expansion: number)
    {
        this.spellData = spellData;

        console.log("Loading class spell lists...");

        for (const className of classesToDo)
        {
            const list = this.createValidSpellList(className, expansion);
            this.validClassSpells[className] = list;
        }

        console.log("Done!");
    }

    private addTriggeredSpellIfValid(spellId: number, binaryCache: Map<number, SpellEffect>, list: Map<number, SpellEffect[]>)
    {
        const tspell = this.spellData.getSpellEffects(spellId);
        for (const se of tspell)
        {
            if (se.Effect == EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL) throw new Error("Triggered spell triggers spell!");
            if ((se.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA
                || se.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AREA_AURA_PARTY
                || se.Effect == EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA)
                && (se.EffectAura == AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL
                    || se.EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL
                    || se.EffectAura == AURA_TYPE.SPELL_AURA_ADD_TARGET_TRIGGER)) throw new Error("Triggered spell triggers spell!");
        }
        const validEffects = this.getValidEffectsForSpell(spellId, binaryCache, list);
        if (!validEffects) return false;
        list.set(spellId, validEffects);
        return true;
    }

    private getValidEffectsForSpell(spellId: number, binaryCache: Map<number, SpellEffect>, list: Map<number, SpellEffect[]>)
    {
        const validEffects: SpellEffect[] = [];
        let spellEffects = this.spellData.getSpellEffects(spellId);
        const spellName = this.spellData.getSpellName(spellId).Name_lang;

        for (let i = 0; i < spellEffects.length; i++)
        {
            let effect = spellEffects[i];

            if (DO_EFFECTS.indexOf(effect.Effect) == -1) continue;

            if (effect.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA
                || effect.Effect == EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA
                || effect.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AREA_AURA_PARTY
                || effect.Effect == EFFECT_TYPE.SPELL_EFFECT_HEALTH_FUNNEL)
            {
                if (DO_AURAS.indexOf(effect.EffectAura) == -1)
                {
                    if (effect.EffectMechanic != 0 && effect.EffectIndex != 0)
                    {
                        binaryCache.set(effect.SpellID, effect);
                    }
                    continue;
                };

                if (effect.EffectAura == AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL)
                {
                    if (TRIGGER_SPELL_IGNORE[spellName])
                    {
                        console.log("Ignoring spell " + spellName);
                        continue;
                    }
                    /* if (!DMG_SHIELD_DATA[spellName])
                    {
                        console.error("Spell " + effect.SpellID + " " + spellName + " not handled correctly!");
                        throw "SPELL_AURA_PROC_TRIGGER_SPELL not handled!";
                    } */
                    console.log("have trigger aura " + effect.SpellID + " " + spellName);
                    if (!this.addTriggeredSpellIfValid(effect.EffectTriggerSpell, binaryCache, list)) throw new Error("Triggered spell has no valid effects!");
                }

                if (effect.EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL)
                {
                    if (PTSA_IGNORES.indexOf(effect.SpellID) != -1 || effect.EffectTriggerSpell == 0) continue;
                    const tspell = this.spellData.getSpellEffects(effect.EffectTriggerSpell);
                    //const tspellCat = this.spellData.getSpellCategory(effect.EffectTriggerSpell);
                    //baseInfo.defenseType = (tspellCat) ? tspellCat.DefenseType : baseInfo.defenseType; // TODO: Is this supposed to be that way or is DBC just buggy atm?
                    let found = false;
                    for (let i = 0; i < tspell.length; i++)
                    {
                        if (tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE || tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_HEAL)
                        {
                            found = true;
                            break;
                        } else if (tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_DUMMY)
                        {
                            found = true;
                            break;
                        }
                    }
                    if (!found) throw new Error("PTSA effect has no handled trigger spell effect! " + effect.SpellID);
                    if (!this.addTriggeredSpellIfValid(effect.EffectTriggerSpell, binaryCache, list)) throw new Error("Triggered spell has no valid effects!");
                }

                if (effect.EffectAura == AURA_TYPE.SPELL_AURA_DUMMY)
                {
                    // pala seals
                    if (isJudgeDummy(effect) !== false)
                    {
                        const jspell = this.spellData.getSpellEffects(effect.EffectBasePoints + effect.EffectDieSides);
                        if (jspell[0].Effect != EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE
                            && jspell[0].Effect != EFFECT_TYPE.SPELL_EFFECT_WEAPON_DAMAGE) continue;
                        if (!list.has(jspell[0].SpellID)) list.set(jspell[0].SpellID, jspell);
                        this.judgementRemap.set(effect.SpellID, jspell[0].SpellID)
                        // don't use this effect
                        continue;
                    }
                    // only add dummy auras we want
                    if (
                        !(effect.EffectIndex == 0 && isSeal(effect.SpellID)) // SoR or SoC attack effect
                        && spellName != "Prayer of Mending"
                        && spellName != "Earth Shield"
                        && !(spellName == "Sacred Shield" && effect.EffectIndex == 0)
                    ) continue;
                }
            }

            if (effect.Effect == EFFECT_TYPE.SPELL_EFFECT_SUMMON_TOTEM_SLOT_CLASSIC)
            {
                if (!this.spellData.getTotemSpell(effect.SpellID)) continue;
            }

            if (effect.Effect == EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL)
            {
                switch (effect.SpellID)
                {
                    case 19752: // Lazy fix for Divine Intervention "for now"
                    case 24858: // Moonkin Form aura trigger
                    case 16979: // Feral Charge
                    case 49376: // Charge Cat
                        continue;
                }

                const tspell = this.spellData.getSpellEffects(effect.EffectTriggerSpell);
                let found = false;
                for (let i = 0; i < tspell.length; i++)
                {
                    if (tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE || tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_HEAL || tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA)
                    {
                        found = true;
                        break;
                    } else if (tspell[i].Effect == EFFECT_TYPE.SPELL_EFFECT_DUMMY)
                    {
                        found = true;
                        break;
                    }
                }
                if (!found) throw new Error("SPELL_EFFECT_TRIGGER_SPELL has no handled triggered spell effect! " + effect.SpellID);
                if (!this.addTriggeredSpellIfValid(effect.EffectTriggerSpell, binaryCache, list)) throw new Error("Triggered spell has no valid effects!");
            }

            if (effect.Effect == EFFECT_TYPE.SPELL_EFFECT_DUMMY)
            {
                const spellName = this.spellData.getSpellName(effect.SpellID).Name_lang;
                switch (spellName)
                {
                    case "Starfall":
                        break;
                    default:
                        continue;
                }
            }

            validEffects.push(effect);
        }

        if (validEffects.length === 0) return;
        return validEffects;
    }

    /**
     * Get list of valid/handled spells for a class
     * @param pclass 
     */
    private createValidSpellList(pclass: string, expansion: number)
    {
        console.log("Building list of spells for class " + pclass);

        let baseDir = "data/";
        if (expansion === 2) baseDir += "wotlk/";

        const data: { [index: string]: number } = JSON.parse(fs.readFileSync(baseDir + "class_spells/" + pclass + ".json", "utf8"));
        const list: Map<number, SpellEffect[]> = new Map<number, SpellEffect[]>();
        const binaryCache: Map<number, SpellEffect> = new Map<number, SpellEffect>();

        for (let nameRank in data)
        {
            const spellId = data[nameRank];
            const validEffs = this.getValidEffectsForSpell(spellId, binaryCache, list);
            if (validEffs) list.set(spellId, validEffs);
        }

        for (const [spellId, effect] of binaryCache)
        {
            const listEntry = list.get(spellId);
            if (listEntry) listEntry.push(effect);
        }

        return list;
    }

    /**
     * Get list of spells to handle for a class.
     * @param className 
     */
    getListForClass(className: string)
    {
        if (!this.validClassSpells[className]) throw "Invalid class!";
        return this.validClassSpells[className];
    }

    getJudgementRemap()
    {
        return this.judgementRemap;
    }

    /**
     * Check if a spell is handled currently.
     * @param spellId 
     */
    isHandledSpell(spellId: number)
    {
        for (const className in this.validClassSpells)
        {
            for (const cspellId of this.validClassSpells[className].keys())
            {
                if (cspellId === spellId) return true;
            }
        }

        return false;
    }
}
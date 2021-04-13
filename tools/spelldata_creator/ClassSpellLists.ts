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
    EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL
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
    AURA_TYPE.SPELL_AURA_DUMMY
];

const DMG_SHIELD_DATA: {[index: string]: number} = {
    "Shadowguard": 3,
    "Lightning Shield": 3,
    "Touch of Weakness": 1,
    "Molten Armor": 123
}

const TRIGGER_SPELL_IGNORE: {[spellName: string]: boolean} = {
    "Feedback": true,
    "Frost Armor": true,
    "Ice Armor": true,
    "Drain Soul": true,
    "Nature's Grasp": true,
    "Seal of Justice": true,
    "Seal of Light": true, // no scaling, no need to handle
    "Seal of Wisdom": true
}

const PTSA_IGNORES = [
    552, 1515, 2893, 1949, 11683, 11684
];

export class ClassSpellLists
{
    private readonly spellData: SpellData;
    private readonly validClassSpells: { [className: string]: Map<number, SpellEffect[]> } = {};
    private readonly judgementRemap: Map<number, number> = new Map<number, number>();

    constructor (spellData: SpellData, classesToDo: string[])
    {
        this.spellData = spellData;

        console.log("Loading class spell lists...");

        for (const className of classesToDo)
        {
            const list = this.createValidSpellList(className);
            this.validClassSpells[className] = list;
        }

        console.log("Done!");
    }

    /**
     * Get list of valid/handled spells for a class
     * @param pclass 
     */
    private createValidSpellList(pclass: string)
    {
        console.log("Building list of spells for class " + pclass);
        const data: { [index: string]: number } = JSON.parse(fs.readFileSync("data/class_spells/" + pclass + ".json", "utf8"));
        const list: Map<number, SpellEffect[]> = new Map<number, SpellEffect[]>();
        const binaryCache: Map<number, SpellEffect> = new Map<number, SpellEffect>();

        for (let nameRank in data)
        {
            let spellEffects = this.spellData.getSpellEffects(data[nameRank]);
            for (let i = 0; i < spellEffects.length; i++)
            {
                let effect = spellEffects[i];

                if (DO_EFFECTS.indexOf(effect.Effect) == -1) continue;

                if (effect.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA
                    || effect.Effect == EFFECT_TYPE.SPELL_EFFECT_PERSISTENT_AREA_AURA
                    || effect.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AREA_AURA_PARTY)
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
                        let spellName = this.spellData.getSpellName(effect.SpellID).Name_lang;
                        if (TRIGGER_SPELL_IGNORE[spellName])
                        {
                            console.log("Ignoring spell " + spellName);
                            continue;
                        }
                        if (!DMG_SHIELD_DATA[spellName])
                        {
                            console.error("Spell " + effect.SpellID + " " + spellName + " not handled correctly!");
                            throw "SPELL_AURA_PROC_TRIGGER_SPELL not handled!";
                        }
                        console.log("have trigger aura " + effect.SpellID + " " + spellName);
                    }

                    if (effect.EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL)
                    {
                        if (PTSA_IGNORES.indexOf(effect.SpellID) != -1 || effect.EffectTriggerSpell == 0) continue;
                    }

                    if (effect.EffectAura == AURA_TYPE.SPELL_AURA_DUMMY)
                    {
                        // pala seals
                        if (isJudgeDummy(effect) !== false)
                        {
                            const jspell = this.spellData.getSpellEffects(effect.EffectBasePoints + 1);
                            if (jspell[0].Effect != EFFECT_TYPE.SPELL_EFFECT_SCHOOL_DAMAGE) continue;
                            if (!list.has(jspell[0].SpellID)) list.set(jspell[0].SpellID, []);
                            list.get(jspell[0].SpellID)!.push(jspell[0]);
                            this.judgementRemap.set(effect.SpellID, jspell[0].SpellID)
                            // don't use this effect
                            continue;
                        }
                        // only add dummy auras we want
                        if (
                            !(effect.EffectIndex == 0 && isSeal(effect.SpellID)) // SoR or SoC attack effect
                            && effect.SpellID !== 33076 // PoM
                        ) continue;
                    }
                }

                if (effect.Effect == EFFECT_TYPE.SPELL_EFFECT_SUMMON_TOTEM_SLOT_CLASSIC)
                {
                    if (!this.spellData.getTotemSpell(effect.SpellID)) continue;
                }

                if (!list.has(effect.SpellID)) list.set(effect.SpellID, []);
                list.get(effect.SpellID)!.push(effect);
            }
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
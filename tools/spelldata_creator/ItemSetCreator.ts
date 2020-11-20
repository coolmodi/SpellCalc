import { ClassSpellLists } from "./ClassSpellLists";
import { ClassSpellSets } from "./ClassSpellSets";
import { readDBCSVtoMap } from "./CSVReader";
import { SpellData, SpellEffect } from "./SpellData";

const AURA_TYPES_TO_IGNORE: { [index: number]: true | undefined } = {
    [AURA_TYPE.SPELL_AURA_MOD_ATTACK_POWER]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER]: true,
    [AURA_TYPE.SPELL_AURA_MOD_RESISTANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SKILL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_CRIT_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_DONE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HEALING_DONE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_STAT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_HIT_CHANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_HIT_CHANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_PARRY_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MELEE_ATTACK_POWER_VERSUS]: true, // TODO: future
    [AURA_TYPE.SPELL_AURA_MOD_RANGED_ATTACK_POWER_VERSUS]: true, // TODO: future
    [AURA_TYPE.SPELL_AURA_MOD_DAMAGE_DONE_VERSUS]: true, // TODO: future
    [AURA_TYPE.SPELL_AURA_MOD_THREAT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPELL_CRIT_CHANCE_SCHOOL]: true,
    [AURA_TYPE.SPELL_AURA_MOD_POWER_COST_SCHOOL_PCT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_ENERGY]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SHIELD_BLOCKVALUE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_SPEED_ALWAYS]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_INCREASE_SWIM_SPEED]: true,
    [AURA_TYPE.SPELL_AURA_MOD_DODGE_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_BLOCK_PERCENT]: true,
    [AURA_TYPE.SPELL_AURA_MOD_MECHANIC_RESISTANCE]: true,
    [AURA_TYPE.SPELL_AURA_MOD_CRITICAL_THREAT]: true,
}

interface ItemSet
{
    ID: number,
    Name_lang: string,
    SetFlags: number,
    RequiredSkill: number,
    RequiredSkillRank: number,
    ["ItemID[0]"]: number,
    ["ItemID[1]"]: number,
    ["ItemID[2]"]: number,
    ["ItemID[3]"]: number,
    ["ItemID[4]"]: number,
    ["ItemID[5]"]: number,
    ["ItemID[6]"]: number,
    ["ItemID[7]"]: number,
    ["ItemID[8]"]: number,
    ["ItemID[9]"]: number,
    ["ItemID[10]"]: number,
    ["ItemID[11]"]: number,
    ["ItemID[12]"]: number,
    ["ItemID[13]"]: number,
    ["ItemID[14]"]: number,
    ["ItemID[15]"]: number,
    ["ItemID[16]"]: number
}

interface ItemSetSpell
{
    ID: number,
    ChrSpecID: number,
    SpellID: number,
    Threshold: number,
    ItemSetID: number
}

interface AddonEffectData
{
    effect: string,
    affectSchool?: number,
    affectSpell?: number[],
    value: number | string
}

interface ItemSetAddonData
{
    ID: number,
    name: string,
    items: number[],
    effects: {
        need: number,
        effect: AddonEffectData
    }[]
}

class AuraHandlers
{
    private readonly spellData: SpellData;
    private readonly classSpellLists: ClassSpellLists;
    private readonly classSpellSets: ClassSpellSets;
    readonly handlers: { [index: number]: (effect: SpellEffect) => AddonEffectData | void } = {};

    constructor(spellData: SpellData, classSpellLists: ClassSpellLists, classSpellSets: ClassSpellSets)
    {
        this.spellData = spellData;
        this.classSpellLists = classSpellLists;
        this.classSpellSets = classSpellSets;

        this.handlers[AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL] = (effect) =>
        {
            switch (effect.EffectTriggerSpell)
            {
                case 17333:
                case 27868:
                case 27779:
                case 21330:
                case 27798:
                case 27786:
                case 27499:
                case 27418:
                case 23544:
                case 29478:
                case 21976:
                case 23577:
                case 21977:
                case 23547:
                case 22649:
                case 24255:
                case 26129:
                case 26976:
                case 28846:
                case 28817:
                case 28762:
                // TODO: future
                case 28804: // Epiphany priest T3
                case 28772: // Frostfire dmg taken debuff proc
                case 28753: // hunter t3 mana restore
                case 9057: // Damage
                case 18980: // Dmg
                case 27775: // proc spelldamage increase
                case 26121: // proc spelldamage increase
                case 23864: // Energy restore
                case 27788: // Energy restore
                case 28813: // Energy restore
                case 23580: // Bloodfang dmg proc
                    return;
                case 18350: // Dummy trigger
                    if (effect.SpellID == 23572) // Earhtfury mana restore
                    {
                        return {
                            effect: ADDON_EFFECT_TYPE.EARTHFURY_RETURN,
                            value: 1
                        }
                    }
                    else
                    {
                        return;
                    }
                case 22008: // Netherwind Focus
                    return {
                        effect: ADDON_EFFECT_TYPE.MAGE_NWR_PROC,
                        affectSpell: [33],
                        value: 1
                    }
                case 26975: // Battlegear of Eternal Justice
                    return; // TODO: 20% chance to regain 100 mana when you cast a Judgement.
                default:
                    throw "Triggered spell needs some love"
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_TARGET_RESISTANCE] = (effect) =>
        {
            const aed: AddonEffectData = {
                effect: ADDON_EFFECT_TYPE.RESISTANCE_PEN,
                affectSchool: effect["EffectMiscValue[0]"],
                value: -(effect.EffectBasePoints + 1)
            }
            return aed;
        }

        this.handlers[AURA_TYPE.SPELL_AURA_ADD_FLAT_MODIFIER] = (effect) =>
        {
            const aed = {
                effect: "",
                affectSpell: this.getAffectSpell(effect),
                value: effect.EffectBasePoints + 1
            }

            switch (effect["EffectMiscValue[0]"])
            {
                case 21: // SPELLMOD_CASTING_TIME_OLD (GCD reduction)
                    aed.effect = ADDON_EFFECT_TYPE.SPELLMOD_GCD;
                    break;
                case 7: // SPELLMOD_CRITICAL_CHANCE
                    aed.effect = ADDON_EFFECT_TYPE.MOD_CRIT;
                    break;
                case 8: // SPELLMOD_ALL_EFFECTS
                case 0: // SPELLMOD_DAMAGE
                    aed.effect = ADDON_EFFECT_TYPE.MOD_FLAT_VALUE;
                    break;
                case 1: // SPELLMOD_DURATION
                    aed.effect = ADDON_EFFECT_TYPE.MOD_DURATION;
                    aed.value /= 1000;
                    break;
                case 16: // SPELLMOD_RESIST_MISS_CHANCE
                    aed.effect = ADDON_EFFECT_TYPE.MOD_HIT_SPELL;
                    break;
                case 14: // SPELLMOD_COST
                case 10: // SPELLMOD_CASTING_TIME (handled by addon api, gear change will always trigger update)
                case 2: // SPELLMOD_THREAT
                case 5: // SPELLMOD_RANGE
                case 6:  // SPELLMOD_RADIUS
                case 11: // SPELLMOD_COOLDOWN (TODO: if DPSCD is ever implemented?)
                case 17: // SPELLMOD_JUMP_TARGETS (TODO: make this add chain targets?)
                case 18: // SPELLMOD_CHANCE_OF_SUCCESS
                    return;
                default:
                    throw "SPELL_AURA_ADD_FLAT_MODIFIER type not handled!";
            }

            if (!this.spellEffectTargetsValidSpells(effect)) return;

            return aed;
        }

        this.handlers[AURA_TYPE.SPELL_AURA_ADD_PCT_MODIFIER] = (effect) =>
        {
            const aed: AddonEffectData = {
                effect: "",
                affectSpell: this.getAffectSpell(effect),
                value: effect.EffectBasePoints + 1,
            }

            switch (effect["EffectMiscValue[0]"])
            {
                case 8: // SPELLMOD_ALL_EFFECTS
                    aed.effect = ADDON_EFFECT_TYPE.SPELL_MOD_PCT_EFFECT;
                    break;
                case 0: // SPELLMOD_DAMAGE
                case 22: // SPELLMOD_DOT
                    aed.effect = ADDON_EFFECT_TYPE.SPELL_MOD_PCT_DAMAGE;
                    break;
                case 20: // SPELLMOD_EFFECT_PAST_FIRST
                    aed.effect = ADDON_EFFECT_TYPE.SPELLMOD_EFFECT_PAST_FIRST;
                    break;
                case 27: // SPELLMOD_MULTIPLE_VALUE
                case 1: // SPELLMOD_DURATION (shouldn't be used for DoTs and HoTs)
                case 11: // SPELLMOD_COOLDOWN
                case 5: // SPELLMOD_RANGE
                case 14: // SPELLMOD_COST
                case 2: // SPELLMOD_THREAT
                case 6: // SPELLMOD_RADIUS
                    return;
                default:
                    throw "SPELL_AURA_ADD_FLAT_MODIFIER type not handled!";
            }

            if (!this.spellEffectTargetsValidSpells(effect)) return;

            return aed;
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_MANA_REGEN_INTERRUPT] = (effect) =>
        {
            const aed: AddonEffectData = {
                effect: ADDON_EFFECT_TYPE.FSR_REGEN,
                value: effect.EffectBasePoints + 1
            }
            return aed;
        }

        this.handlers[AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL] = (effect) =>
        {
            switch (effect.SpellID)
            {
                case 21741: // Demonic Ally
                case 21926: // Nature's Ally
                case 21922: // Demonic Ally
                case 21928: // Nature's Ally
                case 26176: // Unseen Path Pet Bonus
                case 28756: // Stalker's Ally
                    return;
                default:
                    throw "unhandled spell!";
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_DUMMY] = (effect) =>
        {
            switch (effect.SpellID)
            {
                case 28719: // On Healing Touch critical hits, you regain 30% of the mana cost of the spell.
                    return {
                        effect: ADDON_EFFECT_TYPE.ILLUMINATION,
                        value: 30
                    }
                case 28809: // TODO: ?? On Greater Heal critical hits, your target will gain Armor of Faith, absorbing up to 500 damage.
                case 23582: // Heals the rogue for 500 when Vanish is performed.
                case 26169: // 20% chance that your heals on others will also heal you 10% of the amount healed.
                case 28764: // Adaptive Warding
                case 28823: // Totemic Power
                case 28775: // Increases the amount healed by your Judgement of Light by 20.
                case 28789: // Your Flash of Light and Holy Light spells have a chance to imbue your target with Holy Power.
                    return;
                default:
                    throw "SPELL_AURA_DUMMY spell not handled!";
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_ADD_TARGET_TRIGGER] = (effect) =>
        {
            switch (effect.EffectTriggerSpell)
            {
                case 28820:
                    return {
                        effect: ADDON_EFFECT_TYPE.CONDITION_TRIGGER,
                        value: "_addon.BUFF_CONDITIONS.EARTHSHATTERER_8PCS"
                    }
                case 22009: // Greater Heal (Renew)
                    return {
                        effect: ADDON_EFFECT_TYPE.TRIGGER_SPELL_EFFECT,
                        affectSpell: this.getAffectSpell(effect),
                        value: 22009
                    }
                case 28839:
                // TODO: these
                case 23590: // Judgement (Dmg proc)
                case 28788: // Your Cleanse spell also heals the target for 200.
                case 28815: // Revealed Flaw
                    return;
                default:
                    throw "SPELL_AURA_ADD_TARGET_TRIGGER spell not handled!";
            }
        }

        this.handlers[AURA_TYPE.SPELL_AURA_MOD_POWER_REGEN] = (effect) =>
        {
            return {
                effect: ADDON_EFFECT_TYPE.MP5,
                value: effect.EffectBasePoints + 1,
            };
        }

        this.handlers[AURA_TYPE.SPELL_AURA_OVERRIDE_CLASS_SCRIPTS] = (effect) =>
        {
            switch (effect.SpellID)
            {
                case 26127: // Enigma Blizzard Bonus
                case 28716: // Your Rejuvenation ticks have a chance to restore 60 mana, 8 energy, or 2 rage to your target.
                case 28744: // Your initial cast and Regrowth ticks will increase the maximum health of your target by up to 50, stacking up to 7 times.
                    return;
                default:
                    throw "SPELL_AURA_OVERRIDE_CLASS_SCRIPTS spell not handled!";
            }
        }
    }

    /**
     * Get spellmask array.
     * @param effect 
     */
    private getAffectSpell(effect: SpellEffect)
    {
        if (effect["EffectSpellClassMask[0]"] === 0) throw "wtf?"
        return [effect["EffectSpellClassMask[0]"], effect["EffectSpellClassMask[1]"], effect["EffectSpellClassMask[2]"], effect["EffectSpellClassMask[3]"]];
    }

    /**
     * Check if spell effects targets a spell handled by the addon.
     * @param spellId 
     * @param effect 
     */
    private spellEffectTargetsValidSpells(effect: SpellEffect)
    {
        const sco = this.spellData.getSpellClassOption(effect.SpellID);
        const affectMasks = this.getAffectSpell(effect);

        const classSpellSet = this.classSpellSets.getClassSets(sco.SpellClassSet);

        for (let i = 0; i < affectMasks.length; i++)
        {
            const sset = classSpellSet[i];
            let bit = 1;
            while (bit !== 0)
            {
                if (bit & affectMasks[i]) 
                {
                    for (const spellId in sset[bit])
                    {
                        if (this.classSpellLists.isHandledSpell(parseInt(spellId))) return true;
                    }
                }
                bit = bit << 1;
            }
        }

        return false;
    }
}

export class ItemSetCreator
{
    private readonly spellData: SpellData;
    private readonly auraHandlers: AuraHandlers;

    constructor(spellData: SpellData, classSpellLists: ClassSpellLists, classSpellSets: ClassSpellSets)
    {
        this.spellData = spellData;
        this.auraHandlers = new AuraHandlers(spellData, classSpellLists, classSpellSets);
    }

    /**
     * Process spell and return addon effect data if spell has a valid effect.
     * @param spellId 
     */
    private processSpell(spellId: number): AddonEffectData[]
    {
        const spellEffects = this.spellData.getSpellEffects(spellId);
        const aedarr: AddonEffectData[] = [];

        for (let spellEffect of spellEffects)
        {
            if (spellId === 24746) continue;
            if (spellEffect.Effect !== EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA) throw "Item bonus effect doesn't apply an aura?!" + spellId;
            if (AURA_TYPES_TO_IGNORE[spellEffect.EffectAura]) continue;
            if (!this.auraHandlers.handlers[spellEffect.EffectAura]) throw "Aura type isn't ignore but also not handled!";
            const aed = this.auraHandlers.handlers[spellEffect.EffectAura](spellEffect);
            if (aed) aedarr.push(aed);
        }

        return aedarr;
    }

    /**
     * Process data for item set.
     * @param setDataEntry 
     * @param spellsbyItemSet 
     * @returns Itemset data if set has valid spell effects on any bonus.
     */
    private getAddonDataForSet(setDataEntry: ItemSet, spellsbyItemSet: Map<number, ItemSetSpell[]>)
    {
        const setSpells = spellsbyItemSet.get(setDataEntry.ID);
        const setAddonData: ItemSetAddonData = {
            ID: setDataEntry.ID,
            name: setDataEntry.Name_lang,
            items: [],
            effects: []
        }

        if (!setSpells)
        {
            console.log(setDataEntry.ID + ": " + setDataEntry.Name_lang + " has no spells assinged, SKIPPING!");
            return;
        }

        for (let i = 0; i <= 16; i++)
        {
            const itemKey = ("ItemID[" + i + "]") as keyof ItemSet;
            if (setDataEntry[itemKey] != 0) setAddonData.items.push(setDataEntry[itemKey] as number);
        }

        for (let setSpellEntry of setSpells)
        {
            const aedarr = this.processSpell(setSpellEntry.SpellID);
            for (let aed of aedarr)
            {
                setAddonData.effects.push({
                    need: setSpellEntry.Threshold,
                    effect: aed
                });
            }
        }

        if (setAddonData.effects.length === 0)
        {
            console.log(setDataEntry.ID + ": " + setDataEntry.Name_lang + " has no valid spells, SKIPPING!");
            return;
        }

        return setAddonData;
    }

    /**
     * Get item set spells mapped by item set ID.
     */
    private getSpellsByItemSet()
    {
        console.log("Mapping set spells...");
        const itemSetSpellData = readDBCSVtoMap<ItemSetSpell>("data/dbc/itemsetspell.csv", "ID");
        const spellsbyItemSet = new Map<number, ItemSetSpell[]>();

        for (let spellEntry of itemSetSpellData.values())
        {
            if (!spellsbyItemSet.has(spellEntry.ItemSetID)) spellsbyItemSet.set(spellEntry.ItemSetID, []);
            spellsbyItemSet.get(spellEntry.ItemSetID)!.push(spellEntry);
        }

        for (let setSpells of spellsbyItemSet.values())
        {
            setSpells.sort((a, b) =>
            {
                return a.Threshold - b.Threshold;
            });
        }

        console.log("Mapped " + spellsbyItemSet.size + " set spells!");
        return spellsbyItemSet;
    }

    /**
     * Get processed data of all valid item sets.
     */
    private getProcessedSetData()
    {
        const spellsbyItemSet = this.getSpellsByItemSet();
        const itemSetData = readDBCSVtoMap<ItemSet>("data/dbc/itemset.csv", "ID");
        const setAddonExportData = new Map<number, ItemSetAddonData>();

        console.log("Creating data for sets...");
        for (const setDataEntry of itemSetData.values())
        {
            const addonSetData = this.getAddonDataForSet(setDataEntry, spellsbyItemSet);
            if (addonSetData) 
            {
                console.log(setDataEntry.ID + ": " + setDataEntry.Name_lang + " added!");
                setAddonExportData.set(setDataEntry.ID, addonSetData);
            }
        }

        console.log("Created " + setAddonExportData.size + " set data entries!");
        return setAddonExportData;
    }

    /**
     * Get Lua code for item set data file.
     */
    getItemSetLua()
    {
        console.log("Creating Lua for  item set data...");
        const processedData = this.getProcessedSetData();

        let lua = `-- GENERATED! DO NOT EDIT!

---@type AddonEnv
local _addon = select(2, ...);

_addon.itemSetData = {\n`;

        for (const [setId, setData] of processedData)
        {
            lua += `    [${setId}] = {\n`;
            lua += `        name = "${setData.name}",\n`;
            lua += `        effects = {\n`;

            for (let i = 0; i < setData.effects.length; i++)
            {
                const eff = setData.effects[i];
                lua += `            [${i + 1}] = {\n`;
                lua += `                need = ${eff.need},\n`;
                lua += `                effect = {\n`;
                lua += `                    effect = ${eff.effect.effect},\n`;
                if (eff.effect.affectSchool) lua += `                    affectSchool = ${eff.effect.affectSchool},\n`;
                if (eff.effect.affectSpell) lua += `                    affectSpell = {${eff.effect.affectSpell.join(", ")}},\n`;
                if (typeof eff.effect.value !== "undefined") lua += `                    value = ${eff.effect.value},\n`;
                lua += `                }\n`;
                lua += `            },\n`;
            }

            lua += `        }\n`;
            lua += `    },\n`;
        }

        lua += "}\n\n_addon.setItemData = {\n";

        for (const [setId, setData] of processedData)
        {
            for (const itemId of setData.items)
            {
                lua += `    [${itemId}] = ${setId},\n`
            }
        }

        lua += "}";

        console.log("Lua item set data created!");
        return lua;
    }
}


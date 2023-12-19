import { SpellEffect, SpellData } from "./SpellData";
import { cfg } from "./config";
import { isJudgeDummy, SealType, getSeals } from "./paladinCrap";
import * as fs from "fs";

// This isn't used anywhere, just put something there just in case
let effCustIndex = 999900;

function cloneEntry(entry: SpellEffect): SpellEffect
{
    let k = {};
    for (let key in entry)
    {
        //@ts-ignore
        k[key] = entry[key];
    }
    //@ts-ignore
    k.ID = effCustIndex;
    effCustIndex++;
    //@ts-ignore
    return k;
}

function priestFix(sd: SpellData)
{
    console.log("Fixing priest coefs and effects");

    // Holy Nova spell -> its heal spell
    const HOLY_NOVA_TRIGGER: { [spellId: number]: number } = {
        15237: 23455,
        15430: 23458,
        15431: 23459,
        27799: 27803,
        27800: 27804,
        27801: 27805,
    }

    // map Touch of Weakness proc spells
    const TOW_MAP: { [spellId: number]: number } = {
        2652: 2943,
        19261: 19249,
        19262: 19251,
        19264: 19252,
        19265: 19253,
        19266: 19254,
        //25461: 25460
    };

    // Shadowguard -> triggerID
    const SHADOWGUARD_TRIGGER_IDS: { [spellId: number]: number } = {
        18137: 28377,
        19308: 28378,
        19309: 28379,
        19310: 28380,
        19311: 28381,
        19312: 28382,
        //25477: 28385
    };

    const PENANCE_TRIGGERS: { [spellId: number]: { dmg: number, heal: number } } = {};

    if (cfg.expansion == "WOTLK")
    {
        PENANCE_TRIGGERS[47540] = { dmg: 47758, heal: 47757 };
        PENANCE_TRIGGERS[53005] = { dmg: 53001, heal: 52986 };
        PENANCE_TRIGGERS[53006] = { dmg: 53002, heal: 52987 };
        PENANCE_TRIGGERS[53007] = { dmg: 53003, heal: 52988 };

        HOLY_NOVA_TRIGGER[25331] = 25329;
        HOLY_NOVA_TRIGGER[48077] = 48075;
        HOLY_NOVA_TRIGGER[48078] = 48076;

        const divineHymn = sd.getSpellCategory(64844);
        if (divineHymn) divineHymn.DefenseType = DEFENSE_TYPE.MAGIC;

        // Ignore Binding Heal effect 1
        const bindingHeals = sd.getSpellsByName("Binding Heal");
        for (const bhId of bindingHeals)
        {
            const effects = sd.getSpellEffects(bhId);
            for (const effect of effects)
            {
                if (effect.EffectIndex === 1)
                {
                    effect.Effect = 0;
                }
            }
        }
    }
    else
    {
        PENANCE_TRIGGERS[402174] = { dmg: 402261, heal: 402277 };
    }

    // Fix Holy Nova trigger
    for (const hnId in HOLY_NOVA_TRIGGER)
    {
        const effects = sd.getSpellEffects(parseInt(hnId));
        for (const effect of effects)
        {
            if (effect.EffectIndex === 0)
            {
                let clone = cloneEntry(effect);
                clone.EffectIndex = 1;
                clone.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
                clone.EffectTriggerSpell = HOLY_NOVA_TRIGGER[effect.SpellID];
                effects.push(clone);
            }
        }
    }

    // Touch of Weakness does not have any usefull data about its proc by default, replace with proc entirely
    for (const towId in TOW_MAP)
    {
        const towEffect = sd.getSpellEffects(parseInt(towId))[0];
        towEffect.EffectTriggerSpell = TOW_MAP[towId];
    }

    // Prayer of Mending
    const pomSpells = sd.getSpellsByName("Prayer of Mending");
    for (const pomId of pomSpells)
    {
        const effects = sd.getSpellEffects(pomId);
        for (const effect of effects)
        {
            if (effect.EffectIndex === 0) 
            {
                // Make PoM a dummy aura
                const PoM_ID = cfg.expansion == "WOTLK" ? 33110 : 401859;
                effect.Effect = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
                effect.EffectAura = AURA_TYPE.SPELL_AURA_DUMMY;
                sd.getSpellMisc(effect.SpellID)["Attributes_2"] |= sd.getSpellMisc(PoM_ID)["Attributes_2"];
            }
        }
    }

    // Shadowguard trigger fix
    for (const shieldSpellId in SHADOWGUARD_TRIGGER_IDS)
    {
        const effects = sd.getSpellEffects(parseInt(shieldSpellId));
        for (const effect of effects)
        {
            if (effect.Effect === EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA && effect.EffectAura === AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL) 
            {
                effect.EffectTriggerSpell = SHADOWGUARD_TRIGGER_IDS[shieldSpellId];
            }
        }
    }

    // Penance
    for (const penanceId in PENANCE_TRIGGERS)
    {
        const effects = sd.getSpellEffects(parseInt(penanceId));
        for (const eff of effects)
        {
            if (eff.EffectIndex === 0)
            {
                const heal = sd.getSpellEffects(PENANCE_TRIGGERS[eff.SpellID].heal);
                const dmg = sd.getSpellEffects(PENANCE_TRIGGERS[eff.SpellID].dmg);

                // Heal effect
                let done = false;
                for (const heff of heal)
                {
                    if (heff.EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL)
                    {
                        const origId = eff.SpellID;
                        for (const key in heff)
                        {
                            eff[key as keyof SpellEffect] = heff[key as keyof SpellEffect];
                        }
                        eff.SpellID = origId;
                        eff.EffectIndex = 0;
                        done = true;
                        break;
                    }
                }
                if (!done) throw new Error("Couldn't add heal effect of Penance " + eff.SpellID);

                // damage
                done = false;
                for (const deff of dmg)
                {
                    if (deff.EffectAura == AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL)
                    {
                        deff.EffectIndex = 1;
                        deff.SpellID = eff.SpellID;
                        effects.push(deff);
                        done = true;
                        break;
                    }
                }
                if (!done) throw new Error("Couldn't add dmg effect of Penance " + eff.SpellID);

                // Set def type on main spell
                /* const sc = sd.getSpellCategory(eff.SpellID);
                if (!sc) throw new Error("No spellcat for Penance!");
                sc.DefenseType = DEFENSE_TYPE.MAGIC; */
                sd.getSpellMisc(eff.SpellID).DurationIndex = 39;
            }
        }
    }
}

function paladinFix(sd: SpellData)
{
    console.log("Fixing pala coefs and effects");

    const HOLY_SHOCK_TRIGGERS: { [spellId: number]: { dmg: number, heal: number } } = {
        20473: {
            dmg: 25912,
            heal: 25914
        },
        20929: {
            dmg: 25911,
            heal: 25913
        },
        20930: {
            dmg: 25902,
            heal: 25903
        }
    }

    if (cfg.expansion == "CLASSIC")
    {
        {
            const HL_GENERIC = [1026, 1042, 3472, 10328, 10329, 25292];
            const FOL_GENERIC = [19750, 19939, 19940, 19941, 19942, 19943];

            const fixCoefAndEffect = (spellId: number, coef: number) =>
            {
                const effect = sd.getSpellEffects(spellId)[0];
                effect.EffectBonusCoefficient = coef;
                effect.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            };
            // HL
            fixCoefAndEffect(635, 0.205);
            fixCoefAndEffect(639, 0.339);
            fixCoefAndEffect(647, 0.554);
            for (const spellId of HL_GENERIC)
            {
                fixCoefAndEffect(spellId, 2.5 / 3.5);
            }
            // FoL
            for (const spellId of FOL_GENERIC)
            {
                fixCoefAndEffect(spellId, 1.5 / 3.5);
            }
        }
    }
    else
    {
        HOLY_SHOCK_TRIGGERS[27174] = { dmg: 27176, heal: 27175 };
        HOLY_SHOCK_TRIGGERS[33072] = { dmg: 33073, heal: 33074 };
        HOLY_SHOCK_TRIGGERS[48824] = { dmg: 48822, heal: 48820 };
        HOLY_SHOCK_TRIGGERS[48825] = { dmg: 48823, heal: 48821 };

        // fix SoCorr judgement id (wotlk uses "new" seal)
        const spellIdsSoCor = getSeals(SealType.SoCor);
        for (const sealId of spellIdsSoCor)
        {
            const effects = sd.getSpellEffects(sealId);
            for (const eff of effects)
            {
                if (isJudgeDummy(eff, SealType.SoCor))
                {
                    eff.EffectBasePoints = 31804;
                    eff.EffectDieSides = 0;
                }
            }
        }

        // Fix SoW and SoL not having judgement ID
        const spellIdsSoWSoL = [...getSeals(SealType.SoW), ...getSeals(SealType.SoL)];
        for (const sealId of spellIdsSoWSoL)
        {
            const effects = sd.getSpellEffects(sealId);
            for (const eff of effects)
            {
                if (eff.EffectIndex == 0)
                {
                    const ce = cloneEntry(eff);
                    ce.Effect = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
                    ce.EffectAura = AURA_TYPE.SPELL_AURA_DUMMY;
                    ce.EffectBasePoints = 54158;
                    ce.EffectTriggerSpell = 0;
                    ce.EffectDieSides = 0;
                    ce.EffectIndex = 2;
                    effects.push(ce);
                }
            }
        }

        // Fix JoC weapon pct scaling
        const JoCEffects = sd.getSpellEffects(20467);
        for (const eff of JoCEffects)
        {
            if (eff.Effect == EFFECT_TYPE.SPELL_EFFECT_WEAPON_PERCENT_DAMAGE)
            {
                eff.EffectBasePoints = 19;
                eff.EffectDieSides = 0;
            }
        }

        // Give JoB and JoV a max level
        sd.getSpellLevel(31898).MaxLevel = 99;
        sd.getSpellLevel(31804).MaxLevel = 99;

        // fix JoR base value, should be 0
        const JoREffect = sd.getSpellEffects(20187)[0];
        JoREffect.EffectBasePoints = 0;
        JoREffect.EffectDieSides = 0;
    }

    for (const hsId in HOLY_SHOCK_TRIGGERS)
    {
        const effects = sd.getSpellEffects(parseInt(hsId));
        for (const effect of effects)
        {
            if (effect.EffectIndex === 0)
            {
                effect.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
                effect.EffectTriggerSpell = HOLY_SHOCK_TRIGGERS[effect.SpellID].heal;

                const clone = cloneEntry(effect);
                clone.EffectIndex = 1;
                clone.EffectTriggerSpell = HOLY_SHOCK_TRIGGERS[effect.SpellID].dmg;
                effects.push(clone);

                const sc = sd.getSpellCategory(effect.SpellID);
                if (!sc) throw new Error("SpellCategory doesn't exist!");
                sc.DefenseType = DEFENSE_TYPE.MAGIC;
            }
        }
    }

    const spellIdsSoC = getSeals(SealType.SOC);
    for (const sealId of spellIdsSoC)
    {
        const effects = sd.getSpellEffects(sealId);
        for (const eff of effects)
        {
            // replace SoC judgement dummy spell id, it's inside even another spell
            if (isJudgeDummy(eff) == SealType.SOC)
            {
                console.log("Replace SoC dummy id for " + eff.SpellID);
                let jdId = eff.EffectBasePoints + eff.EffectDieSides;
                const jdEffects = sd.getSpellEffects(jdId);
                for (const jeff of jdEffects)
                {
                    eff.EffectBasePoints = jeff.EffectBasePoints;
                }
            }

            // replace SoC trigger with it's triggered effect
            if (eff.EffectIndex == 0)
            {
                const triggeredEffect = sd.getSpellEffects(eff.EffectTriggerSpell)[0];
                console.log("Replace SOC " + eff.SpellID);
                eff.EffectBasePoints = triggeredEffect.EffectBasePoints;
                eff.EffectBonusCoefficient = triggeredEffect.EffectBonusCoefficient;
                eff.EffectRealPointsPerLevel = triggeredEffect.EffectRealPointsPerLevel;
                eff.Effect = triggeredEffect.Effect;
            }
        }
    }

    const spellIdsAllSeals = getSeals();
    for (const sealId of spellIdsAllSeals)
    {
        // Make seals melee
        const sc = sd.getSpellCategory(sealId);
        if (!sc) throw new Error("SpellCategory doesn't exist!");
        sc.DefenseType = DEFENSE_TYPE.MELEE;
    }
}

function mageFix(sd: SpellData)
{
    console.log("Fixing mage coefs and effects");

    const lbSpells = sd.getSpellsByName("Living Bomb");
    for (const spellId of lbSpells)
    {
        const effects = sd.getSpellEffects(spellId)
        for (const effect of effects)
        {
            if (effect.EffectAura == AURA_TYPE.SPELL_AURA_DUMMY && effect.EffectBasePoints > 10000)
            {
                effect.EffectAura = AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL;
                effect.EffectTriggerSpell = effect.EffectBasePoints + 1;
            }
        }
    }
}

function druidFixes(sd: SpellData)
{
    console.log("Fixing druid coefs and effects");

    const LB = [];

    if (cfg.expansion == "CLASSIC")
    {
        LB.push(408124);

        const RIP = [1079, 9492, 9493, 9752, 9894, 9896];
        for (const ripId of RIP)
        {
            const effects = sd.getSpellEffects(ripId);
            effects[0].EffectMechanic = SpellMechanic.BLEED;
        }
    }
    else
    {
        LB.push(3763, 48450, 48451);

        const STARFALL = [48505, 53199, 53200, 53201];
        for (const spellId of STARFALL)
        {
            const effects = sd.getSpellEffects(spellId);
            for (const effect of effects)
            {
                effect.Effect = EFFECT_TYPE.SPELL_EFFECT_DUMMY
            }
        }
    }

    for (const spellId of LB)
    {
        const effects = sd.getSpellEffects(spellId);
        for (const effect of effects)
        {
            if (effect.EffectIndex === 1)
            {
                effect.Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
                effect.EffectAura = 0;
                if (cfg.expansion != "CLASSIC") effect.EffectBonusCoefficient = 0.5161;
            }
        }
    }

    const mauls = sd.getSpellsByName("Maul");
    const shreds = sd.getSpellsByName("Shred");
    const mangleIncreasedSpells = [...mauls, ...shreds];
    for (const spellId of mangleIncreasedSpells)
    {
        if (sd.getSpellClassOption(spellId, true)?.SpellClassSet == 7)
        {
            const effects = sd.getSpellEffects(spellId);
            for (const effect of effects)
            {
                if (effect.EffectIndex === 0)
                {
                    effect.EffectMechanic = SpellMechanic.BLEED;
                }
            }
        }
    }
}

function warlockFixes(sd: SpellData)
{
    console.log("Fixing warlock coefs and effects");
    const SHADOW_BURN = [17877, 18867, 18868, 18869, 18870, 18871];

    if (cfg.expansion != "CLASSIC")
    {
        SHADOW_BURN.push(27263, 30546, 47826, 47827);
        const SOC: { [sid: number]: number } = {
            [27243]: 27285,
            [47835]: 47833,
            [47836]: 47834,
        }
        const shadowFlame: { [sid: number]: number } = {
            [47897]: 47960,
            [61290]: 61291,
        }

        for (const spellId in SOC)
        {
            const effects = sd.getSpellEffects(parseInt(spellId));
            for (const effect of effects)
            {
                if (effect.EffectIndex === 1)
                {
                    effect.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
                    effect.EffectTriggerSpell = SOC[effect.SpellID];
                }
            }
        }

        for (const spellId in shadowFlame)
        {
            const effects = sd.getSpellEffects(parseInt(spellId));
            for (const effect of effects)
            {
                if (effect.EffectIndex === 0)
                {
                    const clone = cloneEntry(effect);
                    clone.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL;
                    clone.EffectTriggerSpell = shadowFlame[effect.SpellID];
                    clone.EffectIndex = 1;
                    clone.EffectBasePoints = 0;
                    clone.EffectBonusCoefficient = 0;
                    clone.EffectRealPointsPerLevel = 0;
                    clone.EffectDieSides = 0;
                    effects.push(clone);
                }
            }
        }
    }

    // Ignore trigger effect for shard debuff
    for (const spellId of SHADOW_BURN)
    {
        const effects = sd.getSpellEffects(spellId);
        for (const effect of effects)
        {
            if (effect.Effect === EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL) effect.Effect = 0;
        }
    }
}

function shamanFix(sd: SpellData)
{
    console.log("Fixing shaman coefs and effects");

    // Shadowguard -> triggerID
    const LIGHTNING_SHIELD_TRIGGERS: { [spellId: number]: number } = {
        324: 26364,
        325: 26365,
        905: 26366,
        945: 26367,
        8134: 26369,
        10431: 26370,
        10432: 26363,
    };

    const fireNova: { [spellId: number]: number } = {
        1535: 8349,
        8498: 8502,
        8499: 8503,
        11314: 11306,
        11315: 11307,
    }

    if (cfg.expansion != "CLASSIC")
    {
        LIGHTNING_SHIELD_TRIGGERS[25469] = 26371;
        LIGHTNING_SHIELD_TRIGGERS[25472] = 26372;
        LIGHTNING_SHIELD_TRIGGERS[49280] = 49278;
        LIGHTNING_SHIELD_TRIGGERS[49281] = 4927;

        fireNova[25546] = 25535;
        fireNova[25547] = 25537;
        fireNova[61649] = 61650;
        fireNova[61657] = 61654;
    }

    for (const shieldSpellId in LIGHTNING_SHIELD_TRIGGERS)
    {
        const effects = sd.getSpellEffects(parseInt(shieldSpellId));
        for (const effect of effects)
        {
            if (effect.Effect === EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA && effect.EffectAura === AURA_TYPE.SPELL_AURA_PROC_TRIGGER_SPELL) 
            {
                effect.EffectTriggerSpell = LIGHTNING_SHIELD_TRIGGERS[shieldSpellId];
            }
        }
    }

    for (const novaSpellId in fireNova)
    {
        const effect = sd.getSpellEffects(parseInt(novaSpellId))[0];
        effect.EffectTriggerSpell = fireNova[effect.SpellID];
        effect.Effect = EFFECT_TYPE.SPELL_EFFECT_TRIGGER_SPELL
    }

    const stormStrikes = sd.getSpellsByName("Stormstrike");
    for (const stormStrikeId of stormStrikes)
    {
        const ao = sd.getSpellAuraOptions(stormStrikeId);
        if (ao) ao.ProcCharges = 0;
    }

    const searingTotems = sd.getSpellsByName("Searing Totem");
    for (const totemSpellId of searingTotems)
    {
        const tts = sd.getTotemSpell(totemSpellId);
        if (tts)
        {
            const effect = sd.getSpellEffects(totemSpellId)[0];
            effect.Effect = EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA;
            effect.EffectAura = AURA_TYPE.SPELL_AURA_PERIODIC_TRIGGER_SPELL;
            effect.EffectAuraPeriod = 2200;
            effect.EffectTriggerSpell = tts;
        }
    }

    const magmaTotems = sd.getSpellsByName("Magma Totem");
    for (const totemSpellId of magmaTotems)
    {
        const tts = sd.getTotemSpell(totemSpellId);
        if (tts)
        {
            const effect = sd.getSpellEffects(totemSpellId)[0];
            const misc = sd.getSpellMisc(effect.SpellID);
            if (!misc) throw "No SM entry for totem spell!";
            misc.DurationIndex = 18 // 20000

            const ttsEff = sd.getSpellEffects(tts)[0];
            effect.Effect = ttsEff.Effect;
            effect.EffectAura = ttsEff.EffectAura;
            effect.EffectAuraPeriod = ttsEff.EffectAuraPeriod;
            effect.EffectTriggerSpell = ttsEff.EffectTriggerSpell;
        }
    }

    const healingStreamTotems = sd.getSpellsByName("Healing Stream Totem");
    for (const totemSpellId of healingStreamTotems)
    {
        const tts = sd.getTotemSpell(totemSpellId);
        if (tts)
        {
            const effect = sd.getSpellEffects(totemSpellId)[0];
            const ttsEff = sd.getSpellEffects(tts)[0];
            effect.Effect = ttsEff.Effect;
            effect.EffectAura = ttsEff.EffectAura;
            effect.EffectAuraPeriod = ttsEff.EffectAuraPeriod;
            effect.EffectTriggerSpell = ttsEff.EffectTriggerSpell;

            if (cfg.expansion == "WOTLK")
            {
                const triggeredHeal = sd.getSpellEffects(ttsEff.EffectTriggerSpell);
                triggeredHeal[0].Effect = EFFECT_TYPE.SPELL_EFFECT_HEAL;
            }
        }
    }
}

function coefFixes(sd: SpellData)
{
    interface CoefEntry { [effectIndex: number]: { ap?: number, sp?: number } }

    console.log("Fixing coefs");
    const data: {
        names: { [spellName: string]: CoefEntry },
        ids: { [spellId: number]: CoefEntry },
    } = JSON.parse(fs.readFileSync(cfg.dataDir + "missingCoef.json", "utf8"));

    for (const spellName in data.names)
    {
        const spells = sd.getSpellsByName(spellName);
        for (const spellId of spells)
        {
            const effects = sd.getSpellEffects(spellId);
            for (const effect of effects)
            {
                if (data.names[spellName][effect.EffectIndex])
                {
                    const thisData = data.names[spellName][effect.EffectIndex];
                    if (typeof thisData.ap !== "undefined") effect.BonusCoefficientFromAP = thisData.ap;
                    if (typeof thisData.sp !== "undefined") effect.EffectBonusCoefficient = thisData.sp;
                }
            }
        }
    }

    for (const spellId in data.ids)
    {
        const effects = sd.getSpellEffects(parseInt(spellId));
        for (const effect of effects)
        {
            if (data.ids[spellId][effect.EffectIndex])
            {
                const thisData = data.ids[spellId][effect.EffectIndex];
                if (typeof thisData.ap !== "undefined") effect.BonusCoefficientFromAP = thisData.ap;
                if (typeof thisData.sp !== "undefined") effect.EffectBonusCoefficient = thisData.sp;
            }
        }
    }
}

export function fixSpellEffects(sd: SpellData)
{
    paladinFix(sd);
    priestFix(sd);
    mageFix(sd);
    druidFixes(sd);
    warlockFixes(sd);
    shamanFix(sd);
    coefFixes(sd);
}
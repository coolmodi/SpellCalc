import { SpellData } from "../SpellData";

interface IHotFix
{
    name: string,
    func: (spellData: SpellData) => boolean,
}

const hotFixes: IHotFix[] = [
    /* {
        name: "Void Plague 200% increase",
        func: sd =>
        {
            const id = 425204;
            const effects = sd.getSpellEffects(id);
            if (effects[0].EffectBasePoints != 39) return false;
            effects[0].EffectBasePoints *= 3;
            return true;
        }
    },
    {
        name: "Starsurge 182% increase",
        func: sd =>
        {
            const id = 417157;
            const effects = sd.getSpellEffects(id);
            if (effects[0].EffectBasePoints != 134) return false;
            effects[0].EffectBasePoints = Math.round(effects[0].EffectBasePoints * 2.82);
            return true;
        }
    },
    {
        name: "Lava Lash 50% increase",
        func: sd =>
        {
            const id = 408507;
            const effects = sd.getSpellEffects(id);
            for (const eff of effects)
            {
                if (eff.Effect == EFFECT_TYPE.SPELL_EFFECT_WEAPON_PERCENT_DAMAGE
                    && eff.EffectBasePoints == 100)
                {
                    eff.EffectBasePoints = 150;
                    return true;
                }
            }
            return false;
        }
    },
    {
        name: "Blackfathom remove spell crit, add 3% spell hit",
        func: sd =>
        {
            const id = 430947;
            const effects = sd.getSpellEffects(id);
            for (const eff of effects)
            {
                if (eff.Effect == EFFECT_TYPE.SPELL_EFFECT_APPLY_AURA
                    && eff.EffectAura == AURA_TYPE.SPELL_AURA_MOD_SPELL_CRIT_CHANCE_SCHOOL)
                {
                    eff.EffectAura = AURA_TYPE.SPELL_AURA_MOD_SPELL_HIT_CHANCE;
                    eff.EffectBasePoints = 3;
                    eff.EffectMiscValue_0 = 0;
                    return true;
                }
            }
            return false;
        }
    }, */
];

/**
 * Apply fixes not yet found in DBC files
 * @param sd 
 */
export function applyHotfixes(sd: SpellData)
{
    for (const h of hotFixes)
    {
        console.log("Applying hotfix: " + h.name);
        const res = h.func(sd);
        if (!res) throw new Error("Hotfix probably no longer needed!");
    }
}
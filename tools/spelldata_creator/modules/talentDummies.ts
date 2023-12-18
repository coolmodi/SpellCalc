import { ClassSpellSets } from "../ClassSpellSets";
import { SpellData } from "../SpellData";
import { cfg } from "../config";

type TalentDummyList = { [talentName: string]: AddonTalentData[] }

function addMageTalents(list: TalentDummyList, spellData: SpellData, classSpellSets: ClassSpellSets)
{
    if (cfg.expansion == "CLASSIC")
    {
        // Ignite
        const affectedSpellSets = [0, 0, 0, 0];
        const mageSet = classSpellSets.getClassSets(SpellClassSetId.MAGE);
        for (let set = 0; set < 4; set++)
        {
            const page = mageSet[set];
            for (let bit in page)
            {
                for (let spellId in page[bit])
                {
                    const school = spellData.getSpellMisc(parseInt(spellId)).SchoolMask;
                    if ((school & SCHOOL_MASK.FIRE) !== 0)
                    {
                        affectedSpellSets[set] += parseInt(bit);
                        continue;
                    }
                }
            }
        }
        list["Ignite"] = [{
            type: ADDON_EFFECT_TYPE.SPELLMOD_EXTRA_ON_CRIT,
            affectSpell: affectedSpellSets,
            perPoint: 8
        }];
    }

    list["Arcane Concentration"] = [{
        type: ADDON_EFFECT_TYPE.CLEARCAST_CHANCE_DMG,
        perPoint: 2
    }];

    list["Master of Elements"] = [{
        type: ADDON_EFFECT_TYPE.ILLUMINATION,
        perPoint: 10
    }];
}

function addPaladinTalents(list: TalentDummyList)
{
    list["Illumination"] = [{
        type: ADDON_EFFECT_TYPE.ILLUMINATION,
        perPoint: (cfg.expansion == "CLASSIC") ? 20 : 6
    }];
}

function addShamanTalents(list: TalentDummyList)
{
    if (cfg.expansion == "CLASSIC")
    {
        list["Elemental Focus"] = [{
            type: ADDON_EFFECT_TYPE.CLEARCAST_CHANCE_DMG,
            perPoint: 10
        }];
    }
}

export function getTalentDummies(spellData: SpellData, classSpellSets: ClassSpellSets)
{
    const list: TalentDummyList = {};

    addMageTalents(list, spellData, classSpellSets);
    addPaladinTalents(list);
    addShamanTalents(list);

    return list;
}


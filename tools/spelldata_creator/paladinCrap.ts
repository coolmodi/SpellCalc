import * as fs from "fs";
import { SpellEffect } from "./SpellData";

export enum SealType {
    SOR = "SOR", 
    SOC = "SOC",
    SOtC = "SOtC"
}

interface SealInfo {
    judgeDummyIndex: number,
    spells: number[]
}

interface SealData {
    seals: {
        [k in SealType]: SealInfo
    }
}

const SEALDATA: SealData = JSON.parse(fs.readFileSync("data/sealData.json", "utf8"));

/**
 * Is spell a seal
 * @param id 
 * @param specific Filter for specific seal
 */
export function isSeal(id: number, specific?: SealType) {
    if ((!specific || specific == SealType.SOR) && SEALDATA.seals.SOR.spells.indexOf(id) != -1) {
        return SealType.SOR;
    }
    if ((!specific || specific == SealType.SOC) && SEALDATA.seals.SOC.spells.indexOf(id) != -1) {
        return SealType.SOC;
    }
    if ((!specific || specific == SealType.SOtC) && SEALDATA.seals.SOtC.spells.indexOf(id) != -1) {
        return SealType.SOtC;
    }
    return false;
}

/**
 * Is effect a judgement dummy
 * @param eff 
 * @param seal 
 */
export function isJudgeDummy(eff: SpellEffect, seal?: SealType) {
    if (seal) {
        if (isSeal(eff.SpellID, seal) && eff.EffectIndex == SEALDATA.seals[seal].judgeDummyIndex) {
            return seal;
        }
    } else {
        for (let k in SealType) {
            //@ts-ignore
            if (isSeal(eff.SpellID, k) && eff.EffectIndex == SEALDATA.seals[k].judgeDummyIndex) {
                return <SealType>k;;
            }
        }
    }

    return false;
}
import * as fs from "fs";
import { SpellEffect } from "./SpellData";
import { cfg } from "./config";

export enum SealType {
    SOR = "SOR", 
    SOC = "SOC",
    SoCor = "SoCor",
    SoV = "SoV",
    SoW = "SoW",
    SoL = "SoL"
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

const SEALDATA: SealData = JSON.parse(fs.readFileSync(cfg.dataDir + "sealData.json", "utf8"));

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

    if (cfg.expansion == "CLASSIC") return false;

    if ((!specific || specific == SealType.SoCor) && SEALDATA.seals.SoCor.spells.indexOf(id) != -1) {
        return SealType.SoCor;
    }
    if ((!specific || specific == SealType.SoV) && SEALDATA.seals.SoV.spells.indexOf(id) != -1) {
        return SealType.SoV;
    }
    if ((!specific || specific == SealType.SoW) && SEALDATA.seals.SoW.spells.indexOf(id) != -1) {
        return SealType.SoW;
    }
    if ((!specific || specific == SealType.SoL) && SEALDATA.seals.SoL.spells.indexOf(id) != -1) {
        return SealType.SoL;
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
import { SpellClassOptions, SpellData } from "./SpellData";

interface SpellSet {
    [bit: number]: {[spellId: number]: true}
}

export class ClassSpellSets
{
    private readonly spellSets: {[classId: number]: [SpellSet, SpellSet, SpellSet, SpellSet]} = {};

    constructor (spellData: SpellData)
    {
        console.log("Creating spell sets...");

        const scopts = spellData.getSpellClassOptions();
    
        for (let spellId in scopts) {
            const scopt = scopts[spellId];
            
            // player classes are 3-11
            if (scopt.SpellClassSet < 3 || scopt.SpellClassSet > 15) continue;
            if (!this.spellSets[scopt.SpellClassSet]) this.spellSets[scopt.SpellClassSet] = [{},{},{},{}];
            const thisClassSet = this.spellSets[scopt.SpellClassSet];
    
            for (let i = 0; i < 4; i++) {
                const mask = scopt["SpellClassMask_" + i as keyof SpellClassOptions];
                if (mask == 0) continue;
                let bit = 1;
                while (bit != 0) {
                    if (bit & mask) {
                        if (!thisClassSet[i][bit]) thisClassSet[i][bit] = {};
                        thisClassSet[i][bit][spellId] = true;
                    }
                    bit = bit << 1;
                }
            }
        }

        console.log("Spell sets created!");
    }

    /**
     * Get spell sets for a player class.
     * @param classSetId 
     */
    getClassSets(classSetId: number)
    {
        if (!this.spellSets[classSetId]) throw "Invalid class ID!";
        return this.spellSets[classSetId];
    }
}
const classMask = {
    [PlayerClass.WARRIOR]: ClassMask.WARRIOR,
    [PlayerClass.PALADIN]: ClassMask.PALADIN,
    [PlayerClass.HUNTER]: ClassMask.HUNTER,
    [PlayerClass.ROGUE]: ClassMask.ROGUE,
    [PlayerClass.PRIEST]: ClassMask.PRIEST,
    [PlayerClass.DEATHKNIGHT]: ClassMask.DEATHKNIGHT,
    [PlayerClass.SHAMAN]: ClassMask.SHAMAN,
    [PlayerClass.MAGE]: ClassMask.MAGE,
    [PlayerClass.WARLOCK]: ClassMask.WARLOCK,
    [PlayerClass.DRUID]: ClassMask.DRUID
};

/**
 * Return class mask.
 * @param pclass 
 * @returns 
 */
export function getClassMaskFromName(pclass: PlayerClass)
{
    if (!classMask[pclass]) throw new Error("Invalid class name!");
    return classMask[pclass];
}

export function isPlayerClass(pclass: string): pclass is PlayerClass
{
    return !!classMask[pclass as PlayerClass];
}
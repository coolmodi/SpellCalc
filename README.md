# SpellCalc

A WoW classic addon providing information for spells, like actual damage done, crit and hit chance, scaling etc.

## This is still in a somewhat alpha state

* Caster classes should all work. This includes totems and seals.
* Warrior, Hunter and Rogue have no support at all.
* Math and logic may or may not be correct for all spells/talents/buffs/items/sets. 
* Consider using `/console scriptErrors 1` when using (testing) this to catch Lua errors.

## Current Features
### Spells

* Spell power scaling.
* Crit and hit chance.
* Average damage resisted or additional miss chance for binary spells.
* DPS and HPS values after all of the above.
* DPM, HPM, and done until OOM values after factoring in spirit regen (while casting), MP5 and other mana returns.
* Can show some values on the action bar.

### Melee

* Experimental auto attack implementation.
* Hit, parry, dodge and block based on weapon skill and target level against PvE targets.
* Against PvP targets asumes max weapon skill for hit chance, but ignores parry, dodge and block.

It should be easy to add/implement missing buffs/items/talents/effects or fix incorrect ones. I just need to know what is missing or wrong.

`/sc` to show settings in the interface options addons tab

`/sc info` will show a window with all the stats used (intended for debug, it's not pretty)

`/sc debug` will toggle debug output

## Known Problems/Shortcomings
* Aura crit supression for melee is always applied, even if there is no crit from auras. This means if you don't have at least 2% crit from gear, talents or buffs you will have less crit displayed against +3 targets than you have. This should rarely matter.
* Block chance for melee attacks is only used to calculate following chances in attack table, notably crit, block damage reduction is not implemented.
* Against player targets parry, block and dodge is not handled in any way.

## Some examples
![example](images/example1.png)
![example2](images/example2.png)
![example3](images/example3.png)
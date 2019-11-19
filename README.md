# SpellCalc

A WoW classic addon providing information for spells, like actual damage done, crit and hit chance, scaling etc.

## This is very much in an alpha state

* Priest should work fine
* Spells from other caster classes should also work, this excludes special spells like seals!
* Warrior, Hunter and Rogue have no support at all

Math and logic may or may not be correct, at all. Currently observed values for priest seem to be correct for me though. Consider using `/console scriptErrors 1` when using (testing) this.

## Features that are supposed to work for magic spells

* Spell power scaling.
* Talents that affect supported spells are handled.
* Crit and hit chance based on gear, talents and buffs.
* Average damage resisted or additional miss chance for binary spells.
* Use target or set level difference for hit chance and resistance calculation.
* DPS and HPS values after all of the above.
* DPM, HPM, and done until OOM values after factoring in spirit regen (while casting), MP5 and other mana returns. Additionally can use a set HPS target for heals to show values with casting breaks.
* Can show some values on the action bar.

It should be easy to add/implement missing buffs/items/talents/effects or fix incorrect ones. I just need to know what is missing or wrong.

`/sc` will show a window with all the stats used (intended for debug, it's not pretty)

`/sc debug` will toggle debug output

There is a settings menu in the interface options addons tab.

## Planned
* Support for more special spells like seals.
* More options for actionbar values.
* Better tooltips.
* Support for melee/ranged spells.
* Using target for debuffs (e.g. Shadow Weaving) or things like troll beast dmg, low prio.
* Resistance (custom values can be set) and armor mitigation, very low prio.

## Some examples
![example](images/example1.png)
![example2](images/example2.png)
![example3](images/example3.png)
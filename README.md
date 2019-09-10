# SpellCalc

A WoW classic addon providing information for spells, like actual damage done, crit and hit chance, scaling etc.

## This is very much in an alpha state

**Only priest is working, other classes have NO spells defined as of now, addon will error when using it with anything but a priest!**

Math and logic may or may not be correct, at all. Currently observed values seem correct for me though. Consider using `/console scriptErrors 1` when using (testing) this.

## Features that are supposed to work (for priest)

* Spell power scaling
* Consideres talents that **aren't included** in the tooltip/API by default
* Crit chance based on gear/talents/buffs
* Hit chance (only static +0 or +3 level target for now)
* DPS and HPS
* DPM and HPM, also done until OOM values + time and casts for direct spells
* Factors in spirit regen (in FSR) and MP5
* Gets needed values from gear and buffs (not all items/buffs added)
* Can work with basically all spells
* Watches for set boni (e.g. 25% crit for PoM)
* Uses IDs and patterns for everything, should probably work for all client languages

At this point it should be easy to add/implement missing buffs/items/talents/effects.

`/sc` will dump all stat data and buffs used to chat (very messy)

`/sc debug` will toggle debug output

## Not yet working but planned
* Some UI to check stats used other than /sc, mainly for debug reasons
* Showing a value on action bar buttons, e.g. average hit
* Using target for level based hit chance
* Things that are not a priest
* Support for melee/ranged spells
* Using target for debuffs (e.g. Shadow Weaving) or things like troll beast dmg, low prio
* Resistance and armor mitigation, very low prio

## Some tooltip examples
![example](images/example1.png)
![example](images/example2.png)
![example](images/example3.png)
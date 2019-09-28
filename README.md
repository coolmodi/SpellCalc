# SpellCalc

A WoW classic addon providing information for spells, like actual damage done, crit and hit chance, scaling etc.

## This is very much in an alpha state

* Priest should work fine
* Mage and WL should work, mage 99% untested, WL should be somewhat better off
* All other classes won't work at all!

Math and logic may or may not be correct, at all. Currently observed values for priest seem to be correct for me though. Consider using `/console scriptErrors 1` when using (testing) this.

I learned that multiple effect modifiers (e.g. Piercing Ice and Improved Cone of Cold) are multiplicative and not additive. Didn't catch that because priest doesn't really have that (shadow form + darkness works correct already). If that is indeed a rule then some things will be off slightly atm. Need to investigate.

## Features that are supposed to work

* Spell power scaling
* Consideres talents that **aren't included** in the tooltip/API by default
* Crit and hit chance based on gear/talents/buffs, uses target level or set level difference
* Average damage resisted, and additional resist (miss) chance for binary spells
* DPS and HPS values after all of the above
* DPM and HPM, also done until OOM values (theoretical, including partial casts!)
* Factors in spirit regen (while casting) and MP5, additionally can use a set HPS target for heals to show values with casting breaks
* Can show some values on the action bar

It should be easy to add/implement missing buffs/items/talents/effects. I just need to know what is missing or wrong.

`/sc` will show a window with all the stats used (intended for debug, it's not pretty)

`/sc debug` will toggle debug output

There is a settings menu in the interface options addons tab.

## Not yet working but planned
* Things that are not a priest, mage or WL
* Maybe use hardcoded values for all spell ranks to not have to use tooltip values at all, preventing all the problems with inconsistent talent/buff behaviour
* Support for melee/ranged spells
* Using target for debuffs (e.g. Shadow Weaving) or things like troll beast dmg, low prio
* Resistance and armor mitigation, very low prio

## Some examples
![example](images/example1.png)
![example2](images/example2.png)
![example3](images/example3.png)
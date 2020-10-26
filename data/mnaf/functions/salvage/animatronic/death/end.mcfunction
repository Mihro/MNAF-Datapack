tp @a[tag=salvage_death] 9 56 47 -90 0
effect clear @a[tag=salvage_death] blindness
tag @a[tag=salvage_death] remove salvage_death
say You are dead.

execute as @e[tag=salvage_animatronic] run function mnaf:salvage/animatronic/reset
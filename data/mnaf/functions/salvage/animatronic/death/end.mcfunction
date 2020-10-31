#title @a[tag=salvage_death] title "You died."
#tp @a[tag=salvage_death] 9 56 47 -90 0
execute as @e[tag=red_guard_office] at @s run tp @a[tag=salvage_death] ~ ~ ~ ~ ~
effect clear @a[tag=salvage_death] blindness

tag @a[tag=salvage_death] remove salvage_death

function mnaf:salvage/chapters/reset
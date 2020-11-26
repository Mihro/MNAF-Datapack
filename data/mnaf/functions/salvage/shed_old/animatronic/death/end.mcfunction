#title @a[tag=salvage_death] title "You died."
tp @a[tag=run_salvage] -44 5 -161 0 0
effect clear @a[tag=salvage_death] blindness

tag @a[tag=salvage_death] remove salvage_death

function mnaf:salvage/shed/chapters/reset
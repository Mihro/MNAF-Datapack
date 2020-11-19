execute as @e[tag=red_guard_office] at @s run tp @a[tag=run_salvage] ~ ~ ~ ~ ~
#tp @a[tag=run_salvage] -44 5 -161 0 0
execute as @a[tag=run_salvage] at @s run playsound mnaf:salvage.night_4.phone.end voice @s

function mnaf:salvage/shed/chapters/reset
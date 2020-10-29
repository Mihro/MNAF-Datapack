# Summon villager for interact hitbox
summon villager ^-0.5 ^ ^1.2 {Health:1f,Silent:1b,NoGravity:1b,NoAI:1b,DeathTime:19,Team:"NoPush",Tags:["cctv","monitor","monitor_interact"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
execute as @e[tag=monitor_interact,sort=nearest,limit=1] at @s run tp @s ~ ~ ~ ~-90 ~

# Labels
summon minecraft:area_effect_cloud ^-0.5 ^1.24 ^1.38 {  Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"1"',DurationOnUse:1}
summon minecraft:area_effect_cloud ^-0.58 ^1.32 ^1.16 { Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"2"',DurationOnUse:2}
summon minecraft:area_effect_cloud ^-0.45 ^1.18 ^1 {    Duration:2147483647,Rotation:[0f,-90f],Tags:["cctv","monitor","monitor_label"],CustomName:'"3"',DurationOnUse:3}

# Save ID to score
execute as @e[tag=monitor_label] store result score @s CctvID run data get entity @s DurationOnUse
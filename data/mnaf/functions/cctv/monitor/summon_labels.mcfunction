execute positioned ^-1.4 ^1.72 ^0.1 run summon minecraft:area_effect_cloud ~ ~ ~ { Duration:2147483647,Tags:["monitor","monitor_label"],CustomName:'"1"',DurationOnUse:1}
execute positioned ^-0.18 ^1.72 ^0.1 run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["monitor","monitor_label"],CustomName:'"2"',DurationOnUse:2}
execute positioned ^-1.4 ^0.32 ^0.1 run summon minecraft:area_effect_cloud ~ ~ ~ { Duration:2147483647,Tags:["monitor","monitor_label"],CustomName:'"Salvaged"',DurationOnUse:3}
execute positioned ^0.06 ^0.4 ^0.1 run summon minecraft:area_effect_cloud ~ ~ ~ {  Duration:2147483647,Tags:["monitor","monitor_label"],CustomName:'"4"',DurationOnUse:4}
execute positioned ^0.49 ^0.15 ^0.1 run summon minecraft:area_effect_cloud ~ ~ ~ { Duration:2147483647,Tags:["monitor","monitor_label"],CustomName:'"5"',DurationOnUse:5}
execute positioned ^1.2 ^0.58 ^0.1 run summon minecraft:area_effect_cloud ~ ~ ~ {  Duration:2147483647,Tags:["monitor","monitor_label"],CustomName:'"6"',DurationOnUse:6}
execute positioned ^ ^1.5 ^0.1 as @e[tag=monitor_label,distance=..2] store result score @s CctvID run data get entity @s DurationOnUse

execute positioned ^ ^1.5 ^0.1 at @e[tag=monitor_label,distance=..2] run summon villager ~ ~-1 ~ {Silent:1,NoGravity:1,NoAI:1,DeathTime:19,Team:"NoPush",Tags:["monitor","monitor_interact"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}]}
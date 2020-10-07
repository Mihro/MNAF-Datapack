execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=mnaf_monitor,distance=..0.1] positioned ~0.5 ~0.5 ~ if entity @e[type=painting,distance=..0.1] run summon slime ~-0.45 ~-0.5 ~ {NoAI:1,NoGravity:1,Size:1,Tags:["mnaf_monitor"],Health:1.0f,DeathTime:19}
execute align xyz positioned ~0.5 ~ ~0.5 unless entity @e[tag=mnaf_monitor,distance=..0.1] positioned ~-0.5 ~0.5 ~ if entity @e[type=painting,distance=..0.1] run summon slime ~0.45 ~-0.5 ~ {NoAI:1,NoGravity:1,Size:1,Tags:["mnaf_monitor"],Health:1.0f,DeathTime:19}

execute as @e[tag=mnaf_camera] unless score @s cctvID matches 1.. run tag @s add cctv_paired
execute as @e[tag=mnaf_camera] unless score @s cctvID matches 1.. run tag @e[tag=mnaf_monitor,distance=..0.25] add cctv_paired
scoreboard players add @e[tag=cctv_paired] cctvID 1
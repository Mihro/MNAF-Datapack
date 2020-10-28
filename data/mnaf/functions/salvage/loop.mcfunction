# Start night
execute at @e[tag=salvage_seat] as @a[distance=..5,tag=!run_salvage,nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["salvage_seat"]}}}] run function mnaf:salvage/chapters/start_night

# Loop each chapter's triggers
execute as @a[tag=run_salvage,tag=!pause_salvage] run function mnaf:salvage/chapters/triggers

# Animatronic active gameloop
execute as @a[tag=run_salvage,tag=!pause_salvage] run function mnaf:salvage/animatronic/loop

# Leaving seat pause
execute as @a[tag=run_salvage,tag=!pause_salvage] unless entity @s[nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["salvage_seat"]}}}] run tag @s add pause_salvage
execute as @a[tag=run_salvage,tag=pause_salvage ] if entity @s[    nbt={RootVehicle:{Entity:{id:"minecraft:pig",Tags:["salvage_seat"]}}}] run tag @s remove pause_salvage
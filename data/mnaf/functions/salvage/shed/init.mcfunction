# Scoreboard objectives
scoreboard objectives add SalvageNight dummy
scoreboard objectives add SalvageStage dummy
scoreboard objectives add SalvageTimer dummy

# Kill salvage shed stuff
kill @e[tag=salvage,tag=shed]
kill @e[type=item,x=-44,y=5,z=-156,distance=..1,nbt={Item:{id:"minecraft:saddle"}}]

# Summon markers
## Salvage Root
summon minecraft:area_effect_cloud -44 5 -151 {Duration:2147483647,Rotation:[0f,-90f],Tags:["salvage","shed","marker","root"]}
## Button No
summon minecraft:area_effect_cloud -42 6 -157 {Duration:2147483647,Rotation:[0f,-90f],Tags:["salvage","shed","marker","button_no"]}
## Button Taze
summon minecraft:area_effect_cloud -43 6 -154 {Duration:2147483647,Rotation:[0f,-90f],Tags:["salvage","shed","marker","button_taze"]}
## Button Cue
summon minecraft:area_effect_cloud -45 6 -154 {Duration:2147483647,Rotation:[0f,-90f],Tags:["salvage","shed","marker","button_cue"]}
## Button Yes
summon minecraft:area_effect_cloud -46 6 -157 {Duration:2147483647,Rotation:[0f,-90f],Tags:["salvage","shed","marker","button_yes"]}
## Item Input Block
summon minecraft:area_effect_cloud -44 4 -154 {Duration:2147483647,Rotation:[0f,-90f],Tags:["salvage","shed","marker","item_input"]}
execute as @e[tag=salvage,tag=shed,tag=marker,tag=item_input] at @s run setblock ~ ~ ~ air replace
execute as @e[tag=salvage,tag=shed,tag=marker,tag=item_input] at @s run setblock ~ ~ ~ dropper{CustomName:'"Salvage Box"'} replace

# Summon seat
summon minecraft:pig -44 4.6 -156 {Invulnerable:true,Rotation:[0f,0f],Silent:true,NoAI:true,NoGravity:true,DeathTime:19s,Saddle:true,Team:"NoPush",Tags:["salvage","shed","seat"],ActiveEffects:[{Id:14b,Duration:2147483647,ShowParticles:false}]}

# Reset @a salvage stuff
function mnaf:salvage/shed/reset

# Recommend player sets salvage night score
tellraw @s [{"text": "Recommended: ", "italic": true, "color": "yellow"}, {"text": "[Click to set Salvage Night]", "clickEvent": {"action": "suggest_command", "value": "/scoreboard players set @e[tag=salvage,tag=shed,tag=root] SalvageNight #"}}]
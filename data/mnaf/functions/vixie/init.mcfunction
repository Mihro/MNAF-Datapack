kill @e[tag=vixie]
#summon armor_stand -76.0 9.5 -288.0 {Marker:1b,NoGravity:1b,Rotation:[270f,0f],ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:201}}],Tags:["vixie_bull","model"]}
summon minecraft:endermite -76.0 7.5 -288.0 {Silent:1b,NoGravity:1b,NoAI:1b,Invulnerable:1b,Rotation:[270f,0f],Health:1f,DeathTime:19,Lifetime:-1000000,Tags:["vixie","base"],ActiveEffects:[{Id:14,Duration:2147483647,ShowParticles:0b}],Attributes:[{Name:"generic.movement_speed",Base:0}],Passengers:[{id:"minecraft:armor_stand",Invulnerable:1b,Marker:0b,Invisible:1b,NoGravity:1b,Rotation:[270f,0f],Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"minecraft:netherite_hoe",Count:1b,tag:{CustomModelData:201}}],Tags:["vixie","model"]}]}
scoreboard players set Stage Vixie 0
scoreboard players operation Timer Vixie = StageDuration Vixie
# Run by: as @e[tag=salvage,tag=ai,tag=marker,scores={SalvageAIMarker=1}] at @s

execute if entity @s[tag=salvage_bonnie_marker] run function mnaf:salvage/common/animatronic/summon/bonnie
execute if entity @s[tag=salvage_freddy_marker] run function mnaf:salvage/common/animatronic/summon/freddy
execute if entity @s[tag=salvage_foxy_marker  ] run function mnaf:salvage/common/animatronic/summon/foxy
execute if entity @s[tag=salvage_chica_marker ] run function mnaf:salvage/common/animatronic/summon/chica

tag @e[tag=salvage,tag=animatronic,sort=nearest,limit=1] add ai

execute as @e[tag=salvage,tag=ai,tag=animatronic] at @s run data modify entity @s Pose set from entity @e[tag=salvage,tag=ai,tag=marker,sort=nearest,limit=1] Pose
execute as @e[tag=salvage,tag=ai,tag=animatronic] at @s run data modify entity @s Rotation set from entity @e[tag=salvage,tag=ai,tag=marker,sort=nearest,limit=1] Rotation
tp @e[tag=salvage,tag=ai,tag=animatronic,sort=nearest,limit=1] ~ ~ ~ ~ ~
#execute as @e[tag=salvage,tag=ai,tag=animatronic] run data merge entity @s {Glowing:true}
scoreboard players operation temp SpectateID = @s SpectateID
execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["player_previous_pos_marker","spectate_id_unset"]}
execute as @e[tag=player_previous_pos_marker,tag=spectate_id_unset] run scoreboard players operation @s SpectateID = temp SpectateID
tag @e[tag=spectate_id_unset] remove spectate_id_unset
execute at @e[tag=player_previous_pos_marker] rotated as @s run tp @e[tag=player_previous_pos_marker,distance=..0.1] ~ ~ ~ ~ ~
scoreboard players operation @s SpectateID = @e[tag=monitor_label,distance=..0.1] CctvID

function mnaf:cctv/common/viewing/place_marker

tag @s add jump_from
tag @e[tag=camera,tag=cctv_paired] add jump_to
scoreboard players operation @s JumpToID = @s SpectateID
execute as @e[tag=jump_to] run scoreboard players operation @s JumpToID = @s CctvID
function mnaf:cctv/common/jump_to/jump_to
tag @e[tag=jump_to_target] add cctv_spectate_to
tag @e[tag=jump_to_target] remove jump_to_target

gamemode spectator @s
spectate @e[tag=cctv_spectate_to,limit=1]
tag @e[tag=cctv_spectate_to] remove cctv_spectate_to
tag @s add cctv_spectating

title @s actionbar {"text":"Shift to exit.","color":"black"}
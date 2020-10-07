### Run by player

scoreboard players reset @s PairingTrigger
#execute at @e[tag=label_last_clicked] run scoreboard players operation CurrentlyPairing CctvID = @e[tag=monitor_label,distance=..0.1] CctvID
execute at @e[tag=label_last_clicked] as @e[tag=monitor_label,distance=..0.1] run tellraw @a ["Pairing label: ",{"italic":true,"selector":"@s"},".\nRight-click a camera with the remote.\n"]

function mnaf:cctv/common/pairing/give_remote
tag @s add cctv_pairing
execute at @e[tag=label_last_clicked] run tag @e[tag=monitor_label,distance=..0.1] add label_pairing
execute at @e[tag=label_last_clicked] as @e[tag=monitor_label,distance=..0.1] run tellraw @a ["Pairing camera: ",{"italic":true,"selector":"@s"}]

tag @s add cctv_paired
tag @s add camera_paired
scoreboard players operation @s CctvID = @e[tag=label_pairing] CctvID
scoreboard players operation @s CameraID = @s CctvID

tag @e[tag=label_pairing] add cctv_paired

tag @p add pairing_successful
kill @e[tag=label_last_clicked]
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["monitor","label_last_clicked"],CustomName:'"Label Last Clicked"'}
execute at @e[tag=label_last_clicked] as @e[tag=monitor_label,distance=..0.1] run tellraw @a ["Interacted with label: ",{"italic":true,"selector":"@s"},"\n"]

execute as @s[tag=cctv_edit_mode] run function mnaf:cctv/monitor/interact/label/edit_mode/edit
execute as @s[tag=!cctv_edit_mode] run function mnaf:cctv/monitor/interact/label/view_mode/view
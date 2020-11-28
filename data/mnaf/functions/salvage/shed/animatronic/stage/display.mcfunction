#say Stage > Display
execute if score @s SalvageStage matches 0 run function mnaf:salvage/shed/animatronic/pose/night_5/stage_0
execute if score @s SalvageStage matches 1 run function mnaf:salvage/shed/animatronic/pose/night_5/stage_1
execute if score @s SalvageStage matches 2 run function mnaf:salvage/shed/animatronic/pose/night_5/stage_2
execute if score @s SalvageStage matches 3 run function mnaf:salvage/shed/animatronic/pose/night_5/stage_3

playsound minecraft:item.armor.equip_leather master @a ~ ~ ~
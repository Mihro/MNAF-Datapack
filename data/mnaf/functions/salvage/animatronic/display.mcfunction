#replaceitem entity @s[scores={SalvageStage=1}] armor.head minecraft:netherite_hoe{CustomModelData:3}
#replaceitem entity @s[scores={SalvageStage=2}] armor.head minecraft:netherite_hoe{CustomModelData:4}
#replaceitem entity @s[scores={SalvageStage=3}] armor.head minecraft:netherite_hoe{CustomModelData:5}

execute if entity @s[scores={SalvageStage=0}] run function mnaf:salvage/animatronic/pose/night_2/stage_0
execute if entity @s[scores={SalvageStage=1}] run function mnaf:salvage/animatronic/pose/night_2/stage_1
execute if entity @s[scores={SalvageStage=2}] run function mnaf:salvage/animatronic/pose/night_2/stage_2
execute if entity @s[scores={SalvageStage=3}] run function mnaf:salvage/animatronic/pose/night_2/stage_3
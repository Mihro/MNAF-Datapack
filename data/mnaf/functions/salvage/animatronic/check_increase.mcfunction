scoreboard players operation @s SalvageTimer = animatronicDuration SalvageTimer

# Gets value for shortest rotation of player view direction to Salvage
function mnaf:salvage/animatronic/get_delta_rotation
execute unless entity @a[scores={SalDeltaViewRot=-750..750}] run function mnaf:salvage/animatronic/increase
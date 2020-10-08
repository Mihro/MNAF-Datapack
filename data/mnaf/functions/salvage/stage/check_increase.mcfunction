scoreboard players operation @s SalvageTimer = StageDuration SalvageTimer

# Gets value for shortest rotation of player view direction to Salvage
function mnaf:salvage/stage/get_delta_rotation
execute unless entity @a[scores={SalDeltaViewRot=-750..750}] run function mnaf:salvage/stage/increase
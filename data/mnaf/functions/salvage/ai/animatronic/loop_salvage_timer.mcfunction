# Run by: @e[tag=salvage_animatronic,tag=salvage_ai,tag=salvage_active]

#scoreboard players operation @s[tag=salvage_bonnie,scores={SalvageTimer=..0}] SalvageTimer = SalvageBonnieStageDuration SalvageTimer
#scoreboard players operation @s[tag=salvage_freddy,scores={SalvageTimer=..0}] SalvageTimer = SalvageFreddyStageDuration SalvageTimer

scoreboard players operation @s[scores={SalvageTimer=..0}] SalvageTimer = AIStageDuration SalvageTimer
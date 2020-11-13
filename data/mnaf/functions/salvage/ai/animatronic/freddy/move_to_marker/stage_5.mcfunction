say Stage 5 Operations

# Tag for reset if player not near desk
execute at @e[tag=red_desk_frame,sort=nearest,limit=1] unless entity @a[tag=red_guard,distance=..5] run tag @s add salvage_ai_scare_failed
#execute at @e[tag=red_desk_frame,sort=nearest,limit=1] unless entity @a[tag=red_guard,distance=..5] run say Not at desk

# Tag for reset if nearest vent locked
execute at @s at @e[tag=vent,sort=nearest,limit=1] if entity @e[tag=vent_locked,distance=..0.1] run tag @s add salvage_ai_scare_failed
#execute at @s at @e[tag=vent,sort=nearest,limit=1] if entity @e[tag=vent_locked,distance=..0.1] run say Vent locked

# Tag for reset if player is being scared
execute if entity @e[tag=scare_queued] run tag @s add salvage_ai_scare_failed
#execute if entity @e[tag=scare_queued] run say Scare already queued
execute if entity @e[tag=scare_running] run tag @s add salvage_ai_scare_failed
#execute if entity @e[tag=scare_running] run say Scare already running

execute if entity @s[tag=salvage_ai_scare_failed] run function mnaf:salvage/ai/animatronic/stage/reset
execute if entity @s[tag=!salvage_ai_scare_failed] run tag @s add scare_queued
#execute if entity @s[tag=salvage_ai_scare_failed] run say Scare failed
#execute if entity @s[tag=!salvage_ai_scare_failed] run say Scare queued

tag @e[tag=salvage_ai_scare_failed] remove salvage_ai_scare_failed
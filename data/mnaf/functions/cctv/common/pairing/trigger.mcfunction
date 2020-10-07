### Run by player

tellraw @a "Started pairing. Click a camera with the remote."

function mnaf:cctv/common/pairing/give_remote
tag @s add cctv_pairing
execute at @e[tag=label_last_clicked] run tag @e[tag=monitor_label,distance=..0.1] add label_pairing
#execute at @e[tag=label_pairing] run summon slime ^ ^-0.2 ^-0.4 {NoAI:1,Invulnerable:1,DeathTime:19,Size:0,Glowing:1,Tags:["label_pairing_highlight"],ActiveEffects:[{Id:14,Duration:1000000,ShowParticles:0b}]}

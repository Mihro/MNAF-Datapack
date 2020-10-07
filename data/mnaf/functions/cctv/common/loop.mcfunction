# If label pairing requested
execute as @a[scores={PairingTrigger=1}] run function mnaf:cctv/common/pairing/start_pairing

# If cctv pairing attempted
execute as @a[tag=cctv_pairing,scores={UseCarrotStick=1..}] run function mnaf:cctv/common/pairing/attempt_pairing

# Unlink camera if camera deleted
execute as @e[tag=monitor_label,tag=cctv_paired] run function mnaf:cctv/common/unpairing/auto_unpair

# Return player if player stops spectating a camera
execute as @e[tag=cctv_spectating] at @s unless entity @e[tag=camera_view,distance=..0.1] run function mnaf:cctv/common/viewing/return_player

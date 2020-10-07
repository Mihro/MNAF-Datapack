# View label when label is paired
execute if entity @e[tag=monitor_label,tag=cctv_paired,distance=..0.1] run function mnaf:cctv/common/viewing/view

# View label when label is not paired
#Do something
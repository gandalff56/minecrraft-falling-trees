# Fire Arrows: arrows shot by archer catch fire
# Tag nearby newly-shot arrows
tag @e[type=minecraft:arrow,distance=..3,tag=!hrpg.fire_arrow,nbt={inGround:0b}] add hrpg.fire_arrow

# Set fire ticks on tagged arrows
execute as @e[type=minecraft:arrow,tag=hrpg.fire_arrow,nbt={inGround:0b}] run data merge entity @s {Fire:100s}

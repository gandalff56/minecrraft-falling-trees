# Phantom Arrow: arrows pierce through entities
# Give all newly shot arrows the piercing tag
execute as @e[type=minecraft:arrow,distance=..3,tag=!hrpg.phantom,nbt={inGround:0b}] run data merge entity @s {PierceLevel:3b}
tag @e[type=minecraft:arrow,distance=..3,nbt={inGround:0b}] add hrpg.phantom

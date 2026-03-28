# Raycast for teleport — find position up to 32 blocks
scoreboard players add @s rpg.temp 1

# If hit a solid block, teleport one step back (last safe pos)
execute unless block ~ ~ ~ #hardcore_rpg:passthrough run tp @s ~ ~-0.5 ~
execute unless block ~ ~ ~ #hardcore_rpg:passthrough run scoreboard players set @s rpg.temp 99

# Max distance reached, teleport here
execute if score @s rpg.temp matches 32 run tp @s ~ ~ ~
execute if score @s rpg.temp matches 32 run scoreboard players set @s rpg.temp 99

# Continue if not done
execute if score @s rpg.temp matches ..31 positioned ^ ^ ^1 run function hardcore_rpg:abilities/mage/raycast_teleport

# Particles at destination and reset
execute if score @s rpg.temp matches 99 at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 1 0.5 0.1 20
execute if score @s rpg.temp matches 99 run scoreboard players set @s rpg.temp 0

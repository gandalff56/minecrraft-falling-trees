# Raycast for lightning — step forward and check for block
scoreboard players add @s rpg.temp 1

# Check if current block is solid (not air)
execute unless block ~ ~ ~ #hardcore_rpg:passthrough run summon minecraft:lightning_bolt ~ ~ ~
execute unless block ~ ~ ~ #hardcore_rpg:passthrough run scoreboard players set @s rpg.temp 99

# Max distance reached
execute if score @s rpg.temp matches 32 run summon minecraft:lightning_bolt ~ ~ ~
execute if score @s rpg.temp matches 32 run scoreboard players set @s rpg.temp 99

# Continue raycast if not done
execute if score @s rpg.temp matches ..31 positioned ^ ^ ^1 run function hardcore_rpg:abilities/mage/raycast_lightning

# Reset counter when done
execute if score @s rpg.temp matches 99 run scoreboard players set @s rpg.temp 0

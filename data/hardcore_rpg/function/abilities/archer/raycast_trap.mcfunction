# Raycast for Trap — find target position, apply area slowness
scoreboard players add @s rpg.temp 1

# If hit a solid block or max distance, apply trap effect here
execute unless block ~ ~ ~ #hardcore_rpg:passthrough run function hardcore_rpg:abilities/archer/apply_trap
execute unless block ~ ~ ~ #hardcore_rpg:passthrough run scoreboard players set @s rpg.temp 99

execute if score @s rpg.temp matches 20 run function hardcore_rpg:abilities/archer/apply_trap
execute if score @s rpg.temp matches 20 run scoreboard players set @s rpg.temp 99

# Continue raycast
execute if score @s rpg.temp matches ..19 positioned ^ ^ ^1 run function hardcore_rpg:abilities/archer/raycast_trap

# Reset
execute if score @s rpg.temp matches 99 run scoreboard players set @s rpg.temp 0

# Raycast for Arrow Rain — find ground position, then summon arrows above
scoreboard players add @s rpg.temp 1

# If hit a solid block or max distance, summon arrow rain here
execute unless block ~ ~ ~ #hardcore_rpg:passthrough run function hardcore_rpg:abilities/archer/summon_rain
execute unless block ~ ~ ~ #hardcore_rpg:passthrough run scoreboard players set @s rpg.temp 99

execute if score @s rpg.temp matches 32 run function hardcore_rpg:abilities/archer/summon_rain
execute if score @s rpg.temp matches 32 run scoreboard players set @s rpg.temp 99

# Continue raycast
execute if score @s rpg.temp matches ..31 positioned ^ ^ ^1 run function hardcore_rpg:abilities/archer/raycast_rain

# Reset
execute if score @s rpg.temp matches 99 run scoreboard players set @s rpg.temp 0

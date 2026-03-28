# Fortress: passive Resistance I when below 50% HP
# Level 5+ Tank passive ability

execute store result score @s rpg.temp run scoreboard players get @s rpg.max_hp
scoreboard players operation @s rpg.temp /= #2 rpg.temp

# If health <= max_hp / 2, grant Resistance
execute if score @s rpg.health <= @s rpg.temp run effect give @s minecraft:resistance 3 0 true
execute if score @s rpg.health <= @s rpg.temp at @s run particle minecraft:block{block_state:"minecraft:iron_block"} ~ ~1 ~ 0.3 0.5 0.3 0 2

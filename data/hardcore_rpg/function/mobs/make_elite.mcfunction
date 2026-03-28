# Transform mob into Elite variant
tag @s add hrpg.elite

# Glowing + Speed I
effect give @s minecraft:glowing 999999 0 true
effect give @s minecraft:speed 999999 0 true
effect give @s minecraft:fire_resistance 999999 0 true

# +50% HP (get current max health, multiply by 1.5)
# Base mob has ~20 HP, elite gets 30. Scaled mobs get more.
execute store result score @s rpg.temp run attribute @s minecraft:max_health base get
scoreboard players operation @s rpg.temp *= #3 rpg.temp
scoreboard players operation @s rpg.temp /= #2 rpg.temp
execute store result storage hardcore_rpg:temp hp int 1 run scoreboard players get @s rpg.temp
function hardcore_rpg:mobs/apply_elite_hp with storage hardcore_rpg:temp

# Custom name
data merge entity @s {custom_name_visible:1b}
execute if entity @s[type=minecraft:zombie] run data merge entity @s {custom_name:{"text":"Elite Zombie","color":"red","bold":true}}
execute if entity @s[type=minecraft:skeleton] run data merge entity @s {custom_name:{"text":"Elite Skeleton","color":"red","bold":true}}
execute if entity @s[type=minecraft:creeper] run data merge entity @s {custom_name:{"text":"Elite Creeper","color":"red","bold":true}}
execute if entity @s[type=minecraft:spider] run data merge entity @s {custom_name:{"text":"Elite Spider","color":"red","bold":true}}
execute if entity @s[type=minecraft:enderman] run data merge entity @s {custom_name:{"text":"Elite Enderman","color":"red","bold":true}}
execute if entity @s[type=minecraft:witch] run data merge entity @s {custom_name:{"text":"Elite Witch","color":"red","bold":true}}
execute if entity @s[type=minecraft:drowned] run data merge entity @s {custom_name:{"text":"Elite Drowned","color":"red","bold":true}}
execute if entity @s[type=minecraft:husk] run data merge entity @s {custom_name:{"text":"Elite Husk","color":"red","bold":true}}

# Particles
particle minecraft:flame ~ ~1 ~ 0.3 0.5 0.3 0.02 10

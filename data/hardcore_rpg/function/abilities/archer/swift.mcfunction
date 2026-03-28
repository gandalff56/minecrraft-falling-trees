# Swift: permanent Speed effect
# Level 5-19: Speed I, Level 20+: Speed II
execute if score @s rpg.level matches 5..19 run effect give @s minecraft:speed 3 0 true
execute if score @s rpg.level matches 20.. run effect give @s minecraft:speed 3 1 true

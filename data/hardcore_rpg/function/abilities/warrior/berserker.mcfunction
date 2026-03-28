# Berserker: Strength when below 4 HP
# Level 5-19: Strength I, Level 20+: Strength II
execute store result score @s rpg.health run data get entity @s Health
execute if score @s rpg.health matches ..4 if score @s rpg.level matches 5..19 run effect give @s minecraft:strength 3 0 true
execute if score @s rpg.health matches ..4 if score @s rpg.level matches 20.. run effect give @s minecraft:strength 3 1 true

# Particles when berserker is active
execute if score @s rpg.health matches ..4 at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0.3 0.3 0.3 0 1

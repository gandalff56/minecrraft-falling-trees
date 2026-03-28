# Boss becomes nearly unbeatable when only Tank players are nearby
# Tank can only flee, not win alone

# Massive buffs to boss
effect give @s minecraft:strength 5 2 true
effect give @s minecraft:speed 5 1 true
effect give @s minecraft:regeneration 5 1 true
effect give @s minecraft:resistance 5 1 true

# Warning message (only every ~10 seconds to avoid spam, use rpg.temp trick)
execute if predicate hardcore_rpg:mob_ability_10 run tellraw @a[distance=..32,scores={rpg.class=4}] ["",{"text":"Boss czuje twoją słabość! ","color":"red","bold":true},{"text":"Potrzebujesz sojuszników!","color":"gray"}]

# Aggressive particles
particle minecraft:flame ~ ~2 ~ 0.5 0.5 0.5 0.05 10
particle minecraft:angry_villager ~ ~2.5 ~ 0.3 0.3 0.3 0 3

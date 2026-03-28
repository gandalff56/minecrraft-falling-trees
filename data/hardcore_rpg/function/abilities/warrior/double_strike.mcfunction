# Double Strike: 10% chance for bonus damage on hit
# This is called as part of lifesteal check since both trigger on hit

# Only for warriors level 15+
execute unless score @s rpg.class matches 1 run return 0
execute unless score @s rpg.level matches 15.. run return 0

# 10% chance — apply Strength for 1 tick (instant burst)
execute if predicate hardcore_rpg:double_strike at @s run effect give @s minecraft:strength 1 2 true
execute if predicate hardcore_rpg:double_strike at @s run playsound minecraft:entity.player.attack.crit player @s
execute if predicate hardcore_rpg:double_strike at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.1 10

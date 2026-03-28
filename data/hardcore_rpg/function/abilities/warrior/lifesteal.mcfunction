# Lifesteal: chance to heal on melee hit
# Called via hurt_entity advancement — revoke it immediately
advancement revoke @s only hardcore_rpg:hurt_entity

# Only for warriors level 10+
execute unless score @s rpg.class matches 1 run return 0
execute unless score @s rpg.level matches 10.. run return 0

# Also check double strike while we're here (both trigger on hit)
execute if score @s rpg.level matches 15.. if predicate hardcore_rpg:double_strike run effect give @s minecraft:strength 1 2 true
execute if score @s rpg.level matches 15.. if predicate hardcore_rpg:double_strike at @s run particle minecraft:crit ~ ~1 ~ 0.5 0.5 0.5 0.1 10

# Level 10-24: 15% chance, Level 25+: 25% chance
execute if score @s rpg.level matches 10..24 if predicate hardcore_rpg:lifesteal_chance run effect give @s minecraft:instant_health 1 0 true
execute if score @s rpg.level matches 10..24 if predicate hardcore_rpg:lifesteal_chance at @s run particle minecraft:heart ~ ~2 ~ 0.3 0.2 0.3 0 2
execute if score @s rpg.level matches 25.. if predicate hardcore_rpg:lifesteal_chance_25 run effect give @s minecraft:instant_health 1 0 true
execute if score @s rpg.level matches 25.. if predicate hardcore_rpg:lifesteal_chance_25 at @s run particle minecraft:heart ~ ~2 ~ 0.3 0.2 0.3 0 2

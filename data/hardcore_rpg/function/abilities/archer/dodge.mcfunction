# Dodge: chance to negate damage
# This is triggered via entity_hurt_player advancement
# Level 15-24: 15% chance, Level 25+: 25% chance

advancement revoke @s only hardcore_rpg:dodge_trigger

execute unless score @s rpg.class matches 2 run return 0
execute unless score @s rpg.level matches 15.. run return 0

# Apply instant health to "negate" the damage
execute if score @s rpg.level matches 15..24 if predicate hardcore_rpg:dodge_chance run effect give @s minecraft:instant_health 1 0 true
execute if score @s rpg.level matches 25.. if predicate hardcore_rpg:dodge_chance_25 run effect give @s minecraft:instant_health 1 0 true

# Effects
execute if score @s rpg.level matches 15..24 if predicate hardcore_rpg:dodge_chance at @s run title @s actionbar {"text":"✧ Unik!","color":"green"}
execute if score @s rpg.level matches 25.. if predicate hardcore_rpg:dodge_chance_25 at @s run title @s actionbar {"text":"✧ Unik!","color":"green"}

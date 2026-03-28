# Assign random abilities to mobs based on nearest player level
# Called during scaling (after apply_scale)
# Executed as the mob, at the mob

# L10+: 10% chance — Teleporter (short teleport when hit)
execute if entity @p[scores={rpg.level=10..},distance=..48] if predicate hardcore_rpg:mob_ability_10 run tag @s add hrpg.ability_teleport
execute if entity @s[tag=hrpg.ability_teleport] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"⟐","color":"light_purple","italic":false,"extra":[" ",{"text":"Teleporter","color":"dark_purple"}]}'}

# L15+: 10% chance — Invisible (goes invis for 3s when hurt)
execute unless entity @s[tag=hrpg.ability_teleport] if entity @p[scores={rpg.level=15..},distance=..48] if predicate hardcore_rpg:mob_ability_10 run tag @s add hrpg.ability_invis
execute if entity @s[tag=hrpg.ability_invis] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"👁","color":"gray","italic":false,"extra":[" ",{"text":"Phantom","color":"dark_gray"}]}'}

# L20+: 10% chance — Reinforcer (summons ally when first hit)
execute unless entity @s[tag=hrpg.ability_teleport] unless entity @s[tag=hrpg.ability_invis] if entity @p[scores={rpg.level=20..},distance=..48] if predicate hardcore_rpg:mob_ability_10 run tag @s add hrpg.ability_reinforce
execute if entity @s[tag=hrpg.ability_reinforce] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"⚑","color":"yellow","italic":false,"extra":[" ",{"text":"Commander","color":"gold"}]}'}

# L25+: 5% chance — Exploder (explodes on death)
execute unless entity @s[tag=hrpg.ability_teleport] unless entity @s[tag=hrpg.ability_invis] unless entity @s[tag=hrpg.ability_reinforce] if entity @p[scores={rpg.level=25..},distance=..48] if predicate hardcore_rpg:mob_ability_5 run tag @s add hrpg.ability_explode
execute if entity @s[tag=hrpg.ability_explode] run data merge entity @s {CustomNameVisible:1b,CustomName:'{"text":"💥","color":"red","italic":false,"extra":[" ",{"text":"Volatile","color":"dark_red"}]}'}

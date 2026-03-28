# Apply scaling to a single mob based on nearest player level
# Executed as the mob, at the mob

tag @s add hrpg.scaled

# L5-9: +2 HP (22 total for a zombie with base 20)
execute if entity @p[scores={rpg.level=5..9},distance=..48] run attribute @s minecraft:max_health base set 22
execute if entity @p[scores={rpg.level=5..9},distance=..48] run data merge entity @s {Health:22f}

# L10-14: +4 HP
execute if entity @p[scores={rpg.level=10..14},distance=..48] run attribute @s minecraft:max_health base set 24
execute if entity @p[scores={rpg.level=10..14},distance=..48] run data merge entity @s {Health:24f}

# L15-19: +6 HP
execute if entity @p[scores={rpg.level=15..19},distance=..48] run attribute @s minecraft:max_health base set 26
execute if entity @p[scores={rpg.level=15..19},distance=..48] run data merge entity @s {Health:26f}

# L20-24: +8 HP, Speed I
execute if entity @p[scores={rpg.level=20..24},distance=..48] run attribute @s minecraft:max_health base set 28
execute if entity @p[scores={rpg.level=20..24},distance=..48] run data merge entity @s {Health:28f}
execute if entity @p[scores={rpg.level=20..24},distance=..48] run effect give @s minecraft:speed 999999 0 true

# L25-29: +10 HP
execute if entity @p[scores={rpg.level=25..29},distance=..48] run attribute @s minecraft:max_health base set 30
execute if entity @p[scores={rpg.level=25..29},distance=..48] run data merge entity @s {Health:30f}

# L30: +12 HP, Strength I, Speed I
execute if entity @p[scores={rpg.level=30..},distance=..48] run attribute @s minecraft:max_health base set 32
execute if entity @p[scores={rpg.level=30..},distance=..48] run data merge entity @s {Health:32f}
execute if entity @p[scores={rpg.level=30..},distance=..48] run effect give @s minecraft:speed 999999 0 true
execute if entity @p[scores={rpg.level=30..},distance=..48] run effect give @s minecraft:strength 999999 0 true

# Assign special abilities based on player level
function hardcore_rpg:mobs/assign_abilities

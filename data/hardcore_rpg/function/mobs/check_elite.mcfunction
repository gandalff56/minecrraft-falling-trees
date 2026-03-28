# Check if newly spawned mob should become Elite or Mini-Boss
# Called when mob_age reaches 2 (just spawned, after 1 tick)
# Executed as the mob, at the mob

# Already processed?
execute if entity @s[tag=hrpg.elite_checked] run return 0
tag @s add hrpg.elite_checked

# 2% chance: Mini-Boss (checked first, rarer)
execute if predicate hardcore_rpg:mini_boss_chance run function hardcore_rpg:mobs/make_mini_boss
execute if entity @s[tag=hrpg.mini_boss] run return 0

# 8% chance: Elite Mob
execute if predicate hardcore_rpg:elite_chance run function hardcore_rpg:mobs/make_elite

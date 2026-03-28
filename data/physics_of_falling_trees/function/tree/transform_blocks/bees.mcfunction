
data modify entity @s {} merge from storage midwut:main temp.components."minecraft:bees"[-1].entity_data
data modify entity @s AngerTime set value 1000
data modify entity @s AngryAt set from entity @p[distance=..32,gamemode=!creative,gamemode=!spectator] UUID

data remove storage midwut:main temp.components."minecraft:bees"[-1]
execute if data storage midwut:main temp.components."minecraft:bees"[0] summon minecraft:bee run function physics_of_falling_trees:tree/transform_blocks/bees

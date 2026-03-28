tag @s remove poft.summoned

scoreboard players operation #x_ main_score = #x main_score
scoreboard players operation #z_ main_score = #z main_score
execute if score #x_ main_score matches ..-1 run scoreboard players operation #x_ main_score *= #-1 const
execute if score #z_ main_score matches ..-1 run scoreboard players operation #z_ main_score *= #-1 const

scoreboard players set #y main_score -1
execute if score #x main_score matches -1..1 if score #z main_score matches -1..1 run function physics_of_falling_trees:tree/transform_blocks/main_block_facing
execute if score #y main_score matches -1 run function physics_of_falling_trees:tree/transform_blocks/main_block_facing2

#scoreboard players set #y main_score 1


scoreboard players set #x_ main_score -1
scoreboard players set #z_ main_score -1

execute if score #y main_score matches 4 run scoreboard players set #y main_score 0
execute if entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=!poft.main_block,limit=1] run function physics_of_falling_trees:tree/transform_blocks/main_block_sides_base
execute unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=!poft.main_block,limit=1] run function physics_of_falling_trees:tree/transform_blocks/main_block_sides

playsound minecraft:block.stem.hit ambient @a[distance=..48] ~ ~ ~ 3 0
playsound minecraft:block.stem.hit ambient @a[distance=..48] ~ ~ ~ 3 0
execute unless score #y main_score matches 1..2 run function physics_of_falling_trees:tree/transform_blocks/offet_nth_est/z_


scoreboard players operation @s poft.id_block = #id poft.id_block

#data modify storage midwut:main 2 set from entity @s Tags


scoreboard players add #id poft.id_block 1

execute positioned as @s run function physics_of_falling_trees:tree/transform_blocks/item_pos

scoreboard players set #x main_score 0
scoreboard players set #z main_score 0


scoreboard players set #y_max main_score 0

scoreboard players set #x_max main_score 0
scoreboard players set #x_min main_score 0
scoreboard players set #z_max main_score 0
scoreboard players set #z_min main_score 0

scoreboard players operation #x3 main_score = #x2 main_score
scoreboard players operation #z3 main_score = #z2 main_score
scoreboard players set #x_min_base main_score 0
scoreboard players set #x_max_base main_score 0
scoreboard players set #z_min_base main_score 0
scoreboard players set #z_max_base main_score 0

scoreboard players set #c main_score 0

data modify storage midwut:main Data set value {}
execute if entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=!poft.main_block,limit=1] run function physics_of_falling_trees:tree/transform_blocks/base_blocks/main
execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=!poft.main_block,limit=800] positioned as @s run function physics_of_falling_trees:tree/transform_blocks/pre_offsets
scoreboard players operation #test main_score = #x_min main_score
scoreboard players operation #test main_score *= #-1 const
scoreboard players operation #test main_score += #x_max main_score
scoreboard players operation #test2 main_score = #z_min main_score
scoreboard players operation #test2 main_score *= #-1 const
scoreboard players operation #test2 main_score += #z_max main_score
scoreboard players operation #test main_score > #test2 main_score
scoreboard players operation #test main_score *= #10 const
scoreboard players operation #test main_score /= #y_max main_score


execute if predicate physics_of_falling_trees:dont_tree run return run kill @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned]
function physics_of_falling_trees:tree/transform_blocks/pre2




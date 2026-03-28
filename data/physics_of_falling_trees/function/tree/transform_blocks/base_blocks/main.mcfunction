
execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=!poft.main_block,limit=400] positioned as @s run function physics_of_falling_trees:tree/transform_blocks/base_block
tag @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=!poft.main_block,limit=1,predicate=physics_of_falling_trees:base/s] add poft.south
tag @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=!poft.main_block,limit=1,predicate=physics_of_falling_trees:base/w] add poft.west
tag @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=!poft.main_block,limit=1,predicate=physics_of_falling_trees:base/n] add poft.north
tag @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=!poft.main_block,limit=1,predicate=physics_of_falling_trees:base/e] add poft.east
scoreboard players operation #x_base main_score = #x_max_base main_score
scoreboard players operation #x_base main_score += #x_min_base main_score
scoreboard players operation #x_base main_score /= #2 const
scoreboard players operation #z_base main_score = #z_max_base main_score
scoreboard players operation #z_base main_score += #z_min_base main_score
scoreboard players operation #z_base main_score /= #2 const
scoreboard players operation #x2 main_score += #x_base main_score
scoreboard players operation #z2 main_score += #z_base main_score
scoreboard players operation #x_max_base main_score -= #x_base main_score
scoreboard players operation #x_min_base main_score -= #x_base main_score
scoreboard players operation #z_max_base main_score -= #z_base main_score
scoreboard players operation #z_min_base main_score -= #z_base main_score

execute if score #y main_score matches 0 run function physics_of_falling_trees:tree/transform_blocks/side_fall/south
execute if score #y main_score matches 1 run function physics_of_falling_trees:tree/transform_blocks/side_fall/west
execute if score #y main_score matches 2 run function physics_of_falling_trees:tree/transform_blocks/side_fall/north
execute if score #y main_score matches 3 run function physics_of_falling_trees:tree/transform_blocks/side_fall/east
execute if score #x_ main_score matches -1 run function physics_of_falling_trees:tree/transform_blocks/main_block_data_pos
execute if score #z_ main_score matches -1 run function physics_of_falling_trees:tree/transform_blocks/main_block_data_pos
scoreboard players operation @s poft.offset_x -= #x2 main_score
scoreboard players operation @s poft.offset_z -= #z2 main_score

execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=!poft.main_block,limit=800] positioned as @s run function physics_of_falling_trees:tree/transform_blocks/offet_nth_est/block_remove_tag_base

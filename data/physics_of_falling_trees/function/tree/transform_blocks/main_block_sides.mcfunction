execute if score #y main_score matches 0 run tag @s add poft.south
execute if score #y main_score matches 1 run tag @s add poft.west
execute if score #y main_score matches 2 run tag @s add poft.north
execute if score #y main_score matches 3 run tag @s add poft.east
#execute if score #x_ main_score matches -1 run function physics_of_falling_trees:tree/transform_blocks/main_block_data_pos
#execute if score #z_ main_score matches -1 run function physics_of_falling_trees:tree/transform_blocks/main_block_data_pos

scoreboard players operation @s poft.main_x = #x2 main_score
scoreboard players operation @s poft.main_y = #y2 main_score
scoreboard players operation @s poft.main_z = #z2 main_score

execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=!poft.main_block,limit=800] positioned as @s run function physics_of_falling_trees:tree/transform_blocks/offet_nth_est/block_remove_tag

scoreboard players operation @s poft.count_no_deform = #c main_score
scoreboard players operation @s poft.count_no_deform *= #10 const
scoreboard players operation @s poft.count_no_deform /= #5 const

scoreboard players operation @s poft.count = #c main_score
scoreboard players operation @s poft.count *= #10 const

execute unless score #y main_score matches 1..2 run function physics_of_falling_trees:tree/transform_blocks/offet_nth_est/z

scoreboard players operation @s poft.offset_x -= #x_ main_score
scoreboard players operation @s poft.offset_z -= #z_ main_score

tag @s remove poft.summoned
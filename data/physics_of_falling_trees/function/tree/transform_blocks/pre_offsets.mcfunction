
data modify storage midwut:main Data.Pos set from entity @s Pos
execute store result score @s poft.offset_x run data get storage midwut:main Data.Pos[0] 1000
execute store result score @s poft.offset_y run data get storage midwut:main Data.Pos[1] 1000
execute store result score @s poft.offset_z run data get storage midwut:main Data.Pos[2] 1000

scoreboard players operation @s poft.offset_x -= #x2 main_score
scoreboard players operation @s poft.offset_y -= #y2 main_score
scoreboard players operation @s poft.offset_z -= #z2 main_score

execute if block ~ ~ ~ #physics_of_falling_trees:deform_blocks run function physics_of_falling_trees:tree/transform_blocks/deform_setup

execute if score @s poft.offset_x > #x_max_base main_score run function physics_of_falling_trees:tree/transform_blocks/offsets/x
execute if score @s poft.offset_x < #x_min_base main_score run function physics_of_falling_trees:tree/transform_blocks/offsets/x_
execute if score @s poft.offset_z > #z_max_base main_score run function physics_of_falling_trees:tree/transform_blocks/offsets/z
execute if score @s poft.offset_z < #z_min_base main_score run function physics_of_falling_trees:tree/transform_blocks/offsets/z_



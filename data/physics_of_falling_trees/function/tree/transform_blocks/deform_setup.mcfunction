tag @s add poft.deform_block
execute if score @s poft.offset_y > #y_max main_score run scoreboard players operation #y_max main_score = @s poft.offset_y
scoreboard players add #c main_score 1


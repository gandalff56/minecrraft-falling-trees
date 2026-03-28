
scoreboard players operation #offset.pos_z main_score = @s poft.offset_z
scoreboard players operation #offset_x_ main_score = @s poft.offset_x
scoreboard players operation #offset_y_ main_score = @s poft.offset_y



scoreboard players operation #offset_z_ main_score = #offset.pos_z main_score
scoreboard players operation #offset_z_ main_score *= #cos main_score
scoreboard players operation #test main_score = #offset_y_ main_score
scoreboard players operation #test main_score *= #sin main_score
scoreboard players operation #offset_z_ main_score -= #test main_score
scoreboard players operation #offset_z_ main_score /= #10000 const

scoreboard players operation #offset_y_ main_score *= #cos main_score
scoreboard players operation #offset.pos_z main_score *= #sin main_score
scoreboard players operation #offset_y_ main_score += #offset.pos_z main_score
scoreboard players operation #offset_y_ main_score /= #10000 const


execute store result storage midwut:main Data.Pos[0] double 0.001 run scoreboard players operation #offset_x_ main_score += #x_ main_score
execute store result storage midwut:main Data.Pos[1] double 0.001 run scoreboard players operation #offset_y_ main_score += #y_ main_score
execute store result storage midwut:main Data.Pos[2] double 0.001 run scoreboard players operation #offset_z_ main_score += #z_ main_score
data modify entity @s {} merge from storage midwut:main Data
execute positioned as @s unless loaded ~ ~ ~ run forceload add ~ ~

execute if score #falled main_score matches 0 run function physics_of_falling_trees:tree/falling/z/north/blocks



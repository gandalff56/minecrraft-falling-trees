scoreboard players remove @s poft.offset_x 500
scoreboard players add @s poft.offset_y 500
scoreboard players remove @s poft.offset_z 500


scoreboard players operation #offset_y_ main_score = @s poft.offset_y
scoreboard players operation #offset_y_ main_score *= #OUT:cos math
scoreboard players operation #test main_score = @s poft.offset_x
scoreboard players operation #test main_score *= #OUT:sin math
scoreboard players operation #offset_y_ main_score += #test main_score
scoreboard players operation #offset_y_ main_score /= #10000 const

scoreboard players operation @s poft.offset_x *= #OUT:cos math
scoreboard players operation @s poft.offset_y *= #OUT:sin math
scoreboard players operation @s poft.offset_x -= @s poft.offset_y
scoreboard players operation @s poft.offset_x /= #10000 const

execute store result storage midwut:main Data.Pos[0] double 0.001 run scoreboard players operation @s poft.offset_x += #x_ main_score
execute store result storage midwut:main Data.Pos[1] double 0.001 run scoreboard players operation #offset_y_ main_score += #y_ main_score
execute store result storage midwut:main Data.Pos[2] double 0.001 run scoreboard players operation @s poft.offset_z += #z_ main_score
data modify entity @s Pos set from storage midwut:main Data.Pos



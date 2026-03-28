
function physics_of_falling_trees:math/cos
function physics_of_falling_trees:math/sin
execute if score #side main_score matches 1 run scoreboard players operation #OUT:sin math *= #-1 const

scoreboard players operation #x_ main_score = @s poft.main_x
scoreboard players operation #y_ main_score = @s poft.main_y
scoreboard players operation #z_ main_score = @s poft.main_z

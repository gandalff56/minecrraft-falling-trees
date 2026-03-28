data modify storage midwut:main Data set value {Pos:[0d,0d,0d],transformation:{left_rotation:[0.0f,0.0f,0.0f,1.0f]},start_interpolation:0}

execute store result storage midwut:main Data.transformation.left_rotation[0] float 0.0001 run scoreboard players get #OUT:sin math
execute store result storage midwut:main Data.transformation.left_rotation[3] float 0.0001 run scoreboard players get #OUT:cos math

scoreboard players operation #IN:angle math *= #2 const
function physics_of_falling_trees:math/cos
function physics_of_falling_trees:math/sin
scoreboard players operation #sin main_score = #OUT:sin math
scoreboard players operation #cos main_score = #OUT:cos math

scoreboard players operation #x_ main_score = @s poft.main_x
scoreboard players operation #y_ main_score = @s poft.main_y
scoreboard players operation #z_ main_score = @s poft.main_z

scoreboard players set #side main_score 0
data modify entity @s start_interpolation set value 0
data modify entity @s transformation.left_rotation set from storage midwut:main Data.transformation.left_rotation

execute as @e[type=#physics_of_falling_trees:tree_displays,limit=800,tag=!poft.ignor_offset,tag=!poft.main_block,tag=poft.block,predicate=physics_of_falling_trees:same_ids] run function physics_of_falling_trees:tree/falling/z/south/offset

execute if score @s[tag=!poft.moved] poft.angle matches 90001.. run function physics_of_falling_trees:tree/falling/z/south/tp
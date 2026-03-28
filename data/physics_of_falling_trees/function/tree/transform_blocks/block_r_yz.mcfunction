
scoreboard players operation IN:arctg2.Y math = @s poft.offset_z
scoreboard players operation IN:arctg2.X math = @s poft.offset_y

function physics_of_falling_trees:math/arctg2
scoreboard players operation #IN:angle math = #OUT:arctg2 math
function physics_of_falling_trees:math/cos
scoreboard players operation @s poft.r_block = @s poft.offset_y
scoreboard players operation @s poft.r_block *= #10000 const
scoreboard players operation @s poft.r_block /= #OUT:cos math

tag @s add poft.leaves_falled
scoreboard players operation @s poft.angle -= @s poft.add_angle

scoreboard players operation #IN:angle math = @s poft.angle
scoreboard players operation #IN:angle math /= #2 const
function physics_of_falling_trees:math/cos
function physics_of_falling_trees:math/sin

execute if entity @s[tag=poft.south] run function physics_of_falling_trees:tree/falling/z/south/main
execute if entity @s[tag=poft.west] run function physics_of_falling_trees:tree/falling/x/west/main
execute if entity @s[tag=poft.north] run function physics_of_falling_trees:tree/falling/z/north/main
execute if entity @s[tag=poft.east] run function physics_of_falling_trees:tree/falling/x/east/main

execute if entity @s[tag=poft.south] as @e[type=#physics_of_falling_trees:tree_displays,limit=500,tag=!poft.main_block,tag=poft.block,tag=poft.leaves_falled,predicate=physics_of_falling_trees:same_ids] positioned as @s run function physics_of_falling_trees:tree/falling/leaves/end_pos_z
execute if entity @s[tag=poft.west] as @e[type=#physics_of_falling_trees:tree_displays,limit=500,tag=!poft.main_block,tag=poft.block,tag=poft.leaves_falled,predicate=physics_of_falling_trees:same_ids] positioned as @s run function physics_of_falling_trees:tree/falling/leaves/end_pos_x_
execute if entity @s[tag=poft.north] as @e[type=#physics_of_falling_trees:tree_displays,limit=500,tag=!poft.main_block,tag=poft.block,tag=poft.leaves_falled,predicate=physics_of_falling_trees:same_ids] positioned as @s run function physics_of_falling_trees:tree/falling/leaves/end_pos_z_
execute if entity @s[tag=poft.east] as @e[type=#physics_of_falling_trees:tree_displays,limit=500,tag=!poft.main_block,tag=poft.block,tag=poft.leaves_falled,predicate=physics_of_falling_trees:same_ids] positioned as @s run function physics_of_falling_trees:tree/falling/leaves/end_pos_x


scoreboard players set @s poft.add_angle 0
scoreboard players set @s[scores={poft.timer=..10}] poft.add_angle 29
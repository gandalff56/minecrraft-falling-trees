
scoreboard players operation #id_test poft.id_block = @s poft.id_block
scoreboard players operation #IN:angle math = @s poft.angle

execute if entity @s[tag=poft.south] run scoreboard players set #side main_score 0
execute if entity @s[tag=poft.north] run scoreboard players set #side main_score 1
execute if entity @s[tag=poft.west] run scoreboard players set #side main_score 2
execute if entity @s[tag=poft.east] run scoreboard players set #side main_score 3


execute if score #side main_score matches 0..1 run function physics_of_falling_trees:tree/falled/offset_z/pre
execute if score #side main_score matches 2..3 run function physics_of_falling_trees:tree/falled/offset_x/pre

execute as @e[type=#physics_of_falling_trees:tree_displays,tag=!poft.main_block,tag=poft.block,tag=!poft.deform_block,predicate=physics_of_falling_trees:same_ids] run function physics_of_falling_trees:tree/falled/block
execute as @e[type=#physics_of_falling_trees:tree_displays,tag=!poft.main_block,tag=poft.block,tag=poft.deform_block,predicate=physics_of_falling_trees:same_ids] run function physics_of_falling_trees:tree/falled/block_deform

function physics_of_falling_trees:tree/falled/block

forceload remove ~-128 ~-128 ~128 ~128

kill

function physics_of_falling_trees:kill_ghost_blocks
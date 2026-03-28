execute positioned as @s run function physics_of_falling_trees:tree/transform_blocks/main
tag @s add poft.second_block

data modify storage midwut:main Data set value {Tags:["poft.block","poft.main_block","poft.mined_block","poft.summoned"],teleport_duration:1,interpolation_duration:1,brightness:{block:0,sky:15}}
data modify storage midwut:main Data.block_state set from entity @s block_state
data modify storage midwut:main Data.block_state.Name set from storage midwut:main temp2
execute positioned ~ ~-1 ~ summon block_display run function physics_of_falling_trees:tree/transform_blocks/main_block_pos
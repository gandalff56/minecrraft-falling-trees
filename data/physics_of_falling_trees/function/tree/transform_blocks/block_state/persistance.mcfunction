function physics_of_falling_trees:tree/transform_blocks/block_state/distance
execute if block ~ ~ ~ #physics_of_falling_trees:leaves[persistent=true] run return run data modify storage midwut:main Data.block_state.Properties.persistent set value "true"
execute if block ~ ~ ~ #physics_of_falling_trees:leaves[persistent=false] run return run data modify storage midwut:main Data.block_state.Properties.persistent set value "false"

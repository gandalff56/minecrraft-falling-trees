function physics_of_falling_trees:tree/transform_blocks/block_state/axis
function physics_of_falling_trees:tree/transform_blocks/block_state/facing
execute if block ~ ~ ~ #physics_of_falling_trees:leaves run function physics_of_falling_trees:tree/transform_blocks/block_state/persistance
execute if block ~ ~ ~ minecraft:creaking_heart run function physics_of_falling_trees:tree/transform_blocks/block_state/for_creaking_heart

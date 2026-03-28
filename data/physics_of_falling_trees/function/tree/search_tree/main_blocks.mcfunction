execute unless block ~ ~ ~ #physics_of_falling_trees:leaves unless block ~ ~ ~ #physics_of_falling_trees:nether_leaves unless block ~ ~ ~ #physics_of_falling_trees:block/creaking_heart[natural=false] run function physics_of_falling_trees:tree/search_tree/test_blocks
execute if block ~ ~ ~ #physics_of_falling_trees:nether_leaves run function physics_of_falling_trees:tree/search_tree/test_blocks/nether_leaves/main
execute if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=1] run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves1/main
execute if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=2] run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves2/main
execute if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=3] run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves3/main
execute if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=4] run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves4/main
execute if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=5] run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves5/main
execute if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=6] run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves6/main


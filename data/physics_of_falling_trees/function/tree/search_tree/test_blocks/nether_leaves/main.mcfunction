execute positioned ~ ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:nether_leaves unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~1 ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:nether_leaves unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~-1 ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:nether_leaves unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~ ~1 ~1 if block ~ ~ ~ #physics_of_falling_trees:nether_leaves unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~ ~1 ~-1 if block ~ ~ ~ #physics_of_falling_trees:nether_leaves unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main

execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/test_blocks/nether_leaves/main1
execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/test_blocks/nether_leaves/main2
execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/test_blocks/nether_leaves/main3

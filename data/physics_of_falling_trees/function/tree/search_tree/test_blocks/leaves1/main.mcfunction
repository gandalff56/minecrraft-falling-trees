
execute positioned ~ ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=2] unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~1 ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=2] unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~-1 ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=2] unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~ ~1 ~1 if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=2] unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~ ~1 ~-1 if block ~ ~ ~ #physics_of_falling_trees:leaves[distance=2] unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main

execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves1/main1
execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves1/main2
execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/test_blocks/leaves1/main3

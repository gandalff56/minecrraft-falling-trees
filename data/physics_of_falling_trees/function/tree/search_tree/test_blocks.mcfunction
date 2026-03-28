execute positioned ~ ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:tree unless predicate physics_of_falling_trees:check_log_to_wart unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~1 ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:tree unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~-1 ~1 ~ if block ~ ~ ~ #physics_of_falling_trees:tree unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~ ~1 ~1 if block ~ ~ ~ #physics_of_falling_trees:tree unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main
execute unless score #c main_score matches 800 positioned ~ ~1 ~-1 if block ~ ~ ~ #physics_of_falling_trees:tree unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.summoned,limit=1,distance=..0.1] run function physics_of_falling_trees:tree/search_tree/main

execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/main_blocks1
execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/main_blocks2
execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/main_blocks3

execute at @a[predicate=physics_of_falling_trees:sneak_type] run function physics_of_falling_trees:tick_at_player
execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.main_block] at @s run function physics_of_falling_trees:tree/falling/main
#execute at @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block] run particle dust{color:[1f,0f,0f],scale:0.5f}



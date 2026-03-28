tag @s remove poft.main_block

execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.base_block,tag=poft.west,tag=!poft.main_block,limit=1] positioned as @s run function physics_of_falling_trees:tree/transform_blocks/side_fall/west_tags

#x2 main_score
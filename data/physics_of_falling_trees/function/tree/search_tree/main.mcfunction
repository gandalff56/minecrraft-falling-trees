scoreboard players add #c main_score 1
#particle dust{color:[1f,0f,1f],scale:2f}

execute unless block ~ ~ ~ #physics_of_falling_trees:stained_blocks unless block ~ ~ ~ #physics_of_falling_trees:nether_logs run summon block_display ~ ~ ~ {Tags:["poft.block","poft.summoned"],teleport_duration:1,interpolation_duration:1,brightness:{block:0,sky:15}}
execute unless block ~ ~ ~ #physics_of_falling_trees:stained_blocks if block ~ ~ ~ #physics_of_falling_trees:nether_logs run summon block_display ~ ~ ~ {Tags:["poft.block","poft.summoned","poft.nether_logs_block"],teleport_duration:1,interpolation_duration:1,brightness:{block:0,sky:15}}
execute if block ~ ~ ~ #physics_of_falling_trees:stained_blocks run summon item_display ~ ~ ~ {Tags:["poft.block","poft.summoned"],item:{id:"minecraft:oak_leaves",components:{item_model:"physical_falling_trees:leaves",custom_model_data:{strings:["0"],colors:[0]}}},transformation:{translation:[0.0f,0.0f,0.0f],left_rotation:[0f,0f,0f,1f],scale:[1f,1f,1f],right_rotation:[0f,1f,0f,0f]},interpolation_duration:1,brightness:{block:0,sky:15}}

execute if score #c main_score matches ..50 if entity @s[tag=!poft.really_tree] run function physics_of_falling_trees:tree/search_tree/test_leaves
execute if entity @s[tag=poft.really_tree] if block ~ ~ ~ #physics_of_falling_trees:nether_leaves unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.nether_logs_block,tag=poft.summoned,limit=1,distance=..5] run return 1

execute unless score #c main_score matches 800 run function physics_of_falling_trees:tree/search_tree/main_blocks

scoreboard players add #c main_score 1
summon block_display ~ ~ ~ {Tags:["poft.block","poft.summoned","poft.base_block"],teleport_duration:1,interpolation_duration:1,brightness:{block:0,sky:15}}

execute unless score #c main_score matches 100 run function physics_of_falling_trees:tree/search_tree/horizontal/main_blocks





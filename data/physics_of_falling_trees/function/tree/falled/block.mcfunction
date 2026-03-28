
execute if entity @s[tag=poft.mined_block] run return run kill

data modify storage midwut:main Data set from entity @s


execute if score #side main_score matches 0 run function physics_of_falling_trees:tree/falled/offset_z/main
execute if score #side main_score matches 1 run function physics_of_falling_trees:tree/falled/offset_z/main2
execute if score #side main_score matches 2 run function physics_of_falling_trees:tree/falled/offset_x/main2
execute if score #side main_score matches 3 run function physics_of_falling_trees:tree/falled/offset_x/main

#execute positioned as @s if entity @s[tag=poft.main_block] run particle dust{color:[0f,0f,1f],scale:4f} ~ ~ ~

execute positioned as @s run function physics_of_falling_trees:tree/falled/first_check

kill
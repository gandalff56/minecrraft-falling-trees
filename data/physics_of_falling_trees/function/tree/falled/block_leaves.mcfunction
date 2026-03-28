
execute if score #side main_score matches 0 run function physics_of_falling_trees:tree/falled/offset_z/main
execute if score #side main_score matches 1 run function physics_of_falling_trees:tree/falled/offset_z/main2
execute if score #side main_score matches 2 run function physics_of_falling_trees:tree/falled/offset_x/main
execute if score #side main_score matches 3 run function physics_of_falling_trees:tree/falled/offset_x/main2

execute positioned as @s if block ~ ~ ~ #physics_of_falling_trees:air unless block ~ ~ ~ water run function physics_of_falling_trees:tree/falled/block/leaves
execute positioned as @s if block ~ ~ ~ #physics_of_falling_trees:air if block ~ ~ ~ water run function physics_of_falling_trees:tree/falled/block/leaves_water

kill
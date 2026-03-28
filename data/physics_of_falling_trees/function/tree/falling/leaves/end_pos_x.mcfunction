scoreboard players set #raycast main_score 3
execute unless block ~ ~ ~ #physics_of_falling_trees:air align y run function physics_of_falling_trees:tree/falling/leaves/loop
execute if score #raycast main_score matches 0 align x run tp ~-0.1 ~ ~
execute if score #raycast main_score matches 1 align y run tp ~ ~2 ~
execute if score #raycast main_score matches 2 align y run tp ~ ~1 ~
execute if score #raycast main_score matches 3 unless block ~ ~-1 ~ #physics_of_falling_trees:air align y run tp ~ ~ ~

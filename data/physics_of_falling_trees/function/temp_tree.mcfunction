#> physics_of_falling_trees:temp_tree
$scoreboard players set #temp main_score $(state)
execute unless score #temp main_score matches 0..6 run return run tellraw @s [{"text":"0 - Just a trunk and leaves\n1 - Trunk, leaves and a cross of branches\n2 - Trunk, leaves, a cross of branches and branch to south\n3 - Trunk, leaves, a cross of branches and branch to west\n4 - Trunk, leaves, a cross of branches and branch to north\n5 - Trunk, leaves, a cross of branches and branch to east\n6 - Imitation of a sick curved trunk"}]

fill ~ ~ ~ ~ ~3 ~ oak_log[axis=y]
fill ~ ~4 ~ ~ ~6 ~ oak_leaves[persistent=false]
execute if score #temp main_score matches 0 run return 1

execute if score #temp main_score matches 6 run function physics_of_falling_trees:temp_tree/4
fill ~ ~3 ~1 ~ ~3 ~-1 oak_log[axis=z]
fill ~1 ~3 ~ ~-1 ~3 ~ oak_log[axis=x]
execute if score #temp main_score matches 2 run return run fill ~ ~3 ~2 ~ ~3 ~3 oak_log[axis=z]
execute if score #temp main_score matches 3 run return run fill ~-2 ~3 ~ ~-3 ~3 ~ oak_log[axis=x]
execute if score #temp main_score matches 4 run return run fill ~ ~3 ~-2 ~ ~3 ~-3 oak_log[axis=z]
execute if score #temp main_score matches 5 run return run fill ~2 ~3 ~ ~3 ~3 ~ oak_log[axis=x]
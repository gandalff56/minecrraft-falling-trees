#> physics_of_falling_trees:tree/transform_blocks/end_model/1

execute if block ~ ~ ~ minecraft:birch_leaves run data modify entity @s block_state.Name set value "minecraft:birch_leaves"
execute if block ~ ~ ~ minecraft:birch_log run data modify entity @s block_state.Name set value "minecraft:birch_log"
execute if block ~ ~ ~ minecraft:birch_wood run data modify entity @s block_state.Name set value "minecraft:birch_wood"
execute if block ~ ~ ~ minecraft:stripped_birch_log run data modify entity @s block_state.Name set value "minecraft:stripped_birch_log"
execute if block ~ ~ ~ minecraft:stripped_birch_wood run data modify entity @s block_state.Name set value "minecraft:stripped_birch_wood"

execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/transform_blocks/end_model/2

#> physics_of_falling_trees:tree/transform_blocks/end_model/2

execute if block ~ ~ ~ minecraft:acacia_leaves run data modify entity @s block_state.Name set value "minecraft:acacia_leaves"
execute if block ~ ~ ~ minecraft:acacia_log run data modify entity @s block_state.Name set value "minecraft:acacia_log"
execute if block ~ ~ ~ minecraft:acacia_wood run data modify entity @s block_state.Name set value "minecraft:acacia_wood"
execute if block ~ ~ ~ minecraft:stripped_acacia_log run data modify entity @s block_state.Name set value "minecraft:stripped_acacia_log"
execute if block ~ ~ ~ minecraft:stripped_acacia_wood run data modify entity @s block_state.Name set value "minecraft:stripped_acacia_wood"

execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/transform_blocks/end_model/3

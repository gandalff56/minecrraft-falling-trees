
execute if block ~ ~ ~ minecraft:dark_oak_leaves run data modify entity @s block_state.Name set value "minecraft:dark_oak_leaves"
execute if block ~ ~ ~ minecraft:dark_oak_log run data modify entity @s block_state.Name set value "minecraft:dark_oak_log"
execute if block ~ ~ ~ minecraft:dark_oak_wood run data modify entity @s block_state.Name set value "minecraft:dark_oak_wood"
execute if block ~ ~ ~ minecraft:stripped_dark_oak_log run data modify entity @s block_state.Name set value "minecraft:stripped_dark_oak_log"
execute if block ~ ~ ~ minecraft:stripped_dark_oak_wood run data modify entity @s block_state.Name set value "minecraft:stripped_dark_oak_wood"

execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/transform_blocks/end_model/6

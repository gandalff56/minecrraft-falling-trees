
execute if block ~ ~ ~ minecraft:mangrove_leaves run data modify entity @s block_state.Name set value "minecraft:mangrove_leaves"
execute if block ~ ~ ~ minecraft:mangrove_log run data modify entity @s block_state.Name set value "minecraft:mangrove_log"
execute if block ~ ~ ~ minecraft:mangrove_wood run data modify entity @s block_state.Name set value "minecraft:mangrove_wood"
execute if block ~ ~ ~ minecraft:stripped_mangrove_log run data modify entity @s block_state.Name set value "minecraft:stripped_mangrove_log"
execute if block ~ ~ ~ minecraft:stripped_mangrove_wood run data modify entity @s block_state.Name set value "minecraft:stripped_mangrove_wood"

#execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/transform_blocks/end_model/7


execute if block ~ ~ ~ minecraft:jungle_leaves run data modify entity @s block_state.Name set value "minecraft:jungle_leaves"
execute if block ~ ~ ~ minecraft:jungle_log run data modify entity @s block_state.Name set value "minecraft:jungle_log"
execute if block ~ ~ ~ minecraft:jungle_wood run data modify entity @s block_state.Name set value "minecraft:jungle_wood"
execute if block ~ ~ ~ minecraft:stripped_jungle_log run data modify entity @s block_state.Name set value "minecraft:stripped_jungle_log"
execute if block ~ ~ ~ minecraft:stripped_jungle_wood run data modify entity @s block_state.Name set value "minecraft:stripped_jungle_wood"

#execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/transform_blocks/end_model/4



execute if block ~ ~ ~ minecraft:spruce_leaves run data modify entity @s block_state.Name set value "minecraft:spruce_leaves"
execute if block ~ ~ ~ minecraft:spruce_log run data modify entity @s block_state.Name set value "minecraft:spruce_log"
execute if block ~ ~ ~ minecraft:spruce_wood run data modify entity @s block_state.Name set value "minecraft:spruce_wood"
execute if block ~ ~ ~ minecraft:stripped_spruce_log run data modify entity @s block_state.Name set value "minecraft:stripped_spruce_log"
execute if block ~ ~ ~ minecraft:stripped_spruce_wood run data modify entity @s block_state.Name set value "minecraft:stripped_spruce_wood"

execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/transform_blocks/end_model/5

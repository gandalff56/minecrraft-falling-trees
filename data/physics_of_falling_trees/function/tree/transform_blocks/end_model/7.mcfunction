#> physics_of_falling_trees:tree/transform_blocks/end_model/7

execute if block ~ ~ ~ minecraft:nether_wart_block run data modify entity @s block_state.Name set value "minecraft:nether_wart_block"
execute if block ~ ~ ~ minecraft:crimson_stem run data modify entity @s block_state.Name set value "minecraft:crimson_stem"
execute if block ~ ~ ~ minecraft:stripped_crimson_stem run data modify entity @s block_state.Name set value "minecraft:stripped_crimson_stem"
execute if block ~ ~ ~ minecraft:crimson_hyphae run data modify entity @s block_state.Name set value "minecraft:crimson_hyphae"
execute if block ~ ~ ~ minecraft:stripped_crimson_hyphae run data modify entity @s block_state.Name set value "minecraft:stripped_crimson_hyphae"
execute if block ~ ~ ~ minecraft:shroomlight run data modify entity @s block_state.Name set value "minecraft:shroomlight"

execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/transform_blocks/end_model/8

execute if data storage midwut:main Data.block_state{Name:"minecraft:crimson_stem"} run setblock ~ ~ ~ minecraft:crimson_stem[axis=z] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_crimson_stem"} run setblock ~ ~ ~ minecraft:stripped_crimson_stem[axis=z] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:crimson_hyphae"} run setblock ~ ~ ~ minecraft:crimson_hyphae[axis=z] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_crimson_hyphae"} run setblock ~ ~ ~ minecraft:stripped_crimson_hyphae[axis=z] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:shroomlight"} run setblock ~ ~ ~ minecraft:shroomlight destroy

execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/z/8

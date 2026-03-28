execute if data storage midwut:main Data.block_state{Name:"minecraft:cherry_log"} run setblock ~ ~ ~ minecraft:cherry_log[axis=z] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:cherry_wood"} run setblock ~ ~ ~ minecraft:cherry_wood[axis=z] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_cherry_log"} run setblock ~ ~ ~ minecraft:stripped_cherry_log[axis=z] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_cherry_wood"} run setblock ~ ~ ~ minecraft:stripped_cherry_wood[axis=z] destroy

execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/z/3

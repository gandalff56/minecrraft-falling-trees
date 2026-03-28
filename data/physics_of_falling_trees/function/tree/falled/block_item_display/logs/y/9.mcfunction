execute if data storage midwut:main Data.block_state{Name:"minecraft:cherry_log"} run setblock ~ ~ ~ minecraft:cherry_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:cherry_wood"} run setblock ~ ~ ~ minecraft:cherry_wood destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_cherry_log"} run setblock ~ ~ ~ minecraft:stripped_cherry_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_cherry_wood"} run setblock ~ ~ ~ minecraft:stripped_cherry_wood destroy

execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/y/3

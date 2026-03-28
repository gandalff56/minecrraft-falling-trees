execute if data storage midwut:main Data.block_state{Name:"minecraft:dark_oak_log"} run setblock ~ ~ ~ minecraft:dark_oak_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:dark_oak_wood"} run setblock ~ ~ ~ minecraft:dark_oak_wood destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_dark_oak_log"} run setblock ~ ~ ~ minecraft:stripped_dark_oak_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_dark_oak_wood"} run setblock ~ ~ ~ minecraft:stripped_dark_oak_wood destroy

execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/y/6

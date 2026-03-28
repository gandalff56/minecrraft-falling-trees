execute if data storage midwut:main Data.block_state{Name:"minecraft:birch_log"} run setblock ~ ~ ~ minecraft:birch_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:birch_wood"} run setblock ~ ~ ~ minecraft:birch_wood destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_birch_log"} run setblock ~ ~ ~ minecraft:stripped_birch_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_birch_wood"} run setblock ~ ~ ~ minecraft:stripped_birch_wood destroy

execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/y/2

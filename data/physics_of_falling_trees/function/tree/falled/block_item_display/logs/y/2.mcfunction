execute if data storage midwut:main Data.block_state{Name:"minecraft:acacia_log"} run setblock ~ ~ ~ minecraft:acacia_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:acacia_wood"} run setblock ~ ~ ~ minecraft:acacia_wood destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_acacia_log"} run setblock ~ ~ ~ minecraft:stripped_acacia_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_acacia_wood"} run setblock ~ ~ ~ minecraft:stripped_acacia_wood destroy

execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/y/9

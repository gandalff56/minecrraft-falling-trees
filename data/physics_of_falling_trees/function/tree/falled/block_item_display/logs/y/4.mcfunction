execute if data storage midwut:main Data.block_state{Name:"minecraft:spruce_log"} run setblock ~ ~ ~ minecraft:spruce_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:spruce_wood"} run setblock ~ ~ ~ minecraft:spruce_wood destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_spruce_log"} run setblock ~ ~ ~ minecraft:stripped_spruce_log destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_spruce_wood"} run setblock ~ ~ ~ minecraft:stripped_spruce_wood destroy

execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/y/5

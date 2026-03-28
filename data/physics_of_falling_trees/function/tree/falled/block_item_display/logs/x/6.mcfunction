execute if data storage midwut:main Data.block_state{Name:"minecraft:mangrove_log"} run setblock ~ ~ ~ minecraft:mangrove_log[axis=x] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:mangrove_wood"} run setblock ~ ~ ~ minecraft:mangrove_wood[axis=x] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_mangrove_log"} run setblock ~ ~ ~ minecraft:stripped_mangrove_log[axis=x] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_mangrove_wood"} run setblock ~ ~ ~ minecraft:stripped_mangrove_wood[axis=x] destroy

#execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/falled/block/logs/x/7

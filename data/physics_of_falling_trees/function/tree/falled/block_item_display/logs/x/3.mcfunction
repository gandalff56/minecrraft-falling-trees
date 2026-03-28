execute if data storage midwut:main Data.block_state{Name:"minecraft:jungle_log"} run setblock ~ ~ ~ minecraft:jungle_log[axis=x] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:jungle_wood"} run setblock ~ ~ ~ minecraft:jungle_wood[axis=x] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_jungle_log"} run setblock ~ ~ ~ minecraft:stripped_jungle_log[axis=x] destroy
execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_jungle_wood"} run setblock ~ ~ ~ minecraft:stripped_jungle_wood[axis=x] destroy

#execute if data entity @s block_state{Name:"minecraft:air"} run function physics_of_falling_trees:tree/falled/block/logs/x/4


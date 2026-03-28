$setblock ~ ~ ~ $(Name)[axis=z] destroy
#execute if data storage midwut:main Data.block_state{Name:"minecraft:oak_log"} run setblock ~ ~ ~ minecraft:oak_log[axis=z] destroy
#execute if data storage midwut:main Data.block_state{Name:"minecraft:oak_wood"} run setblock ~ ~ ~ minecraft:oak_wood[axis=z] destroy
#execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_oak_log"} run setblock ~ ~ ~ minecraft:stripped_oak_log[axis=z] destroy
#execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_oak_wood"} run setblock ~ ~ ~ minecraft:stripped_oak_wood[axis=z] destroy

#execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/z/1
#execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/z/4
#execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/z/7

$setblock ~ ~ ~ $(Name)[axis=y] destroy
$function physics_of_falling_trees:tree/falled/block/logs/y/main2 {Name:"$(Name)"}
#execute if data storage midwut:main Data.block_state{Name:"minecraft:oak_log"} run setblock ~ ~ ~ minecraft:oak_log destroy
#execute if data storage midwut:main Data.block_state{Name:"minecraft:oak_wood"} run setblock ~ ~ ~ minecraft:oak_wood destroy
#execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_oak_log"} run setblock ~ ~ ~ minecraft:stripped_oak_log destroy
#execute if data storage midwut:main Data.block_state{Name:"minecraft:stripped_oak_wood"} run setblock ~ ~ ~ minecraft:stripped_oak_wood destroy

#execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/y/1
#execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/y/4
#execute if block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falled/block/logs/y/7

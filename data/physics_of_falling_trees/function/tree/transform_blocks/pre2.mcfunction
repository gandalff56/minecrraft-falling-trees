
data modify storage midwut:main Data set value {}
data modify storage midwut:main temp2 set value "minecraft:redstone_block"
data modify storage midwut:main temp2 set from storage midwut:main Item.id
execute store result score #doTileDrops main_score run gamerule doTileDrops
execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,limit=1] run function physics_of_falling_trees:tree/transform_blocks/main_block
data modify storage midwut:main Data set value {}
execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=!poft.main_block,tag=!poft.second_block,limit=800] positioned as @s run function physics_of_falling_trees:tree/transform_blocks/main


execute as @e[type=#physics_of_falling_trees:tree_displays,tag=poft.block,tag=poft.summoned,tag=poft.main_block,limit=1] positioned as @s run function physics_of_falling_trees:tree/transform_blocks/main_block_data

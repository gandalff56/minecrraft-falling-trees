data modify storage midwut:main Data set from entity @s

execute if entity @s[tag=!poft.leaves_block] run return run function physics_of_falling_trees:tree/falled/block/others/deform
execute if entity @s[type=block_display] unless block ~ ~ ~ water run function physics_of_falling_trees:tree/falled/block/leaves with storage midwut:main Data.block_state
execute if entity @s[type=block_display] if block ~ ~ ~ water run function physics_of_falling_trees:tree/falled/block/leaves_water with storage midwut:main Data.block_state

data modify storage midwut:main Data.Name set from storage midwut:main Data.item.components."minecraft:custom_model_data".strings[0]

execute if entity @s[type=item_display] unless block ~ ~ ~ water run function physics_of_falling_trees:tree/falled/block/leaves with storage midwut:main Data
execute if entity @s[type=item_display] if block ~ ~ ~ water run function physics_of_falling_trees:tree/falled/block/leaves_water with storage midwut:main Data


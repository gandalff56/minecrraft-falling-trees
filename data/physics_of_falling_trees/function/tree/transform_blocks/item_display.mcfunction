data modify entity @s item.components."minecraft:block_state" set from storage midwut:main Data.block_state.Properties
data modify entity @s item.components."minecraft:custom_model_data".strings[0] set from storage midwut:main Data.block_state.Name

tp @s ~0.5 ~0.5 ~0.5
data modify entity @s teleport_duration set value 1
scoreboard players add @s poft.offset_x 500
scoreboard players add @s poft.offset_y 500
scoreboard players add @s poft.offset_z 500

function physics_of_falling_trees:tree/transform_blocks/get_biome_leaves_color/main
data modify entity @s item.components."minecraft:custom_model_data".colors[0] set from storage midwut:main output
tag @s remove get_id

data modify storage midwut:main Data.Item.id set from storage midwut:main Data.block_state.Name
#data modify storage midwut:main Data.Item.tag.BlockEntityTag set from storage midwut:main Data.TileEntityData
execute if data storage midwut:main Data.block_state.Properties.honey_level run data modify storage midwut:main Data.Item.components."minecraft:block_state".honey_level set from storage midwut:main Data.block_state.Properties.honey_level
#data modify storage midwut:main Data.Item.components."minecraft:block_state" set from storage midwut:main Data.block_state.Properties

data modify entity @s Item set from storage midwut:main Data.Item



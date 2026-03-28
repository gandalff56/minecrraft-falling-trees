
scoreboard players operation @s poft.id_block = #id poft.id_block

clone ~ ~ ~ ~ ~ ~ to midwut:main 2 0 0
execute in midwut:main run function physics_of_falling_trees:tree/transform_blocks/get_block

data modify storage midwut:main Data.block_state.Name set from storage midwut:main temp.id
execute if data storage midwut:main temp.components."minecraft:bees"[0] summon minecraft:bee run function physics_of_falling_trees:tree/transform_blocks/bees
data modify storage midwut:main Data.block_state.Properties set value {}
data modify storage midwut:main Data.block_state.Properties set from storage midwut:main temp.components."minecraft:block_state"
function physics_of_falling_trees:tree/transform_blocks/block_state/main
data modify entity @s {} merge from storage midwut:main Data
execute if entity @s[type=item_display] run function physics_of_falling_trees:tree/transform_blocks/item_display

execute if block ~ ~ ~ #physics_of_falling_trees:logs run tag @s add poft.logs_block
execute if block ~ ~ ~ #physics_of_falling_trees:leaves run function physics_of_falling_trees:tree/transform_blocks/tags/leaves
execute if block ~ ~ ~ minecraft:nether_wart_block run tag @s[predicate=physics_of_falling_trees:0.2] add poft.nether_wart_particle
execute if block ~ ~ ~ minecraft:warped_wart_block run tag @s[predicate=physics_of_falling_trees:0.2] add poft.warped_wart_particle
execute if block ~ ~ ~ #physics_of_falling_trees:others run tag @s add poft.others_block

execute if block ~ ~ ~1 vine[north=true] run setblock ~ ~ ~1 air
execute if block ~1 ~ ~ vine[west=true] run setblock ~1 ~ ~ air
execute if block ~ ~ ~-1 vine[south=true] run setblock ~ ~ ~-1 air
execute if block ~-1 ~ ~ vine[east=true] run setblock ~-1 ~ ~ air

execute unless block ~ ~ ~ #physics_of_falling_trees:tree[waterlogged=true] run return run function physics_of_falling_trees:tree/transform_blocks/set_air
function physics_of_falling_trees:tree/transform_blocks/set_water

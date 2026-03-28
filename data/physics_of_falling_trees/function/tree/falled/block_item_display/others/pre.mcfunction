execute unless score #side main_score matches 1..2 if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest"} run return run function physics_of_falling_trees:tree/falled/block/others/bee_nest/invers
execute if score #side main_score matches 1..2 if data storage midwut:main Data.block_state{Name:"minecraft:bee_nest"} run return run function physics_of_falling_trees:tree/falled/block/others/bee_nest/normal
execute if data storage midwut:main Data.block_state{Name:"minecraft:shroomlight"} run return run setblock ~ ~ ~ shroomlight destroy

function physics_of_falling_trees:tree/falled/block/others/custom/setblock with storage midwut:main Data.block_state

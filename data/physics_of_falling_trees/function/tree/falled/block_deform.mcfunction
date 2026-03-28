execute if entity @s[type=block_display] run function physics_of_falling_trees:tree/falled/offset

execute positioned as @s if block ~ ~ ~ #physics_of_falling_trees:air_for_leaves run function physics_of_falling_trees:tree/falled/block_deform_
kill
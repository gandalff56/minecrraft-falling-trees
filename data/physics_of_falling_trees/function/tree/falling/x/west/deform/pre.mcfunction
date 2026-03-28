execute unless block ~ ~ ~ #physics_of_falling_trees:air run function physics_of_falling_trees:tree/falling/x/west/deform/pre2

execute if entity @s[tag=poft.leaves_particle] run particle minecraft:block{block_state:"oak_leaves"} ~ ~0.5 ~ 0.2 0.2 0.2 1 1 normal
execute if entity @s[tag=poft.nether_wart_particle] run particle minecraft:block{block_state:"nether_wart_block"} ~ ~0.5 ~ 0.2 0.2 0.2 1 1 normal
execute if entity @s[tag=poft.warped_wart_particle] run particle minecraft:block{block_state:"warped_wart_block"} ~ ~0.5 ~ 0.2 0.2 0.2 1 1 normal


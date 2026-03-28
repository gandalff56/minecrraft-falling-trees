execute if score #l main_score matches 1 run scoreboard players set #falled main_score 1
execute if score #falled main_score matches 0 run function physics_of_falling_trees:tree/falling/z/north/deform/main

execute if entity @s[tag=poft.leaves_block] run playsound block.grass.hit ambient @a[distance=..16] ~ ~ ~ 0.6 0.3
execute if entity @s[tag=!poft.leaves_block] run playsound block.wart_block.hit ambient @a[distance=..16] ~ ~ ~ 0.6 0.2


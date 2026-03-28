tag @s[scores={poft.add_angle=..4000}] add poft.falled
execute unless score @s poft.timer matches 11..1199 run tag @s add poft.falled
execute unless score @s poft.motion.y matches 0 run function physics_of_falling_trees:tree/falling/return_tp

execute if entity @s[tag=!poft.falled] run function physics_of_falling_trees:tree/falling/return_rot_

execute if entity @s[tag=poft.falled] run function physics_of_falling_trees:tree/falling/return_rot_main

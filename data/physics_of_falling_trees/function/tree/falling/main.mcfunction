
#data modify entity @s Glowing set value 1b

execute if entity @s[tag=!poft.falled] run return run function physics_of_falling_trees:tree/falling/main_falling_gravity
function physics_of_falling_trees:tree/falled/main


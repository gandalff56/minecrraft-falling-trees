scoreboard players remove @s poft.motion.y 60
execute store result storage midwut:main macros.temp float 0.001 run scoreboard players operation @s poft.motion.y > #-999 const
function physics_of_falling_trees:tree/falling/tp with storage midwut:main macros

execute positioned as @s run function physics_of_falling_trees:tree/falling/main_falling
execute store result storage midwut:main macros.temp float -0.001 run scoreboard players get @s poft.motion.y
execute if entity @s[tag=!poft.falled] as @e[type=#physics_of_falling_trees:tree_displays,tag=!poft.main_block,tag=poft.block,predicate=physics_of_falling_trees:same_ids] positioned as @s run function physics_of_falling_trees:tree/falling/tp__ with storage midwut:main macros
execute positioned as @s run function physics_of_falling_trees:tree/falling/tp__ with storage midwut:main macros
scoreboard players operation @s poft.main_y -= @s poft.motion.y
scoreboard players set @s poft.motion.y 0


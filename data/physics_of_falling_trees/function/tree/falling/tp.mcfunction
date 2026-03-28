$execute if entity @s[tag=!poft.test_falled] if block ~ ~$(temp) ~ #physics_of_falling_trees:air run return run function physics_of_falling_trees:tree/falling/tp_ with storage midwut:main macros
scoreboard players set @s poft.motion.y 0

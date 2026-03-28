execute if entity @s[type=minecraft:player] run return run tellraw @s [{translate:"pfts.wrong_function",fallback:"Wrong Function",color:"dark_red"}]

scoreboard players operation #id_test poft.id_block = @s poft.id_block
execute unless entity @e[type=#physics_of_falling_trees:tree_displays,tag=poft.main_block,limit=1,predicate=physics_of_falling_trees:same_ids] run kill

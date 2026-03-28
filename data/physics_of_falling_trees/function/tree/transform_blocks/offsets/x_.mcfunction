execute if entity @s[tag=poft.deform_block] run return run scoreboard players remove #x main_score 1
scoreboard players remove #x main_score 3
scoreboard players operation #x_min main_score < @s poft.offset_x

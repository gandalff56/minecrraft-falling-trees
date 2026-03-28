execute if entity @s[tag=poft.deform_block] run return run scoreboard players remove #z main_score 1
scoreboard players remove #z main_score 3
scoreboard players operation #z_min main_score < @s poft.offset_z

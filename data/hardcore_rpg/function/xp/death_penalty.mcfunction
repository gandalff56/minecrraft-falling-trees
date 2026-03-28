# Lose 20% of current XP
scoreboard players operation @s rpg.temp = @s rpg.xp
scoreboard players operation @s rpg.temp /= #5 rpg.temp
scoreboard players operation @s rpg.xp -= @s rpg.temp
execute if score @s rpg.xp matches ..-1 run scoreboard players set @s rpg.xp 0

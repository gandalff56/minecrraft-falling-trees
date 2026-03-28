# Apply XP bonus for elite/mini-boss kills
# Called from grant.mcfunction before adding XP
# Check if the killed entity was elite or mini-boss by checking nearby dead entities

# Elite: 1.5x XP (multiply by 3, divide by 2)
execute store result score @s rpg.temp run scoreboard players get @s rpg.xp_grant
scoreboard players operation @s rpg.temp *= #3 rpg.temp
scoreboard players operation @s rpg.temp /= #2 rpg.temp
scoreboard players operation @s rpg.xp_grant = @s rpg.temp
tellraw @s ["",{"text":"★ ","color":"red"},{"text":"Elite kill! ","color":"red","bold":true},{"text":"XP x1.5","color":"yellow"}]

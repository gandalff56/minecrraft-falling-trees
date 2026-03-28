# Anti-farm: kill rate check
scoreboard players add @s rpg.killrate 1

# If killrate > 8, zero out XP and warn
execute if score @s rpg.killrate matches 9.. run scoreboard players set @s rpg.xp_grant 0
execute if score @s rpg.killrate matches 9 run tellraw @s ["",{"text":"⚠ ","color":"red"},{"text":"Zabijasz za szybko! ","color":"red","bold":true},{"text":"Brak XP. Poczekaj chwilę.","color":"gray"}]

# Elite/Boss XP multiplier (1 = elite x1.5, 5 = boss x5)
execute if score @s rpg.elite_kill matches 1 run function hardcore_rpg:xp/elite_bonus
execute if score @s rpg.elite_kill matches 5 run function hardcore_rpg:xp/boss_bonus
scoreboard players set @s rpg.elite_kill 0

# Add XP from rpg.xp_grant score, then check level up
scoreboard players operation @s rpg.xp += @s rpg.xp_grant
scoreboard players set @s rpg.xp_grant 0
scoreboard players add @s rpg.kills 1

# Check for level up
function hardcore_rpg:xp/check_levelup

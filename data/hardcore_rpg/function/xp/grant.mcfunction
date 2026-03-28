# Anti-farm: kill rate check
scoreboard players add @s rpg.killrate 1

# If killrate > 8, zero out XP and warn
execute if score @s rpg.killrate matches 9.. run scoreboard players set @s rpg.xp_grant 0
execute if score @s rpg.killrate matches 9 run tellraw @s ["",{"text":"⚠ ","color":"red"},{"text":"Zabijasz za szybko! ","color":"red","bold":true},{"text":"Brak XP. Poczekaj chwilę.","color":"gray"}]

# Add XP from rpg.xp_grant score, then check level up
scoreboard players operation @s rpg.xp += @s rpg.xp_grant
scoreboard players set @s rpg.xp_grant 0
scoreboard players add @s rpg.kills 1

# Check for level up
function hardcore_rpg:xp/check_levelup

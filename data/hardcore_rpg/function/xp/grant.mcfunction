# Add XP from rpg.xp_grant score, then check level up
scoreboard players operation @s rpg.xp += @s rpg.xp_grant
scoreboard players set @s rpg.xp_grant 0
scoreboard players add @s rpg.kills 1

# Check for level up
function hardcore_rpg:xp/check_levelup

# Check if XP >= XP needed for next level
execute unless score @s rpg.xp >= @s rpg.xp_needed run return 0
execute if score @s rpg.level matches 30 run return 0

# Level up!
scoreboard players operation @s rpg.xp -= @s rpg.xp_needed
scoreboard players add @s rpg.level 1

# Calculate new XP needed: (level + 1) * 100
scoreboard players operation @s rpg.xp_needed = @s rpg.level rpg.level
scoreboard players add @s rpg.xp_needed 1
scoreboard players operation @s rpg.xp_needed *= #100 rpg.temp

function hardcore_rpg:xp/levelup

# Check for another level up (if excess XP)
function hardcore_rpg:xp/check_levelup

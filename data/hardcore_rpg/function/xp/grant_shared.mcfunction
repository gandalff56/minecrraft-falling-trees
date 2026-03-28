# Grant shared party XP to a nearby player
# XP amount is in #rpg.party_xp rpg.temp (set by party_split)

scoreboard players operation @s rpg.xp += #rpg.party_xp rpg.temp

# Check for level up
function hardcore_rpg:xp/check_levelup

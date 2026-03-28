# Party XP Split — divide XP equally among nearby players
# rpg.temp = number of nearby players, rpg.xp_grant = total XP to split

# Divide XP by player count
scoreboard players operation @s rpg.xp_grant /= @s rpg.temp

# Minimum 1 XP per person
execute if score @s rpg.xp_grant matches ..0 run scoreboard players set @s rpg.xp_grant 1

# Store split amount on fake player for sharing
scoreboard players operation #rpg.party_xp rpg.temp = @s rpg.xp_grant

# Grant split XP to self
scoreboard players operation @s rpg.xp += @s rpg.xp_grant

# Grant split XP to all OTHER nearby classed players
execute at @s as @a[distance=..32,scores={rpg.class=1..4}] unless entity @s run function hardcore_rpg:xp/grant_shared

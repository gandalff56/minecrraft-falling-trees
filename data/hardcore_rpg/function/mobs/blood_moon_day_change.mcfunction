# New day — check if tonight should be a Blood Moon
# Increment days since last blood moon
scoreboard players add #rpg.days_since_bm rpg.temp 1

# After 3+ days, 33% chance each night for blood moon
execute if score #rpg.days_since_bm rpg.temp matches 3.. if predicate hardcore_rpg:blood_moon_chance run function hardcore_rpg:mobs/blood_moon_start

# Force blood moon after 5 days
execute if score #rpg.days_since_bm rpg.temp matches 5.. run function hardcore_rpg:mobs/blood_moon_start

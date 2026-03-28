# Blood Moon check — runs every 40 ticks
# Track day count, trigger blood moon every 3-5 nights randomly

# Get current day
execute store result score #rpg.current_day rpg.temp run time query day

# If day changed since last check
execute unless score #rpg.current_day rpg.temp = #rpg.last_day rpg.temp run function hardcore_rpg:mobs/blood_moon_day_change
scoreboard players operation #rpg.last_day rpg.temp = #rpg.current_day rpg.temp

# If blood moon is active, apply effects
execute if score #rpg.blood_moon rpg.temp matches 1 run function hardcore_rpg:mobs/blood_moon_active

# Check if night ended (time 0-12000 = day)
execute if score #rpg.blood_moon rpg.temp matches 1 store result score #rpg.time rpg.temp run time query daytime
execute if score #rpg.blood_moon rpg.temp matches 1 if score #rpg.time rpg.temp matches 0..12000 run function hardcore_rpg:mobs/blood_moon_end

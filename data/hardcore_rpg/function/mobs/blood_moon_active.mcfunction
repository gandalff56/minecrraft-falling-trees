# Blood Moon effects — applied every 40 ticks during blood moon night
# All hostile mobs get Strength I + Speed I

execute as @e[type=#hardcore_rpg:hostile_mobs] run effect give @s minecraft:strength 50 0 true
execute as @e[type=#hardcore_rpg:hostile_mobs] run effect give @s minecraft:speed 50 0 true

# Red particles in the sky near players
execute as @a at @s run particle minecraft:dust{color:[1.0,0.0,0.0],scale:1.5} ~ ~8 ~ 8 2 8 0.1 5

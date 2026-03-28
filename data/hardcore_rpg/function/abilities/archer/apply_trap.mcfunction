# Apply trap at target position
# Summon area_effect_cloud with slowness + visual cobweb particles

# Slowness II (6s) + Weakness I (4s) to all hostile mobs in 4-block radius
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..4] minecraft:slowness 6 1
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..4] minecraft:weakness 4 0

# Spawn area effect cloud for visual + lingering effect
summon minecraft:area_effect_cloud ~ ~0.5 ~ {Radius:4.0f,Duration:120,RadiusPerTick:-0.01f,Particle:"item_snowball",Effects:[{id:"minecraft:slowness",amplifier:1b,duration:60,show_particles:1b}],Tags:["hrpg.trap"]}

# Particles
particle minecraft:item_snowball ~ ~0.5 ~ 3 0.5 3 0.1 40
particle minecraft:witch ~ ~1 ~ 2 0.5 2 0.1 15

# Sound
playsound minecraft:block.cobweb.place player @a[distance=..16] ~ ~ ~ 1 0.6

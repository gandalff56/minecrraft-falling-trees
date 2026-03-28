# Taunt: sneak + iron ingot → force mobs to target you + Resistance I
# Level 10+ Tank active ability

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon minecraft:iron_ingot run return 0

# Check cooldown (15 seconds = 300 ticks)
execute unless score @s rpg.cd_taunt matches 0 run return 0

# Set cooldown
scoreboard players set @s rpg.cd_taunt 300

# Make all mobs in 10 blocks angry at the tank
# Give tank Resistance I for 5 seconds
effect give @s minecraft:resistance 5 0 true

# Anger mobs by damaging them slightly (0.01) to aggro
execute at @s run damage @e[type=#hardcore_rpg:hostile_mobs,distance=..10] 0.1 minecraft:generic by @s

# Slowness to mobs (they come to you, not run away)
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..10] minecraft:speed 5 0 true

# Effects
particle minecraft:angry_villager ~ ~2 ~ 5 1 5 0 15
playsound minecraft:entity.ravager.roar player @s ~ ~ ~ 1 0.6
playsound minecraft:entity.ravager.roar player @a[distance=..16] ~ ~ ~ 0.5 0.6
title @s actionbar {"text":"⛊ Taunt!","color":"dark_aqua","bold":true}

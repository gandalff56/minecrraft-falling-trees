# War Cry: AoE knockback + weakness + damage
# Level 8+ Warrior active ability (wand-activated)

# Check cooldown (10 seconds = 200 ticks)
execute unless score @s rpg.cd_war_cry matches 0 run tellraw @s {"text":"War Cry na cooldownie!","color":"red"} run return 0

# Set cooldown
scoreboard players set @s rpg.cd_war_cry 200

# AoE effects to all hostile mobs within 8 blocks
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..8] minecraft:weakness 5 0
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..8] minecraft:slowness 3 0

# Damage all nearby hostiles (2 hearts = 4 damage)
damage @e[type=#hardcore_rpg:hostile_mobs,distance=..8] 4 minecraft:sonic_boom

# Knockback — push mobs away from player
execute at @s as @e[type=#hardcore_rpg:hostile_mobs,distance=..8] at @s facing entity @p feet run tp @s ^ ^ ^-1.5

# Effects
particle minecraft:explosion ~ ~1 ~ 4 1 4 0.1 15
particle minecraft:angry_villager ~ ~1 ~ 4 1 4 0.05 10
playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 0.6
playsound minecraft:entity.ender_dragon.growl player @a[distance=..16] ~ ~ ~ 0.5 0.6
playsound minecraft:entity.generic.explode player @a[distance=..16] ~ ~ ~ 0.3 1.5
title @s actionbar {"text":"⚔ War Cry!","color":"red","bold":true}

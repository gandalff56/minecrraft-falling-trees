# Shield Bash: sneak + shield → AoE knockback + stun
# Level 8+ Tank active ability

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon.offhand minecraft:shield run return 0

# Check cooldown (8 seconds = 160 ticks)
execute unless score @s rpg.cd_shield_bash matches 0 run return 0

# Set cooldown
scoreboard players set @s rpg.cd_shield_bash 160

# AoE: Knockback + Slowness III (stun) + 2 damage to hostiles in 4 blocks
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..4] minecraft:slowness 3 2
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..4] minecraft:weakness 4 1
damage @e[type=#hardcore_rpg:hostile_mobs,distance=..4] 2 minecraft:sonic_boom

# Push mobs away
execute at @s as @e[type=#hardcore_rpg:hostile_mobs,distance=..4] at @s facing entity @p feet run tp @s ^ ^ ^-2

# Effects
particle minecraft:crit ~ ~1 ~ 2 0.5 2 0.2 15
playsound minecraft:item.shield.block player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.iron_golem.attack player @a[distance=..16] ~ ~ ~ 0.8 0.8
title @s actionbar {"text":"⛊ Shield Bash!","color":"dark_aqua","bold":true}

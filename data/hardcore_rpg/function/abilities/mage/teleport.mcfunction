# Teleport: sneak + hold ender pearl = blink forward 32 blocks

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon minecraft:ender_pearl run return 0

# Check cooldown (10 seconds = 200 ticks)
execute unless score @s rpg.cd_teleport matches 0 run return 0

# Set cooldown
scoreboard players set @s rpg.cd_teleport 200

# Raycast to find safe teleport position
execute anchored eyes positioned ^ ^ ^0 run function hardcore_rpg:abilities/mage/raycast_teleport

# Effects at origin
particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.5 30
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1.2
playsound minecraft:entity.enderman.teleport player @a[distance=..16] ~ ~ ~ 0.5 1.2
title @s actionbar {"text":"✦ Teleport!","color":"dark_purple"}

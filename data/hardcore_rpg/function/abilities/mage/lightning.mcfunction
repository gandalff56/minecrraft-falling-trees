# Lightning: sneak + hold trident = lightning at look position

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon minecraft:trident run return 0

# Check cooldown (5 seconds = 100 ticks)
execute unless score @s rpg.cd_lightning matches 0 run return 0

# Set cooldown
scoreboard players set @s rpg.cd_lightning 100

# Raycast to find target position (up to 32 blocks)
execute anchored eyes positioned ^ ^ ^0 run function hardcore_rpg:abilities/mage/raycast_lightning

# Effects
playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 1 1
playsound minecraft:entity.lightning_bolt.thunder player @a[distance=..32] ~ ~ ~ 0.5 1
title @s actionbar {"text":"✦ Lightning!","color":"yellow"}

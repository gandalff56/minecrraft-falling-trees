# Ground Slam: sneak + axe → AoE damage + slowness
# Level 20+ Warrior active ability

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0

# Check if holding any axe
execute unless items entity @s weapon minecraft:wooden_axe run execute unless items entity @s weapon minecraft:stone_axe run execute unless items entity @s weapon minecraft:iron_axe run execute unless items entity @s weapon minecraft:golden_axe run execute unless items entity @s weapon minecraft:diamond_axe run execute unless items entity @s weapon minecraft:netherite_axe run return 0

# Check cooldown (12 seconds = 240 ticks)
execute unless score @s rpg.cd_ground_slam matches 0 run return 0

# Set cooldown
scoreboard players set @s rpg.cd_ground_slam 240

# AoE damage (3 hearts = 6 damage) to all hostile mobs within 5 blocks
damage @e[type=#hardcore_rpg:hostile_mobs,distance=..5] 6 minecraft:sonic_boom

# Slowness II (4s) + Mining Fatigue (3s)
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..5] minecraft:slowness 4 1
effect give @e[type=#hardcore_rpg:hostile_mobs,distance=..5] minecraft:mining_fatigue 3 1

# Ground crack particles — expanding ring
particle minecraft:block{block_state:"minecraft:stone"} ~ ~0.1 ~ 3 0.1 3 0.5 40
particle minecraft:block{block_state:"minecraft:dirt"} ~ ~0.1 ~ 2 0.1 2 0.5 30
particle minecraft:explosion ~ ~0.5 ~ 2 0.3 2 0.05 8
particle minecraft:campfire_cosy_smoke ~ ~0.3 ~ 3 0.1 3 0.01 15

# Sound effects — earthquake
playsound minecraft:entity.generic.explode player @s ~ ~ ~ 0.8 0.5
playsound minecraft:entity.generic.explode player @a[distance=..16] ~ ~ ~ 0.5 0.5
playsound minecraft:block.anvil.land player @a[distance=..16] ~ ~ ~ 0.6 0.3
title @s actionbar {"text":"⚔ Ground Slam!","color":"red","bold":true}

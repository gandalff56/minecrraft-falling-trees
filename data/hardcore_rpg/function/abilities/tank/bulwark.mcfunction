# Bulwark: sneak + shield while blocking → 3s invulnerability
# Level 20+ Tank active ability

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon.offhand minecraft:shield run return 0

# Must be blocking (using item)
execute unless entity @s[nbt={UsingItem:{id:"minecraft:shield"}}] run return 0

# Check cooldown (30 seconds = 600 ticks)
execute unless score @s rpg.cd_bulwark matches 0 run return 0

# Set cooldown
scoreboard players set @s rpg.cd_bulwark 600

# 3 seconds of invulnerability
effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:absorption 5 1 true
effect give @s minecraft:glowing 3 0 true

# Effects
particle minecraft:end_rod ~ ~1 ~ 0.5 1 0.5 0.05 20
particle minecraft:enchant ~ ~1 ~ 1 1 1 0.5 30
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 1.5
playsound minecraft:block.beacon.power_select player @a[distance=..16] ~ ~ ~ 0.5 1.5
title @s actionbar {"text":"⛊ Bulwark! Niezniszczalny!","color":"gold","bold":true}

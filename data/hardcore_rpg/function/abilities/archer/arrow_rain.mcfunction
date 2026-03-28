# Arrow Rain: sneak + bow → rain of arrows on target area
# Level 8+ Archer active ability

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon minecraft:bow run return 0

# Check cooldown (15 seconds = 300 ticks)
execute unless score @s rpg.cd_arrow_rain matches 0 run return 0

# Set cooldown
scoreboard players set @s rpg.cd_arrow_rain 300

# Raycast to find target ground position
scoreboard players set @s rpg.temp 0
execute anchored eyes positioned ^ ^ ^0 run function hardcore_rpg:abilities/archer/raycast_rain

# Effects at player
playsound minecraft:entity.arrow.shoot player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.arrow.shoot player @a[distance=..16] ~ ~ ~ 0.5 0.5
title @s actionbar {"text":"🏹 Arrow Rain!","color":"green","bold":true}

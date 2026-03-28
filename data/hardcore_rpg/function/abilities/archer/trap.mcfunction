# Trap: sneak + string → slow enemies in area at target
# Level 20+ Archer active ability

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon minecraft:string run return 0

# Check cooldown (20 seconds = 400 ticks)
execute unless score @s rpg.cd_trap matches 0 run return 0

# Set cooldown
scoreboard players set @s rpg.cd_trap 400

# Raycast to find target
scoreboard players set @s rpg.temp 0
execute anchored eyes positioned ^ ^ ^0 run function hardcore_rpg:abilities/archer/raycast_trap

# Effects
playsound minecraft:block.cobweb.place player @s ~ ~ ~ 1 0.8
playsound minecraft:entity.spider.ambient player @a[distance=..16] ~ ~ ~ 0.5 0.5
title @s actionbar {"text":"🕸 Trap!","color":"green","bold":true}

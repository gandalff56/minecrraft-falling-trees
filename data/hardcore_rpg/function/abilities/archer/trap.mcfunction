# Trap: slow enemies in area at target
# Level 20+ Archer active ability (wand-activated)

# Check cooldown (20 seconds = 400 ticks)
execute unless score @s rpg.cd_trap matches 0 run tellraw @s {"text":"Trap na cooldownie!","color":"red"} run return 0

# Set cooldown
scoreboard players set @s rpg.cd_trap 400

# Raycast to find target
scoreboard players set @s rpg.temp 0
execute anchored eyes positioned ^ ^ ^0 run function hardcore_rpg:abilities/archer/raycast_trap

# Effects
playsound minecraft:block.cobweb.place player @s ~ ~ ~ 1 0.8
playsound minecraft:entity.spider.ambient player @a[distance=..16] ~ ~ ~ 0.5 0.5
title @s actionbar {"text":"🕸 Trap!","color":"green","bold":true}

# Unbreakable: survive lethal hit with 1 HP (3 min cooldown)
# Level 30 Tank — like Undying but shorter cooldown

execute unless score @s rpg.cd_unbreakable matches 0 run return 0

# Check if health is critically low
execute store result score @s rpg.health run data get entity @s Health
execute unless score @s rpg.health matches ..2 run return 0

# Trigger Unbreakable!
effect give @s minecraft:resistance 5 4 true
effect give @s minecraft:regeneration 8 1 true
effect give @s minecraft:absorption 15 2 true

# Set cooldown: 3 minutes = 3600 ticks
scoreboard players set @s rpg.cd_unbreakable 3600

# Effects
playsound minecraft:item.totem.use player @s ~ ~ ~ 1 0.8
title @s title {"text":"UNBREAKABLE!","color":"dark_aqua","bold":true}
tellraw @s ["",{"text":"⛊ Unbreakable! ","color":"dark_aqua","bold":true},{"text":"(3 min cooldown)","color":"gray"}]

execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.5 50
execute at @s run particle minecraft:end_rod ~ ~1 ~ 1 2 1 0.1 30

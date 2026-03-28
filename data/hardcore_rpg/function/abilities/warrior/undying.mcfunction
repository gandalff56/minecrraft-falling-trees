# Undying: survive lethal hit with 1 HP (5 min cooldown)
# Only when cooldown is 0

execute unless score @s rpg.cd_undying matches 0 run return 0

# Check if health is critically low (1-2 HP)
execute store result score @s rpg.health run data get entity @s Health
execute unless score @s rpg.health matches ..2 run return 0

# Trigger Undying!
effect give @s minecraft:resistance 3 4 true
effect give @s minecraft:regeneration 5 1 true
effect give @s minecraft:absorption 10 1 true

# Set cooldown: 5 minutes = 6000 ticks
scoreboard players set @s rpg.cd_undying 6000

# Effects
playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1
title @s title {"text":"UNDYING!","color":"red","bold":true}
tellraw @s ["",{"text":"☠ Undying activated! ","color":"red","bold":true},{"text":"(5 min cooldown)","color":"gray"}]

execute at @s run particle minecraft:totem_of_undying ~ ~1 ~ 1 1 1 0.5 50

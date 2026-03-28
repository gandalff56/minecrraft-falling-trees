# Unbreakable → Shield Wall: defensive stance on near-death
# Level 30 Tank — heal to 2 HP + Resistance V + Regen III + rooted in place
# 3 min cooldown

execute unless score @s rpg.cd_unbreakable matches 0 run return 0

# Check if health is critically low
execute store result score @s rpg.health run data get entity @s Health
execute unless score @s rpg.health matches ..2 run return 0

# Trigger Shield Wall!
# Minimal heal — just enough to survive
effect give @s minecraft:instant_health 1 0 true
# Maximum defense: Resistance V (near invulnerable) for 5 seconds
effect give @s minecraft:resistance 5 4 true
# Strong regeneration to recover
effect give @s minecraft:regeneration 5 2 true
# Absorption shield
effect give @s minecraft:absorption 10 2 true
# ROOTED — cannot move (Slowness 255)
effect give @s minecraft:slowness 5 255 true

# Set cooldown: 3 minutes = 3600 ticks
scoreboard players set @s rpg.cd_unbreakable 3600

# Effects — defensive blue/white theme
playsound minecraft:block.beacon.power_select player @s ~ ~ ~ 1 0.5
playsound minecraft:block.anvil.land player @a[distance=..16] ~ ~ ~ 0.8 0.3
title @s title {"text":"MURY OBRONNE!","color":"aqua","bold":true}
title @s subtitle {"text":"Niewrażliwość + Zakorzenienie (5s)","color":"dark_aqua"}
tellraw @s ["",{"text":"⛊ Mury Obronne! ","color":"aqua","bold":true},{"text":"Resistance V + Regen III ale nie możesz się ruszać! ","color":"dark_aqua"},{"text":"(3 min cd)","color":"gray"}]

execute at @s run particle minecraft:end_rod ~ ~1 ~ 1 2 1 0.1 40
execute at @s run particle minecraft:enchant ~ ~0.5 ~ 2 0.5 2 1 30
execute at @s run particle minecraft:block{block_state:"minecraft:iron_block"} ~ ~0.5 ~ 1 0.5 1 0.1 20

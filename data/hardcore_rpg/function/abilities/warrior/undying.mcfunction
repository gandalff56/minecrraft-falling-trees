# Undying → Berserker Rage: offensive burst on near-death
# Level 30 Warrior — heal to 4 HP + Strength II + Speed II for 8 seconds
# 5 min cooldown

execute unless score @s rpg.cd_undying matches 0 run return 0

# Check if health is critically low (1-2 HP)
execute store result score @s rpg.health run data get entity @s Health
execute unless score @s rpg.health matches ..2 run return 0

# Trigger Berserker Rage!
# Heal to 4 HP
effect give @s minecraft:instant_health 1 0 true
# Offensive burst: Strength II + Speed II for 8 seconds
effect give @s minecraft:strength 8 1 true
effect give @s minecraft:speed 8 1 true
# Brief resistance to survive initial burst
effect give @s minecraft:resistance 2 2 true

# Set cooldown: 5 minutes = 6000 ticks
scoreboard players set @s rpg.cd_undying 6000

# Effects — aggressive red theme
playsound minecraft:entity.ender_dragon.growl player @s ~ ~ ~ 1 0.5
playsound minecraft:entity.ravager.roar player @a[distance=..16] ~ ~ ~ 0.8 0.8
title @s title {"text":"SZAŁ BERSERKERA!","color":"dark_red","bold":true}
title @s subtitle {"text":"Siła II + Szybkość II (8s)","color":"red"}
tellraw @s ["",{"text":"☠ Szał Berserkera! ","color":"dark_red","bold":true},{"text":"Strength II + Speed II na 8 sekund! ","color":"red"},{"text":"(5 min cd)","color":"gray"}]

execute at @s run particle minecraft:flame ~ ~1 ~ 1 1 1 0.2 50
execute at @s run particle minecraft:angry_villager ~ ~2 ~ 1 1 1 0 10

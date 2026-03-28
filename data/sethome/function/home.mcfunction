# Teleport to saved home
execute unless score @s home.has_home matches 1 run tellraw @s [{"text":"[Home] ","color":"red"},{"text":"Nie masz zapisanego domu! Uzyj: /trigger home.set","color":"white"}]
execute unless score @s home.has_home matches 1 run return 0

# Store coords in storage for macro
execute store result storage sethome:data x int 1 run scoreboard players get @s home.x
execute store result storage sethome:data y int 1 run scoreboard players get @s home.y
execute store result storage sethome:data z int 1 run scoreboard players get @s home.z

# Teleport to correct dimension + coords
execute if score @s home.dim matches 0 in minecraft:overworld run function sethome:tp with storage sethome:data
execute if score @s home.dim matches 1 in minecraft:the_nether run function sethome:tp with storage sethome:data
execute if score @s home.dim matches 2 in minecraft:the_end run function sethome:tp with storage sethome:data

tellraw @s [{"text":"[Home] ","color":"green"},{"text":"Teleportowano do domu!","color":"white"}]
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
particle minecraft:portal ~ ~1 ~ 0.5 1 0.5 0.1 30

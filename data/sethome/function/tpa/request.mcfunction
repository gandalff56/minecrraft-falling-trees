# Send TPA request to player with matching ID
# @s = requester, tpa.request = target's ID

# Cooldown check (60s = 1200 ticks)
execute if score @s tpa.cooldown matches 1.. run tellraw @s [{"text":"[TPA] ","color":"red"},{"text":"Musisz poczekac przed kolejnym TPA!","color":"gray"}]
execute if score @s tpa.cooldown matches 1.. run return 0

# Don't TPA to yourself
execute store result score #tpa.check tpa.id run scoreboard players get @s tpa.request
execute if score @s tpa.id = #tpa.check tpa.id run tellraw @s [{"text":"[TPA] ","color":"red"},{"text":"Nie mozesz teleportowac sie do siebie!","color":"gray"}]
execute if score @s tpa.id = #tpa.check tpa.id run return 0

# Store requester's ID and target ID in fake players
scoreboard players operation #tpa.requester tpa.id = @s tpa.id
scoreboard players operation #tpa.target tpa.id = @s tpa.request

# Find target and set their tpa.from
execute store result score #tpa.found tpa.id run execute as @a if score @s tpa.id = #tpa.target tpa.id run function sethome:tpa/notify_target

# No player found with that ID
execute if score #tpa.found tpa.id matches 0 run tellraw @s [{"text":"[TPA] ","color":"red"},{"text":"Nie znaleziono gracza o ID ","color":"gray"},{"score":{"name":"@s","objective":"tpa.request"},"color":"yellow"},{"text":". Uzyj /trigger tpa.request set 0","color":"gray"}]

# Confirmation to requester
execute if score #tpa.found tpa.id matches 1.. run tellraw @s [{"text":"[TPA] ","color":"green"},{"text":"Wyslano prosbe o teleport! Czekaj na akceptacje.","color":"gray"}]

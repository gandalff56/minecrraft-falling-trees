# Accept TPA request — teleport requester to @s (acceptor)
# @s = target (person who accepted), tpa.from = requester's ID

# No pending request
execute unless score @s tpa.from matches 1.. run tellraw @s [{"text":"[TPA] ","color":"red"},{"text":"Nie masz zadnej prosby o teleport!","color":"gray"}]
execute unless score @s tpa.from matches 1.. run return 0

# Tag acceptor so requester can check distance
tag @s add tpa.target
scoreboard players operation #tpa.requester tpa.id = @s tpa.from

# Check distance (max 500 blocks) — requester must be within range
execute as @a if score @s tpa.id = #tpa.requester tpa.id at @s unless entity @a[tag=tpa.target,limit=1,distance=..500] run tellraw @s [{"text":"[TPA] ","color":"red"},{"text":"Gracz jest za daleko! (max 500 blokow)","color":"gray"}]
execute as @a if score @s tpa.id = #tpa.requester tpa.id at @s unless entity @a[tag=tpa.target,limit=1,distance=..500] run tag @a[tag=tpa.target] remove tpa.target
execute as @a if score @s tpa.id = #tpa.requester tpa.id at @s unless entity @a[tag=tpa.target,limit=1,distance=..500] run return 0

# Teleport requester to acceptor
execute as @a if score @s tpa.id = #tpa.requester tpa.id run tp @s @a[tag=tpa.target,limit=1]
execute as @a if score @s tpa.id = #tpa.requester tpa.id run tellraw @s [{"text":"[TPA] ","color":"green"},{"text":"Teleportowano!","color":"white"}]
execute as @a if score @s tpa.id = #tpa.requester tpa.id at @s run playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1
# Set cooldown on requester (60s = 1200 ticks)
execute as @a if score @s tpa.id = #tpa.requester tpa.id run scoreboard players set @s tpa.cooldown 1200

# Cleanup
tag @s remove tpa.target
tellraw @s [{"text":"[TPA] ","color":"green"},{"text":"Zaakceptowano teleport!","color":"white"}]
playsound minecraft:entity.enderman.teleport player @s ~ ~ ~ 1 1

# Clear request
scoreboard players set @s tpa.from 0
scoreboard players set @s tpa.timeout 0

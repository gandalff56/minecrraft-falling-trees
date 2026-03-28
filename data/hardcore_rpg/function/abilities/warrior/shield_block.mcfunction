# Shield blocked an attack — apply cooldown + partial damage
# Shield doesn't block 100%, some damage goes through

# Apply shield cooldown based on level
# L1-9: 100 ticks (5s)
execute if score @s rpg.level matches 0..9 run scoreboard players set @s rpg.cd_shield 100
# L10-14: 80 ticks (4s)
execute if score @s rpg.level matches 10..14 run scoreboard players set @s rpg.cd_shield 80
# L15-19: 60 ticks (3s)
execute if score @s rpg.level matches 15..19 run scoreboard players set @s rpg.cd_shield 60
# L20-24: 40 ticks (2s)
execute if score @s rpg.level matches 20..24 run scoreboard players set @s rpg.cd_shield 40
# L25-29: 30 ticks (1.5s)
execute if score @s rpg.level matches 25..29 run scoreboard players set @s rpg.cd_shield 30
# L30: 20 ticks (1s)
execute if score @s rpg.level matches 30.. run scoreboard players set @s rpg.cd_shield 20

# Apply bleed-through damage — shield doesn't block 100%
# L1-9: blocks 30% → take 2 damage
execute if score @s rpg.level matches 0..9 run damage @s 2 minecraft:generic
# L10-14: blocks 45% → take 1.5 damage
execute if score @s rpg.level matches 10..14 run damage @s 1.5 minecraft:generic
# L15-19: blocks 55% → take 1 damage
execute if score @s rpg.level matches 15..19 run damage @s 1 minecraft:generic
# L20-24: blocks 65% → take 0.5 damage (half heart)
execute if score @s rpg.level matches 20..24 run damage @s 1 minecraft:generic
# L25-29: blocks 75%
execute if score @s rpg.level matches 25..29 run damage @s 0.5 minecraft:generic
# L30: blocks 85%
execute if score @s rpg.level matches 30.. run damage @s 0.5 minecraft:generic

# Visual feedback
particle minecraft:crit ~ ~1 ~ 0.3 0.3 0.3 0.1 5
playsound minecraft:item.shield.block player @s ~ ~ ~ 0.8 1.2

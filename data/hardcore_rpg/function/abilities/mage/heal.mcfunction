# Heal: sneak + hold golden apple = heal self (+ nearby at L25+)

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon minecraft:golden_apple run return 0

# Check cooldown (30 seconds = 600 ticks)
execute unless score @s rpg.cd_heal matches 0 run return 0

# Heal self: instant health + regen
effect give @s minecraft:instant_health 1 1 true
effect give @s minecraft:regeneration 10 0 true

# Set cooldown
scoreboard players set @s rpg.cd_heal 600

# Level 25+: also heal nearby players
execute if score @s rpg.level matches 25.. run effect give @a[distance=..4,sort=nearest] minecraft:instant_health 1 0 true
execute if score @s rpg.level matches 25.. run effect give @a[distance=..4,sort=nearest] minecraft:regeneration 5 0 true

# Effects
playsound minecraft:block.amethyst_block.chime player @s ~ ~ ~ 1 1.2
playsound minecraft:block.amethyst_block.chime player @a[distance=..16] ~ ~ ~ 0.5 1.2
particle minecraft:heart ~ ~1.5 ~ 0.5 0.5 0.5 0 5
title @s actionbar {"text":"✦ Heal!","color":"aqua"}

# Level 25+ area heal particles
execute if score @s rpg.level matches 25.. run particle minecraft:happy_villager ~ ~0.5 ~ 4 1 4 0.1 20

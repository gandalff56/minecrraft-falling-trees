# Fireball: sneak + hold blaze rod

execute unless entity @s[nbt={Pose:{Sneaking:1b}}] run return 0
execute unless items entity @s weapon minecraft:blaze_rod run return 0

# Check cooldown
execute unless score @s rpg.cd_fireball matches 0 run return 0

# Set cooldown: 2 seconds = 40 ticks
scoreboard players set @s rpg.cd_fireball 40

# Level 20+: bigger fireball, otherwise normal
execute if score @s rpg.level matches 20.. anchored eyes positioned ^ ^ ^2 run summon minecraft:fireball ~ ~ ~ {ExplosionPower:2,Tags:["hrpg.mage_fb"]}
execute if score @s rpg.level matches 5..19 anchored eyes positioned ^ ^ ^2 run summon minecraft:fireball ~ ~ ~ {ExplosionPower:1,Tags:["hrpg.mage_fb"]}

# Effects
playsound minecraft:entity.blaze.shoot player @s ~ ~ ~ 1 0.8
playsound minecraft:entity.blaze.shoot player @a[distance=..16] ~ ~ ~ 0.5 0.8

# Transform mob into Mini-Boss variant
tag @s add hrpg.mini_boss
tag @s add hrpg.elite_checked

# Shared buffs: Glowing, Fire Resistance, Resistance I
effect give @s minecraft:glowing 999999 0 true
effect give @s minecraft:fire_resistance 999999 0 true
effect give @s minecraft:resistance 999999 0 true

# Triple HP
execute store result score @s rpg.temp run attribute @s minecraft:max_health base get
scoreboard players operation @s rpg.temp *= #3 rpg.temp
execute store result storage hardcore_rpg:temp hp int 1 run scoreboard players get @s rpg.temp
function hardcore_rpg:mobs/apply_elite_hp with storage hardcore_rpg:temp

# Custom names + type-specific tags
data merge entity @s {CustomNameVisible:1b}

# Zombie → Zombie King (summons reinforcements)
execute if entity @s[type=minecraft:zombie] run tag @s add hrpg.boss_zombie
execute if entity @s[type=minecraft:zombie] run data merge entity @s {CustomName:'{"text":"👑 Zombie King","color":"dark_red","bold":true}'}

# Skeleton → Skeleton Sniper (fire arrows, faster)
execute if entity @s[type=minecraft:skeleton] run tag @s add hrpg.boss_skeleton
execute if entity @s[type=minecraft:skeleton] run data merge entity @s {CustomName:'{"text":"💀 Skeleton Sniper","color":"dark_purple","bold":true}'}
execute if entity @s[type=minecraft:skeleton] run effect give @s minecraft:speed 999999 1 true

# Creeper → Creeper Lord (bigger explosion, poison)
execute if entity @s[type=minecraft:creeper] run tag @s add hrpg.boss_creeper
execute if entity @s[type=minecraft:creeper] run data merge entity @s {CustomName:'{"text":"💣 Creeper Lord","color":"dark_green","bold":true}',ExplosionRadius:6b,Fuse:20s}

# Generic boss for other types
execute unless entity @s[type=minecraft:zombie] unless entity @s[type=minecraft:skeleton] unless entity @s[type=minecraft:creeper] run data merge entity @s {CustomName:'{"text":"👑 Mini-Boss","color":"dark_red","bold":true}'}

# Particles
particle minecraft:soul_fire_flame ~ ~1 ~ 0.5 0.5 0.5 0.02 20
playsound minecraft:entity.wither.ambient hostile @a[distance=..32] ~ ~ ~ 0.5 0.5

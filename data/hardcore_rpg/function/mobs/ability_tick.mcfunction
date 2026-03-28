# Tick mob abilities — called every 40 ticks

# Teleporter: when hurt (HurtTime > 0), short random teleport
execute as @e[tag=hrpg.ability_teleport,nbt={HurtTime:10s}] at @s run spreadplayers ~ ~ 3 5 false @s
execute as @e[tag=hrpg.ability_teleport,nbt={HurtTime:10s}] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute as @e[tag=hrpg.ability_teleport,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 0.5 1.5

# Invisible: when hurt, go invisible for 3s
execute as @e[tag=hrpg.ability_invis,nbt={HurtTime:10s}] run effect give @s minecraft:invisibility 3 0
execute as @e[tag=hrpg.ability_invis,nbt={HurtTime:10s}] at @s run particle minecraft:poof ~ ~1 ~ 0.3 0.5 0.3 0.05 10

# Reinforcer: when first hurt, summon ally (remove tag after summon)
execute as @e[tag=hrpg.ability_reinforce,nbt={HurtTime:10s}] at @s run summon minecraft:zombie ~ ~ ~ {Tags:["hrpg.scaled","hrpg.elite_checked","hrpg.mature"],custom_name:{"text":"Posilki","color":"gray","italic":true}}
execute as @e[tag=hrpg.ability_reinforce,nbt={HurtTime:10s}] at @s run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.05 10
execute as @e[tag=hrpg.ability_reinforce,nbt={HurtTime:10s}] run tag @s remove hrpg.ability_reinforce

# Exploder: check for dead exploders — handled via death detection
# We check for low health and trigger explosion
execute as @e[tag=hrpg.ability_explode] store result score @s rpg.health run data get entity @s Health
execute as @e[tag=hrpg.ability_explode,scores={rpg.health=..1}] at @s run summon minecraft:tnt ~ ~ ~ {fuse:1s}
execute as @e[tag=hrpg.ability_explode,scores={rpg.health=..1}] at @s run particle minecraft:explosion ~ ~1 ~ 1 1 1 0.1 5
execute as @e[tag=hrpg.ability_explode,scores={rpg.health=..1}] run tag @s remove hrpg.ability_explode

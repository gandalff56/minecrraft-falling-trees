# Tick mini-boss special abilities
# Called every 40 ticks from tick.mcfunction

# Zombie King: summon reinforcement every ~10 seconds (200 ticks, checked every 40)
execute as @e[type=minecraft:zombie,tag=hrpg.boss_zombie] at @s if predicate hardcore_rpg:boss_summon_chance run summon minecraft:zombie ~ ~ ~ {CustomName:'{"text":"Zombie Minion","color":"gray","italic":true}',Tags:["hrpg.scaled","hrpg.elite_checked","hrpg.mature"]}
execute as @e[type=minecraft:zombie,tag=hrpg.boss_zombie] at @s if predicate hardcore_rpg:boss_summon_chance run particle minecraft:soul ~ ~1 ~ 0.5 0.5 0.5 0.05 5

# Skeleton Sniper: shoot extra fire arrows at nearest player
execute as @e[type=minecraft:skeleton,tag=hrpg.boss_skeleton] at @s run data merge entity @s {ArrowCooldown:0}

# Creeper Lord: poison aura (nearby players get Poison I for 3s)
execute as @e[type=minecraft:creeper,tag=hrpg.boss_creeper] at @s run effect give @a[distance=..5] minecraft:poison 3 0

# Boss class-counter AI (mini-bosses adapt to player class)
execute as @e[tag=hrpg.mini_boss] at @s run function hardcore_rpg:mobs/boss_class_counter

# Mini-boss particles
execute as @e[tag=hrpg.mini_boss] at @s run particle minecraft:soul_fire_flame ~ ~1.5 ~ 0.3 0.3 0.3 0.01 3

# Elite particles
execute as @e[tag=hrpg.elite] at @s run particle minecraft:flame ~ ~1.2 ~ 0.2 0.3 0.2 0.01 2

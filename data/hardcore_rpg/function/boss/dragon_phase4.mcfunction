# Phase 4: <25% HP — ENRAGE MODE

# Phase transition
execute unless score #rpg.dragon_phase rpg.temp matches 40.. in minecraft:the_end run title @a title {"text":"ENRAGE!","color":"dark_red","bold":true}
execute unless score #rpg.dragon_phase rpg.temp matches 40.. in minecraft:the_end run title @a subtitle {"text":"Smok Apokalipsy jest wściekły!","color":"red"}
execute unless score #rpg.dragon_phase rpg.temp matches 40.. in minecraft:the_end run tellraw @a [{"text":"FAZA 4: ","color":"dark_red","bold":true},{"text":"ENRAGE! Smok regeneruje i atakuje ze zdwojoną siłą!","color":"red"}]
execute unless score #rpg.dragon_phase rpg.temp matches 40.. run scoreboard players set #rpg.dragon_phase rpg.temp 40
execute unless score #rpg.dragon_phase rpg.temp matches 40.. in minecraft:the_end run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 2 0.3

# Dragon regenerates slowly
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] run effect give @s minecraft:regeneration 5 0 true

# Constant dragon breath near all players
execute in minecraft:the_end as @a[scores={rpg.level=1..}] at @s run summon minecraft:area_effect_cloud ~2 ~ ~2 {Duration:60,Radius:3.0f,RadiusPerTick:-0.05f,Effects:[{id:"minecraft:instant_damage",amplifier:1,duration:1}],Particle:"dragon_breath",Tags:["hrpg.dragon_breath"]}

# Spawn shulkers for area denial
execute if predicate hardcore_rpg:boss_summon_chance in minecraft:the_end as @a[scores={rpg.level=1..},limit=1,sort=random] at @s run summon minecraft:shulker ~3 ~3 ~3 {Tags:["hrpg.dragon_minion","hrpg.scaled","hrpg.elite_checked"]}

# Wither + Darkness on all players
execute in minecraft:the_end run effect give @a minecraft:darkness 4 0 true
execute in minecraft:the_end run effect give @a minecraft:wither 3 0 true

# Intense particles
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] at @s run particle minecraft:flame ~ ~ ~ 10 5 10 0.1 30
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 10 5 10 0.05 20

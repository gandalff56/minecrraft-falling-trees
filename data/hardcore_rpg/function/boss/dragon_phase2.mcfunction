# Phase 2: 50-75% HP — dragon breath areas + more endermen

# Phase transition announcement (once)
execute unless score #rpg.dragon_phase rpg.temp matches 20.. in minecraft:the_end run title @a title {"text":"FAZA 2","color":"red","bold":true}
execute unless score #rpg.dragon_phase rpg.temp matches 20.. in minecraft:the_end run title @a subtitle {"text":"Oddech Smoka!","color":"yellow"}
execute unless score #rpg.dragon_phase rpg.temp matches 20.. in minecraft:the_end run tellraw @a [{"text":"Faza 2: ","color":"red","bold":true},{"text":"Smok zieje ogniem! Unikaj oddechu!","color":"gray"}]
execute unless score #rpg.dragon_phase rpg.temp matches 20.. run scoreboard players set #rpg.dragon_phase rpg.temp 20

# Spawn dragon breath clouds near random players
execute in minecraft:the_end as @a[scores={rpg.level=1..},limit=1,sort=random] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:100,Radius:4.0f,RadiusPerTick:-0.02f,Effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1}],Particle:"dragon_breath",Tags:["hrpg.dragon_breath"]}

# Continue endermen spawns
execute if predicate hardcore_rpg:boss_summon_chance in minecraft:the_end as @a[scores={rpg.level=30},limit=1,sort=random] at @s run summon minecraft:enderman ~3 ~ ~3 {Tags:["hrpg.dragon_minion","hrpg.scaled","hrpg.elite_checked"]}

# Dragon gets Speed
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] run effect give @s minecraft:speed 5 0 true

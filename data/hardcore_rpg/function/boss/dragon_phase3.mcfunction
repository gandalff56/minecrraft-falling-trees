# Phase 3: 25-50% HP — rapid summons + area denial + wither effect

# Phase transition
execute unless score #rpg.dragon_phase rpg.temp matches 30.. in minecraft:the_end run title @a title {"text":"FAZA 3","color":"dark_red","bold":true}
execute unless score #rpg.dragon_phase rpg.temp matches 30.. in minecraft:the_end run title @a subtitle {"text":"Szaleństwo Smoka!","color":"red"}
execute unless score #rpg.dragon_phase rpg.temp matches 30.. in minecraft:the_end run tellraw @a [{"text":"Faza 3: ","color":"dark_red","bold":true},{"text":"Smok szaleje! Masowe przywoływanie!","color":"gray"}]
execute unless score #rpg.dragon_phase rpg.temp matches 30.. run scoreboard players set #rpg.dragon_phase rpg.temp 30

# Spawn 2 endermen each tick cycle (much more aggressive)
execute in minecraft:the_end as @a[scores={rpg.level=1..},limit=1,sort=random] at @s run summon minecraft:enderman ~4 ~ ~4 {CustomName:'{"text":"Strażnik Smoka","color":"dark_purple","italic":true}',Tags:["hrpg.dragon_minion","hrpg.scaled","hrpg.elite_checked"]}
execute if predicate hardcore_rpg:boss_summon_chance in minecraft:the_end as @a[scores={rpg.level=1..},limit=1,sort=random] at @s run summon minecraft:enderman ~-3 ~ ~3 {Tags:["hrpg.dragon_minion","hrpg.scaled","hrpg.elite_checked"]}

# Dragon breath clouds more frequently
execute in minecraft:the_end as @a[scores={rpg.level=1..},limit=1,sort=random] at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Duration:80,Radius:5.0f,RadiusPerTick:-0.03f,Effects:[{id:"minecraft:instant_damage",amplifier:0,duration:1},{id:"minecraft:wither",amplifier:0,duration:60}],Particle:"dragon_breath",Tags:["hrpg.dragon_breath"]}

# All players get Darkness briefly
execute in minecraft:the_end run effect give @a minecraft:darkness 3 0 true

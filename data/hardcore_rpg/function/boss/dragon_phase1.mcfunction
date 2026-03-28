# Phase 1: >75% HP — summon endermen every ~20 seconds
# Dragon is warming up

# Phase transition announcement (once)
execute if score #rpg.dragon_phase rpg.temp matches 1 in minecraft:the_end run tellraw @a [{"text":"Faza 1: ","color":"yellow","bold":true},{"text":"Smok przyzywa Endermanów!","color":"gray"}]
execute if score #rpg.dragon_phase rpg.temp matches 1 run scoreboard players set #rpg.dragon_phase rpg.temp 10

# Summon endermen (20% chance per tick = ~every 10s)
execute if predicate hardcore_rpg:boss_summon_chance in minecraft:the_end as @a[scores={rpg.level=30},limit=1,sort=random] at @s run summon minecraft:enderman ~5 ~ ~5 {CustomName:'{"text":"Strażnik Smoka","color":"dark_purple","italic":true}',Tags:["hrpg.dragon_minion","hrpg.scaled","hrpg.elite_checked"]}

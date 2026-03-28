# Dragon boss tick — called every 40 ticks when dragon_active = 1
# Checks dragon HP and triggers phase abilities

# Verify dragon still exists
execute in minecraft:the_end unless entity @e[type=minecraft:ender_dragon] run function hardcore_rpg:boss/dragon_death
execute in minecraft:the_end unless entity @e[type=minecraft:ender_dragon] run return 0

# Get dragon health
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] store result score #rpg.dragon_hp rpg.temp run data get entity @s Health

# Phase 1: >75% HP (1500+) — summon endermen periodically
execute if score #rpg.dragon_hp rpg.temp matches 1500.. run function hardcore_rpg:boss/dragon_phase1

# Phase 2: 50-75% HP (1000-1499) — dragon breath areas + endermen
execute if score #rpg.dragon_hp rpg.temp matches 1000..1499 run function hardcore_rpg:boss/dragon_phase2

# Phase 3: 25-50% HP (500-999) — rapid summons + area denial
execute if score #rpg.dragon_hp rpg.temp matches 500..999 run function hardcore_rpg:boss/dragon_phase3

# Phase 4: <25% HP (0-499) — ENRAGE
execute if score #rpg.dragon_hp rpg.temp matches ..499 run function hardcore_rpg:boss/dragon_phase4

# Persistent dragon particles
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 5 3 5 0.05 10

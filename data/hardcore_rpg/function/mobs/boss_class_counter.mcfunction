# Boss class-counter AI — called every 40 ticks for each mini-boss
# Boss reacts differently based on nearest player's class

# === vs WARRIOR (class 1) — maintain distance, apply Weakness ===
# If warrior is within 4 blocks, boss teleports back 3-5 blocks and slows warrior
execute if entity @p[distance=..4,scores={rpg.class=1}] run spreadplayers ~ ~ 3 5 false @s
execute if entity @p[distance=..4,scores={rpg.class=1}] run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute if entity @p[distance=..4,scores={rpg.class=1}] run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 0.4 1.2
# Apply Weakness to nearby warriors to reduce melee damage
execute run effect give @p[distance=..8,scores={rpg.class=1}] minecraft:weakness 4 0
execute if entity @p[distance=..8,scores={rpg.class=1}] run particle minecraft:smoke ~ ~2 ~ 0.3 0.3 0.3 0.01 5

# === vs TANK (class 4) — same as warrior + break through shield ===
# Teleport behind tank if they're close and blocking
execute if entity @p[distance=..4,scores={rpg.class=4}] run spreadplayers ~ ~ 3 5 false @s
execute if entity @p[distance=..4,scores={rpg.class=4}] run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 10
execute if entity @p[distance=..4,scores={rpg.class=4}] run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 0.4 1.2
# Apply Weakness + Mining Fatigue (reduces shield effectiveness feel)
execute run effect give @p[distance=..8,scores={rpg.class=4}] minecraft:weakness 4 0
execute run effect give @p[distance=..8,scores={rpg.class=4}] minecraft:mining_fatigue 4 0

# === vs ARCHER (class 2) — teleport close, apply Blindness ===
# If archer is far (>6 blocks), teleport to them
execute at @p[distance=6..,scores={rpg.class=2}] run tp @s ~ ~ ~
execute if entity @p[distance=6..,scores={rpg.class=2}] at @s run particle minecraft:reverse_portal ~ ~1 ~ 0.5 0.5 0.5 0.1 15
execute if entity @p[distance=6..,scores={rpg.class=2}] at @s run playsound minecraft:entity.enderman.teleport hostile @a[distance=..16] ~ ~ ~ 0.5 0.8
# Blindness to ruin aim
execute run effect give @p[distance=..6,scores={rpg.class=2}] minecraft:blindness 3 0
execute if entity @p[distance=..6,scores={rpg.class=2}] at @s run particle minecraft:smoke ~ ~1.5 ~ 0.4 0.4 0.4 0.02 8

# === vs MAGE (class 3) — Fire Resistance + reflect with Wither ===
# Permanent fire resistance (already from make_mini_boss, but reinforce)
effect give @s minecraft:fire_resistance 999999 0 true
# If mage is nearby, give boss extra magic resistance and counter with Wither
execute if entity @p[distance=..10,scores={rpg.class=3}] run effect give @s minecraft:resistance 5 1 true
execute run effect give @p[distance=..10,scores={rpg.class=3}] minecraft:wither 3 0
execute if entity @p[distance=..10,scores={rpg.class=3}] at @s run particle minecraft:witch ~ ~1.5 ~ 0.3 0.3 0.3 0.05 8
execute if entity @p[distance=..10,scores={rpg.class=3}] at @s run playsound minecraft:entity.elder_guardian.curse hostile @a[distance=..16] ~ ~ ~ 0.3 1.5

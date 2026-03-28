# Activate Endgame Dragon Boss — "Smok Apokalipsy"

scoreboard players set #rpg.dragon_active rpg.temp 1
scoreboard players set #rpg.dragon_phase rpg.temp 1

# Buff the dragon — custom name and massive HP boost
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] run data merge entity @s {custom_name:{"text":"Smok Apokalipsy","color":"dark_red","bold":true},custom_name_visible:1b}

# Dragon HP: set to 2000 (default is 200, this is 10x)
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] run attribute @s minecraft:max_health base set 2000
execute in minecraft:the_end as @e[type=minecraft:ender_dragon,limit=1] run effect give @s minecraft:instant_health 1 127

# Initialize phase tracking HP thresholds
# Phase 1: 100%-75% (2000-1500) — normal + summon endermen
# Phase 2: 75%-50% (1500-1000) — dragon breath everywhere
# Phase 3: 50%-25% (1000-500) — rapid charges + summons
# Phase 4: <25% (500-0) — enrage, all abilities

# Announcement to ALL players in the_end
execute in minecraft:the_end run title @a title {"text":"🐉 SMOK APOKALIPSY","color":"dark_red","bold":true}
execute in minecraft:the_end run title @a subtitle {"text":"Przygotuj się na walkę o przetrwanie!","color":"red"}
execute in minecraft:the_end run tellraw @a ["",{"text":"\n"},{"text":"═══════════════════════════════","color":"dark_red"},{"text":"\n"},{"text":"  🐉 SMOK APOKALIPSY się budzi!","color":"dark_red","bold":true},{"text":"\n"},{"text":"  HP: 2000 | Fazy: 4","color":"gray"},{"text":"\n"},{"text":"  Współpracujcie aby przetrwać!","color":"yellow"},{"text":"\n"},{"text":"═══════════════════════════════","color":"dark_red"}]

# Dramatic effects
execute in minecraft:the_end run playsound minecraft:entity.ender_dragon.growl player @a ~ ~ ~ 2 0.3
execute in minecraft:the_end run playsound minecraft:entity.wither.spawn player @a ~ ~ ~ 1 0.5

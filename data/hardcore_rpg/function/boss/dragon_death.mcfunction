# Dragon has been defeated!

scoreboard players set #rpg.dragon_active rpg.temp 0
scoreboard players set #rpg.dragon_phase rpg.temp 0

# Kill remaining minions
execute in minecraft:the_end as @e[tag=hrpg.dragon_minion] run kill @s
execute in minecraft:the_end as @e[tag=hrpg.dragon_breath] run kill @s

# Announcement
execute in minecraft:the_end run title @a title {"text":"ZWYCIĘSTWO!","color":"gold","bold":true}
execute in minecraft:the_end run title @a subtitle {"text":"Smok Apokalipsy pokonany!","color":"yellow"}

execute in minecraft:the_end run tellraw @a ["",{"text":"\n"},{"text":"═══════════════════════════════","color":"gold"},{"text":"\n"},{"text":"  🐉 SMOK APOKALIPSY POKONANY!","color":"gold","bold":true},{"text":"\n"},{"text":"  Gratulacje, bohaterowie!","color":"yellow"},{"text":"\n"},{"text":"═══════════════════════════════","color":"gold"}]

# Rewards to all players in the_end
# Massive XP: 1000
execute in minecraft:the_end as @a[scores={rpg.class=1..4}] run scoreboard players add @s rpg.xp 1000
execute in minecraft:the_end as @a[scores={rpg.class=1..4}] run function hardcore_rpg:xp/check_levelup

# Smocze Serce — unique trophy item
execute in minecraft:the_end as @a[scores={rpg.class=1..4}] run give @s minecraft:nether_star[custom_name='{"text":"Smocze Serce","color":"gold","bold":true,"italic":false}',enchantment_glint_override=true,lore=['{"text":"Zdobyte po pokonaniu Smoka Apokalipsy","color":"gray","italic":true}','{"text":"Dowód odwagi i siły drużyny","color":"dark_purple","italic":true}']] 1

# Dragon Slayer title message
execute in minecraft:the_end as @a[scores={rpg.class=1..4}] run tellraw @s [{"text":"Otrzymujesz tytuł: ","color":"gray"},{"text":"Pogromca Smoków","color":"gold","bold":true}]

# Epic effects
execute in minecraft:the_end run playsound minecraft:ui.toast.challenge_complete player @a ~ ~ ~ 2 1
execute in minecraft:the_end run playsound minecraft:entity.ender_dragon.death player @a ~ ~ ~ 2 1

# Heal all players
execute in minecraft:the_end as @a run effect give @s minecraft:instant_health 1 10 true
execute in minecraft:the_end as @a run effect give @s minecraft:regeneration 30 1 true
execute in minecraft:the_end as @a run effect give @s minecraft:absorption 60 4 true

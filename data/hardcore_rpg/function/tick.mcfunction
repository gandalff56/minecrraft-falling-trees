# Hardcore RPG - Main Tick
# Detect new players
execute as @a unless score @s rpg.level matches 0.. run function hardcore_rpg:player/join

# Enable trigger for all players
execute as @a run scoreboard players enable @s rpg.trigger

# Handle class selection trigger
execute as @a[scores={rpg.trigger=1..3}] run function hardcore_rpg:class/select

# Update health tracking
execute as @a[scores={rpg.level=0..}] store result score @s rpg.health run data get entity @s Health 1

# Tick abilities for classed players
execute as @a[scores={rpg.class=1..3}] run function hardcore_rpg:abilities/tick

# Cooldown ticking
execute as @a[scores={rpg.cd_heal=1..}] run scoreboard players remove @s rpg.cd_heal 1
execute as @a[scores={rpg.cd_undying=1..}] run scoreboard players remove @s rpg.cd_undying 1
execute as @a[scores={rpg.cd_fireball=1..}] run scoreboard players remove @s rpg.cd_fireball 1
execute as @a[scores={rpg.cd_lightning=1..}] run scoreboard players remove @s rpg.cd_lightning 1
execute as @a[scores={rpg.cd_teleport=1..}] run scoreboard players remove @s rpg.cd_teleport 1

# Actionbar UI (every 10 ticks)
execute if score #rpg.ui_tick rpg.temp matches 10.. run scoreboard players set #rpg.ui_tick rpg.temp 0
execute if score #rpg.ui_tick rpg.temp matches 0 as @a[scores={rpg.level=0..}] run function hardcore_rpg:ui/actionbar
scoreboard players add #rpg.ui_tick rpg.temp 1

# Crafting restrictions (every 20 ticks)
execute if score #rpg.craft_tick rpg.temp matches 20.. run scoreboard players set #rpg.craft_tick rpg.temp 0
execute if score #rpg.craft_tick rpg.temp matches 0 run function hardcore_rpg:crafting/check
scoreboard players add #rpg.craft_tick rpg.temp 1

# Mob scaling (every 40 ticks)
execute if score #rpg.mob_tick rpg.temp matches 40.. run scoreboard players set #rpg.mob_tick rpg.temp 0
execute if score #rpg.mob_tick rpg.temp matches 0 run function hardcore_rpg:mobs/scale
scoreboard players add #rpg.mob_tick rpg.temp 1

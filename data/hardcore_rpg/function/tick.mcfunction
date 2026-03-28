# Hardcore RPG - Main Tick
# Detect new players
execute as @a unless score @s rpg.level matches 0.. run function hardcore_rpg:player/join

# Enable trigger for all players
execute as @a run scoreboard players enable @s rpg.trigger

# Handle class selection trigger (1-4 = class, 10 = reset)
execute as @a[scores={rpg.trigger=1..4}] run function hardcore_rpg:class/select
execute as @a[scores={rpg.trigger=10}] run function hardcore_rpg:class/select

# Update health tracking
execute as @a[scores={rpg.level=0..}] store result score @s rpg.health run data get entity @s Health 1

# Wand system: detect right-click cast
execute as @a[scores={rpg.class=1..4,rpg.wand_use=1..}] run function hardcore_rpg:wand/cast

# Wand system: prevent dropping (every tick)
execute as @a[scores={rpg.class=1..4}] run function hardcore_rpg:wand/check_drop

# Guide book: prevent dropping
execute as @a at @s as @e[type=item,distance=..5,nbt={Item:{id:"minecraft:written_book"}}] run kill @s
execute as @a unless items entity @s container.* minecraft:written_book unless items entity @s weapon minecraft:written_book unless items entity @s weapon.offhand minecraft:written_book run function hardcore_rpg:player/give_book

# Tick abilities for classed players (passives only — actives moved to wand)
execute as @a[scores={rpg.class=1..4}] run function hardcore_rpg:abilities/tick

# Cooldown ticking
execute as @a[scores={rpg.cd_heal=1..}] run scoreboard players remove @s rpg.cd_heal 1
execute as @a[scores={rpg.cd_undying=1..}] run scoreboard players remove @s rpg.cd_undying 1
execute as @a[scores={rpg.cd_fireball=1..}] run scoreboard players remove @s rpg.cd_fireball 1
execute as @a[scores={rpg.cd_lightning=1..}] run scoreboard players remove @s rpg.cd_lightning 1
execute as @a[scores={rpg.cd_teleport=1..}] run scoreboard players remove @s rpg.cd_teleport 1
execute as @a[scores={rpg.cd_arrow_rain=1..}] run scoreboard players remove @s rpg.cd_arrow_rain 1
execute as @a[scores={rpg.cd_trap=1..}] run scoreboard players remove @s rpg.cd_trap 1
execute as @a[scores={rpg.cd_war_cry=1..}] run scoreboard players remove @s rpg.cd_war_cry 1
execute as @a[scores={rpg.cd_ground_slam=1..}] run scoreboard players remove @s rpg.cd_ground_slam 1
execute as @a[scores={rpg.cd_shield=1..}] run scoreboard players remove @s rpg.cd_shield 1
execute as @a[scores={rpg.cd_shield_bash=1..}] run scoreboard players remove @s rpg.cd_shield_bash 1
execute as @a[scores={rpg.cd_taunt=1..}] run scoreboard players remove @s rpg.cd_taunt 1
execute as @a[scores={rpg.cd_bulwark=1..}] run scoreboard players remove @s rpg.cd_bulwark 1
execute as @a[scores={rpg.cd_unbreakable=1..}] run scoreboard players remove @s rpg.cd_unbreakable 1

# Actionbar UI (every 10 ticks)
execute if score #rpg.ui_tick rpg.temp matches 10.. run scoreboard players set #rpg.ui_tick rpg.temp 0
execute if score #rpg.ui_tick rpg.temp matches 0 as @a[scores={rpg.level=0..}] run function hardcore_rpg:ui/actionbar
scoreboard players add #rpg.ui_tick rpg.temp 1

# Crafting restrictions (every 20 ticks)
execute if score #rpg.craft_tick rpg.temp matches 20.. run scoreboard players set #rpg.craft_tick rpg.temp 0
execute if score #rpg.craft_tick rpg.temp matches 0 run function hardcore_rpg:crafting/check
scoreboard players add #rpg.craft_tick rpg.temp 1

# Mob age tracking (every tick) — mobs need 8s (160 ticks) to give XP
execute as @e[type=#hardcore_rpg:hostile_mobs,tag=!hrpg.mature] run scoreboard players add @s rpg.mob_age 1
execute as @e[type=#hardcore_rpg:hostile_mobs,tag=!hrpg.mature,scores={rpg.mob_age=160..}] run tag @s add hrpg.mature

# Elite/Mini-Boss check (when mob_age = 2, just spawned)
execute as @e[type=#hardcore_rpg:hostile_mobs,tag=!hrpg.elite_checked,scores={rpg.mob_age=2}] at @s run function hardcore_rpg:mobs/check_elite

# Kill rate reset (every 1200 ticks = 60 seconds)
execute if score #rpg.killrate_tick rpg.temp matches 1200.. run scoreboard players set #rpg.killrate_tick rpg.temp 0
execute if score #rpg.killrate_tick rpg.temp matches 0 as @a run scoreboard players set @s rpg.killrate 0
scoreboard players add #rpg.killrate_tick rpg.temp 1

# Mob scaling (every 40 ticks)
execute if score #rpg.mob_tick rpg.temp matches 40.. run scoreboard players set #rpg.mob_tick rpg.temp 0
execute if score #rpg.mob_tick rpg.temp matches 0 run function hardcore_rpg:mobs/scale
execute if score #rpg.mob_tick rpg.temp matches 0 run function hardcore_rpg:mobs/boss_tick
execute if score #rpg.mob_tick rpg.temp matches 0 run function hardcore_rpg:mobs/ability_tick
execute if score #rpg.mob_tick rpg.temp matches 0 run function hardcore_rpg:mobs/blood_moon_check
execute if score #rpg.mob_tick rpg.temp matches 0 if score #rpg.dragon_active rpg.temp matches 1 run function hardcore_rpg:boss/dragon_tick
scoreboard players add #rpg.mob_tick rpg.temp 1

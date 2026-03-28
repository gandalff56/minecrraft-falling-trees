# Class Reset — costs 50% XP, requires L15+
# Triggered via /trigger rpg.trigger set 10

# Check level requirement
execute unless score @s rpg.level matches 15.. run tellraw @s {"text":"Musisz mieć co najmniej poziom 15 aby zresetować klasę!","color":"red"} run return 0

# Cost: 50% of current XP
scoreboard players operation @s rpg.temp = @s rpg.xp
scoreboard players operation @s rpg.temp /= #2 rpg.temp
scoreboard players operation @s rpg.xp -= @s rpg.temp

# Reset class
scoreboard players set @s rpg.class 0
scoreboard players set @s rpg.ability_slot 0

# Remove wand
clear @s minecraft:carrot_on_a_stick[custom_data~{rpg_wand:1b}]

# Reset HP to base 6
scoreboard players set @s rpg.max_hp 6
execute store result storage hardcore_rpg:temp max_hp int 1 run scoreboard players get @s rpg.max_hp
function hardcore_rpg:player/apply_health with storage hardcore_rpg:temp

# Clear all effects
effect clear @s

# Reset all cooldowns
scoreboard players set @s rpg.cd_heal 0
scoreboard players set @s rpg.cd_undying 0
scoreboard players set @s rpg.cd_fireball 0
scoreboard players set @s rpg.cd_lightning 0
scoreboard players set @s rpg.cd_teleport 0
scoreboard players set @s rpg.cd_arrow_rain 0
scoreboard players set @s rpg.cd_trap 0
scoreboard players set @s rpg.cd_war_cry 0
scoreboard players set @s rpg.cd_ground_slam 0
scoreboard players set @s rpg.cd_shield 0
scoreboard players set @s rpg.cd_shield_bash 0
scoreboard players set @s rpg.cd_taunt 0
scoreboard players set @s rpg.cd_bulwark 0
scoreboard players set @s rpg.cd_unbreakable 0

# Show class menu
function hardcore_rpg:ui/class_menu

# Announcement
title @s title {"text":"RESET KLASY","color":"red","bold":true}
tellraw @s ["",{"text":"Klasa zresetowana! ","color":"gold"},{"text":"Stracono 50% XP. ","color":"red"},{"text":"Wybierz nową klasę!","color":"yellow"}]
playsound minecraft:entity.lightning_bolt.thunder player @s ~ ~ ~ 0.5 1.5

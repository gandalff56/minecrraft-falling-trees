# First join - initialize player
scoreboard players set @s rpg.level 0
scoreboard players set @s rpg.xp 0
scoreboard players set @s rpg.xp_needed 100
scoreboard players set @s rpg.class 0
scoreboard players set @s rpg.kills 0
scoreboard players set @s rpg.deaths 0
scoreboard players set @s rpg.max_hp 6
scoreboard players set @s rpg.cd_heal 0
scoreboard players set @s rpg.cd_undying 0
scoreboard players set @s rpg.cd_fireball 0
scoreboard players set @s rpg.cd_lightning 0
scoreboard players set @s rpg.cd_teleport 0

# Set 3 hearts
attribute @s minecraft:max_health base set 6
effect give @s minecraft:instant_health 1 10 true

# Welcome message
tellraw @s [{"text":"\n"},{"text":"=== HARDCORE RPG ===","color":"gold","bold":true},{"text":"\n"},{"text":"You start with ","color":"gray"},{"text":"3 hearts","color":"red"},{"text":"!","color":"gray"},{"text":"\n"},{"text":"Kill mobs to earn XP and level up.","color":"gray"},{"text":"\n"},{"text":"At level 1, choose your class:","color":"gray"},{"text":"\n"},{"text":"  Warrior","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Archer","color":"green"},{"text":" | ","color":"dark_gray"},{"text":"Mage","color":"blue"},{"text":"\n"}]

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5

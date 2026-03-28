# First join - initialize player
scoreboard players set @s rpg.level 0
scoreboard players set @s rpg.xp 0
scoreboard players set @s rpg.xp_needed 100
scoreboard players set @s rpg.class 0
scoreboard players set @s rpg.kills 0
scoreboard players set @s rpg.deaths 0
scoreboard players set @s rpg.max_hp 6
scoreboard players set @s rpg.ability_slot 0
scoreboard players set @s rpg.cd_heal 0
scoreboard players set @s rpg.cd_undying 0
scoreboard players set @s rpg.cd_fireball 0
scoreboard players set @s rpg.cd_lightning 0
scoreboard players set @s rpg.cd_teleport 0

# Set 3 hearts
attribute @s minecraft:max_health base set 6
effect give @s minecraft:instant_health 1 10 true

# Welcome message
tellraw @s ["",{"text":"\n"},{"text":"═══ HARDCORE RPG ═══","color":"gold","bold":true},{"text":"\n"},{"text":"Zaczynasz z ","color":"gray"},{"text":"3 sercami","color":"red"},{"text":"!","color":"gray"},{"text":"\n"},{"text":"Zabijaj potwory aby zdobywać XP i awansować.","color":"gray"},{"text":"\n"},{"text":"Na poziomie 1 wybierz klasę:","color":"gray"},{"text":"\n"},{"text":"  Warrior","color":"red"},{"text":" | ","color":"dark_gray"},{"text":"Archer","color":"green"},{"text":" | ","color":"dark_gray"},{"text":"Mage","color":"aqua"},{"text":" | ","color":"dark_gray"},{"text":"Tank","color":"dark_aqua"},{"text":"\n"}]

# Give guide book
function hardcore_rpg:player/give_book

playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 0.5

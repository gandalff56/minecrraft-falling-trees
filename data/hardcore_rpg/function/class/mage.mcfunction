# Set class to Mage
scoreboard players set @s rpg.class 3

# Announce
title @s title {"text":"✦ MAGE","color":"aqua","bold":true}
title @s subtitle {"text":"Zaklęcia i Utility","color":"gray"}
tellraw @s ["",{"text":"Wybrałeś klasę ","color":"gray"},{"text":"Mage","color":"aqua","bold":true},{"text":"!","color":"gray"}]
tellraw @s ["",{"text":"• +1 HP na milestone (max 13 HP)","color":"gray"}]
tellraw @s ["",{"text":"• Fireball (L5), Heal (L10), Lightning (L15), Teleport (L30)","color":"gray"}]
tellraw @s ["",{"text":"• Użyj ","color":"gray"},{"text":"Magicznej Różdżki","color":"aqua","bold":true},{"text":" (prawy klik) aby rzucać zaklęcia. Q = zmień spell.","color":"gray"}]

playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1.8

# Give ability wand
function hardcore_rpg:wand/give

# Update health with mage bonus
function hardcore_rpg:player/update_health

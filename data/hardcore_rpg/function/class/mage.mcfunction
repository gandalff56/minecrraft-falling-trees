# Set class to Mage
scoreboard players set @s rpg.class 3

# Announce
title @s title {"text":"✦ MAGE","color":"aqua","bold":true}
title @s subtitle {"text":"Spells & Utility","color":"gray"}
tellraw @s ["",{"text":"You have chosen the ","color":"gray"},{"text":"Mage","color":"aqua","bold":true},{"text":" class!","color":"gray"}]
tellraw @s ["",{"text":"• +1 HP per health milestone","color":"gray"}]
tellraw @s ["",{"text":"• Max 13 HP at level 28","color":"gray"}]
tellraw @s ["",{"text":"• Fireball (L5), Heal (L10), Lightning (L15), Teleport (L30)","color":"gray"}]

playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1.8

# Update health with mage bonus
function hardcore_rpg:player/update_health

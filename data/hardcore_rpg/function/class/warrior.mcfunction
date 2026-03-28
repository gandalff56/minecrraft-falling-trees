# Set class to Warrior
scoreboard players set @s rpg.class 1

# Announce
title @s title {"text":"⚔ WARRIOR","color":"red","bold":true}
title @s subtitle {"text":"Tank & Melee","color":"gray"}
tellraw @s ["",{"text":"You have chosen the ","color":"gray"},{"text":"Warrior","color":"red","bold":true},{"text":" class!","color":"gray"}]
tellraw @s ["",{"text":"• +2 HP per health milestone","color":"gray"}]
tellraw @s ["",{"text":"• Max 20 HP at level 28","color":"gray"}]
tellraw @s ["",{"text":"• Berserker (L5), ","color":"gray"},{"text":"War Cry (L8)","color":"red"},{"text":", Lifesteal (L10), Double Strike (L15), ","color":"gray"},{"text":"Ground Slam (L20)","color":"red"},{"text":", Undying (L30)","color":"gray"}]

playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1.2

# Update health with warrior bonus
function hardcore_rpg:player/update_health

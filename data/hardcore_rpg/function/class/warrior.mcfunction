# Set class to Warrior
scoreboard players set @s rpg.class 1

# Announce
title @s title {"text":"⚔ WARRIOR","color":"red","bold":true}
title @s subtitle {"text":"DPS i Walka Wręcz","color":"gray"}
tellraw @s ["",{"text":"Wybrałeś klasę ","color":"gray"},{"text":"Warrior","color":"red","bold":true},{"text":"!","color":"gray"}]
tellraw @s ["",{"text":"• +2 HP na milestone (max 20 HP)","color":"gray"}]
tellraw @s ["",{"text":"• Berserker (L5), ","color":"gray"},{"text":"War Cry (L8)","color":"red"},{"text":", Lifesteal (L10), Double Strike (L15), ","color":"gray"},{"text":"Ground Slam (L20)","color":"red"},{"text":", Szał Berserkera (L30)","color":"gray"}]

playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1.2

# Give ability wand
function hardcore_rpg:wand/give

# Update health with warrior bonus
function hardcore_rpg:player/update_health

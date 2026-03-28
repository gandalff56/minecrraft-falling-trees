# Set class to Tank
scoreboard players set @s rpg.class 4

# Announce
title @s title {"text":"⛊ TANK","color":"dark_aqua","bold":true}
title @s subtitle {"text":"Shield & Endurance","color":"gray"}
tellraw @s ["",{"text":"You have chosen the ","color":"gray"},{"text":"Tank","color":"dark_aqua","bold":true},{"text":" class!","color":"gray"}]
tellraw @s ["",{"text":"• +2 HP per health milestone (max 22 HP)","color":"gray"}]
tellraw @s ["",{"text":"• ","color":"gray"},{"text":"⛊ Jedyna klasa z tarczą!","color":"yellow","bold":true}]
tellraw @s ["",{"text":"• Fortress (L5), ","color":"gray"},{"text":"Shield Bash (L8)","color":"dark_aqua"},{"text":", Taunt (L10), Iron Skin (L15), ","color":"gray"},{"text":"Bulwark (L20)","color":"dark_aqua"},{"text":", Unbreakable (L30)","color":"gray"}]

playsound minecraft:item.totem.use player @s ~ ~ ~ 1 0.8

# Update health with tank bonus
function hardcore_rpg:player/update_health

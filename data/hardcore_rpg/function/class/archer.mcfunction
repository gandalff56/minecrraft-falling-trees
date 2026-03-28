# Set class to Archer
scoreboard players set @s rpg.class 2

# Announce
title @s title {"text":"🏹 ARCHER","color":"green","bold":true}
title @s subtitle {"text":"Speed & Range","color":"gray"}
tellraw @s ["",{"text":"You have chosen the ","color":"gray"},{"text":"Archer","color":"green","bold":true},{"text":" class!","color":"gray"}]
tellraw @s ["",{"text":"• +1 HP per health milestone","color":"gray"}]
tellraw @s ["",{"text":"• Max 13 HP at level 28","color":"gray"}]
tellraw @s ["",{"text":"• Swift (L5), ","color":"gray"},{"text":"Arrow Rain (L8)","color":"green"},{"text":", Fire Arrows (L10), Dodge (L15), ","color":"gray"},{"text":"Trap (L20)","color":"green"},{"text":", Phantom Arrow (L30)","color":"gray"}]

playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1.5

# Update health with archer bonus
function hardcore_rpg:player/update_health

# Set class to Archer
scoreboard players set @s rpg.class 2

# Announce
title @s title {"text":"🏹 ARCHER","color":"green","bold":true}
title @s subtitle {"text":"Szybkość i Zasięg","color":"gray"}
tellraw @s ["",{"text":"Wybrałeś klasę ","color":"gray"},{"text":"Archer","color":"green","bold":true},{"text":"!","color":"gray"}]
tellraw @s ["",{"text":"• +1 HP na milestone (max 13 HP)","color":"gray"}]
tellraw @s ["",{"text":"• Swift (L5), ","color":"gray"},{"text":"Arrow Rain (L8)","color":"green"},{"text":", Fire Arrows (L10), Dodge (L15), ","color":"gray"},{"text":"Trap (L20)","color":"green"},{"text":", Phantom Arrow (L30)","color":"gray"}]

playsound minecraft:item.totem.use player @s ~ ~ ~ 1 1.5

# Give ability wand
function hardcore_rpg:wand/give

# Update health with archer bonus
function hardcore_rpg:player/update_health

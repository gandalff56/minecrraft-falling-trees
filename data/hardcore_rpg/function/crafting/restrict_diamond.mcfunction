# Remove diamond armor/weapons from players below level 20 (tools allowed!)
execute store result score @s rpg.temp run clear @s #hardcore_rpg:diamond_equipment 0
execute if score @s rpg.temp matches 1.. run clear @s #hardcore_rpg:diamond_equipment
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"Potrzebujesz ","color":"gray"},{"text":"poziomu 20","color":"yellow","bold":true},{"text":" aby nosic ","color":"gray"},{"text":"diamentowa zbroje/bron","color":"aqua","bold":true},{"text":"! (narzedzia OK)","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"Wymagany poziom 20 dla diamentowej zbroi/broni!","color":"red"}

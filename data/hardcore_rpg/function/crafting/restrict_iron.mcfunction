# Remove iron armor/weapons from players below level 8 (tools allowed!)
execute store result score @s rpg.temp run clear @s #hardcore_rpg:iron_equipment 0
execute if score @s rpg.temp matches 1.. run clear @s #hardcore_rpg:iron_equipment
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"Potrzebujesz ","color":"gray"},{"text":"poziomu 8","color":"yellow","bold":true},{"text":" aby nosic ","color":"gray"},{"text":"zelazna zbroje/bron","color":"white","bold":true},{"text":"! (narzedzia OK)","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"Wymagany poziom 8 dla zelaznej zbroi/broni!","color":"red"}

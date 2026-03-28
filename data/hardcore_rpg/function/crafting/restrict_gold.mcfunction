# Remove gold armor/weapons from players below level 14 (tools allowed!)
execute store result score @s rpg.temp run clear @s #hardcore_rpg:gold_equipment 0
execute if score @s rpg.temp matches 1.. run clear @s #hardcore_rpg:gold_equipment
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"Potrzebujesz ","color":"gray"},{"text":"poziomu 14","color":"yellow","bold":true},{"text":" aby nosic ","color":"gray"},{"text":"zlota zbroje/bron","color":"gold","bold":true},{"text":"! (narzedzia OK)","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"Wymagany poziom 14 dla zlotej zbroi/broni!","color":"red"}

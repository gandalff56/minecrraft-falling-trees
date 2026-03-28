# Remove netherite armor/weapons from players below level 28 (tools allowed!)
execute store result score @s rpg.temp run clear @s #hardcore_rpg:netherite_equipment 0
execute if score @s rpg.temp matches 1.. run clear @s #hardcore_rpg:netherite_equipment
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"Potrzebujesz ","color":"gray"},{"text":"poziomu 28","color":"yellow","bold":true},{"text":" aby nosic ","color":"gray"},{"text":"netheritowa zbroje/bron","color":"dark_red","bold":true},{"text":"! (narzedzia OK)","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"Wymagany poziom 28 dla netheritowej zbroi/broni!","color":"red"}

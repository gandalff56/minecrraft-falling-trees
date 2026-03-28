# Remove diamond equipment from players below level 15
execute store result score @s rpg.temp run clear @s #hardcore_rpg:diamond_equipment 0
execute if score @s rpg.temp matches 1.. run clear @s #hardcore_rpg:diamond_equipment
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"✖ ","color":"red"},{"text":"Potrzebujesz ","color":"gray"},{"text":"poziomu 15","color":"yellow","bold":true},{"text":" aby używać ","color":"gray"},{"text":"diamentowego ekwipunku","color":"aqua","bold":true},{"text":"!","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"⚠ Wymagany poziom 15 dla diamentu!","color":"red"}

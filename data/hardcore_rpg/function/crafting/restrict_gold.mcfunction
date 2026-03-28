# Remove gold equipment from players below level 10
execute store result score @s rpg.temp run clear @s #hardcore_rpg:gold_equipment 0
execute if score @s rpg.temp matches 1.. run clear @s #hardcore_rpg:gold_equipment
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"✖ ","color":"red"},{"text":"Potrzebujesz ","color":"gray"},{"text":"poziomu 10","color":"yellow","bold":true},{"text":" aby używać ","color":"gray"},{"text":"złotego ekwipunku","color":"gold","bold":true},{"text":"!","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"⚠ Wymagany poziom 10 dla złota!","color":"red"}

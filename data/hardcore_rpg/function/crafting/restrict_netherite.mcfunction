# Remove netherite equipment from players below level 25
execute store result score @s rpg.temp run clear @s #hardcore_rpg:netherite_equipment 0
execute if score @s rpg.temp matches 1.. run clear @s #hardcore_rpg:netherite_equipment
execute if score @s rpg.temp matches 1.. run tellraw @s ["",{"text":"✖ ","color":"red"},{"text":"Potrzebujesz ","color":"gray"},{"text":"poziomu 25","color":"yellow","bold":true},{"text":" aby używać ","color":"gray"},{"text":"netheritowego ekwipunku","color":"dark_red","bold":true},{"text":"!","color":"gray"}]
execute if score @s rpg.temp matches 1.. run playsound minecraft:block.anvil.land player @s ~ ~ ~ 0.5 2
execute if score @s rpg.temp matches 1.. run title @s actionbar {"text":"⚠ Wymagany poziom 25 dla netherite!","color":"red"}
